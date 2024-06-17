@echo off

set CLANG_OPTS_ARM=--target=armv7a-linux-androideabi21 -shared -s -O2 -fPIC -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -DANDROID -ffunction-sections -fdata-sections -mthumb -I./frida/arm/include -L./frida/arm/lib -lfrida-gum -llog -ldl -lm -pthread -Wl,--fix-cortex-a8,-z,relro,-z,noexecstack,--gc-sections
set CLANG_OPTS_ARM64=--target=aarch64-linux-android21 -shared -s -O2 -fPIC -DANDROID -ffunction-sections -fdata-sections -I./frida/arm64/include -L./frida/arm64/lib -lfrida-gum -llog -ldl -lm -pthread -Wl,--gc-sections,-z,noexecstack,-z,relro,-z,now

if not exist "build" md "build"

cd build
if not exist "arm32" md "arm32"
if not exist "arm64" md "arm64"
cd ..

:: arm64-v8a
echo libmaterialbinloader-arm64.so
clang++.exe %CLANG_OPTS_ARM64% ./src/*.cpp -o ./build/arm64/libmaterialbinloader.so

:: armeabi-v7a
echo libmaterialbinloader-arm.so
clang++.exe %CLANG_OPTS_ARM% ./src/*.cpp -o ./build/arm32/libmaterialbinloader.so

pause