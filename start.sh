#!/bin/bash
#########################################################################
# Author: neofung(http://blog.csdn.net/neofung)
# Created Time: 2015年01月31日 星期六 15时20分18秒
# File Name: start.sh
# Description: 
#########################################################################

docker run -p 443:443/tcp -p 943:943/tcp -p 1194:1194/udp -p 10324:10324/udp -d --privileged -t openvpnas:latest /sbin/my_init --enable-insecure-key
