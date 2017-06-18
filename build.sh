#!/bin/bash

pacman -S \
 git \
 make \
 mingw-w64-x86_64-pkg-config \
 mingw-w64-x86_64-gcc \
 mingw-w64-x86_64-cmake \
 mingw-w64-x86_64-vala \
 mingw-w64-x86_64-libgee \
 mingw-w64-x86_64-gtk3 \
 mingw-w64-x86_64-poppler \
 mingw-w64-x86_64-gstreamer \
 mingw-w64-x86_64-gst-libav \
 mingw-w64-x86_64-openjpeg2

mkdir -p build
cd build
CC=gcc CXX=g++ cmake -G "Unix Makefiles" -DMOVIES=OFF ..
make
