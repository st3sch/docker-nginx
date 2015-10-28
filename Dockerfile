
FROM fedora:latest

MAINTAINER olaf radicke o.ricke@meteocontol.de

RUN yum install -y nginx ca-certificates
RUN mkdir -p /etc/nginx/ssl

#COPY ./nginx.conf /etc/nginx/nginx.conf
VOLUME ["/etc/nginx/default.d/", "/etc/nginx/ssl", "/etc/nginx/nginx.conf"]

EXPOSE 80 443

CMD ["/usr/sbin/nginx"]
