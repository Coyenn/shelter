#!/usr/bin/env bash
# 👋 Execute commands in Prisma

set -e
cd "$(dirname "$0")"/../../

cd .docker
docker-compose --env-file ../.env.local -f docker-compose.dev.yml run --rm node npx dotenv -e .env.local -- npx prisma generate
cd ../
