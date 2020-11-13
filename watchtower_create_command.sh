#!/bin/bash
docker create\
  --name=watchtower\
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e WATCHTOWER_POLL_INTERVAL=3600\
  --restart=unless-stopped\
  containrrr/watchtower 
