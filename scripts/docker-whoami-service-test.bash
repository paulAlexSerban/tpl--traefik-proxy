#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo "🧪  TEST Whoami Service container"
bash ../docker/test/check-docker-container.bash whoami-service
