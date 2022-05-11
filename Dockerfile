FROM ubuntu:18.04

RUN apt update &&\
    apt install -y \
        sudo build-essential ccache ecj fastjar file g++ gawk \
        gettext git java-propose-classpath libelf-dev libncurses5-dev \
        libncursesw5-dev libssl-dev python python2.7-dev python3 unzip wget \
        python-distutils-extra python3-setuptools python3-dev rsync subversion \
        swig time xsltproc zlib1g-dev &&\ 
    apt clean

RUN useradd -m openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

USER openwrt
WORKDIR /home/openwrt
