# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build"

# Include any dependencies generated for this target.
include CMakeFiles/biharmonic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/biharmonic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/biharmonic.dir/flags.make

CMakeFiles/biharmonic.dir/main.cpp.o: CMakeFiles/biharmonic.dir/flags.make
CMakeFiles/biharmonic.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/biharmonic.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/biharmonic.dir/main.cpp.o -c "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/main.cpp"

CMakeFiles/biharmonic.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/biharmonic.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/main.cpp" > CMakeFiles/biharmonic.dir/main.cpp.i

CMakeFiles/biharmonic.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/biharmonic.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/main.cpp" -o CMakeFiles/biharmonic.dir/main.cpp.s

# Object files for target biharmonic
biharmonic_OBJECTS = \
"CMakeFiles/biharmonic.dir/main.cpp.o"

# External object files for target biharmonic
biharmonic_EXTERNAL_OBJECTS =

biharmonic: CMakeFiles/biharmonic.dir/main.cpp.o
biharmonic: CMakeFiles/biharmonic.dir/build.make
biharmonic: libcore.a
biharmonic: /usr/lib/x86_64-linux-gnu/libGLX.so
biharmonic: /usr/lib/x86_64-linux-gnu/libOpenGL.so
biharmonic: glad/libglad.a
biharmonic: glfw/src/libglfw3.a
biharmonic: /usr/lib/x86_64-linux-gnu/librt.so
biharmonic: /usr/lib/x86_64-linux-gnu/libm.so
biharmonic: /usr/lib/x86_64-linux-gnu/libX11.so
biharmonic: CMakeFiles/biharmonic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable biharmonic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/biharmonic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/biharmonic.dir/build: biharmonic

.PHONY : CMakeFiles/biharmonic.dir/build

CMakeFiles/biharmonic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/biharmonic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/biharmonic.dir/clean

CMakeFiles/biharmonic.dir/depend:
	cd "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist" "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist" "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build" "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build" "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build/CMakeFiles/biharmonic.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/biharmonic.dir/depend

