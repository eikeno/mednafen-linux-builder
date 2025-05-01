#!/bin/bash
wget https://mednafen.github.io/releases/files/mednafen-1.32.1.tar.xz || exit
tar xvf mednafen-1.32.1.tar.xz || exit
cd mednafen || exit
./autogen.sh
./configure && make -j$(nproc) && make DESTDIR=/export install
exit $?
