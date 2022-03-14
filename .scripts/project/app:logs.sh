#!/bin/bash
# 📃 See what's going on inside your plugin
cd "$(dirname "$0")" || exit
cd ../../.docker || exit

docker-compose -f docker-compose.dev.yml logs -f
exit 0
