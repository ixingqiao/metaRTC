NDK_ROOT=/home/yang/pro/ndk
rm -rf build
mkdir build
cd build
#arm64-v8a armeabi x86_64
cmake -G"Unix Makefiles" -DCMAKE_TOOLCHAIN_FILE=$NDK_ROOT/build/cmake/android.toolchain.cmake -DANDROID_NDK=$NDK_ROOT -DCMAKE_SYSTEM_NAME=Android -DANDROID_PLATFORM=android-29 -DCMAKE_BUILD_TYPE=Release -DANDROID_ABI=arm64-v8a -DAndroid=ON -DANDROID_STL=c++_static -DCMAKE_CXX_STANDARD=11 -DANDROID_NATIVE_API_LEVEL=29 ..
make
if [ ! -d "../../bin/lib_android" ] ; then
mkdir ../../bin/lib_android
fi
cp libmetartc3.a ../../bin/lib_android
