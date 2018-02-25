# 编译ijkplayer源码，docker 环境
FROM openjdk:8
MAINTAINER pokercc <pokercc@sina.com>


RUN wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip\
    && unzip -o sdk-tools-linux-3859397.zip -d /opt/android_sdk\
    && rm sdk-tools-linux-3859397.zip
RUN wget https://dl.google.com/android/repository/android-ndk-r14b-linux-x86_64.zip\
    && unzip -o android-ndk-r14b-linux-x86_64.zip -d /opt/\
    && rm android-ndk-r14b-linux-x86_64.zip

ENV ANDROID_SDK=/opt/android_sdk \
  ANDROID_NDK=/opt/android-ndk-r14b \
  ANDROID_HOME=$ANDROID_SDK \
  NDK_HOME=$ANDROID_NDK \
  PATH=$ANDROID_SDK/tools/bin:$PATH

RUN apt update\
  && apt install -y make\
  && apt install -y yasm\
  && apt install -y git\
  && apt install -y file\
  && apt autoremove

COPY build_ijk.sh /app/
WORKDIR /app
#ENTRYPOINT ./build_ijk.sh
