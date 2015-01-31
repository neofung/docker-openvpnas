#!/bin/bash
#########################################################################
# Author: neofung(http://blog.csdn.net/neofung)
# Created Time: 2015年01月31日 星期六 15时20分18秒
# File Name: start.sh
# Description: 
#########################################################################

# build image
docker build -t docker-openvpnas .

# run container
docker run -p 443:443/tcp -p 943:943/tcp -p 1194:1194/udp -d --privileged -t docker-openvpnas:latest /sbin/my_init --enable-insecure-key

# install docker-ssh
#curl --fail -L -O https://github.com/phusion/baseimage-docker/archive/master.tar.gz
#tar xzf master.tar.gz
#sudo ./baseimage-docker-master/install-tools.sh
#rm -rf baseimage-docker-master
#rm -f master.tar.gz base
