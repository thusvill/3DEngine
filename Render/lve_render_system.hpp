#pragma once

#include "lve_pipeline.hpp"
#include "lve_device.hpp"
#include "lve_camera.hpp"
#include "lve_game_object.hpp"
#include "lve_frame_info.hpp"

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
        LveRenderSystem(LveDevice &device, VkRenderPass renderPass, VkDescriptorSetLayout global_set_layout);
        ~LveRenderSystem();

        LveRenderSystem(const LveRenderSystem &) = delete;
        LveRenderSystem &operator=(const LveRenderSystem &) = delete;
        void renderGameobjects(FrameInfo &frame_info);

    private:
        void CreatePipelineLayout(VkDescriptorSetLayout global_set_layout);
        void CreatePipeline(VkRenderPass renderPass);

        LveDevice &lveDevice;

        std::unique_ptr<LvePipeline> lvePipeline;

        VkPipelineLayout pipelineLayout;
    };
} // namespace lve
