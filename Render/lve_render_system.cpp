#include "lve_render_system.hpp"
#include <glm/gtc/constants.hpp>
#include <stdexcept>
namespace lve
{
    struct SimplePushConstantData
    {
        glm::mat4 transform{1.0f};
        glm::mat4 normalMatrix{1.f};
    };
    LveRenderSystem::LveRenderSystem(LveDevice &device, VkRenderPass renderPass) : lveDevice{device}
    {
        CreatePipelineLayout();
        CreatePipeline(renderPass);
    }

    LveRenderSystem::~LveRenderSystem()
    {
        vkDestroyPipelineLayout(lveDevice.device(), pipelineLayout, nullptr);
    }

    void LveRenderSystem::CreatePipelineLayout()
    {
        VkPushConstantRange pushConstantRange{};
        pushConstantRange.stageFlags = VK_SHADER_STAGE_VERTEX_BIT | VK_SHADER_STAGE_FRAGMENT_BIT;
        pushConstantRange.offset = 0;
        pushConstantRange.size = sizeof(SimplePushConstantData);
        VkPipelineLayoutCreateInfo pipelineLayoutInfo{};
        pipelineLayoutInfo.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
        pipelineLayoutInfo.setLayoutCount = 0;
        pipelineLayoutInfo.pSetLayouts = nullptr;
        pipelineLayoutInfo.pushConstantRangeCount = 1;
        pipelineLayoutInfo.pPushConstantRanges = &pushConstantRange;

        if (vkCreatePipelineLayout(lveDevice.device(), &pipelineLayoutInfo, nullptr, &pipelineLayout) != VK_SUCCESS)
        {
            throw std::runtime_error("Failed to create pipeline layout!");
        }
    }
    void LveRenderSystem::CreatePipeline(VkRenderPass renderPass)
    {

        assert(pipelineLayout != nullptr && "Cannot create pipeline before pipeline layout!");
        PipelineConfigInfo pipelineConfig{};
        LvePipeline::defaultPipelineConfigInfo(pipelineConfig);
        pipelineConfig.renderPass = renderPass;
        pipelineConfig.pipelineLayout = pipelineLayout;
        lvePipeline = std::make_unique<LvePipeline>(lveDevice, pipelineConfig, "/home/bios/CLionProjects/2DEngine/Resources/Shaders/vertex.vert.spv", "/home/bios/CLionProjects/2DEngine/Resources/Shaders/fragment.frag.spv");
    }

    void LveRenderSystem::renderGameobjects(FrameInfo &frame_info, std::vector<LveGameObject> &gameObjects)
    {
        lvePipeline->Bind(frame_info.command_buffer);
        auto projectionView = frame_info.camera.GetProjection() * frame_info.camera.GetView();
        for (auto &obj : gameObjects)
        {

            SimplePushConstantData push{};
            auto modelMatrix = obj.transform.mat4();
            push.transform = projectionView * modelMatrix;
            push.normalMatrix = obj.transform.normalMatrix();

            vkCmdPushConstants(frame_info.command_buffer, pipelineLayout, VK_SHADER_STAGE_VERTEX_BIT | VK_SHADER_STAGE_FRAGMENT_BIT, 0, sizeof(SimplePushConstantData), &push);
            obj.model->Bind(frame_info.command_buffer);
            obj.model->Draw(frame_info.command_buffer);
        }
    }
} // namespace lve
