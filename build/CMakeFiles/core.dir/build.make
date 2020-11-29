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
include CMakeFiles/core.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/core.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/core.dir/flags.make

CMakeFiles/core.dir/src/biharmonic_distance.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/biharmonic_distance.cpp.o: ../src/biharmonic_distance.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/core.dir/src/biharmonic_distance.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/biharmonic_distance.cpp.o -c "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/src/biharmonic_distance.cpp"

CMakeFiles/core.dir/src/biharmonic_distance.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/biharmonic_distance.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/src/biharmonic_distance.cpp" > CMakeFiles/core.dir/src/biharmonic_distance.cpp.i

CMakeFiles/core.dir/src/biharmonic_distance.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/biharmonic_distance.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/src/biharmonic_distance.cpp" -o CMakeFiles/core.dir/src/biharmonic_distance.cpp.s

CMakeFiles/core.dir/src/biharmonic_summands.cpp.o: CMakeFiles/core.dir/flags.make
CMakeFiles/core.dir/src/biharmonic_summands.cpp.o: ../src/biharmonic_summands.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/core.dir/src/biharmonic_summands.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core.dir/src/biharmonic_summands.cpp.o -c "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/src/biharmonic_summands.cpp"

CMakeFiles/core.dir/src/biharmonic_summands.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/core.dir/src/biharmonic_summands.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/src/biharmonic_summands.cpp" > CMakeFiles/core.dir/src/biharmonic_summands.cpp.i

CMakeFiles/core.dir/src/biharmonic_summands.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/core.dir/src/biharmonic_summands.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/src/biharmonic_summands.cpp" -o CMakeFiles/core.dir/src/biharmonic_summands.cpp.s

# Object files for target core
core_OBJECTS = \
"CMakeFiles/core.dir/src/biharmonic_distance.cpp.o" \
"CMakeFiles/core.dir/src/biharmonic_summands.cpp.o"

# External object files for target core
core_EXTERNAL_OBJECTS =

libcore.a: CMakeFiles/core.dir/src/biharmonic_distance.cpp.o
libcore.a: CMakeFiles/core.dir/src/biharmonic_summands.cpp.o
libcore.a: CMakeFiles/core.dir/build.make
libcore.a: CMakeFiles/core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libcore.a"
	$(CMAKE_COMMAND) -P CMakeFiles/core.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/core.dir/build: libcore.a

.PHONY : CMakeFiles/core.dir/build

CMakeFiles/core.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/core.dir/cmake_clean.cmake
.PHONY : CMakeFiles/core.dir/clean

CMakeFiles/core.dir/depend:
	cd "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist" "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist" "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build" "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build" "/home/williamngo/Documents/School/Fall 2020/Geometry Processing/Project/biharmonic-dist/build/CMakeFiles/core.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/core.dir/depend

