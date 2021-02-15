#!/bin/bash
docker create\
    --name=radarr\
    --hostname=radarr\
    -e PUID=1001\
    -e PGID=1000\
    -e TZ=Europe/London\
    -p 7878:7878\
    -v /home/sysadmin/docker-data/radarr:/config\
    -v /mnt/storage/:/storage\
    --network=le_bridge\
    --log-driver json-file\
    --log-opt max-size=10m\
    --log-opt max-file=5\
    --restart=unless-stopped\
    ghcr.io/linuxserver/radarr

