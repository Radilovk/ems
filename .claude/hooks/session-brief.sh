#!/usr/bin/env bash
# SessionStart: a few lines of live state so the agent doesn't have to discover it with tool calls.
cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/../..}" 2>/dev/null || exit 0
v() { sed -n "s/^$1=//p" RELEASE_VERSION 2>/dev/null; }
band="$(sed -n 's/.*"versionName": *"\([^"]*\)".*/\1/p' band-app/src/manifest.json 2>/dev/null) ($(sed -n 's/.*"versionCode": *\([0-9]*\).*/\1/p' band-app/src/manifest.json 2>/dev/null))"
echo "[xems] $(git branch --show-current 2>/dev/null) · APK $(v versionName) ($(v versionCode)) · band ${band} · uncommitted: $(git status --porcelain 2>/dev/null | wc -l)"
echo "recent: $(git log --format='%s' -12 2>/dev/null | grep -v '^Merge\|^Build ' | head -3 | paste -sd'|' -)"
if ! python3 scripts/repo-map.py --check >/dev/null 2>&1; then
  python3 scripts/repo-map.py >/dev/null 2>&1 && echo "map: .claude/MAP.md was stale → regenerated (commit it with your change)"
fi
[[ -f android-sdk/platforms/android-30/android.jar ]] || echo "sdk: android-sdk/ missing → Java edits would NOT ship; run: bash scripts/setup-android-toolchain.sh"
echo "nav: grep -in <concept> .claude/MAP.md · python3 scripts/repo-map.py outline <file>"
exit 0
