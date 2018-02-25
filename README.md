# build_ijk
use docker to build ijkplayer
使用docker环境来编译ijkplayer源码




运行的命令:
1. 进入带有编译环境的docker contianer
```
docker run -i -t -v $PWD/data:/data pokercc/build_ijk bash
```
2. 在docker container 中执行编译命令
```
cp /app/build_ijk.sh /data/
cd /data
./build_ijk.sh
```
3. 检查编译结果
编译成功后，会在$PWD/data/ijkplayer-android/android/ijkplayer/ijkplayer-armv7a/src/main/libs/armeabi-v7a ,生成
libijk.so 等几个so文件
