FROM ubuntu:16.04

RUN apt-get -y update && apt-get -y install openssh-server iputils-ping

COPY id_rsa /root/.ssh/
COPY id_rsa.pub /root/.ssh/
COPY id_rsa.pub /root/.ssh/authorized_keys
COPY sandeep.com /tmp/
COPY asheesh.com /tmp/