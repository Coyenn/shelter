#!/bin/bash
# 🔨 Start developing
cd "$(dirname "$0")" || exit
cd ../../.docker || exit

docker-compose --env-file ../.env.local -f docker-compose.dev.yml up -d --remove-orphans