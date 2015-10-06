android-curl
============

Curl compiled with OpenSSL for Android (Supports Android L)

Supported Architecture
----
* arm

Requirements
------------

* Android NDK 
* automake (curl)
* autoconf (curl)
* CMake (curl)
* Perl 5 (openssl)

In OSX, easiest is to install via [Homebrew](http://brew.sh/)

`brew install autoconf automake cmake`

Instructions
----
* Edit settings.sh and set ANDROID_NDK_ROOT_PATH according to your NDK root path
* Run following commands to compile curl
  1. git submodule update --init
  2. ./android_build.sh
* Find the executable binary in build directory.
* For working example check this repository - https://github.com/hiteshsondhi88/androidcurlsample

![http://i.imgur.com/WYA2Kop.gif](http://i.imgur.com/WYA2Kop.gif)

[Download APK](https://github.com/hiteshsondhi88/androidcurlsample/releases/download/v0.1.0/app-debug.apk)

License
----
  check files LICENSE.GPLv3 and LICENSE
