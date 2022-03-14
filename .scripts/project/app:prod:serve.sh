#!/bin/bash
# 👋 Run in production

set -e
cd "$(dirname "$0")"/../../ || exit

cd .docker || exit
echo "Building Starting production server"
docker-compose --env-file ../.env -f docker-compose.prod.yml up -d --remove-orphans
cd ../
