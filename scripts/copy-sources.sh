#!/bin/bash

BASEDIR=$(realpath `dirname $0`/..)

rm -rf ${BASEDIR}/src
rm -rf ${BASEDIR}/include

mkdir -p ${BASEDIR}/include

mkdir -p ${BASEDIR}/src/zipalign
mkdir -p ${BASEDIR}/src/libutils

cp -R ${BASEDIR}/aosp-source/build/tools/zipalign/*.cpp ${BASEDIR}/src/zipalign
cp -R ${BASEDIR}/aosp-source/build/tools/zipalign/*.h ${BASEDIR}/src/zipalign

cp -R ${BASEDIR}/aosp-source/core/libutils/*.cpp ${BASEDIR}/src/libutils/
cp -R ${BASEDIR}/aosp-source/core/libutils/include/ ${BASEDIR}/include/libutils
rm -rf ${BASEDIR}/src/libutils/*_test.cpp
rm -rf ${BASEDIR}/src/libutils/*_fuzz.cpp
