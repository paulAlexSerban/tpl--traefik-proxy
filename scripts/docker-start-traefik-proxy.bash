#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo "🟢  START 🐳  Docker Traefik Proxy conatiner "
docker-compose --env-file ../config.env \
  --file ../docker/docker-compose.traefik-proxy.yml \
  up --detach --build
