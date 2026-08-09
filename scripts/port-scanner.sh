#!/usr/bin/env bash
set -euo pipefail

HOST=${1:-"127.0.0.1"}
PORT=${2:-"80"}

echo "Auditing authorized TCP connectivity to ${HOST}:${PORT}..."
if nc -zv -w 2 "$HOST" "$PORT" 2>/dev/null; then
    echo "[SUCCESS] Port $PORT on host $HOST is OPEN."
else
    echo "[FAILED] Port $PORT on host $HOST is CLOSED/FILTERED."
fi
