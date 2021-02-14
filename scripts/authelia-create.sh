#!/bin/bash
docker create\
    --name=authelia\
    --hostname=authelia\
    -e PUID=1001\
    -e PGID=1000\
    -e TZ=Europe/London\
    -v /home/sysadmin/docker-data/authelia:/config\
    --network=le_bridge\
    --log-driver json-file\
    --log-opt max-size=10m\
    --log-opt max-file=5\
    --restart=unless-stopped\
    authelia/authelia

