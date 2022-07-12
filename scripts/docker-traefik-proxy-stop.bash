#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo " 🛑  🐳  STOP Traefik Proxy docker containers"
docker compose --env-file ../config.env \
  --file ../docker/docker-compose.traefik-proxy.yml \
  down --volumes --rmi all
