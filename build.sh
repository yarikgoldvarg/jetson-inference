#!/bin/bash
mkdir build
cd build
cmake ../
make -j$(nproc)
make install
ldconfig
