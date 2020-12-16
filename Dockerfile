FROM centos:latest
MAINTAINER SUBHAM@PADHY
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page262/pomato.zip /var/www/html
WORKDIR /var/www/html
RUN unzip pomato.zip
RUN cp -rvf pomato/* .
RUN rm -rf pomato pomato.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
