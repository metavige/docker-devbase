FROM ubuntu:trusty
MAINTAINER Ricky Chiang metavige@gmail.com

# environment
ENV DEBIAN_FRONTEND noninteractive
ENV APT_CACHE 192.168.0.103

ADD etc/apt/apt.conf.d/20proxy /etc/apt/apt.conf.d/ 

RUN \
    # add apt proxy and change fast mirror 
    sed -i "s/aptcache/$APT_CACHE/g" /etc/apt/apt.conf.d/20proxy && \
    sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list && \
    # update apt
    apt-get update && apt-get -y upgrade && \
    \
    \
    \ 
    # install apt
    apt-get install -y vim curl wget build-essential make libcurl4-openssl-dev && \
    \
    \ 
    # clean cache files
    apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* 
    