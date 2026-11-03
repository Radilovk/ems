#!/bin/sh
# Offline end-to-end test of the XEMS Motion module (docs/xems-motion.md): a person → raw IMU (bias, drift, noise) →
# the firmware's fusion.h → host calibration + pose solver (motion/viewer/motion-core.js) → vs. truth.
#   sh scripts/motion-sim/run.sh          the scripted person, pass/fail
#   sh scripts/motion-sim/run.sh mocap    real people: every CMU motion-capture clip (motion/mocap/cmu.js) after its
#                                         own calibration, a table of mean errors (report)
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
KIND=${1:-script}
mkdir -p "$REPO/build/motion-sim"
g++ -O2 -o "$REPO/build/motion-sim/fusion_run" "$REPO/scripts/motion-sim/fusion_run.cpp"
one() {   # $1 work dir, $2 clip index (mocap)
	node "$REPO/scripts/motion-sim/sim.js" gen "$1" "$KIND" "${2:-}" > /dev/null
	for f in "$1"/raw_*.txt; do
		id=$(basename "$f" .txt); id=${id#raw_}
		"$REPO/build/motion-sim/fusion_run" < "$f" > "$1/out_$id.txt"
	done
	node "$REPO/scripts/motion-sim/sim.js" check "$1" "$KIND" "${2:-}"
}
if [ "$KIND" = mocap ]; then
	N=$(node -e "const vm=require('vm'),c={self:{}};vm.runInNewContext(require('fs').readFileSync('$REPO/motion/mocap/cmu.js','utf8'),c);console.log(c.self.XEMS_MOCAP.clips.length)")
	echo "real people (CMU mocap), each clip after its own calibration — mean error:"
	printf '%-24s%9s%9s%9s%9s%9s   %s\n' clip knee° elbow° shoulder° trunk° 'hand cm' 'reps found / true'
	i=0; pids=''
	while [ $i -lt "$N" ]; do
		W=$REPO/build/motion-sim/mocap-$i; mkdir -p "$W"
		( one "$W" $i > "$W/log.txt" 2>&1 || true ) & pids="$pids $!"
		i=$((i + 1))
	done
	wait $pids
	i=0; while [ $i -lt "$N" ]; do cat "$REPO/build/motion-sim/mocap-$i/summary.txt" 2>/dev/null || tail -3 "$REPO/build/motion-sim/mocap-$i/log.txt"; i=$((i + 1)); done
else
	one "$REPO/build/motion-sim/script"
fi
