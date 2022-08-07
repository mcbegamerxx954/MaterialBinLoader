mkdir build
clang.exe --target=armv7a-linux-androideabi21 -shared -s -O2 -fPIC -DANDROID -DV1_18_32_02 -ffunction-sections -fdata-sections -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 ./src/*.c -o ./build/libmaterialbinloader-1.18.32.02-arm.so -I./include -L./lib -lfrida-gum -llog -ldl -lm -pthread "-Wl,--gc-sections,-z,noexecstack,-z,relro,-z,now" "-Wl,--fix-cortex-a8"
clang.exe --target=armv7a-linux-androideabi21 -shared -s -O2 -fPIC -DANDROID -DV1_19_2_02 -ffunction-sections -fdata-sections -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 ./src/*.c -o ./build/libmaterialbinloader-1.19.2.02-arm.so -I./include -L./lib -lfrida-gum -llog -ldl -lm -pthread "-Wl,--gc-sections,-z,noexecstack,-z,relro,-z,now" "-Wl,--fix-cortex-a8"
clang.exe --target=armv7a-linux-androideabi21 -shared -s -O2 -fPIC -DANDROID -DV1_19_11_01 -ffunction-sections -fdata-sections -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 ./src/*.c -o ./build/libmaterialbinloader-1.19.11.01-arm.so -I./include -L./lib -lfrida-gum -llog -ldl -lm -pthread "-Wl,--gc-sections,-z,noexecstack,-z,relro,-z,now" "-Wl,--fix-cortex-a8"