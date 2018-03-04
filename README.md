# 使用docker 镜像，编译ijkplayer，android 版本

## 使用docker image ,编译ijkplayer步骤

### 1. 运行docker image
```shell
# docker run -i -t -v $PWD/data:/data pokercc/build_ijk:<lastTag> bash
  docker run -i -t -v $PWD/data:/data pokercc/build_ijk:1.4 bash
```
会在当前目录的data 目录中，拉取ijkplayer 源码并执行编译

### 2. 在docker container 中执行编译命令

#### a. 使用github仓库
```shell
cp /app/build_ijk.sh /data/ &&cd /data && ./build_ijk.sh
```

#### b. 或使用oschina仓库(下载速度快,时间长没有同步，可能会出现问题)
```shell
cp /app/build_ijk_zn.sh /data/ &&cd /data && ./build_ijk_zn.sh
```

### 3. 退出docker contianer ,检查编译结果

编译成功后，会在$PWD/data/ijkplayer-android/android/ijkplayer/ijkplayer-armv7a/src/main/libs/armeabi-v7a ,生成
libijk.so 等几个so文件
```shell
ls $PWD/data/ijkplayer-android/android/ijkplayer/ijkplayer-armv7a/src/main/libs/armeabi-v7a
> libijkffmpeg.so  libijkplayer.so  libijksdl.so

```


## 自己生成docker image 步骤(选看)
### 1. 下载源码

```shell
git clone git@github.com:pokercc/build_ijk.git && cd build_ijk
```
### 2. 生成本地docker镜像
```shell
#docker build -t <image_name：如build_ijk> .
# 最后一个点不要少了
docker build -t build_ijk .
```
### 3. 运行生成的docker image，编译ijk 源码。
