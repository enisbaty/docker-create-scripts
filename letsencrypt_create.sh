#!/bin/bash
docker create\
  --name=letsencrypt\
  --hostname=letsencrypt\
  --network=le_bridge\
  --cap-add=NET_ADMIN\
  -e PUID=1001\
  -e PGID=1001\
  -e TZ=Europe/London\
  -e URL=clouddrive.hopto.org\
  -e VALIDATION=http\
  -e EMAIL=enisbaty@protonmail.com\
  -e DHLEVEL=2048\
  -e ONLY_SUBDOMAINS=false\
  -e STAGING=false\
  -p 443:443\
  -p 80:80\
  -v /home/sysadmin/docker_config/letsencrypt:/config\
  --restart=unless-stopped\
  linuxserver/letsencrypt
