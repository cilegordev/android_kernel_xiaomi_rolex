#!/bin/bash
export KBUILD_BUILD_USER=
export KBUILD_BUILD_HOST=
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE_ARM32=/opt/gcc32/bin/arm-linux-androideabi-
export CROSS_COMPILE=/opt/gcc64/bin/aarch64-linux-android-

make O=out rolex_defconfig
make -j$(nproc) O=out 2>&1 | tee compile.log
