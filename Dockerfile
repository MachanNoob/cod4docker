FROM centos:7
MAINTAINER "Johan Rydström" <johan.rydstrom@gmail.com>

#from http://cod4-linux-server.webs.com/
RUN yum -y install glibc.i686 libgcc.i686 libstdc++.i686 zlib.i686

RUN useradd cod4
ADD cod4/cod4_lnxded /home/cod4/
ADD cod4/localization.txt /home/cod4/
#ADD cod4/main/server.cfg /home/cod4/main/
RUN chown -R cod4:cod4 /home/cod4

USER cod4
WORKDIR /home/cod4
ENTRYPOINT /home/cod4/cod4_lnxded +exec server.cfg +map_rotate
