#!/bin/bash
docker create\
  --name=netdata\
  --hostname=netdata\
  --network=le_bridge\
  -p 19999:19999\
  -v /proc:/host/proc:ro\
  -v /sys:/host/sys:ro\
  -v /var/run/docker.sock:/var/run/docker.sock:ro\
  --cap-add SYS_PTRACE\
  --security-opt apparmor=unconfined\
  --log-opt max-size=10m\
  --log-opt max-file=5\
  --restart unless-stopped\
  netdata/netdata
