# A sandbox environment designed to make quick development easy.
FROM ubuntu:latest
MAINTAINER John Starich <john.starich@thirdship.com>

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get update && apt-get install -y build-essential oracle-java8-installer tmux vim zip unzip wget curl netcat inetutils-ping inetutils-telnet inetutils-traceroute man git subversion python python3 python-pip python3-pip
RUN apt-get clean

ENTRYPOINT ["/bin/bash"]

