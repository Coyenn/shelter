#!/usr/bin/env bash
# 👋 Migrate the database schema

set -e
cd "$(dirname "$0")"/../../

cd .docker
docker-compose --env-file ../.env.local -f docker-compose.dev.yml run --rm node npx dotenv -e .env.local -- npx prisma migrate dev --name init
cd ../
