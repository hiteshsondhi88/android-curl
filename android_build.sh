#!/bin/bash

. settings.sh

BASEDIR=$(pwd)
TOOLCHAIN_PREFIX=${BASEDIR}/toolchain-android

for i in "${SUPPORTED_ARCHITECTURES[@]}"
do
  rm -rf ${TOOLCHAIN_PREFIX}
  ./openssl_build.sh $i $BASEDIR || exit 1
  ./curl_build.sh $i $BASEDIR || exit 1
done

rm -rf ${TOOLCHAIN_PREFIX}
