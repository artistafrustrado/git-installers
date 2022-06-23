#!/bin/bash
# https://www.gimp.org/source/howtos/gimp-git-build.html

cd /tmp

export PREFIX=/opt/git/gimp

export PATH="$PREFIX/bin:$PATH"
export PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH"
export LD_LIBRARY_PATH="$PREFIX/lib:$LD_LIBRARY_PATH"
export ACLOCAL_FLAGS="-I $PREFIX/share/aclocal $ACLOCAL_FLAGS"

#git clone git@gitlab.gnome.org:GNOME/gimp.git
git clone https://gitlab.gnome.org/GNOME/gimp.git
cd gimp

./autogen.sh --prefix=$PREFIX
make && make install

