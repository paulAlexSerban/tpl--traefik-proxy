#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo "🟢  START 🐳 Docker Whoami Service conatiner "
docker-compose --env-file ../config.env \
  --file ../docker/docker-compose.traefik-proxy.yml \
  --file ../docker/docker-compose.whoami-service.yml \
  up --detach --build
