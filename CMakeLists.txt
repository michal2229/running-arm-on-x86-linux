cmake_minimum_required(VERSION 3.0.0)
project(test_ARM_build_and_run)

set(CMAKE_CXX_COMPILER "arm-linux-gnueabihf-g++")
set(CFLAGS "-mfloat -abi=hard")
set(CMAKE_EXE_LINKER_FLAGS " -static")

add_definitions(-std=c++11)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")

add_subdirectory(src)

