FROM fedora:latest

MAINTAINER olaf radicke o.ricke@meteocontol.de

RUN yum install -y nginx ca-certificates
RUN mkdir -p /etc/nginx/ssl

COPY ./nginx.conf /etc/nginx/nginx.conf
VOLUME ["/etc/nginx/nginx.conf"]
VOLUME ["/etc/nginx/conf.d/"]
VOLUME ["/etc/nginx/ssl"]
VOLUME ["/var/log/nginx"]


EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/nginx"]