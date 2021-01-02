#!/bin/bash
docker create\
  --name=swag\
  --hostname=swag\
  --network=le_bridge\
  --cap-add=NET_ADMIN\
  -e PUID=1001\
  -e PGID=1000\
  -e TZ=Europe/London\
  -e URL=clouddrive.hopto.org\
  -e VALIDATION=http\
  -e EMAIL=enisbaty@gmail.com\
  -e DHLEVEL=2048\
  -e ONLY_SUBDOMAINS=false\
  -e STAGING=false\
  -p 443:443\
  -p 80:80\
  -v /home/sysadmin/docker-data/swag:/config\
  --log-opt max-size=10m\
  --log-opt max-file=5\
  --restart=unless-stopped\
  ghcr.io/linuxserver/swag
