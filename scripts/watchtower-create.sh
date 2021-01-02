#!/bin/bash
docker create\
  --name=watchtower\
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e WATCHTOWER_POLL_INTERVAL=3600\
  --log-opt max-size=10m\
  --log-opt max-file=5\
  --restart=unless-stopped\
  containrrr/watchtower 
