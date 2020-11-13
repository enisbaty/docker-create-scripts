#!/bin/bash
docker create\
    --name=mc-sf4-personal\
    --hostname=mc-sf4-personal\
    -p 25571:25565\
    -e PUID=1001\
    -e GUID=1000\
    -e TZ=Europe/London\
    -e TYPE=CURSEFORGE\
    -e CF_SERVER_MOD=SkyFactory-4_Server_4.2.2.zip\
    -e EULA=TRUE\
    -e ENABLE_AUTOPAUSE=TRUE\
    -e AUTOPAUSE_TIMEOUT_EST=1800\
    -e MAX_MEMORY=12G\
    -v /home/sysadmin/docker_config/minecraft/sf4-personal:/data\
    --restart=unless-stopped\
    itzg/minecraft-server:latest
