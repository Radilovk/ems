#!/bin/sh
# A living body is never still (owner's log 2026-11-07: the wrists "still" 0 % of the session → the gyro offset never
# learnt → the left forearm's heading 87° off in 2 min). The scripted person with tremor (sway, pulse, breath ≈ 2–4 °/s)
# for 3 laps, the app's "zero" in the calibration's still stand (fw 10) — the arms must not drift away.
#   sh scripts/motion-sim/tremor-test.sh
set -eu
R=$(cd "$(dirname "$0")/../.." && pwd); W=$R/build/motion-sim/tremor
g++ -O2 -o "$R/build/motion-sim/fusion_run" "$R/scripts/motion-sim/fusion_run.cpp"
rm -rf "$W"; mkdir -p "$W"
TREMOR=1 LAPS=3 node "$R/scripts/motion-sim/sim.js" gen "$W" > /dev/null
for f in "$W"/raw_*.txt; do id=$(basename "$f" .txt); id=${id#raw_}; ZERO_AT=1.0 "$R/build/motion-sim/fusion_run" < "$f" > "$W/out_$id.txt"; done
LAPS=3 node "$R/scripts/motion-sim/sim.js" check "$W" 2>&1 | grep -E 'lap [123]' | tee "$W/laps.txt"
awk '{ if ($2 == 3 && ($4 > 15 || $3 > 12)) bad = 1 } END { if (bad) { print "tremor-test: FAIL (drifted)"; exit 1 } else print "tremor-test: PASS" }' "$W/laps.txt"
