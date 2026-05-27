#!/usr/bin/env bash
set -e

if [ -f /data/params ]; then
    set -a
    # shellcheck disable=SC1091
    source /data/params
    set +a
fi

export DB_HOST="${DB_HOST:-mysql}"
export DB_USER="${DB_USER:-shipping}"
export DB_PASS="${DB_PASS:-RoboShop@1}"
export PORT="${PORT:-8080}"

exec java -jar shipping.jar
