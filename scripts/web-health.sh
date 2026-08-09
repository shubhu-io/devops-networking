#!/usr/bin/env bash
# ==============================================================================
# Script: web-health.sh
# Description: HTTP Status Code and Response Time Audit Script
# ==============================================================================

set -euo pipefail

URL=${1:-"https://httpbin.org/get"}

echo "Auditing HTTP endpoint: ${URL}..."

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$URL")
RESPONSE_TIME=$(curl -o /dev/null -s -w "%{time_total}" "$URL")

echo "HTTP Status Code: ${HTTP_STATUS}"
echo "Response Time Total: ${RESPONSE_TIME}s"

if [ "$HTTP_STATUS" -eq 200 ]; then
    echo "[SUCCESS] Endpoint is healthy and returning 200 OK."
else
    echo "[WARNING] Endpoint returned HTTP ${HTTP_STATUS}."
fi
