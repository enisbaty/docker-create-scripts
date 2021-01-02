#!/bin/bash
docker create\
    --name=tautulli\
    --hostname=tautulli\
    --network=le_bridge\
    -e PUID=1001\
    -e PGID=1000\
    -e TZ=Europe/London\
    -p 8181:8181\
    -v /home/sysadmin/docker_config/tautulli:/config\
    -v /home/sysadmin/docker_config/plex/config/Library/Application\ Support/Plex\ Media\ Server/Logs:/logs\
    --log-opt max-size=10m\
    --log-opt max-file=5\
    --restart unless-stopped\
    linuxserver/tautulli
