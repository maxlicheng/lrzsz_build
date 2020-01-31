#!/bin/bash

CUR_DIR=`pwd`
SRC=${CUR_DIR}
OBJ=
HOST=arm-linux
BUILD=arm-linux
INSTALL_PREFIX=${CUR_DIR}/lrzsz_out
BIN_DIR=${INSTALL_PREFIX}/bin 
mkdir -p ${INSTALL_PREFIX}

cd ${SRC}
echo "ac_cv_prog_CC=${ac_cv_prog_CC='arm-none-linux-gnueabi-gcc'}" >> arm-linux.cache

./configure --prefix=${INSTALL_PREFIX} --host=${HOST} --build=${BUILD} --cache-file=./arm-linux.cache

make && make check && make install

cd ${BIN_DIR}

rm -rf lrb lrx rz rb rx

ln -fs lrz lrx; \
ln -fs lrz lrb; \
ln -fs lrz rz; \
ln -fs lrz rx; \
ln -fs lrz rb; \
ln -fs lsz lsx; \
ln -fs lsz lsb; \
ln -fs lsz sz; \
ln -fs lsz sx; \
ln -fs lsz sb; \

cd -

