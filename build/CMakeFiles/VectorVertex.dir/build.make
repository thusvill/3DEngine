# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bios/CLionProjects/2DEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bios/CLionProjects/2DEngine/build

# Include any dependencies generated for this target.
include CMakeFiles/VectorVertex.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/VectorVertex.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/VectorVertex.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VectorVertex.dir/flags.make

CMakeFiles/VectorVertex.dir/main.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/main.cpp.o: /home/bios/CLionProjects/2DEngine/main.cpp
CMakeFiles/VectorVertex.dir/main.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VectorVertex.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/main.cpp.o -MF CMakeFiles/VectorVertex.dir/main.cpp.o.d -o CMakeFiles/VectorVertex.dir/main.cpp.o -c /home/bios/CLionProjects/2DEngine/main.cpp

CMakeFiles/VectorVertex.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/main.cpp > CMakeFiles/VectorVertex.dir/main.cpp.i

CMakeFiles/VectorVertex.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/main.cpp -o CMakeFiles/VectorVertex.dir/main.cpp.s

CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.o: /home/bios/CLionProjects/2DEngine/Core/Keyboard_inputs.cpp
CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.o -MF CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.o.d -o CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.o -c /home/bios/CLionProjects/2DEngine/Core/Keyboard_inputs.cpp

CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Core/Keyboard_inputs.cpp > CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.i

CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Core/Keyboard_inputs.cpp -o CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.s

CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.o: /home/bios/CLionProjects/2DEngine/Core/MainApp.cpp
CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.o -MF CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.o.d -o CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.o -c /home/bios/CLionProjects/2DEngine/Core/MainApp.cpp

CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Core/MainApp.cpp > CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.i

CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Core/MainApp.cpp -o CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_buffer.cpp
CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_buffer.cpp

CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_buffer.cpp > CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_buffer.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_camera.cpp
CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_camera.cpp

CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_camera.cpp > CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_camera.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_descriptors.cpp
CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_descriptors.cpp

CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_descriptors.cpp > CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_descriptors.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_device.cpp
CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_device.cpp

CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_device.cpp > CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_device.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_game_object.cpp
CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_game_object.cpp

CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_game_object.cpp > CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_game_object.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_model.cpp
CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_model.cpp

CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_model.cpp > CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_model.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_pipeline.cpp
CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_pipeline.cpp

CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_pipeline.cpp > CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_pipeline.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_render_system.cpp
CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_render_system.cpp

CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_render_system.cpp > CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_render_system.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_renderer.cpp
CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_renderer.cpp

CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_renderer.cpp > CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_renderer.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_swap_chain.cpp
CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_swap_chain.cpp

CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_swap_chain.cpp > CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_swap_chain.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.s

CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.o: CMakeFiles/VectorVertex.dir/flags.make
CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.o: /home/bios/CLionProjects/2DEngine/Render/lve_window.cpp
CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.o: CMakeFiles/VectorVertex.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.o -MF CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.o.d -o CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.o -c /home/bios/CLionProjects/2DEngine/Render/lve_window.cpp

CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bios/CLionProjects/2DEngine/Render/lve_window.cpp > CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.i

CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bios/CLionProjects/2DEngine/Render/lve_window.cpp -o CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.s

# Object files for target VectorVertex
VectorVertex_OBJECTS = \
"CMakeFiles/VectorVertex.dir/main.cpp.o" \
"CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.o" \
"CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.o" \
"CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.o"

# External object files for target VectorVertex
VectorVertex_EXTERNAL_OBJECTS =

VectorVertex: CMakeFiles/VectorVertex.dir/main.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Core/Keyboard_inputs.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Core/MainApp.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_buffer.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_camera.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_descriptors.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_device.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_game_object.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_model.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_pipeline.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_render_system.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_renderer.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_swap_chain.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/Render/lve_window.cpp.o
VectorVertex: CMakeFiles/VectorVertex.dir/build.make
VectorVertex: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
VectorVertex: /usr/lib/x86_64-linux-gnu/libvulkan.so
VectorVertex: CMakeFiles/VectorVertex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/bios/CLionProjects/2DEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable VectorVertex"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VectorVertex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VectorVertex.dir/build: VectorVertex
.PHONY : CMakeFiles/VectorVertex.dir/build

CMakeFiles/VectorVertex.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VectorVertex.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VectorVertex.dir/clean

CMakeFiles/VectorVertex.dir/depend:
	cd /home/bios/CLionProjects/2DEngine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bios/CLionProjects/2DEngine /home/bios/CLionProjects/2DEngine /home/bios/CLionProjects/2DEngine/build /home/bios/CLionProjects/2DEngine/build /home/bios/CLionProjects/2DEngine/build/CMakeFiles/VectorVertex.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/VectorVertex.dir/depend

