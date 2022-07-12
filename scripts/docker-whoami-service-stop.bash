#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo " 🛑  🐳  STOP Whoami Service docker containers"
docker compose --env-file ../config.env \
  --file ../docker/docker-compose.whoami-service.yml \
  down --volumes --rmi all
