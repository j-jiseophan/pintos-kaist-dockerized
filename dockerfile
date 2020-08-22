FROM ubuntu:16.04
LABEL maintainer="jshan2017@kaist.ac.kr"

# Install required packages

RUN apt-get update && \
  apt-get install software-properties-common -y && \
  add-apt-repository ppa:jonathonf/gcc-7.1 &&\
  add-apt-repository ppa:deadsnakes/ppa &&\
  apt-get update

RUN apt-get install -y \
  curl \
  tar \
  build-essential \
  git \
  gcc-7 \
  gdb \
  python3.8

RUN apt-get install -y \
  qemu \
  qemu-system

RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.8 60

# set env var

RUN /bin/bash -c "echo export PATH=$PATH:/pintos/utils >> ~/.bashrc && source ~/.bashrc"