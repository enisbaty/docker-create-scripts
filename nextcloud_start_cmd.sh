#!/bin/bash
docker create\
  --name=nextcloud\
  --hostname=nextcloud\
  --network=le_bridge\
  -p 4343:443\
  -e PUID=1001\
  -e PGID=1000\
  -v /home/sysadmin/docker_config/nextcloud:/config\
  -v /mnt/storage/nextcloud_data:/data\
  -v /mnt/storage/Backups:/backups\
  -v /mnt/storage/Transmission:/transmission\
  --restart=unless-stopped\
  linuxserver/nextcloud 
