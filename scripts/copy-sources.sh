#!/bin/bash

BASEDIR=$(realpath `dirname $0`/..)/

rm -rf ${BASEDIR}/src

mkdir -p ${BASEDIR}/src/zipalign

cp -R ${BASEDIR}/aosp-source/build/tools/zipalign/include/*.h ${BASEDIR}/src/zipalign
cp -R ${BASEDIR}/aosp-source/build/tools/zipalign/*.cpp ${BASEDIR}/src/zipalign
cp -R ${BASEDIR}/aosp-source/build/tools/zipalign/*.h ${BASEDIR}/src/zipalign
