#!/bin/bash
set -ue
here="$(cd $(dirname "$0"); pwd)"
cd "$here"
rm -rf build
mkdir build
cd build
cmake .. \
    -DNANOGUI_BUILD_EXAMPLE=OFF \
    -DNANOGUI_BUILD_SHARED=OFF \
    -DNANOGUI_BUILD_PYTHON=OFF
make -j 8
