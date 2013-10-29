#!/bin/bash
echo $SYS_PREFIX
CC=$SYS_PREFIX/bin/mpicc ./configure --prefix=$PREFIX --disable-static \
    --enable-linux-lfs --with-zlib --with-ssl --enable-parallel --enable-shared
make -j 8
make install

rm -rf $PREFIX/share/hdf5_examples
