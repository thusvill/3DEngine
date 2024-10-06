#pragma once
#include <vvpch.hpp>
#include <Log.h>
#include "vk_window.hpp"
#include "vk_device.hpp"
#include "vk_swap_chain.hpp"

namespace VectorVertex
{
    class VKRenderer
    {
    public:
        VKRenderer() = default;
        VKRenderer(VKWindow &window, VKDevice &device);
        ~VKRenderer();

        VKRenderer(const VKRenderer &) = delete;
        VKRenderer &operator=(const VKRenderer &) = delete;

        VkRenderPass GetSwapchainRenderPass() const
        {
            return lveSwapChain->getRenderPass();
        }
        float GetAspectRatio() const
        {
            return lveSwapChain->extentAspectRatio();
        }

        bool IsFrameInProgress() { return isFrameStarted; }
        VkCommandBuffer GetCurrentCommandBuffer() const
        {
            VV_CORE_ASSERT(isFrameStarted , "Cannot get command buffer when frame not in progress");
            return commandBuffers[currentFrameIndex];
        }
        int GetFrameIndex() const
        {
            VV_CORE_ASSERT(isFrameStarted , "Cannot get frame index when frame not in progress");
            return currentFrameIndex;
        }
        VkCommandBuffer
        BeginFrame();
        void EndFrame();
        void BeginSwapchainRenderPass(VkCommandBuffer commandBuffer);
        void BeginSwapchainRenderPass(VkCommandBuffer commandBuffer, VkFramebuffer framebuffer);
        void EndSwapchainRenderPass(VkCommandBuffer commandBuffer);
        uint32_t GetSwapchainImageCount() const { return lveSwapChain->getImageCount(); }
        VKSwapChain &Get_Swapchain() const { return *lveSwapChain; }


    private:
        void
        CreateCommandBuffers();
        void FreeCommandBuffers();

        void recreateSwapChain();

        VKWindow &vkWindow;
        VKDevice &vkDevice;
        std::unique_ptr<VKSwapChain> lveSwapChain;

        std::vector<VkCommandBuffer> commandBuffers;

        uint32_t currentImageIndex;
        int currentFrameIndex{0};
        bool isFrameStarted{false};
    };
} // namespace VectorVertex