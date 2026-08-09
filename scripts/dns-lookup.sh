#!/usr/bin/env bash
# ==============================================================================
# Script: dns-lookup.sh
# Description: Query A, AAAA, MX, NS, and TXT DNS records for a domain
# ==============================================================================

set -euo pipefail

DOMAIN=${1:-"google.com"}

echo "=========================================================="
echo "          DNS RESOLUTION & RECORD DIAGNOSTICS             "
echo "=========================================================="
echo "Querying domain: ${DOMAIN}..."

if command -v dig &>/dev/null; then
    echo -e "\n--- A Records ---"
    dig +short "$DOMAIN" A
    echo -e "\n--- MX Records ---"
    dig +short "$DOMAIN" MX
    echo -e "\n--- NS Records ---"
    dig +short "$DOMAIN" NS
    echo -e "\n--- TXT Records ---"
    dig +short "$DOMAIN" TXT
else
    nslookup "$DOMAIN"
fi

echo -e "\n[SUCCESS] DNS lookup completed."
