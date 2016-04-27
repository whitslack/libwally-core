#!/bin/sh

ENABLE_SWIG_PYTHON="--enable-swig-python"

if [ -n "$HOST" ]; then
   USE_HOST="--host=$HOST"
   if [ "$HOST" = "i686-linux-gnu" ]; then
       export CC="$CC -m32"
       export ENABLE_SWIG_PYTHON=""
   fi
fi

./configure --enable-silent-rules --enable-export-all $ENABLE_SWIG_PYTHON --enable-swig-java $USE_HOST && make && make check

