#include "MainApp.hpp"
#include "../Render/lve_render_system.hpp"
#include <glm/gtc/constants.hpp>
#include <stdexcept>
namespace lve
{
    VectorVetrex::VectorVetrex()
    {
        loadGameobjects();
    }

    VectorVetrex::~VectorVetrex()
    {
    }

    void VectorVetrex::run()
    {
        std::vector<std::unique_ptr<LveBuffer>> ubo_buffers(LveSwapChain::MAX_FRAMES_IN_FLIGHT);
        for (int i = 0; i < ubo_buffers.size(); i++)
        {
            ubo_buffers[i] = std::make_unique<LveBuffer>(lveDevice, sizeof(GlobalUBO), 1, VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT,
                                                         VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT);
            ubo_buffers[i]->map();
        }

        LveRenderSystem renderSystem{lveDevice, lveRenderer.GetSwapchainRenderPass()};
        LveCamera camera{};

        auto viewerObject = LveGameObject::CreateGameObject();
        KeyboardInputs camControl{};

        auto currentTime = std::chrono::high_resolution_clock::now();

        while (!lveWindow.shouldClose())
        {
            auto newTime = std::chrono::high_resolution_clock::now();
            float frameTime = std::chrono::duration<float, std::chrono::seconds::period>(newTime - currentTime).count();
            currentTime = newTime;

            camControl.moveInPlaneXZ(lveWindow.getGLFWwindow(), frameTime, viewerObject);
            camera.SetViewYXZ(viewerObject.transform.translation, viewerObject.transform.rotation);

            auto aspectRatio = lveRenderer.GetAspectRatio();
            // camera.SetOrthographicProjection(-aspectRatio, aspectRatio, -1, 1, -1, 1);
            camera.SetPerspectiveProjection(glm::radians(50.f), aspectRatio, 0.1, 100.f);

            glfwPollEvents();
            if (auto commandBuffer = lveRenderer.BeginFrame())
            {
                int frame_index = lveRenderer.GetFrameIndex();
                FrameInfo frameInfo{
                    frame_index,
                    frameTime,
                    commandBuffer,
                    camera,
                };

                // update
                GlobalUBO ubo{};
                ubo.projection_view = camera.GetProjection() * camera.GetView();
                ubo_buffers[frame_index]->writeToBuffer(&ubo);
                ubo_buffers[frame_index]->flush();
                // render
                lveRenderer.BeginSwapchainRenderPass(commandBuffer);
                renderSystem.renderGameobjects(frameInfo, gameObjects);
                lveRenderer.EndSwapchainRenderPass(commandBuffer);
                lveRenderer.EndFrame();
            }
        }

        vkDeviceWaitIdle(lveDevice.device());
    }

    void VectorVetrex::loadGameobjects()
    {
        std::shared_ptr<LveModel> flat_vase = LveModel::createModelFromFile(lveDevice, "/home/bios/CLionProjects/2DEngine/Resources/Models/flat_vase.obj");
        auto flat_vase_object = LveGameObject::CreateGameObject();
        flat_vase_object.model = flat_vase;
        flat_vase_object.transform.translation = {-.5f, .5f, 2.5f};
        flat_vase_object.transform.scale = glm::vec3{3.f, 1.5f, 3.f};
        gameObjects.push_back(std::move(flat_vase_object));

        std::shared_ptr<LveModel> smooth_vase = LveModel::createModelFromFile(lveDevice, "/home/bios/CLionProjects/2DEngine/Resources/Models/smooth_vase.obj");
        auto smooth_vase_object = LveGameObject::CreateGameObject();
        smooth_vase_object.model = smooth_vase;
        smooth_vase_object.transform.translation = {.5f, .5f, 2.5f};
        smooth_vase_object.transform.scale = glm::vec3{3.f, 1.5f, 3.f};
        gameObjects.push_back(std::move(smooth_vase_object));
    }

} // namespace lve
