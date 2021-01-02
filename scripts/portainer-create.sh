docker create\
  --name=portainer\
  --hostname=portainer\
  --network=le_bridge\
  -p 9000:9000\
  -v /var/run/docker.sock:/var/run/docker.sock\
  -v /home/sysadmin/docker-data/portainer:/data\
  --log-opt max-size=10m\
  --log-opt max-file=5\
  --restart always\
  portainer/portainer
