#!/bin/bash
docker create\
  --name=plex\
  --hostname=plex\
  --net=host\
  -e PUID=1001\
  -e PGID=1000\
  -e TZ=Europe/London\
  -e VERSION=docker\
  -v /home/sysadmin/docker-data/plex/config:/config\
  -v /home/sysadmin/docker-data/plex/transcode:/transcode\
  -v /mnt/storage/Transmission/completed/Anime/TV:/media/tv\
  -v /mnt/storage/Transmission/completed/Anime/Movies:/media/anime_movies\
  -v /mnt/storage/Music/enisb:/media/music\
  -v /mnt/storage/Transmission/completed/Music:/media/music_dl\
  -v /mnt/storage/Pictures/enisb:/media/pictures\
  -v /mnt/storage/Transmission/completed/TV\ Shows:/media/TV\ Shows\
  -v /mnt/storage/Transmission/completed/Movies:/media/Movies\
  --log-opt max-size=10m\
  --log-opt max-file=5\
  --restart=unless-stopped\
  linuxserver/plex:latest
