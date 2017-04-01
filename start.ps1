./stop.ps1
./rebuild-docker-images.ps1

docker network create shecrc

docker create --net shecrc -p 3306:3306 --name shecrc-mysql -e MYSQL_ROOT_PASSWORD=docker-mysql -e MYSQL_DATABASE=shecrc_drupal -e MYSQL_USER=shecrcdrupal -e MYSQL_PASSWORD=shecrcdrupal shecrc/mysql
docker create --net shecrc -p 8080:80 --name shecrc-apache shecrc/apache-php

docker start shecrc-mysql
docker start shecrc-apache