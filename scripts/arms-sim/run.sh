#!/usr/bin/env bash
# The arms / calf divider as the owner specified it, on the REAL ChannelStrengthScale (stubbed settings).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"; D="$ROOT/scripts/arms-sim"; OUT=$(mktemp -d)
javac -nowarn -source 8 -target 8 -d "$OUT" "$D/stub/com/isaigu/gymapp/widget/XemsLicense.java" \
  "$ROOT/branding/java/src/com/isaigu/gymapp/train/utils/ChannelStrengthScale.java" "$D/ArmsSim.java" 2>&1 | grep -v -E 'Picked up|bootstrap|^Note|warning' || true
java -cp "$OUT" ArmsSim 2>&1 | grep -v 'Picked up'
