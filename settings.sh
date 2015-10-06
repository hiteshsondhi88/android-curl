#!/bin/bash

SUPPORTED_ARCHITECTURES=(armeabi armeabi-v7a)
ANDROID_NDK_ROOT_PATH=~/Android/ndk
ANDROID_API_VERSION=9
NDK_TOOLCHAIN_ABI_VERSION=4.8

NUMBER_OF_CORES=1
HOST_UNAME=$(uname -m)

OS=$(uname)

if [[ $OS == 'Linux' ]]; then
  NUMBER_OF_CORES=$(nproc)
elif [[ $OS == 'Darwin' ]]; then # Assume Mac OS X
  NUMBER_OF_CORES=$(sysctl hw.ncpu | awk '/hw.ncpu/{ print $2}{next;}')
fi

