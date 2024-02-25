#pragma once

#include "../Render/lve_pipeline.hpp"
#include "../Render/lve_device.hpp"

#include "../Render/lve_game_object.hpp"

#define GLM_FORCE_RADIANS
#define GLM_FORCE_DEPTH_ZERO_TO_ONE
#include <glm/glm.hpp>

#include <memory>
#include <vector>
#include <array>

namespace lve
{
    class LveRenderSystem
    {
    public:
        LveRenderSystem(LveDevice &device, VkRenderPass renderPass);
        ~LveRenderSystem();

        LveRenderSystem(const LveRenderSystem &) = delete;
        LveRenderSystem &operator=(const LveRenderSystem &) = delete;
        void renderGameobjects(VkCommandBuffer commandBuffer, std::vector<LveGameObject> &gameObjects);

    private:
        void CreatePipelineLayout();
        void CreatePipeline(VkRenderPass renderPass);

        LveDevice &lveDevice;

        std::unique_ptr<LvePipeline> lvePipeline;

        VkPipelineLayout pipelineLayout;
    };
} // namespace lve
