docker create\
  --name=portainer\
  --hostname=portainer\
  --network=le_bridge\
  -p 9000:9000\
  --restart always\
  -v /var/run/docker.sock:/var/run/docker.sock\
  -v /home/sysadmin/docker_config/portainer_data:/data\
  portainer/portainer
