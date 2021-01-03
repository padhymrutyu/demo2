FROM centos:latest
MAINTAINER SUBHAM@PADHY
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/parallo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip parallo.zip
RUN cp -rvf templatemo_534_parallo/* .
RUN rm -rf templatemo_534_parallo parallo.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
