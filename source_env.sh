#!/bin/zsh
if [ -z "$1" ]; then
  echo "Usage: source source_env.sh <env-name>"
  return 1 2>/dev/null || exit 1
fi

ENV_FILE=".env-$1"

if [ ! -f "$ENV_FILE" ]; then
  echo "Error: $ENV_FILE not found"
  return 1 2>/dev/null || exit 1
fi

set -a
source "$ENV_FILE"
set +a
