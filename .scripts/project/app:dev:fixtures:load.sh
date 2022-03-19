#!/usr/bin/env bash
# 🔨 Load Prisma fixtures
set -e
cd "$(dirname "$0")"

echo "Creating Prisma fixtures"
cd ../../.docker
docker-compose --env-file ../.env.local -f docker-compose.dev.yml run --rm node npx dotenv -e .env.local -- node --loader ts-node/esm ./fixtures/Fixtures.ts
