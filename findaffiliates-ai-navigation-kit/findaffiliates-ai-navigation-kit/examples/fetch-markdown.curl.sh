#!/usr/bin/env bash
set -euo pipefail

URL="${1:-https://www.findaffiliates.online/site-pro-affiliate-program}"

curl -L \
  -H "User-Agent: FindAffiliates-AI-Navigation-Example/1.0" \
  -H "Accept: text/markdown, text/plain;q=0.9, text/html;q=0.8" \
  "$URL"
