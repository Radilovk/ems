#!/data/data/com.termux/files/usr/bin/bash
# One-time Termux setup for the XEMS VR launcher. The app ships this file and runs it through RunCommandService
# (`bash -c <this file> xems-setup`), so nothing has to be typed in Termux except allow-external-apps.
# Safe to run again: it updates instead of re-cloning. Ends with `termux-run.sh check` (its exit code).
set -euo pipefail
REPO="${XEMS_REPO:-https://github.com/Radilovk/ems.git}"
BRANCH="${XEMS_BRANCH:-main}"
DIR="$HOME/ems"
APT=(-y -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold)
export DEBIAN_FRONTEND=noninteractive

echo "→ 1/3 пакети: python, java, adb, git"
pkg update "${APT[@]}"
pkg install "${APT[@]}" python openjdk-17 android-tools git

echo "→ 2/3 XEMS VR файлове ($DIR, само vr-bridge/)"
if [[ -d "$DIR/.git" ]]; then
  git -C "$DIR" fetch --depth 1 origin "$BRANCH"
  git -C "$DIR" checkout -q -f -B "$BRANCH" FETCH_HEAD   # -f: a stray local edit must not block the update
else
  git clone -q --depth 1 --filter=blob:none --no-checkout --branch "$BRANCH" "$REPO" "$DIR"
  git -C "$DIR" sparse-checkout set --no-cone '/vr-bridge/'      # skip the tablet APKs and the rest
  git -C "$DIR" checkout -q "$BRANCH"
fi

echo "→ 3/3 проверка"
exec bash "$DIR/vr-bridge/patcher/android-launcher/termux/termux-run.sh" check
