#!/bin/bash
docker create\
    --name=jackett\
    --hostname=jackett\
    -e PUID=1001\
    -e PGID=1000\
    -e TZ=Europe/London\
    -e AUTO_UPDATE=true\
    -e VPN_ENABLED=yes\
    -e VPN_TYPE=openvpn\
    -e LAN_NETWORK=192.168.1.0/24\
    -e VPN_USERNAME=7586940515220274\
    -e VPN_PASSWORD=m\
    -p 9117:9117\
    -v /home/sysadmin/docker-data/jackett:/config\
    --network=le_bridge\
    --log-driver json-file\
    --cap-add=NET_ADMIN\
    --device /dev/net/tun:/dev/net/tun\
    --log-opt max-size=10m\
    --log-opt max-file=5\
    --restart=unless-stopped\
    dyonr/jackettvpn

