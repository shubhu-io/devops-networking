#!/usr/bin/env bash
set -euo pipefail

echo "=========================================================="
echo "          🌐 Network Interface & Listening Ports          "
echo "=========================================================="
ip -4 addr || ifconfig
ss -tulpn || netstat -tulpn
