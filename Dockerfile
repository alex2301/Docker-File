FROM centos

RUN yum -y update
RUN yum install -y nano vim net-tools httpd

ADD run-httpd.sh /opt/run-httpd.sh
RUN chmod +x /opt/run-httpd.sh

EXPOSE 80

CMD ["/opt/run-httpd.sh"]
