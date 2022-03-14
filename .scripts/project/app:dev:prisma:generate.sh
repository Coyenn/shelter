#!/usr/bin/env bash
# 👋 Execute commands in Prisma

set -e
cd "$(dirname "$0")"/../../

cd .docker
docker-compose -f docker-compose.dev.yml run --rm node npx prisma generate
cd ../