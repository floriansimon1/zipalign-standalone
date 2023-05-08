#!/bin/bash

BASEDIR=$(realpath `dirname $0`/..)

rm -rf ${BASEDIR}/out

cmake --build ${BASEDIR}/makefiles
