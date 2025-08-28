#!/usr/bin/env bash
# Load variables from .env into current shell
set -a
if [ -f ".env" ]; then
  # shellcheck disable=SC1091
  source .env
  echo "Environment loaded from .env"
else
  echo ".env not found. Copy .env.example to .env and edit values."
fi
set +a
