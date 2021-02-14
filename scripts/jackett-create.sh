#!/bin/bash
docker create\
    --name=jackett\
    --hostname=jackett\
    -e PUID=1001\
    -e PGID=1000\
    -e TZ=Europe/London\
    -e AUTO_UPDATE=true\
    -p 9117:9117\
    -v /home/sysadmin/docker-data/jackett:/config\
    --network=le_bridge\
    --log-driver json-file\
    --log-opt max-size=10m\
    --log-opt max-file=5\
    --restart=unless-stopped\
    ghcr.io/linuxserver/jackett

