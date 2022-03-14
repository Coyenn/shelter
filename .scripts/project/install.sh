#!/bin/bash
# 👋 Install all dependencies for development

set -e
cd "$(dirname "$0")"/../../

cd .docker || exit
echo "Building docker images"
docker-compose -f docker-compose.dev.yml build
echo "Installing node modules"
docker-compose -f docker-compose.dev.yml run --rm node yarn
cd ../

{
    echo "Trying to load fixtures"
    ./project app:dev:fixtures:load
} || {
    printf ""
}