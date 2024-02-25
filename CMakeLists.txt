cmake_minimum_required(VERSION 3.10)

project(VectorVertex)

# Add GLFW library
find_package(glfw3 REQUIRED)
include_directories(${GLFW_INCLUDE_DIRS})

# Add Vulkan library
find_package(Vulkan REQUIRED)
include_directories(${Vulkan_INCLUDE_DIRS})

# Collect all .cpp, .h, and .hpp files in the source directory
file(GLOB_RECURSE SOURCES "Render/*.cpp" "Render/*.hpp" "Render/*.h" "Core/*.hpp" "Core/*.cpp")

# Add executable and link libraries
add_executable(VectorVertex main.cpp ${SOURCES})
target_link_libraries(VectorVertex glfw ${Vulkan_LIBRARIES})
