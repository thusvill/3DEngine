#include "vv_model.hpp"
#include "../Core/vv_utils.hpp"

#define TINYOBJLOADER_IMPLEMENTATION
#define GLM_ENABLE_EXPERIMENTAL
#include <algorithm>
#include <glm/gtx/hash.hpp>
#include <unordered_map>
#include <tiny_obj_loader.h>
#include <cassert>
#include <cstring>
#include <Log.h>

#include <iostream>

namespace std
{
    template <>
    struct hash<VectorVertex::VVModel::Vertex>
    {
        size_t operator()(VectorVertex::VVModel::Vertex const &vertex) const
        {
            size_t seed = 0;
            VectorVertex::hashCombine(seed, vertex.position, vertex.color, vertex.normal, vertex.uv);
            return seed;
        }
    };
} // namespace std

namespace VectorVertex
{
    VVModel::VVModel(VVDevice &device, const Builder &builder) : vvDevice{device}
    {
        CreateVertexBuffers(builder.vertices);
        CreateIndexBuffers(builder.indices);
    }

    VVModel::~VVModel()
    {
    }

    std::unique_ptr<VVModel> VVModel::createModelFromFile(VVDevice &device, const std::string &filepath)
    {
        Builder builder{};
        builder.loadModel(filepath);
        return std::make_unique<VVModel>(device, builder);
    }
    void VVModel::Bind(VkCommandBuffer commandBuffer)
    {
        VkBuffer buffers[] = {vertexBuffer->getBuffer()};
        VkDeviceSize offsets[] = {0};
        vkCmdBindVertexBuffers(commandBuffer, 0, 1, buffers, offsets);
        if (hasIndexBuffer)
        {
            vkCmdBindIndexBuffer(commandBuffer, indexBuffer->getBuffer(), 0, VK_INDEX_TYPE_UINT32);
        }
    }
    void VVModel::Draw(VkCommandBuffer commandBuffer)
    {
        if (hasIndexBuffer)
        {
            vkCmdDrawIndexed(commandBuffer, indexCount, 1, 0, 0, 0);
        }
        else
        {
            vkCmdDraw(commandBuffer, vertexCount, 1, 0, 0);
        }
    }
    void VVModel::CreateVertexBuffers(const std::vector<Vertex> &vertices)
    {
        vertexCount = static_cast<uint32_t>(vertices.size());
        assert(vertexCount >= 3 && "Vertex count must be at least 3");
        VkDeviceSize bufferSize = sizeof(vertices[0]) * vertexCount;

        uint32_t vertexSize = sizeof(vertices[0]);

        VVBuffer stagingBuffer{
            vvDevice, vertexSize, vertexCount, VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
            VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT};

        stagingBuffer.map();
        stagingBuffer.writeToBuffer((void *)vertices.data());

        vertexBuffer = std::make_unique<VVBuffer>(
            vvDevice, vertexSize, vertexCount, VK_BUFFER_USAGE_VERTEX_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_DST_BIT,
            VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);

        vvDevice.copyBuffer(stagingBuffer.getBuffer(), vertexBuffer->getBuffer(), bufferSize);
    }

    void VVModel::CreateIndexBuffers(const std::vector<uint32_t> &indices)
    {
        indexCount = static_cast<uint32_t>(indices.size());
        hasIndexBuffer = indexCount > 0;
        if (!hasIndexBuffer)
        {
            return;
        }
        VkDeviceSize bufferSize = sizeof(indices[0]) * indexCount;
        uint32_t indexSize = sizeof(indices[0]);
        VVBuffer stagingBuffer{
            vvDevice, indexSize, indexCount, VK_BUFFER_USAGE_TRANSFER_SRC_BIT,
            VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT};
        stagingBuffer.map();
        stagingBuffer.writeToBuffer((void *)indices.data());

        indexBuffer = std::make_unique<VVBuffer>(
            vvDevice, indexSize, indexCount, VK_BUFFER_USAGE_INDEX_BUFFER_BIT | VK_BUFFER_USAGE_TRANSFER_DST_BIT,
            VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT);

        vvDevice.copyBuffer(stagingBuffer.getBuffer(), indexBuffer->getBuffer(), bufferSize);
    }
    std::vector<VkVertexInputAttributeDescription> VVModel::Vertex::getAttributeDescriptions()
    {
        std::vector<VkVertexInputAttributeDescription> attributeDescriptions{};

        attributeDescriptions.push_back({0, 0, VK_FORMAT_R32G32B32_SFLOAT, offsetof(Vertex, position)});
        attributeDescriptions.push_back({1, 0, VK_FORMAT_R32G32B32_SFLOAT, offsetof(Vertex, color)});
        attributeDescriptions.push_back({2, 0, VK_FORMAT_R32G32B32_SFLOAT, offsetof(Vertex, normal)});
        attributeDescriptions.push_back({3, 0, VK_FORMAT_R32G32_SFLOAT, offsetof(Vertex, uv)});

        return attributeDescriptions;
    }
    std::vector<VkVertexInputBindingDescription> VVModel::Vertex::getBindingDescriptions()
    {
        std::vector<VkVertexInputBindingDescription> bindingDescriptions(1);
        bindingDescriptions[0].binding = 0;
        bindingDescriptions[0].stride = sizeof(Vertex);
        bindingDescriptions[0].inputRate = VK_VERTEX_INPUT_RATE_VERTEX;
        return bindingDescriptions;
    }

    

    void VVModel::Builder::loadModel(const std::string &filepath)
    {
        std::string lowerPath = filepath;
        std::transform(lowerPath.begin(), lowerPath.end(), lowerPath.begin(), ::tolower);

        if (lowerPath.substr(lowerPath.length() - 4) == ".obj")
        {
            VV_CORE_INFO("Loading OBJ file: {0}", filepath);
            tinyobj::attrib_t attrib;
            std::vector<tinyobj::shape_t> shapes;
            std::vector<tinyobj::material_t> materials;
            std::string warn, err;

            if (!tinyobj::LoadObj(&attrib, &shapes, &materials, &warn, &err, filepath.c_str()))
            {
                throw std::runtime_error(warn + err);
            }

            vertices.clear();
            indices.clear();

            std::unordered_map<Vertex, uint32_t> uniqueVertex{};

            for (const auto &shape : shapes)
            {
                for (const auto &index : shape.mesh.indices)
                {
                    Vertex vertex{};

                    if (index.vertex_index >= 0)
                    {
                        vertex.position = {
                            attrib.vertices[3 * index.vertex_index + 0],
                            attrib.vertices[3 * index.vertex_index + 1],
                            attrib.vertices[3 * index.vertex_index + 2]};

                        vertex.color = {
                            attrib.colors[3 * index.vertex_index + 0],
                            attrib.colors[3 * index.vertex_index + 1],
                            attrib.colors[3 * index.vertex_index + 2]};
                    }

                    if (index.normal_index >= 0)
                    {
                        vertex.normal = {
                            attrib.normals[3 * index.normal_index + 0],
                            attrib.normals[3 * index.normal_index + 1],
                            attrib.normals[3 * index.normal_index + 2]};
                    }

                    if (index.texcoord_index >= 0)
                    {
                        vertex.uv = {
                            attrib.texcoords[2 * index.texcoord_index + 0],
                            attrib.texcoords[2 * index.texcoord_index + 1]};
                    }

                    if (uniqueVertex.count(vertex) == 0)
                    {
                        uniqueVertex[vertex] = static_cast<uint32_t>(vertices.size());
                        vertices.push_back(vertex);
                    }
                    indices.push_back(uniqueVertex[vertex]);
                }
            }
        }
        else if (lowerPath.substr(lowerPath.length() - 4) == ".fbx")
        {
            VV_CORE_INFO("Loading FBX model: " + filepath);

            loadFBX(filepath);
        }
    }

    void VVModel::Builder::loadFBX(const std::string &fbx_path)
    {
        sdkManager = FbxManager::Create();
        if (!sdkManager)
        {
            throw std::runtime_error("Failed to create FBX SDK manager.");
        }

        fbxsdk::FbxIOSettings *ios = fbxsdk::FbxIOSettings::Create(sdkManager, IOSROOT);
        sdkManager->SetIOSettings(ios);

        fbxsdk::FbxImporter *importer = fbxsdk::FbxImporter::Create(sdkManager, "");

        if (!importer->Initialize(fbx_path.c_str(), -1, sdkManager->GetIOSettings()))
        {
            throw std::runtime_error("Failed to initialize FBX importer: " + std::string(importer->GetStatus().GetErrorString()));
        }

        FbxScene *scene = FbxScene::Create(sdkManager, "LoadScene");

        if (!importer->Import(scene))
        {
            throw std::runtime_error("Failed to import FBX file: " + std::string(importer->GetStatus().GetErrorString()));
        }

        importer->Destroy();

        fbxsdk::FbxNode *rootNode = scene->GetRootNode();
        if (rootNode)
        {
            for (int i = 0; i < rootNode->GetChildCount(); i++)
            {
                fbxsdk::FbxNode *childNode = rootNode->GetChild(i);
                if (childNode->GetNodeAttribute() && childNode->GetNodeAttribute()->GetAttributeType() == FbxNodeAttribute::eMesh)
                {
                    fbxsdk::FbxMesh *mesh = (fbxsdk::FbxMesh *)childNode->GetNodeAttribute();

                    for (int polygonIndex = 0; polygonIndex < mesh->GetPolygonCount(); ++polygonIndex)
                    {
                        int numVertices = mesh->GetPolygonSize(polygonIndex);

                        for (int vertexIndex = 0; vertexIndex < numVertices; ++vertexIndex)
                        {
                            
                            int controlPointIndex = mesh->GetPolygonVertex(polygonIndex, vertexIndex);

                            fbxsdk::FbxVector4 fbxPosition = mesh->GetControlPointAt(controlPointIndex);
                            vertices[vertexIndex].position = glm::vec3(fbxPosition[0], fbxPosition[1], fbxPosition[2]);

                            fbxsdk::FbxVector4 fbxNormal;
                            mesh->GetPolygonVertexNormal(polygonIndex, vertexIndex, fbxNormal);
                            vertices[vertexIndex].normal = glm::vec3(fbxNormal[0], fbxNormal[1], fbxNormal[2]);

                            fbxsdk::FbxVector2 fbxUV;
                            bool unmappedUV;
                            mesh->GetPolygonVertexUV(polygonIndex, vertexIndex, "UVChannel_0", fbxUV, unmappedUV);
                            vertices[vertexIndex].uv = glm::vec2(fbxUV[0], fbxUV[1]);

                            // fbxsdk::FbxColor fbxColor;
                            // int vertexId = polygonIndex * numVertices + vertexIndex;
                            // bool mappedColor;
                            // mesh->GetPolygonVertexColor(vertexId, fbxColor);
                            // glm::vec3 color(fbxColor.mRed, fbxColor.mGreen, fbxColor.mBlue);
                            

                            VV_CORE_WARN("Vertex Counrt {0}", vertices.size());
                            

                        }
                    }
                }
            }
        }

        scene->Destroy();
        sdkManager->Destroy();
    }

} // namespace VectorVertex