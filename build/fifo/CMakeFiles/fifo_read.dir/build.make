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
CMAKE_SOURCE_DIR = /home/hli/code/IPC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hli/code/IPC/build

# Include any dependencies generated for this target.
include fifo/CMakeFiles/fifo_read.dir/depend.make

# Include the progress variables for this target.
include fifo/CMakeFiles/fifo_read.dir/progress.make

# Include the compile flags for this target's objects.
include fifo/CMakeFiles/fifo_read.dir/flags.make

fifo/CMakeFiles/fifo_read.dir/fifo_read.cpp.o: fifo/CMakeFiles/fifo_read.dir/flags.make
fifo/CMakeFiles/fifo_read.dir/fifo_read.cpp.o: ../fifo/fifo_read.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hli/code/IPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object fifo/CMakeFiles/fifo_read.dir/fifo_read.cpp.o"
	cd /home/hli/code/IPC/build/fifo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fifo_read.dir/fifo_read.cpp.o -c /home/hli/code/IPC/fifo/fifo_read.cpp

fifo/CMakeFiles/fifo_read.dir/fifo_read.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fifo_read.dir/fifo_read.cpp.i"
	cd /home/hli/code/IPC/build/fifo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hli/code/IPC/fifo/fifo_read.cpp > CMakeFiles/fifo_read.dir/fifo_read.cpp.i

fifo/CMakeFiles/fifo_read.dir/fifo_read.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fifo_read.dir/fifo_read.cpp.s"
	cd /home/hli/code/IPC/build/fifo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hli/code/IPC/fifo/fifo_read.cpp -o CMakeFiles/fifo_read.dir/fifo_read.cpp.s

# Object files for target fifo_read
fifo_read_OBJECTS = \
"CMakeFiles/fifo_read.dir/fifo_read.cpp.o"

# External object files for target fifo_read
fifo_read_EXTERNAL_OBJECTS =

fifo/fifo_read: fifo/CMakeFiles/fifo_read.dir/fifo_read.cpp.o
fifo/fifo_read: fifo/CMakeFiles/fifo_read.dir/build.make
fifo/fifo_read: fifo/CMakeFiles/fifo_read.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hli/code/IPC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fifo_read"
	cd /home/hli/code/IPC/build/fifo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fifo_read.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
fifo/CMakeFiles/fifo_read.dir/build: fifo/fifo_read

.PHONY : fifo/CMakeFiles/fifo_read.dir/build

fifo/CMakeFiles/fifo_read.dir/clean:
	cd /home/hli/code/IPC/build/fifo && $(CMAKE_COMMAND) -P CMakeFiles/fifo_read.dir/cmake_clean.cmake
.PHONY : fifo/CMakeFiles/fifo_read.dir/clean

fifo/CMakeFiles/fifo_read.dir/depend:
	cd /home/hli/code/IPC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hli/code/IPC /home/hli/code/IPC/fifo /home/hli/code/IPC/build /home/hli/code/IPC/build/fifo /home/hli/code/IPC/build/fifo/CMakeFiles/fifo_read.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fifo/CMakeFiles/fifo_read.dir/depend
