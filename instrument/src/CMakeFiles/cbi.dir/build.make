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
CMAKE_SOURCE_DIR = /home/WAFLGo/instrument

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/WAFLGo/instrument

# Include any dependencies generated for this target.
include src/CMakeFiles/cbi.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/cbi.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/cbi.dir/flags.make

src/CMakeFiles/cbi.dir/cbi.cpp.o: src/CMakeFiles/cbi.dir/flags.make
src/CMakeFiles/cbi.dir/cbi.cpp.o: src/cbi.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/WAFLGo/instrument/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/cbi.dir/cbi.cpp.o"
	cd /home/WAFLGo/instrument/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cbi.dir/cbi.cpp.o -c /home/WAFLGo/instrument/src/cbi.cpp

src/CMakeFiles/cbi.dir/cbi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cbi.dir/cbi.cpp.i"
	cd /home/WAFLGo/instrument/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/WAFLGo/instrument/src/cbi.cpp > CMakeFiles/cbi.dir/cbi.cpp.i

src/CMakeFiles/cbi.dir/cbi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cbi.dir/cbi.cpp.s"
	cd /home/WAFLGo/instrument/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/WAFLGo/instrument/src/cbi.cpp -o CMakeFiles/cbi.dir/cbi.cpp.s

# Object files for target cbi
cbi_OBJECTS = \
"CMakeFiles/cbi.dir/cbi.cpp.o"

# External object files for target cbi
cbi_EXTERNAL_OBJECTS =

bin/cbi: src/CMakeFiles/cbi.dir/cbi.cpp.o
bin/cbi: src/CMakeFiles/cbi.dir/build.make
bin/cbi: /home/SVF/Release-build/svf-llvm/libSvfLLVM.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMBitWriter.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMCore.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMipo.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMIRReader.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMInstCombine.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMInstrumentation.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMTarget.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMLinker.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMAnalysis.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMScalarOpts.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMSupport.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMBitWriter.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMAsmParser.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMInstCombine.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMAggressiveInstCombine.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMFrontendOpenMP.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMVectorize.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMTransformUtils.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMAnalysis.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMObject.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMBitReader.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMMCParser.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMTextAPI.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMProfileData.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMCore.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMRemarks.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMBitstreamReader.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMMC.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMBinaryFormat.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMDebugInfoCodeView.a
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMSupport.a
bin/cbi: /usr/local/lib/libz.so
bin/cbi: /usr/lib/x86_64-linux-gnu/libtinfo.so
bin/cbi: /home/SVF/llvm-13.0.0.obj/lib/libLLVMDemangle.a
bin/cbi: src/CMakeFiles/cbi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/WAFLGo/instrument/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/cbi"
	cd /home/WAFLGo/instrument/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cbi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/cbi.dir/build: bin/cbi

.PHONY : src/CMakeFiles/cbi.dir/build

src/CMakeFiles/cbi.dir/clean:
	cd /home/WAFLGo/instrument/src && $(CMAKE_COMMAND) -P CMakeFiles/cbi.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/cbi.dir/clean

src/CMakeFiles/cbi.dir/depend:
	cd /home/WAFLGo/instrument && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/WAFLGo/instrument /home/WAFLGo/instrument/src /home/WAFLGo/instrument /home/WAFLGo/instrument/src /home/WAFLGo/instrument/src/CMakeFiles/cbi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/cbi.dir/depend

