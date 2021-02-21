# To build project using CMake tool:
# 1. Create makefiles:
# $ cmake -S <source> -B <>
# 
# where:
#       <source> - source directory of the project
#       <build> - directory where project is going to be build
# 2. Build the project:
# $ make -C <build>
#
# where:
#       <build> - directory where project is going to be build


# The version of cmake that the project can be 100% build with.
cmake_minimum_required(VERSION 3.16.3)

# The name of the project.
project(CMakeTutorial)

# List of files that are going to have an executable.
add_executable(${PROJECT_NAME} main.cpp)

# List of subdirectories (folder names or paths) of the project
# for example to the source files of libraries building for this project.
# If any additional libraries are building for the project
# then all subdirectories have to have their own CMakeLists.txt.
add_subdirectory(Adder)

# Directories for libraries that are going to be build for the project
# from the directory intended to be the whole project build directory.
# They have additional visibility level (PRIVATE, PUBLIC).
target_link_directories(${PROJECT_NAME} PRIVATE Adder)

# Names of libraries that are building along with the project or any other already built libraries.
# Names are the same as given in libraries CMakeLists.txt files.
target_link_libraries(${PROJECT_NAME} adder)

# [OPTIONAL] 
# Directories for included libraries (#include).
# From now on libraries can be included within '<>'
# #include <library_name> instead of #include "library_directory".
# They have additional visibility level (PRIVATE, PUBLIC).
# In practice it's used for outter libraries (not created for the project).
target_include_directories(${PROJECT_NAME} PUBLIC Adder)

       
