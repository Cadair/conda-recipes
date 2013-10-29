#!/bin/bash
export LD_LIBRARY_PATH=$SYS_PREFIX/lib
export HDF5_DIR=$PREFIX
export CC=$SYS_PREFIX/bin/mpicc 
$PYTHON setup.py build --mpi --hdf5=$HDF5_DIR 
$PYTHON setup.py install
