#!/usr/bin/env bash
# 🛑 Stop developing
cd "$(dirname "$0")" || exit
cd ../../.docker || exit

docker-compose -f docker-compose.dev.yml down
