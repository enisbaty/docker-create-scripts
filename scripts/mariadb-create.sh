#!/bin/bash
docker create\
  --name=mariadb\
  --hostname=mariadb\
  --network=le_bridge\
  -e PUID=1001\
  -e PGID=1000\
  -e MYSQL_ROOT_PASSWORD=nextcloud\
  -e TZ=Europe/London\
  -p 3306:3306\
  -v /home/sysadmin/docker-data/mariadb:/config\
  --log-opt max-size=10m\
  --log-opt max-file=5\
  --restart=unless-stopped\
  linuxserver/mariadb
