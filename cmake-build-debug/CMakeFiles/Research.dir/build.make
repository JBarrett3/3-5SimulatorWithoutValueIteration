# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2022.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2022.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Research.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Research.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Research.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Research.dir/flags.make

CMakeFiles/Research.dir/main.cpp.obj: CMakeFiles/Research.dir/flags.make
CMakeFiles/Research.dir/main.cpp.obj: ../main.cpp
CMakeFiles/Research.dir/main.cpp.obj: CMakeFiles/Research.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Research.dir/main.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Research.dir/main.cpp.obj -MF CMakeFiles\Research.dir\main.cpp.obj.d -o CMakeFiles\Research.dir\main.cpp.obj -c C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator\main.cpp

CMakeFiles/Research.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Research.dir/main.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator\main.cpp > CMakeFiles\Research.dir\main.cpp.i

CMakeFiles/Research.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Research.dir/main.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator\main.cpp -o CMakeFiles\Research.dir\main.cpp.s

# Object files for target Research
Research_OBJECTS = \
"CMakeFiles/Research.dir/main.cpp.obj"

# External object files for target Research
Research_EXTERNAL_OBJECTS =

Research.exe: CMakeFiles/Research.dir/main.cpp.obj
Research.exe: CMakeFiles/Research.dir/build.make
Research.exe: CMakeFiles/Research.dir/linklibs.rsp
Research.exe: CMakeFiles/Research.dir/objects1.rsp
Research.exe: CMakeFiles/Research.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Research.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Research.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Research.dir/build: Research.exe
.PHONY : CMakeFiles/Research.dir/build

CMakeFiles/Research.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Research.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Research.dir/clean

CMakeFiles/Research.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator\cmake-build-debug C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator\cmake-build-debug C:\Users\James\OneDrive\Documents\OneDrive\Documents\College\Research\3-5Simulator\cmake-build-debug\CMakeFiles\Research.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Research.dir/depend

