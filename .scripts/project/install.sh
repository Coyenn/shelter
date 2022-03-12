#!/usr/bin/env bash
# 👋 Install all dependencies for development

set -e
cd "$(dirname "$0")"/../../ || exit

cd .docker || exit
echo "Building docker images"
docker-compose build
echo "Installing node modules"
docker-compose run node yarn
cd ../
