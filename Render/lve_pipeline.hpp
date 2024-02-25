#pragma once
#include "lve_device.hpp"
#include <string>
#include <cassert>
#include <vector>

namespace lve
{
    struct PipelineConfigInfo
    {
        PipelineConfigInfo(const PipelineConfigInfo &) = delete;
        PipelineConfigInfo &operator=(const PipelineConfigInfo &) = delete;

        VkPipelineViewportStateCreateInfo viewportInfo;
        VkPipelineInputAssemblyStateCreateInfo inputAssemblyInfo;
        VkPipelineRasterizationStateCreateInfo rasterizationInfo;
        VkPipelineMultisampleStateCreateInfo multisampleInfo;
        VkPipelineColorBlendAttachmentState colorBlendAttachment;
        VkPipelineColorBlendStateCreateInfo colorBlendInfo;
        VkPipelineDepthStencilStateCreateInfo depthStencilInfo;
        std::vector<VkDynamicState> dynamicStateEnables;
        VkPipelineDynamicStateCreateInfo dynamicStateInfo;
        VkPipelineLayout pipelineLayout = nullptr;
        VkRenderPass renderPass = nullptr;
        uint32_t subpass = 0;
    };
    class LvePipeline
    {
    public:
        LvePipeline(LveDevice &device, const PipelineConfigInfo &config_info, const std::string vertex_source, const std::string fragment_source);
        ~LvePipeline();

        LvePipeline(const LvePipeline &) = delete;
        LvePipeline &operator=(const LvePipeline &) = delete;

        void Bind(VkCommandBuffer commandBUffer);

        static void defaultPipelineConfigInfo(PipelineConfigInfo &configInfo);

    private:
        static std::vector<char> readFile(const std::string &file_path);
        void CreateGraphicsPipeline(const PipelineConfigInfo &config_info, const std::string vertex_source, const std::string fragment_source);
        void CreateShaderModule(const std::vector<char> &code, VkShaderModule *shaderModule);
        LveDevice &lveDevice;
        VkPipeline graphiscPipeline;
        VkShaderModule vertShaderModule;
        VkShaderModule fragShaderModule;
    };
} // namespace lve
