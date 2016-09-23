#!/bin/bash

[[ ! -d openmp/.git ]] && git submodule update --init --recursive

[[ ! -d build/ ]] && mkdir build
cd build

cmake ../openmp -DCMAKE_CROSSCOMPILING=True -DCMAKE_OSX_ARCHITECTURES="x86_64;i386" \
      -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -mios-simulator-version-min=8.0" \
      -DCMAKE_C_FLAGS="${CMAKE_C_FLAGS} -mios-simulator-version-min=8.0" \
      -DCMAKE_OSX_SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk

make -j 4
