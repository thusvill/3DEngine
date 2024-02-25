#pragma once

#include "lve_camera.hpp"

#include <vulkan/vulkan.h>

namespace lve
{
    struct FrameInfo
    {
        int frame_index;
        float frame_time;
        VkCommandBuffer command_buffer;
        LveCamera &camera;
    };
} // namespace lve
