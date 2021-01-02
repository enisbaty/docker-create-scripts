#!/bin/bash
docker create\
    --name=mc-personal\
    --hostname=mc-personal\
    -p 25570:25565\
    -e PUID=1001\
    -e GUID=1000\
    -e TZ=Europe/London\
    -e TYPE=PAPER\
    -e EULA=TRUE\
    -e ENABLE_AUTOPAUSE=TRUE\
    -e AUTOPAUSE_TIMEOUT_EST=1800\
    -e MAX_MEMORY=12G\
    -v /home/sysadmin/docker_config/minecraft/personal:/data\
    --log-opt max-size=10m\
    --log-opt max-file=5\
    --restart=unless-stopped\
    itzg/minecraft-server:latest
