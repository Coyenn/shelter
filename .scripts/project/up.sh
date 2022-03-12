#!/usr/bin/env bash
# 🔨 Start developing
cd "$(dirname "$0")" || exit
cd ../../.docker || exit

docker-compose up -d --remove-orphans