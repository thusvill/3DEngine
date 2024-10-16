#pragma once
#include <vvpch.hpp>
#include "vk_device.hpp"

// vulkan headers
#include <vulkan/vulkan.h>

namespace VectorVertex
{

  class VKSwapChain
  {
  public:
    static constexpr int MAX_FRAMES_IN_FLIGHT = 2;

    VKSwapChain(VKDevice &deviceRef, VkExtent2D windowExtent);
    VKSwapChain(VKDevice &deviceRef, VkExtent2D windowExtent, std::shared_ptr<VKSwapChain> previous);
    ~VKSwapChain();

    VKSwapChain(const VKSwapChain &) = delete;
    VKSwapChain &operator=(const VKSwapChain &) = delete;

    VkFramebuffer getFrameBuffer(int index) { return swapChainFramebuffers[index]; }
    VkRenderPass getRenderPass() { return renderPass; }
    VkImageView getImageView(int index) { return swapChainImageViews[index]; }
    size_t imageCount() { return swapChainImages.size(); }
    VkFormat getSwapChainImageFormat() { return swapChainImageFormat; }
    VkExtent2D getSwapChainExtent() { return swapChainExtent; }
    uint32_t width() { return swapChainExtent.width; }
    uint32_t height() { return swapChainExtent.height; }

    float extentAspectRatio()
    {
      return static_cast<float>(swapChainExtent.width) / static_cast<float>(swapChainExtent.height);
    }
    VkFormat findDepthFormat();

    VkResult acquireNextImage(uint32_t *imageIndex);
    VkResult submitCommandBuffers(const VkCommandBuffer *buffers, uint32_t *imageIndex);
    VkResult submitCommandBuffersToAFence(const VkCommandBuffer *buffers, uint32_t *imageIndex, VkFence fence);

    bool compareSwapFormats(const VKSwapChain &swapChain) const
    {
      return swapChain.swapChainDepthFormat == swapChainDepthFormat && swapChain.swapChainImageFormat == swapChainImageFormat;
    }

    uint32_t getImageCount() const { return static_cast<uint32_t>(swapChainImages.size()); }

    
    VkSemaphore GetRenderFinishedSemaphore() {return renderFinishedSemaphores[currentFrame];}
    static bool isWaitingForFence;
    VkFence getCurrentFence() {return inFlightFences[currentFrame];}

  private:
    void
    init();
    void createSwapChain();
    void createImageViews();
    void createDepthResources();
    void createRenderPass();
    void createFramebuffers();
    void createSyncObjects();

    // Helper functions
    VkSurfaceFormatKHR chooseSwapSurfaceFormat(
        const std::vector<VkSurfaceFormatKHR> &availableFormats);
    VkPresentModeKHR chooseSwapPresentMode(
        const std::vector<VkPresentModeKHR> &availablePresentModes);
    VkExtent2D chooseSwapExtent(const VkSurfaceCapabilitiesKHR &capabilities);

    VkFormat swapChainImageFormat;
    VkFormat swapChainDepthFormat;
    VkExtent2D swapChainExtent;

    std::vector<VkFramebuffer> swapChainFramebuffers;
    VkRenderPass renderPass;

    std::vector<VkImage> depthImages;
    std::vector<VkDeviceMemory> depthImageMemorys;
    std::vector<VkImageView> depthImageViews;
    std::vector<VkImage> swapChainImages;
    std::vector<VkImageView> swapChainImageViews;

    VKDevice &device;
    VkExtent2D windowExtent;

    VkSwapchainKHR swapChain;
    std::shared_ptr<VKSwapChain> oldSwapChain;

    std::vector<VkSemaphore> imageAvailableSemaphores;
    std::vector<VkSemaphore> renderFinishedSemaphores;
    std::vector<VkFence> inFlightFences;
    std::vector<VkFence> imagesInFlight;
    size_t currentFrame = 0;
  };

} // namespace VectorVertex
