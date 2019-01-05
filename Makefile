# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/ashar/testcaser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ashar/testcaser

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/cmake-gui -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ashar/testcaser/CMakeFiles /home/ashar/testcaser/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ashar/testcaser/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named third

# Build rule for target.
third: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 third
.PHONY : third

# fast build rule for target.
third/fast:
	$(MAKE) -f CMakeFiles/third.dir/build.make CMakeFiles/third.dir/build
.PHONY : third/fast

#=============================================================================
# Target rules for targets named second

# Build rule for target.
second: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 second
.PHONY : second

# fast build rule for target.
second/fast:
	$(MAKE) -f CMakeFiles/second.dir/build.make CMakeFiles/second.dir/build
.PHONY : second/fast

#=============================================================================
# Target rules for targets named vitualjudge

# Build rule for target.
vitualjudge: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 vitualjudge
.PHONY : vitualjudge

# fast build rule for target.
vitualjudge/fast:
	$(MAKE) -f CMakeFiles/vitualjudge.dir/build.make CMakeFiles/vitualjudge.dir/build
.PHONY : vitualjudge/fast

#=============================================================================
# Target rules for targets named first

# Build rule for target.
first: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 first
.PHONY : first

# fast build rule for target.
first/fast:
	$(MAKE) -f CMakeFiles/first.dir/build.make CMakeFiles/first.dir/build
.PHONY : first/fast

examples/integrator_virtual-judge.o: examples/integrator_virtual-judge.cc.o

.PHONY : examples/integrator_virtual-judge.o

# target to build an object file
examples/integrator_virtual-judge.cc.o:
	$(MAKE) -f CMakeFiles/third.dir/build.make CMakeFiles/third.dir/examples/integrator_virtual-judge.cc.o
.PHONY : examples/integrator_virtual-judge.cc.o

examples/integrator_virtual-judge.i: examples/integrator_virtual-judge.cc.i

.PHONY : examples/integrator_virtual-judge.i

# target to preprocess a source file
examples/integrator_virtual-judge.cc.i:
	$(MAKE) -f CMakeFiles/third.dir/build.make CMakeFiles/third.dir/examples/integrator_virtual-judge.cc.i
.PHONY : examples/integrator_virtual-judge.cc.i

examples/integrator_virtual-judge.s: examples/integrator_virtual-judge.cc.s

.PHONY : examples/integrator_virtual-judge.s

# target to generate assembly for a file
examples/integrator_virtual-judge.cc.s:
	$(MAKE) -f CMakeFiles/third.dir/build.make CMakeFiles/third.dir/examples/integrator_virtual-judge.cc.s
.PHONY : examples/integrator_virtual-judge.cc.s

examples/maker_randomBinary.o: examples/maker_randomBinary.cc.o

.PHONY : examples/maker_randomBinary.o

# target to build an object file
examples/maker_randomBinary.cc.o:
	$(MAKE) -f CMakeFiles/second.dir/build.make CMakeFiles/second.dir/examples/maker_randomBinary.cc.o
.PHONY : examples/maker_randomBinary.cc.o

examples/maker_randomBinary.i: examples/maker_randomBinary.cc.i

.PHONY : examples/maker_randomBinary.i

# target to preprocess a source file
examples/maker_randomBinary.cc.i:
	$(MAKE) -f CMakeFiles/second.dir/build.make CMakeFiles/second.dir/examples/maker_randomBinary.cc.i
.PHONY : examples/maker_randomBinary.cc.i

examples/maker_randomBinary.s: examples/maker_randomBinary.cc.s

.PHONY : examples/maker_randomBinary.s

# target to generate assembly for a file
examples/maker_randomBinary.cc.s:
	$(MAKE) -f CMakeFiles/second.dir/build.make CMakeFiles/second.dir/examples/maker_randomBinary.cc.s
.PHONY : examples/maker_randomBinary.cc.s

examples/simple-program.o: examples/simple-program.cc.o

.PHONY : examples/simple-program.o

# target to build an object file
examples/simple-program.cc.o:
	$(MAKE) -f CMakeFiles/first.dir/build.make CMakeFiles/first.dir/examples/simple-program.cc.o
.PHONY : examples/simple-program.cc.o

examples/simple-program.i: examples/simple-program.cc.i

.PHONY : examples/simple-program.i

# target to preprocess a source file
examples/simple-program.cc.i:
	$(MAKE) -f CMakeFiles/first.dir/build.make CMakeFiles/first.dir/examples/simple-program.cc.i
.PHONY : examples/simple-program.cc.i

examples/simple-program.s: examples/simple-program.cc.s

.PHONY : examples/simple-program.s

# target to generate assembly for a file
examples/simple-program.cc.s:
	$(MAKE) -f CMakeFiles/first.dir/build.make CMakeFiles/first.dir/examples/simple-program.cc.s
.PHONY : examples/simple-program.cc.s

testcaser/src/main.o: testcaser/src/main.cc.o

.PHONY : testcaser/src/main.o

# target to build an object file
testcaser/src/main.cc.o:
	$(MAKE) -f CMakeFiles/vitualjudge.dir/build.make CMakeFiles/vitualjudge.dir/testcaser/src/main.cc.o
.PHONY : testcaser/src/main.cc.o

testcaser/src/main.i: testcaser/src/main.cc.i

.PHONY : testcaser/src/main.i

# target to preprocess a source file
testcaser/src/main.cc.i:
	$(MAKE) -f CMakeFiles/vitualjudge.dir/build.make CMakeFiles/vitualjudge.dir/testcaser/src/main.cc.i
.PHONY : testcaser/src/main.cc.i

testcaser/src/main.s: testcaser/src/main.cc.s

.PHONY : testcaser/src/main.s

# target to generate assembly for a file
testcaser/src/main.cc.s:
	$(MAKE) -f CMakeFiles/vitualjudge.dir/build.make CMakeFiles/vitualjudge.dir/testcaser/src/main.cc.s
.PHONY : testcaser/src/main.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... third"
	@echo "... second"
	@echo "... vitualjudge"
	@echo "... edit_cache"
	@echo "... first"
	@echo "... examples/integrator_virtual-judge.o"
	@echo "... examples/integrator_virtual-judge.i"
	@echo "... examples/integrator_virtual-judge.s"
	@echo "... examples/maker_randomBinary.o"
	@echo "... examples/maker_randomBinary.i"
	@echo "... examples/maker_randomBinary.s"
	@echo "... examples/simple-program.o"
	@echo "... examples/simple-program.i"
	@echo "... examples/simple-program.s"
	@echo "... testcaser/src/main.o"
	@echo "... testcaser/src/main.i"
	@echo "... testcaser/src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
