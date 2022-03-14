#!/usr/bin/env bash
# 👋 Build for production

set -e
cd "$(dirname "$0")"/../../ || exit

./project app:down

cd .docker || exit
echo "Building docker images"
docker-compose --env-file ../.env -f docker-compose.prod.yml build
echo "Building Svelte Kit"
docker-compose --env-file ../.env -f docker-compose.prod.yml run node --rm yarn svelte-kit-build
cd ../
