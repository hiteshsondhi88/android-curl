#!/bin/bash

. abi_settings.sh $1 $2

pushd openssl

make clean

case $1 in
  armeabi-v7a)
    OPENSSL_TARGET="android-armv7"
    ;;
  armeabi)
    OPENSSL_TARGET="android"
    ;;
esac
export ANDROID_DEV=${TOOLCHAIN_PREFIX}
./Configure \
  --prefix="${TOOLCHAIN_PREFIX}" \
  ${OPENSSL_TARGET} || exit 1

make -j${NUMBER_OF_CORES} build_libs || exit 1

make install || exit 1

popd
