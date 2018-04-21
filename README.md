# CentOS - Apache - PHP56
## centos docker apache php56, php app on host - TODO work in progress

CentOS + Apache + PHP56 docker container in order to run legacy code (from the host machine)

it works, but this readme is very unfinished

clone repo, cd to repo dir

$ docker build -t centos-apache-php56 .

$ docker run -dp 8080:80 -v /srv/php56test/:/var/www/html centos-apache-php56

$ wget http://localhost:8080


# phpstorm xdebug
* don't change Settings : Languages & Frameworks : Debug : DBGp Proxy
* create new debug configuration (top right)
* check images in readme_imgs

# test php script
* in this example it is in /srv/php56test
* index.php:
```
<?php 
echo "<h1>".__FILE__ . __LINE__  ."</h2>";
phpinfo();
```

* start listening to debug connections (phone icon)
* put break point on echo line