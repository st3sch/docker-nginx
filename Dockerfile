FROM fedora:latest

MAINTAINER olaf radicke o.ricke@meteocontol.de

RUN yum install -y nginx ca-certificates
RUN mkdir -p /etc/nginx/ssl

VOLUME ["/etc/nginx/default.d/", "/etc/nginx/ssl"]

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/nginx"]