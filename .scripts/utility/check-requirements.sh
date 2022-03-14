#!/usr/bin/env bash
set -e pipefail
cd "$(dirname "$0")"

currentRequirement=""

{
	currentRequirement="Docker"
	which docker &>/dev/null
	currentRequirement="Docker Compose"
	which docker-compose &>/dev/null
	currentRequirement="Bash"
	which bash &>/dev/null
} || {
	echo "$currentRequirement not found. Make sure it is installed."
	exit 1
}
