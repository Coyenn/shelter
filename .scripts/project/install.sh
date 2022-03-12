#!/usr/bin/env bash
# 👋 Install all dependencies for development

set -e
cd "$(dirname "$0")"/../../ || exit

cd .docker || exit
echo "Building docker images"
docker-compose -f docker-compose.dev.yml build
echo "Installing node modules"
docker-compose -f docker-compose.dev.yml run node yarn
cd ../
