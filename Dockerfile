FROM ubuntu:14.04
MAINTAINER Ricky Chiang metavige@gmail.com

# environment
ENV DEBIAN_FRONTEND noninteractive

# update apt
RUN apt-get update && apt-get -y upgrade

# install apt
RUN apt-get install -y vim curl wget build-essential make

# clean cache files
RUN apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
