#!/usr/bin/env bash
# Create the xems-releases R2 bucket (run once after enabling R2 in Cloudflare Dashboard).
set -euo pipefail
D="$(cd "$(dirname "$0")/.." && pwd)"
cd "$D"
BUCKET="${XEMS_R2_BUCKET:-xems-releases}"

echo "Creating R2 bucket: ${BUCKET}"
echo "(Requires R2 enabled at https://dash.cloudflare.com → R2 Object Storage → Enable)"
echo ""

export CLOUDFLARE_API_TOKEN="${CLOUDFLARE_API_TOKEN:-${CF_API_TOKEN:-}}"
export CLOUDFLARE_ACCOUNT_ID="${CLOUDFLARE_ACCOUNT_ID:-${CF_ACCOUNT_ID:-}}"

if [[ -z "${CLOUDFLARE_API_TOKEN}" || -z "${CLOUDFLARE_ACCOUNT_ID}" ]]; then
  echo "ERROR: set CLOUDFLARE_API_TOKEN and CLOUDFLARE_ACCOUNT_ID (or CF_API_TOKEN / CF_ACCOUNT_ID)"
  exit 1
fi

npx wrangler r2 bucket create "${BUCKET}" 2>/dev/null || true
npx wrangler r2 bucket list

echo ""
echo "Deploy worker with R2 binding:"
echo "  cd server && npx wrangler deploy"
