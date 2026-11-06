## Headless test (scripts/vr-legs/run.sh, CI): the game's real MotionLink + PlayerBody against a stand-in phone
## (fake_phone.py). The knees and feet must come from the sensors, in the right place under the head.
##   godot --headless --path vr-workout --script res://test/legs_test.gd
extends SceneTree


func _init() -> void:
	var body := PlayerBody.new()
	body.setup(null, null, {})
	var t0 := Time.get_ticks_msec()
	var ok := false
	while Time.get_ticks_msec() - t0 < 6000:
		body.update(1.0 / 60.0)
		if body.legs_src == "sensors" and body.valid.get("knee_l", false):
			ok = true
			break
		OS.delay_msec(16)
	if not ok:
		print("legs_test: FAIL — no legs from the sensors (legs_src = %s)" % body.legs_src)
		quit(1)
		return
	# expected: head (0, 1.7, 0), heading −Z, scale 1.7 / (0.956 × 1.75); knee_l = forward 0.05, left 0.1, up −1.2
	var s := 1.7 / (0.956 * 1.75)
	var want := Vector3(-0.1, -1.2, -0.05) * s + Vector3(0, 1.7, 0)
	var got: Vector3 = body.pos["knee_l"]
	var err := got.distance_to(want)
	print("legs_test: knee_l %s (want %s, off %.3f m) · feet %s %s · after %d ms" % [got, want, err, body.pos["foot_l"], body.pos["foot_r"], Time.get_ticks_msec() - t0])
	var hip_ok: bool = body.hip_pos.has("l") and body.foot_dir.has("l") and (body.foot_dir["l"] as Vector3).dot(Vector3(0, 0, -1)) > 0.9
	print("legs_test: hip_l %s · foot_dir_l %s" % [body.hip_pos.get("l"), body.foot_dir.get("l")])
	quit(0 if err < 0.02 and hip_ok else 1)
