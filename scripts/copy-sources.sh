#!/bin/bash

BASEDIR=$(realpath `dirname $0`/..)

rm -rf ${BASEDIR}/include/libbase ${BASEDIR}/include/libsystem ${BASEDIR}/include/libutils ${BASEDIR}/include/zipalign ${BASEDIR}/include/libziparchive ${BASEDIR}/include/zopfli
rm -rf ${BASEDIR}/src/libbase ${BASEDIR}/src/libutils ${BASEDIR}/src/zipalign ${BASEDIR}/src/libziparchive ${BASEDIR}/src/zopfli

mkdir -p ${BASEDIR}/include/libziparchive
mkdir -p ${BASEDIR}/include/zopfli/zopfli
mkdir -p ${BASEDIR}/src/libziparchive
mkdir -p ${BASEDIR}/include/zipalign
mkdir -p ${BASEDIR}/src/zopfli
mkdir -p ${BASEDIR}/src/libutils
mkdir -p ${BASEDIR}/src/zipalign
mkdir -p ${BASEDIR}/src/libbase

cp -R ${BASEDIR}/aosp-source/zopfli/src/zopfli/*.h ${BASEDIR}/include/zopfli/zopfli
cp -R ${BASEDIR}/aosp-source/zopfli/src/zopfli/*.c ${BASEDIR}/src/zopfli/

cp -R ${BASEDIR}/aosp-source/libziparchive/incfs_support/include/* ${BASEDIR}/include/libziparchive
cp -R ${BASEDIR}/aosp-source/libziparchive/include/ ${BASEDIR}/include/libziparchive
cp -R ${BASEDIR}/aosp-source/libziparchive/*.cpp ${BASEDIR}/src/libziparchive/
cp -R ${BASEDIR}/aosp-source/libziparchive/*.cc ${BASEDIR}/src/libziparchive/
cp -R ${BASEDIR}/aosp-source/libziparchive/*.h ${BASEDIR}/src/libziparchive/
rm -rf ${BASEDIR}/src/libziparchive/*_benchmark.cpp
rm -rf ${BASEDIR}/src/libziparchive/*_fuzzer.cpp
rm -rf ${BASEDIR}/src/libziparchive/ziptool.cpp
rm -rf ${BASEDIR}/src/libziparchive/*_fuzz.cpp
rm -rf ${BASEDIR}/src/libziparchive/*_test.cc

cp ${BASEDIR}/aosp-source/build/tools/zipalign/include/*.h ${BASEDIR}/include/zipalign

cp -R ${BASEDIR}/aosp-source/build/tools/zipalign/*.cpp ${BASEDIR}/src/zipalign
cp -R ${BASEDIR}/aosp-source/build/tools/zipalign/*.h ${BASEDIR}/src/zipalign
cp -R ${BASEDIR}/aosp-source/build/tools/zipalign/*.h ${BASEDIR}/src/zipalign

cp -R ${BASEDIR}/aosp-source/core/libutils/*.cpp ${BASEDIR}/src/libutils/
cp -R ${BASEDIR}/aosp-source/core/libutils/*.h   ${BASEDIR}/src/libutils/
cp -R ${BASEDIR}/aosp-source/core/libutils/include/ ${BASEDIR}/include/libutils
rm -rf ${BASEDIR}/src/libutils/*_benchmark.cpp
rm -rf ${BASEDIR}/src/libutils/*_test*.cpp
rm -rf ${BASEDIR}/src/libutils/*_fuzz.cpp
rm -rf ${BASEDIR}/src/libutils/Callstack.cpp   ${BASEDIR}/src/libutils/Looper.cpp       \
       ${BASEDIR}/include/libutils/Looper.h    ${BASEDIR}/src/libutils/NativeHandle.cpp \
       ${BASEDIR}/src/libutils/SystemClock.cpp ${BASEDIR}/src/libutils/Timers.cpp       \
       ${BASEDIR}/src/libutils/Trace.cpp

cp -R ${BASEDIR}/aosp-source/core/libsystem/include/ ${BASEDIR}/include/libsystem/

cp -R ${BASEDIR}/aosp-source/libbase/include/ ${BASEDIR}/include/libbase
cp -R ${BASEDIR}/aosp-source/libbase/*.cpp ${BASEDIR}/src/libbase/
cp -R ${BASEDIR}/aosp-source/libbase/*.h ${BASEDIR}/src/libbase/
rm -rf ${BASEDIR}/src/libbase/errors_windows.cpp # We want the Unix implementation
rm -rf ${BASEDIR}/src/libbase/*_benchmark.cpp
rm -rf ${BASEDIR}/src/libbase/*_fuzzer.cpp
rm -rf ${BASEDIR}/src/libbase/*_test*.cpp
rm -rf ${BASEDIR}/src/libbase/*_fuzz.cpp
rm -rf ${BASEDIR}/src/libbase/test*.cpp
rm -rf ${BASEDIR}/src/libbase/utf8.cpp

