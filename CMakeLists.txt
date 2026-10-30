cmake_minimum_required(VERSION 4.4.5)

project(FlappyBird LANGUAGES CXX)


set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Source files
set(SOURCES
    src/main.cpp
)

add_executable(FlappyBird ${SOURCES})

target_compile_options(FlappyBird PRIVATE -Wall -Wextra)

find_package(SDL3 REQUIRED)
target_link_libraries(FlappyBird PRIVATE SDL3::SDL3)
