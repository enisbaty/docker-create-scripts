#!/bin/bash
docker create\
    --name=bazarr\
    --hostname=bazarr\
    -e PUID=1001\
    -e PGID=1000\
    -e TZ=Europe/London\
    -p 6767:6767\
    -v /home/sysadmin/docker-data/bazarr:/config\
    -v /mnt/storage/:/storage\
    --network=le_bridge\
    --log-driver json-file\
    --log-opt max-size=10m\
    --log-opt max-file=5\
    --restart=unless-stopped\
    ghcr.io/linuxserver/bazarr

