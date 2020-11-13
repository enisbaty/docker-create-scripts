#!/bin/bash
docker create\
  --name=mariadb\
  --hostname=mariadb\
  --network=le_bridge\
  -e PUID=1001\
  -e PGID=1001\
  -e MYSQL_ROOT_PASSWORD=nextcloud\
  -e TZ=Europe/London\
  -p 3306:3306\
  -v /home/sysadmin/docker_config/mariadb:/config\
  --restart=unless-stopped\
  linuxserver/mariadb
