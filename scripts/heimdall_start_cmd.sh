docker create\
  --name=heimdall\
  --hostname=heimdall\
  --network=le_bridge\
  -e PUID=1001\
  -e PGID=1001\
  -e TZ=Europe/London\
  -p 8888:80\
  -p 3434:443\
  -v /home/sysadmin/docker_config/heimdall:/config\
  --log-opt max-size=10m\
  --log-opt max-file=5\
  --restart=unless-stopped\
  linuxserver/heimdall
