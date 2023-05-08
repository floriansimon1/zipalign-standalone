#!/bin/bash

BASEDIR=$(realpath `dirname $0`/..)

rm -rf ${BASEDIR}/makefiles

cmake -B ${BASEDIR}/makefiles cmake
