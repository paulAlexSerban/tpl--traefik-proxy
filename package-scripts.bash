#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

# START Docker Compose Services
function startComposeTraefikProxy() {
  echo "🐳  🟢  START Traefik Proxy conatiner "
  docker-compose --env-file config.env \
    --file docker/docker-compose.traefik-proxy.yml \
    up --detach --build
}

function startComposeWhiamiService() {
  echo "🐳  🟢  START Whoami Service conatiner "
  docker-compose --env-file config.env \
    --file docker/docker-compose.traefik-proxy.yml \
    --file docker/docker-compose.whoami-service.yml \
    up --detach --build
}
# TEST

function testCurlTraefikProxyContainer() {
  echo "🧪  TEST Traefik Proxy container"
  bash ./test/check-docker-container.bash traefik-proxy
}

function testCurlWhoamiServiceContainer() {
  echo "🧪  TEST Whoami Service container"
  bash ./test/check-docker-container.bash whoami-service
}

# STOP Docker Compose Services

function stopComposeTraefikProxy() {
  echo " 🛑  🐳  STOP Traefik Proxy docker containers"
  docker compose --env-file config.env \
    --file docker/docker-compose.traefik-proxy.yml \
    down --volumes --rmi all
}

function stopComposeWhiamiService() {
  echo " 🛑  🐳  STOP Whoami Service docker containers"
  docker compose --env-file config.env \
    --file docker/docker-compose.whoami-service.yml \
    down --volumes --rmi all
}

function stopComposeAll() {
  echo " 🛑  🐳  STOP all docker containers"
  docker compose --env-file config.env \
    --file docker/docker-compose.traefik-proxy.yml \
    --file docker/docker-compose.whoami-service.yml \
    down --volumes --rmi all
  docker container prune -f
}

# INSTALL

function installAll() {
  echo "🔧  Installing TraefikProxy 🔧 "
}

$1
