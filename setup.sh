#!/usr/bin/env bash
set -euo pipefail

echo "[INFO] Setting up 03-devops-networking..."

if command -v apt-get &>/dev/null; then
    sudo apt-get update -qq && sudo apt-get install -y -qq net-tools iproute2 dnsutils curl nc tcpdump
elif command -v yum &>/dev/null; then
    sudo yum update -y -q && sudo yum install -y -q net-tools bind-utils curl nc tcpdump
fi

find scripts labs -type f -name "*.sh" -exec chmod +x {} \; 2>/dev/null || true
echo "[SUCCESS] Networking lab setup complete."
