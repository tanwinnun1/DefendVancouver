# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master/cmake-build-debug

# Utility rule file for gl3w_gen.

# Include the progress variables for this target.
include gl3w/CMakeFiles/gl3w_gen.dir/progress.make

gl3w/CMakeFiles/gl3w_gen: gl3w/src/gl3w.c
gl3w/CMakeFiles/gl3w_gen: gl3w/include/GL/gl3w.h
gl3w/CMakeFiles/gl3w_gen: gl3w/include/GL/glcorearb.h


gl3w/src/gl3w.c: ../gl3w/gl3w_gen.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating src/gl3w.c, include/GL/gl3w.h, include/GL/glcorearb.h"
	cd /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master/cmake-build-debug/gl3w && python /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master/gl3w/gl3w_gen.py

gl3w/include/GL/gl3w.h: gl3w/src/gl3w.c
	@$(CMAKE_COMMAND) -E touch_nocreate gl3w/include/GL/gl3w.h

gl3w/include/GL/glcorearb.h: gl3w/src/gl3w.c
	@$(CMAKE_COMMAND) -E touch_nocreate gl3w/include/GL/glcorearb.h

gl3w_gen: gl3w/CMakeFiles/gl3w_gen
gl3w_gen: gl3w/src/gl3w.c
gl3w_gen: gl3w/include/GL/gl3w.h
gl3w_gen: gl3w/include/GL/glcorearb.h
gl3w_gen: gl3w/CMakeFiles/gl3w_gen.dir/build.make

.PHONY : gl3w_gen

# Rule to build all files generated by this target.
gl3w/CMakeFiles/gl3w_gen.dir/build: gl3w_gen

.PHONY : gl3w/CMakeFiles/gl3w_gen.dir/build

gl3w/CMakeFiles/gl3w_gen.dir/clean:
	cd /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master/cmake-build-debug/gl3w && $(CMAKE_COMMAND) -P CMakeFiles/gl3w_gen.dir/cmake_clean.cmake
.PHONY : gl3w/CMakeFiles/gl3w_gen.dir/clean

gl3w/CMakeFiles/gl3w_gen.dir/depend:
	cd /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master/gl3w /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master/cmake-build-debug /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master/cmake-build-debug/gl3w /Users/tanwin.nun/Desktop/projects/repos/DefendVancouver-master/cmake-build-debug/gl3w/CMakeFiles/gl3w_gen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gl3w/CMakeFiles/gl3w_gen.dir/depend
