#!/bin/bash
#########################################################################
# Author: neofung(http://blog.csdn.net/neofung)
# Created Time: Sat 31 Jan 2015 09:42:18 AM UTC
# File Name: restart_openvpnas.sh
# Description: 
#########################################################################

echo openvpn:12345678|chpasswd
service openvpnas restart
