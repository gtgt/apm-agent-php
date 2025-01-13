#!/bin/sh
export BUILD_ARCHITECTURE=linuxmusl-x86-64
export PHP_CONFIG=php-config
make -f .ci/Makefile build

make -C packaging package
make -C packaging info
