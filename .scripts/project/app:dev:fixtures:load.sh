#!/usr/bin/env bash
# 🔨 Load Prisma fixtures
set -e
cd "$(dirname "$0")"

echo "Generating Prisma schema"
bash ./app:dev:prisma:generate.sh

echo "Creating Prisma fixtures"
cd ../../.docker
docker-compose --env-file ../.env.local -f docker-compose.dev.yml run --rm node npx fixtures ./fixtures