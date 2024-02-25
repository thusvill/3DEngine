#pragma once

#include "../Render/lve_window.hpp"
#include "../Render/lve_device.hpp"
#include "../Render/lve_renderer.hpp"
#include "../Render/lve_buffer.hpp"
#include "../Render/lve_game_object.hpp"
#include "../Render/lve_camera.hpp"
#include "Keyboard_inputs.hpp"

#define GLM_FORCE_RADIANS
#define GLM_FORCE_DEPTH_ZERO_TO_ONE
#include <glm/glm.hpp>

#include <memory>
#include <vector>
#include <chrono>
#include <array>

namespace lve
{
    struct GlobalUBO
    {
        glm::mat4 projection_view{1.f};
        glm::vec3 light_direction = glm::normalize(glm::vec3{1.f, -3.f, -1.f});
    };

    class VectorVetrex
    {
    public:
        VectorVetrex();
        ~VectorVetrex();

        VectorVetrex(const VectorVetrex &) = delete;
        VectorVetrex &operator=(const VectorVetrex &) = delete;

        static constexpr int WIDTH = 600;
        static constexpr int HEIGHT = 800;
        void run();

    private:
        void loadGameobjects();

        LveWindow lveWindow{WIDTH, HEIGHT, "VectorVertex"};
        LveDevice lveDevice{lveWindow};
        LveRenderer lveRenderer{lveWindow, lveDevice};

        std::vector<LveGameObject> gameObjects;
    };
} // namespace lve
