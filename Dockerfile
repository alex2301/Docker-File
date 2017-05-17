FROM centos

RUN yum -y update
RUN yum install -y nano vim net-tools httpd
RUN yum install -y php-mysql libzip php-cli php-common php-pdo

ADD run-httpd.sh /opt/run-httpd.sh
RUN chmod +x /opt/run-httpd.sh

EXPOSE 80

CMD ["/opt/run-httpd.sh"]
