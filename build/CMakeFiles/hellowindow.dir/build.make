# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /home/test/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/test/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/test/share/C/opengl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/test/share/C/opengl/build

# Include any dependencies generated for this target.
include CMakeFiles/hellowindow.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hellowindow.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hellowindow.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hellowindow.dir/flags.make

CMakeFiles/hellowindow.dir/hellowindow/main.cpp.o: CMakeFiles/hellowindow.dir/flags.make
CMakeFiles/hellowindow.dir/hellowindow/main.cpp.o: /home/test/share/C/opengl/hellowindow/main.cpp
CMakeFiles/hellowindow.dir/hellowindow/main.cpp.o: CMakeFiles/hellowindow.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/test/share/C/opengl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hellowindow.dir/hellowindow/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hellowindow.dir/hellowindow/main.cpp.o -MF CMakeFiles/hellowindow.dir/hellowindow/main.cpp.o.d -o CMakeFiles/hellowindow.dir/hellowindow/main.cpp.o -c /home/test/share/C/opengl/hellowindow/main.cpp

CMakeFiles/hellowindow.dir/hellowindow/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/hellowindow.dir/hellowindow/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/test/share/C/opengl/hellowindow/main.cpp > CMakeFiles/hellowindow.dir/hellowindow/main.cpp.i

CMakeFiles/hellowindow.dir/hellowindow/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/hellowindow.dir/hellowindow/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/test/share/C/opengl/hellowindow/main.cpp -o CMakeFiles/hellowindow.dir/hellowindow/main.cpp.s

CMakeFiles/hellowindow.dir/src/glad.c.o: CMakeFiles/hellowindow.dir/flags.make
CMakeFiles/hellowindow.dir/src/glad.c.o: /home/test/share/C/opengl/src/glad.c
CMakeFiles/hellowindow.dir/src/glad.c.o: CMakeFiles/hellowindow.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/test/share/C/opengl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/hellowindow.dir/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/hellowindow.dir/src/glad.c.o -MF CMakeFiles/hellowindow.dir/src/glad.c.o.d -o CMakeFiles/hellowindow.dir/src/glad.c.o -c /home/test/share/C/opengl/src/glad.c

CMakeFiles/hellowindow.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/hellowindow.dir/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/test/share/C/opengl/src/glad.c > CMakeFiles/hellowindow.dir/src/glad.c.i

CMakeFiles/hellowindow.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/hellowindow.dir/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/test/share/C/opengl/src/glad.c -o CMakeFiles/hellowindow.dir/src/glad.c.s

# Object files for target hellowindow
hellowindow_OBJECTS = \
"CMakeFiles/hellowindow.dir/hellowindow/main.cpp.o" \
"CMakeFiles/hellowindow.dir/src/glad.c.o"

# External object files for target hellowindow
hellowindow_EXTERNAL_OBJECTS =

hellowindow: CMakeFiles/hellowindow.dir/hellowindow/main.cpp.o
hellowindow: CMakeFiles/hellowindow.dir/src/glad.c.o
hellowindow: CMakeFiles/hellowindow.dir/build.make
hellowindow: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
hellowindow: CMakeFiles/hellowindow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/test/share/C/opengl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable hellowindow"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hellowindow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hellowindow.dir/build: hellowindow
.PHONY : CMakeFiles/hellowindow.dir/build

CMakeFiles/hellowindow.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hellowindow.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hellowindow.dir/clean

CMakeFiles/hellowindow.dir/depend:
	cd /home/test/share/C/opengl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/test/share/C/opengl /home/test/share/C/opengl /home/test/share/C/opengl/build /home/test/share/C/opengl/build /home/test/share/C/opengl/build/CMakeFiles/hellowindow.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/hellowindow.dir/depend

