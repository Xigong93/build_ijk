#！/bin/sh
# 编译ijkplayer 源码步骤
# 官方教程 https://github.com/Bilibili/ijkplayer
#git clone https://github.com/Bilibili/ijkplayer.git ijkplayer-android
# 使用oschina git仓库，加速下载
git clone https://gitee.com/pokercc/ijkplayer.git ijkplayer-android

cd ijkplayer-android
# 这个会覆盖修改了git源的init-android.sh,先注释掉。
# git checkout -B latest k0.8.8

./init-android.sh

cd android/contrib
./compile-ffmpeg.sh clean
./compile-ffmpeg.sh all

cd ..
./compile-ijk.sh armv7a
