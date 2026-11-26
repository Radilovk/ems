#!/usr/bin/env bash
# Host test of the spy (no device): javac the pure classes + test, run; optionally check the table against the aar.
set -euo pipefail
cd "$(dirname "$0")"
OUT=$(mktemp -d)
javac -nowarn -d "$OUT" src/com/xems/bhspy/{Sig,CallLog,Responder,Uploader,TabletLink,Regions}.java test/HostTest.java 2>&1 | grep -v -E 'Picked up|^Note' || true
java -cp "$OUT" com.xems.bhspy.HostTest 2>&1 | grep -v 'Picked up'
# end to end on loopback: the listener's TabletLink -> the tablet's real receiver; mapping; focus
ROOT="$(cd .. && pwd)"; V="$ROOT/branding/java/src/com/isaigu/gymapp/wearable/vr"; JAR="$ROOT/android-sdk/platforms/android-30/android.jar"
if [[ -s "$JAR" ]]; then
  O2=$(mktemp -d)
  javac -source 8 -target 8 -nowarn -d "$O2" -cp "$JAR" "$ROOT"/vr-bridge/test/stubs/android/*/*.java \
    test/stubs/com/isaigu/gymapp/widget/XemsGuard.java "$V"/{VrWire,VrHapticEvent,VrHapticSink,VrControlSink,VrClockSync,VrTelemetryReceiver,VrZoneHit,VrZoneSink,VrZoneMap,VrZoneFocus,VrHitParams,VrHitSettings}.java \
    src/com/xems/bhspy/{TabletLink,Regions,Sig}.java test/ZoneLinkTest.java test/FocusTest.java test/HitSettingsTest.java 2>&1 | grep -v -E 'bootstrap classpath|^Note|Picked up' || true
  java -cp "$O2:$JAR" com.isaigu.gymapp.wearable.vr.FocusTest 2>&1 | grep -v 'Picked up'
  java -cp "$O2:$JAR" com.isaigu.gymapp.wearable.vr.HitSettingsTest 2>&1 | grep -v 'Picked up'
  java -cp "$O2:$JAR" com.xems.bhspy.ZoneLinkTest "${XEMS_ZONE_PORT:-47822}" 2>&1 | grep -v 'Picked up'
else echo "(no android.jar: end-to-end skipped)"; fi
AAR=${BHAPTICS_AAR:-/home/user/bhaptics/tact-android/libs/bhaptics_manager.aar}
[[ -f "$AAR" ]] && python3 check-table.py "$AAR" 2>&1 | grep -v 'Picked up' || echo "(no aar: table check skipped)"
