#!/bin/bash

GOPATH=$(go env GOPATH)
GOPROXY=$(go env GOPROXY)
GOPRIVATE=$(go env GOPRIVATE)

build_docker(){
  echo '
  FROM ubuntu:18.04
  RUN echo "deb http://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse\n\
    deb http://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse\n\
    deb http://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse\n\
    deb http://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse" > /etc/apt/sources.list
  RUN apt-get update && apt-get -y install sshfs openssl curl upx git zsh gcc g++
  RUN curl -L https://raw.githubusercontent.com/binary4cat/golang-tools-install-script/feature/mirror/goinstall.sh | bash -s -- --mirror https://mirrors.ustc.edu.cn/golang
  # 自动安装的go会写入全局变量，这里需要修改文件
  RUN sed -i "s/^\(export GOPATH=\).*$/\1'${GOPATH//\//\\\/}'/" ~/.bashrc
  ENV GOPROXY='$GOPROXY'
  ENV GOPRIVATE='$GOPRIVATE'
  ENTRYPOINT [ "bash" ]' > /tmp/bulder_fockerfile 

  docker build -t dev_builder -f /tmp/bulder_fockerfile .
}

run_docker(){
  docker run\
    -v $GOROOT:$GOROOT\
    -v $GOPATH:$GOPATH\
    -v /data:/mnt/data\
    --net=host\
    --privileged\
    --cap-add SYS_ADMIN\
    -it dev_builder
}

case "$1" in 
  build)
    build_docker
    ;;
  run)
    run_docker
    ;;
  *)
    echo "build | run"
    ;;
esac
