# 使用docker 镜像，编译ijkplayer，android 版本

1. 进入带有编译环境的docker contianer
```shell
docker run -i -t -v $PWD/data:/data pokercc/build_ijk bash
```
2. 在docker container 中执行编译命令
```shell
cp /app/build_ijk.sh /data/
cd /data
./build_ijk.sh
```
3. 检查编译结果
编译成功后，会在$PWD/data/ijkplayer-android/android/ijkplayer/ijkplayer-armv7a/src/main/libs/armeabi-v7a ,生成
libijk.so 等几个so文件
```shell
ls $PWD/data/ijkplayer-android/android/ijkplayer/ijkplayer-armv7a/src/main/libs/armeabi-v7a

```


# 生成docker 镜像

1. 下载源码

```shell
git clone git@github.com:pokercc/build_ijk.git && cd build_ijk
```
2. 生成本地docker镜像
```shell
#docker build -t <image_name：如build_ijk> .
# 最后一个点不要少了
docker build -t build_ijk .
```
3. 运行生成的docker image，编译ijk 源码。
