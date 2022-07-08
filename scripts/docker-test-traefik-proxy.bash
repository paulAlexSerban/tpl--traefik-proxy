#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo "🧪  TEST Traefik Proxy container"
bash ../docker/test/check-docker-container.bash traefik-proxy
