FROM centos:7

USER root

LABEL maintainer = "contact@drib.tech"

RUN yum -y update && \
 yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
 yum clean all

#  mod_fastcgi \

RUN yum -y install --enablerepo=remi httpd \
 supervisor \
 php56 \
 php56-php-common \
 php56-php-cli \
 php56-php-mbstring \
 php56-php-mcrypt  \
 php56-php-pear \
 php56-php-xml \
 php56-php-runtime \
 php56-php-mysqlnd \
 php56-php-fpm \
 php56-php-bcmath \
 php56-php-pecl-xdebug.x86_64 && \
 yum clean all

RUN rm -f /etc/httpd/conf.d/welcome.conf

COPY supervisord.conf /etc/supervisord.conf
COPY php.conf /etc/httpd/conf.d/php.conf
COPY www.conf /opt/remi/php56/root/etc/php-fpm.d/www.conf
COPY xdebug.ini /etc/opt/remi/php56/php.d/15-xdebug.ini

EXPOSE 8080

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]