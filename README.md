# Docker tutorial

## Learn how to create Docker container with PHP 5.6 and Apache server

Accompanying files for [Docker tutorial](http://drib.tech/programming/docker-tutorial) in which you will learn how to create Docker container (based on CentOS) with PHP 5.6 and Apache web server using supervisor service. PHP code will be run from the host machine. This setup is useful if you need to support legacy PHP application and you don’t want to pollute host machine with another parallel PHP installation.  Of course, XDebug will be configured as well.

# Steps

* $ git clone git@github.com:dribtech/centos7-apache-php56-fpm.git
* $ sudo docker build -t centos7-apache-php56-fpm .
* Create test php script. For example mine is in /srv/php56test/
* $ sudo docker run -dp 8080:80 -v /srv/php56test/:/var/www/html/ centos7-apache-php56-fpm
* Visit http://localhost:8080 .

#Learn more

For more details read the complete tutorial at: [drib.tech/programming/docker-tutorial](http://drib.tech/programming/docker-tutorial).