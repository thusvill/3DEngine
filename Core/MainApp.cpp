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
        LveRenderSystem renderSystem{lveDevice, lveRenderer.GetSwapchainRenderPass()};
        while (!lveWindow.shouldClose())
        {
            glfwPollEvents();
            if (auto commandBuffer = lveRenderer.BeginFrame())
            {
                lveRenderer.BeginSwapchainRenderPass(commandBuffer);
                renderSystem.renderGameobjects(commandBuffer, gameObjects);
                lveRenderer.EndSwapchainRenderPass(commandBuffer);
                lveRenderer.EndFrame();
            }
        }

        vkDeviceWaitIdle(lveDevice.device());
    }
    void VectorVetrex::loadGameobjects()
    {
        std::vector<LveModel::Vertex> vertices{
            {{0.0f, -0.5f}, {1.0f, 0.0f, 0.0f}},
            {{0.5f, 0.5f}, {0.0f, 1.0f, 0.0f}},
            {{-0.5f, 0.5f}, {0.0f, 0.0f, 1.0f}}};
        auto lveModel = std::make_shared<LveModel>(lveDevice, vertices);

        auto triangle = LveGameObject::CreateGameObject();
        triangle.model = lveModel;
        triangle.color = {.1f,
                          .6f,
                          .1f};
        triangle.transform2d.translation.x = .2f;
        triangle.transform2d.scale = {2.0f, 1.0f};
        triangle.transform2d.rotation = .25f * glm::two_pi<float>();
        gameObjects.push_back(std::move(triangle));
    }
   
} // namespace lve
