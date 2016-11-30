#!/usr/bin/zsh
cd jassimp-native/src
for prefix in i686 x86_64;
do
BASE=../bin/windows/$prefix/
LIBNAME=libjassmip.dll
CC=$prefix-w64-mingw32-gcc
$CC jassimp.cpp -I/usr/lib/jvm/default/include/ -I/usr/lib/jvm/default/include/linux -I/usr/include/assimp/ -L$BASE -lassimp -shared -fPIC -o $BASE$LIBNAME
done
