#!/bin/bash
docker create\
    --name=jellyfin\
    --hostname=jellyfin\
    -e PUID=1001\
    -e PGID=1000\
    -e TZ=Europe/London\
    -p 8096:8096\
    -p 8920:8920\
    -v /home/sysadmin/docker-data/jellyfin:/config\
    -v /mnt/storage/Transmission/completed/Anime/TV:/data/anime_tv\
    -v /mnt/storage/Transmission/completed/Anime/Movies:/data/anime_movies\
    -v /mnt/storage/Transmission/completed/TV\ Shows:/data/tv\
    -v /mnt/storage/Transmission/completed/Movies:/data/movies\
    -v /mnt/storage/Music/enisb:/data/music\
    --network=le_bridge\
    --log-driver json-file\
    --log-opt max-size=10m\
    --log-opt max-file=5\
    --restart=unless-stopped\
    ghcr.io/linuxserver/jellyfin

