# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/om/C++/CodeInvaders

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/om/C++/CodeInvaders

# Include any dependencies generated for this target.
include CMakeFiles/codeinvaders.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/codeinvaders.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/codeinvaders.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/codeinvaders.dir/flags.make

CMakeFiles/codeinvaders.dir/src/main.cpp.o: CMakeFiles/codeinvaders.dir/flags.make
CMakeFiles/codeinvaders.dir/src/main.cpp.o: src/main.cpp
CMakeFiles/codeinvaders.dir/src/main.cpp.o: CMakeFiles/codeinvaders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/om/C++/CodeInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/codeinvaders.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/codeinvaders.dir/src/main.cpp.o -MF CMakeFiles/codeinvaders.dir/src/main.cpp.o.d -o CMakeFiles/codeinvaders.dir/src/main.cpp.o -c /Users/om/C++/CodeInvaders/src/main.cpp

CMakeFiles/codeinvaders.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/codeinvaders.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/om/C++/CodeInvaders/src/main.cpp > CMakeFiles/codeinvaders.dir/src/main.cpp.i

CMakeFiles/codeinvaders.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/codeinvaders.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/om/C++/CodeInvaders/src/main.cpp -o CMakeFiles/codeinvaders.dir/src/main.cpp.s

CMakeFiles/codeinvaders.dir/src/player.cpp.o: CMakeFiles/codeinvaders.dir/flags.make
CMakeFiles/codeinvaders.dir/src/player.cpp.o: src/player.cpp
CMakeFiles/codeinvaders.dir/src/player.cpp.o: CMakeFiles/codeinvaders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/om/C++/CodeInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/codeinvaders.dir/src/player.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/codeinvaders.dir/src/player.cpp.o -MF CMakeFiles/codeinvaders.dir/src/player.cpp.o.d -o CMakeFiles/codeinvaders.dir/src/player.cpp.o -c /Users/om/C++/CodeInvaders/src/player.cpp

CMakeFiles/codeinvaders.dir/src/player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/codeinvaders.dir/src/player.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/om/C++/CodeInvaders/src/player.cpp > CMakeFiles/codeinvaders.dir/src/player.cpp.i

CMakeFiles/codeinvaders.dir/src/player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/codeinvaders.dir/src/player.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/om/C++/CodeInvaders/src/player.cpp -o CMakeFiles/codeinvaders.dir/src/player.cpp.s

CMakeFiles/codeinvaders.dir/src/bullet.cpp.o: CMakeFiles/codeinvaders.dir/flags.make
CMakeFiles/codeinvaders.dir/src/bullet.cpp.o: src/bullet.cpp
CMakeFiles/codeinvaders.dir/src/bullet.cpp.o: CMakeFiles/codeinvaders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/om/C++/CodeInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/codeinvaders.dir/src/bullet.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/codeinvaders.dir/src/bullet.cpp.o -MF CMakeFiles/codeinvaders.dir/src/bullet.cpp.o.d -o CMakeFiles/codeinvaders.dir/src/bullet.cpp.o -c /Users/om/C++/CodeInvaders/src/bullet.cpp

CMakeFiles/codeinvaders.dir/src/bullet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/codeinvaders.dir/src/bullet.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/om/C++/CodeInvaders/src/bullet.cpp > CMakeFiles/codeinvaders.dir/src/bullet.cpp.i

CMakeFiles/codeinvaders.dir/src/bullet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/codeinvaders.dir/src/bullet.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/om/C++/CodeInvaders/src/bullet.cpp -o CMakeFiles/codeinvaders.dir/src/bullet.cpp.s

CMakeFiles/codeinvaders.dir/src/gameManager.cpp.o: CMakeFiles/codeinvaders.dir/flags.make
CMakeFiles/codeinvaders.dir/src/gameManager.cpp.o: src/gameManager.cpp
CMakeFiles/codeinvaders.dir/src/gameManager.cpp.o: CMakeFiles/codeinvaders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/om/C++/CodeInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/codeinvaders.dir/src/gameManager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/codeinvaders.dir/src/gameManager.cpp.o -MF CMakeFiles/codeinvaders.dir/src/gameManager.cpp.o.d -o CMakeFiles/codeinvaders.dir/src/gameManager.cpp.o -c /Users/om/C++/CodeInvaders/src/gameManager.cpp

CMakeFiles/codeinvaders.dir/src/gameManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/codeinvaders.dir/src/gameManager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/om/C++/CodeInvaders/src/gameManager.cpp > CMakeFiles/codeinvaders.dir/src/gameManager.cpp.i

CMakeFiles/codeinvaders.dir/src/gameManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/codeinvaders.dir/src/gameManager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/om/C++/CodeInvaders/src/gameManager.cpp -o CMakeFiles/codeinvaders.dir/src/gameManager.cpp.s

CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.o: CMakeFiles/codeinvaders.dir/flags.make
CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.o: src/enemyManager.cpp
CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.o: CMakeFiles/codeinvaders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/om/C++/CodeInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.o -MF CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.o.d -o CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.o -c /Users/om/C++/CodeInvaders/src/enemyManager.cpp

CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/om/C++/CodeInvaders/src/enemyManager.cpp > CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.i

CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/om/C++/CodeInvaders/src/enemyManager.cpp -o CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.s

CMakeFiles/codeinvaders.dir/src/enemy.cpp.o: CMakeFiles/codeinvaders.dir/flags.make
CMakeFiles/codeinvaders.dir/src/enemy.cpp.o: src/enemy.cpp
CMakeFiles/codeinvaders.dir/src/enemy.cpp.o: CMakeFiles/codeinvaders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/om/C++/CodeInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/codeinvaders.dir/src/enemy.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/codeinvaders.dir/src/enemy.cpp.o -MF CMakeFiles/codeinvaders.dir/src/enemy.cpp.o.d -o CMakeFiles/codeinvaders.dir/src/enemy.cpp.o -c /Users/om/C++/CodeInvaders/src/enemy.cpp

CMakeFiles/codeinvaders.dir/src/enemy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/codeinvaders.dir/src/enemy.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/om/C++/CodeInvaders/src/enemy.cpp > CMakeFiles/codeinvaders.dir/src/enemy.cpp.i

CMakeFiles/codeinvaders.dir/src/enemy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/codeinvaders.dir/src/enemy.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/om/C++/CodeInvaders/src/enemy.cpp -o CMakeFiles/codeinvaders.dir/src/enemy.cpp.s

CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.o: CMakeFiles/codeinvaders.dir/flags.make
CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.o: src/levelmanager.cpp
CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.o: CMakeFiles/codeinvaders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/om/C++/CodeInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.o -MF CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.o.d -o CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.o -c /Users/om/C++/CodeInvaders/src/levelmanager.cpp

CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/om/C++/CodeInvaders/src/levelmanager.cpp > CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.i

CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/om/C++/CodeInvaders/src/levelmanager.cpp -o CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.s

# Object files for target codeinvaders
codeinvaders_OBJECTS = \
"CMakeFiles/codeinvaders.dir/src/main.cpp.o" \
"CMakeFiles/codeinvaders.dir/src/player.cpp.o" \
"CMakeFiles/codeinvaders.dir/src/bullet.cpp.o" \
"CMakeFiles/codeinvaders.dir/src/gameManager.cpp.o" \
"CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.o" \
"CMakeFiles/codeinvaders.dir/src/enemy.cpp.o" \
"CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.o"

# External object files for target codeinvaders
codeinvaders_EXTERNAL_OBJECTS =

bin/codeinvaders: CMakeFiles/codeinvaders.dir/src/main.cpp.o
bin/codeinvaders: CMakeFiles/codeinvaders.dir/src/player.cpp.o
bin/codeinvaders: CMakeFiles/codeinvaders.dir/src/bullet.cpp.o
bin/codeinvaders: CMakeFiles/codeinvaders.dir/src/gameManager.cpp.o
bin/codeinvaders: CMakeFiles/codeinvaders.dir/src/enemyManager.cpp.o
bin/codeinvaders: CMakeFiles/codeinvaders.dir/src/enemy.cpp.o
bin/codeinvaders: CMakeFiles/codeinvaders.dir/src/levelmanager.cpp.o
bin/codeinvaders: CMakeFiles/codeinvaders.dir/build.make
bin/codeinvaders: _deps/sfml-build/lib/libsfml-graphics.2.6.0.dylib
bin/codeinvaders: _deps/sfml-build/lib/libsfml-window.2.6.0.dylib
bin/codeinvaders: _deps/sfml-build/lib/libsfml-system.2.6.0.dylib
bin/codeinvaders: CMakeFiles/codeinvaders.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/om/C++/CodeInvaders/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable bin/codeinvaders"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/codeinvaders.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/codeinvaders.dir/build: bin/codeinvaders
.PHONY : CMakeFiles/codeinvaders.dir/build

CMakeFiles/codeinvaders.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/codeinvaders.dir/cmake_clean.cmake
.PHONY : CMakeFiles/codeinvaders.dir/clean

CMakeFiles/codeinvaders.dir/depend:
	cd /Users/om/C++/CodeInvaders && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/om/C++/CodeInvaders /Users/om/C++/CodeInvaders /Users/om/C++/CodeInvaders /Users/om/C++/CodeInvaders /Users/om/C++/CodeInvaders/CMakeFiles/codeinvaders.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/codeinvaders.dir/depend

