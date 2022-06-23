#!/bin/bash

mkdir /tmp/krita

cd /tmp/krita

git clone https://invent.kde.org/graphics/krita.git

mkdir build
cd build

cmake ../krita \
        -DCMAKE_INSTALL_PREFIX=/opt/git/krita  \
        -DCMAKE_BUILD_TYPE=Debug \
        -DKRITA_DEVS=ON

make && make install

rmdir /tmp/krita/*
