#!/bin/bash
docker create\
    --name=bitwarden\
    --hostname=transmission\
    --network=le_bridge\
    --restart=unless-stopped\
    -e SIGNUPS_ALLOWED=true\
    -e DOMAIN='https://bw.clouddrive.hopto.org/'\
    -p 8343:80\
    -p 3012:3012\
    -v /mnt/storage/docker-data/bitwarden:/data/:rw\
    mprasil/bitwarden
