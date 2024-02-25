#pragma once

#include <memory>
#include "lve_model.hpp"

namespace lve
{
    struct RigidBody2dComponent
    {
        glm::vec2 velocity;
        float mass{1.0f};
    };
    struct Transform2DComponent
    {

        glm::vec2 translation{};
        glm::vec2 scale{1.f};
        float rotation;
        glm::mat2 mat2()
        {
            const float s = glm::sin(rotation);
            const float c = glm::cos(rotation);
            glm::mat2 rotMatrix = {
                {c,s}, {-s, c}};
            glm::mat2 scale_mat{{scale.x, .0f}, {.0f, scale.y}};

            return rotMatrix * scale_mat;
        }
    };
    class LveGameObject
    {
    public:
        using id_t = unsigned int;
        static LveGameObject CreateGameObject()
        {
            static id_t current_id = 0;
            return LveGameObject{current_id++};
        }

        LveGameObject(const LveGameObject &) = delete;
        LveGameObject &operator=(const LveGameObject &) = delete;
        LveGameObject(LveGameObject &&) = default;
        LveGameObject &operator=(LveGameObject &&) = default;

        const id_t getId() { return id; }

        std::shared_ptr<LveModel> model{};
        glm::vec3 color{};
        Transform2DComponent transform2d;
        RigidBody2dComponent rigidBody2d;

    private:
        LveGameObject(id_t id) : id{id}
        {
        }
        id_t id;
    };
} // namespace lve
