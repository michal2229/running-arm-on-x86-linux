#!/bin/bash

set -e # Stop on any error.

## This is needed for cross-compiling basic applications for ARM (hard float).
# sudo apt install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf

## This is needed to run statically compiled ARM binaries on linux.
# sudo apt install qemu-user-static # or qemu-user-static

printf "\n >>> building binary...\n\n"

cd build
cmake ..
make
cd ../bin

printf "\n >>> build ok, checking binary...\n\n"

file ./main

printf "\n >>> running binary...\n\n"

./main

printf "\n >>> binary run ok, end of script.\n\n"
