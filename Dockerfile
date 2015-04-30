FROM ubuntu:14.04.2

RUN apt-get update && \
		apt-get -y upgrade && \
		apt-get -y install unzip build-essential

ADD https://dl.bintray.com/mitchellh/packer/packer_0.7.5_linux_amd64.zip /tmp/packer_0.7.5_linux_amd64.zip

RUN unzip /tmp/packer_0.7.5_linux_amd64.zip
RUN cp packer* /usr/bin
