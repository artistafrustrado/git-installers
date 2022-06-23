#!/bin/bash

#https://github.com/scribusproject/scribus.git

#mkdir /tmp

cd /tmp

#git clone https://github.com/scribusproject/scribus.git
# svn checkout svn://scribus.net/trunk/Scribus yourUnstableScribusDirectory
#svn checkout svn://scribus.net/trunk/Scribus yourUnstableScribusDirectory

#cmake ../inkscape -DCMAKE_INSTALL_PREFIX=/opt/git/inkscape
#make && make install

mkdir scribus
cd scribus

mkdir build

svn checkout svn://scribus.net/trunk/Scribus scribus

cd scribus
cd build
cmake ../build -DCMAKE_INSTALL_PREFIX=/opt/git/scribus .
make && make install

