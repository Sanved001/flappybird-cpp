#!/bin/sh
set -e

cmake -B build -G Ninja -DCMAKE_BUILD_TYPE=Debug

ln -sf build/compile_commands.json .

cmake --build build

echo "Build Finished! Executable is at ./build/FlappyBird"
