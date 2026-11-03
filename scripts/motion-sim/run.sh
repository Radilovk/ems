#!/bin/sh
# Offline end-to-end test of the XEMS Motion module (docs/xems-motion.md): scripted person → raw IMU (bias, drift,
# noise) → the firmware's fusion.h → host calibration + pose solver (motion/viewer/motion-core.js) → vs. truth.
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
W=$REPO/build/motion-sim
mkdir -p "$W"
g++ -O2 -o "$W/fusion_run" "$REPO/scripts/motion-sim/fusion_run.cpp"
node "$REPO/scripts/motion-sim/sim.js" gen "$W"
for f in "$W"/raw_*.txt; do
	id=$(basename "$f" .txt); id=${id#raw_}
	"$W/fusion_run" < "$f" > "$W/out_$id.txt"
done
node "$REPO/scripts/motion-sim/sim.js" check "$W"
