#include <Layer.h>
#include "Imgui_Layer.hpp"
#include "../vv_material.hpp"
namespace VectorVertex
{
class Scene;
class EditorLayer: public Layer{
    public:
        EditorLayer();
        void SetupImgui(VVDevice* vv_device, VVRenderer* vv_renderer, VVWindow* vv_window);
        ~EditorLayer() = default;
        virtual void OnAttach() override;
        virtual void OnDetach() override;
        virtual void OnUpdate() override;
        virtual void OnRender(FrameInfo &frameInfo) override;
        virtual void OnImGuiRender(FrameInfo &frameInfo) override;

        ImTextureID sceneImageView;
        VkExtent2D Viewport_Extent{800,800};

        bool is_viewport_resized = false;

    private:
        Imgui_Layer imgui_layer;
        ImVec2 prev_size;
        Ref<Scene> m_ActiveScene;
        
};
} 
