#!/bin/bash
docker create\
    --name=transmission\
    --cap-add=NET_ADMIN\
    -v /mnt/storage/Transmission:/data\
    -v /etc/localtime:/etc/localtime:ro\
    -v /home/sysadmin/vpn-conf:/etc/openvpn/custom\
    -e CREATE_TUN_DEVICE=true\
    -e OPENVPN_PROVIDER=CUSTOM\
    -e OPENVPN_USERNAME=7586940515220274\
    -e OPENVPN_PASSWORD=m\
    -e OPENVPN_CONFIG=mullvad_gb_lon\
    -e OPENVPN_OPTS='--inactive 3600 --ping 10 --ping-exit 60 --mute-replay-warnings'\
    -e WEBPROXY_ENABLED=false\
    -e TRANSMISSION_WEB_UI=combustion\
    -e PUID=1001\
    -e PGID=1000\
    -e TRANSMISSION_SPEED_LIMIT_UP=750\
    -e TRANSMISSION_SPEED_LIMIT_DOWN=3500\
    -e TRANSMISSION_SPEED_LIMIT_UP_ENABLED=true\
    -e TRANSMISSION_SPEED_LIMIT_DOWN_ENABLED=true\
    -e TRANSMISSION_ALT_SPEED_TIME_ENABLED=true\
    -e TRANSMISSION_ALT_SPEED_TIME_BEGIN=120\
    -e TRANSMISSION_ALT_SPEED_TIME_END=540\
    -e TRANSMISSION_ALT_SPEED_UP=10000\
    -e TRANSMISSION_ALT_SPEED_DOWN=10000\
    -e TRANSMISSION_DOWNLOAD_QUEUE_ENABLED=false\
    -p 9091:9091\
    --hostname=transmission\
    --network=le_bridge\
    --log-driver json-file\
    --log-opt max-size=10m\
    --log-opt max-file=5\
    --restart=unless-stopped\
    haugene/transmission-openvpn