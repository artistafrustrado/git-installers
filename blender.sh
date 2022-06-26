#!/bin/bash


#mkdir /tmp/blender-git
#cd /tmp/blender-git
#git clone https://git.blender.org/blender.git 1
#cd blender
#git submodule update --init --recursive
#git submodule foreach git checkout master
#git submodule foreach git pull --rebase origin master
#make update
#cd /tmp/blender-git
#./blender/build_files/build_environment/install_deps.sh

cd /tmp
mkdir /tmp/blender-git
cd blender-git
git clone git://git.blender.org/blender.git
cd blender
git submodule update --init --recursive
git submodule foreach git checkout master
git submodule foreach git pull --rebase origin master

make && make install
