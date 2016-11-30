#!/usr/bin/zsh
cd jassimp-native/src
BASE=../bin/linux/x64/
LIBNAME=libjassmip.so
CC=gcc
$CC jassimp.cpp -I/usr/lib/jvm/default/include/ -I/usr/lib/jvm/default/include/linux -I/usr/include/assimp/ -L$BASE -lassimp -shared -fPIC -o $BASE$LIBNAME
