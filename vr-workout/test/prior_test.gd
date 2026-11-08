## The learned leg prior in GDScript = the trained network: the same inputs (a held-out CMU clip, 2 s at 60 fps)
## give the same outputs as the Python model (scripts/vr-legs/gen_prior_test.py wrote them).
##   godot --headless --path vr-workout --script res://test/prior_test.gd
extends SceneTree

const D := preload("res://test/prior_test_data.gd")


func _v(r: Array, i: int) -> Vector3:
	return Vector3(float(r[i]), float(r[i + 1]), float(r[i + 2]))


func _initialize() -> void:
	var p := LegsPrior.new()
	var worst_th := 0.0
	var worst_pc := 0.0
	var gmiss := 0
	var t := 0.0
	var t0 := Time.get_ticks_usec()
	for r in D.ROWS:
		var U := {"l": _v(r, 0), "r": _v(r, 3)}
		var A := {"l": _v(r, 6), "r": _v(r, 9)}
		var acc := {"l": float(r[12]), "r": float(r[13])}
		var head := _v(r, 14)
		t += 1.0 / 60.0
		var o := p.step(t, 1.0 / 60.0, U, A, acc, head, D.S, D.ANKLE_Y)
		for k in [["l", 17, 19], ["r", 18, 22]]:
			if bool(o.ground[k[0]]) != (float(r[k[1]]) > 0.5):
				gmiss += 1
			worst_th = maxf(worst_th, rad_to_deg((o.thigh[k[0]] as Vector3).angle_to(_v(r, k[2]))))
		worst_pc = maxf(worst_pc, (o.pc as Vector3).distance_to(_v(r, 25)))
	var us := float(Time.get_ticks_usec() - t0) / D.ROWS.size()
	var ok := gmiss == 0 and worst_th < 0.5 and worst_pc < 0.005
	print("prior_test: %s — foot-on-floor differs in %d frames, thigh ≤ %.3f°, hips ≤ %.2f mm; %.0f µs a frame" % [
		"PASS" if ok else "FAIL", gmiss, worst_th, worst_pc * 1000.0, us])
	quit(0 if ok else 1)
