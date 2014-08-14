android-curl
============

Curl compiled with OpenSSL for Android (Supports Android L)

Supported Architecture
----
* arm

Instructions
----
* Edit settings.sh and set ANDROID_NDK_ROOT_PATH according to your NDK root path
* Run following commands to compile curl
  1. git submodule update --init
  2. ./android_build.sh
* Find the executable binary in build directory.

License
----
  check files LICENSE.GPLv3 and LICENSE
