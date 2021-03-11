#!/bin/bash
docker create\
    --name=sonarr\
    --hostname=sonarr\
    -e PUID=1001\
    -e PGID=1000\
    -e TZ=Europe/London\
    -p 8989:8989\
    -v /home/sysadmin/docker-data/sonarr:/config\
    -v /mnt/storage/:/storage\
    --network=le_bridge\
    --log-driver json-file\
    --log-opt max-size=10m\
    --log-opt max-file=5\
    --restart=unless-stopped\
    ghcr.io/linuxserver/sonarr

