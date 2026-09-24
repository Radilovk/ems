#!/usr/bin/env bash
# Enable R2 binding in wrangler.toml, create bucket, deploy.
set -euo pipefail
D="$(cd "$(dirname "$0")/.." && pwd)"
cd "$D"

if ! grep -q 'binding = "RELEASES"' wrangler.toml; then
  echo "Adding R2 binding to wrangler.toml..."
  python3 - <<'PY'
from pathlib import Path
p = Path("wrangler.toml")
text = p.read_text()
snippet = Path("wrangler.r2.toml").read_text().strip()
marker = "# Uncomment after enabling R2"
if marker in text:
    start = text.index(marker)
    end = text.index("[[routes]]", start)
    text = text[:start] + snippet + "\n\n" + text[end:]
    p.write_text(text)
    print("R2 binding added.")
else:
    print("R2 binding already present or wrangler.toml changed — check manually.")
PY
fi

bash scripts/setup-r2.sh
npx wrangler deploy
echo "Done. R2 upload is live in /admin → Обновления (APK)."
