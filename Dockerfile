FROM centos

RUN yum -y update
RUN yum install nano vim net-tools
