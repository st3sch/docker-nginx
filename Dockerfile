FROM centos:latest

MAINTAINER olaf radicke o.ricke@meteocontol.de

RUN yum install -y nginx ca-certificates
RUN mkdir -p /etc/nginx/ssl

VOLUME ["/etc/nginx/default.d/", "/etc/nginx/ssl"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
