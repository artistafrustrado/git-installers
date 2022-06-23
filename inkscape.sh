#!/bin/bash

pacman -S lib2geom

mkdir -p /tmp/inkscape

cd /tmp/inkscape/

mkdir build
cd build

cd /tmp/inkscape/build/inkscape/

#--recurse-submodules
# https://gitlab.com/inkscape/inkscape.git
git clone --recurse-submodules https://gitlab.com/inkscape/inkscape.git

#cd inkscape

cmake ../inkscape -DCMAKE_INSTALL_PREFIX=/opt/git/inkscape
make && make install
