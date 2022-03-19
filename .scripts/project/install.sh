#!/usr/bin/env bash
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
  "Initializing Database"
  ./project app:dev:prisma:migrate
  ./project app:dev:prisma:generate
  ./project app:dev:fixtures:load
} || {
    printf ""
}
