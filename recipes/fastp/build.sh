#!/bin/bash
set -eu -o pipefail

export CFLAGS=-I$PREFIX/include
export CXXFLAGS=-I$PREFIX/include
export LDFLAGS=-L$PREFIX/lib

make
mkdir -p $PREFIX/bin
cp fastp $PREFIX/bin
