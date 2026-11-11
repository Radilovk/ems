#!/bin/sh
# The VR legs link, both ends for real where they can run (docs/xems-motion.md "VR legs"):
#   1. the phone side's VrLink.java (plain Java) ⇄ a Python stand-in for the game (discovery + stream)
#   2. with GODOT=<binary>: the game's motion_link.gd + body.gd (headless) ⇄ a Python stand-in for the phone
set -eu
D=$(cd "$(dirname "$0")" && pwd); R=$(cd "$D/../.." && pwd); T=$R/build/vr-legs
rm -rf "$T"; mkdir -p "$T"
javac --release 8 -nowarn -d "$T" "$R/motion/app/src/bg/xems/motion/VrLink.java" "$D/VrLinkHarness.java"
java -cp "$T" bg.xems.motion.VrLinkHarness & J=$!
python3 "$D/fake_game.py" 47990
wait $J
if [ -n "${GODOT:-}" ]; then
	python3 "$D/fake_phone.py" & P=$!
	timeout 300 "$GODOT" --headless --path "$R/vr-workout" --script res://test/legs_test.gd
	kill $P 2>/dev/null || true
	timeout 300 "$GODOT" --headless --path "$R/vr-workout" --script res://test/pad_test.gd     # the sensors as Bluetooth gamepads
	timeout 300 "$GODOT" --headless --path "$R/vr-workout" --script res://test/pad_truth_test.gd   # … against scripted true movements
	timeout 300 "$GODOT" --headless --path "$R/vr-workout" --script res://test/prior_test.gd        # the learned prior = the trained network
	timeout 300 "$GODOT" --headless --path "$R/vr-workout" --script res://test/teach_test.gd        # teaching with thigh sensors
	timeout 300 "$GODOT" --headless --path "$R/vr-workout" --script res://test/pad_v2_test.gd       # fw 13 gamepad layout (pedal axes)
	timeout 300 "$GODOT" --headless --path "$R/vr-workout" --script res://test/log_test.gd          # the legs flight recorder
	timeout 300 "$GODOT" --headless --path "$R/vr-workout" --script res://test/stand_test.gd        # standing height from the headset
	timeout 300 "$GODOT" --headless --path "$R/vr-workout" --script res://test/floor_test.gd        # feet on the floor, no flicker, the measured shin checked
fi
echo "vr-legs: PASS"
