FROM centos:7

RUN yum install -y epel-release &&yum install -y openconnect iproute&& yum clean all

RUN yum install -y net-tools which 

COPY ./start_openconnect.sh /usr/local/bin/
