#from ubuntu:14.04
from phusion/baseimage:0.9.16

maintainer Neo Fung <neosfung@gmail.com>

ENV HOME /root
RUN rm -f /etc/service/sshd/down
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh
CMD ["/sbin/my_init"]

RUN apt-get update
RUN apt-get install -y iptables curl
RUN curl -O http://swupdate.openvpn.org/as/openvpn-as-2.0.12-Ubuntu14.amd_64.deb
RUN dpkg -i openvpn-as-2.0.12-Ubuntu14.amd_64.deb

expose 443/tcp
expose 943/tcp
expose 1194/udp

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN rm openvpn-as-2.0.12-Ubuntu14.amd_64.deb

