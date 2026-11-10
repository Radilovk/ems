## The legs' flight recorder (LegsLog): frames kept for 60 s, each line has the raw axes and what was solved, and
## the gzip that is sent unpacks to the same lines. No network here.
##   godot --headless --path vr-workout --script res://test/log_test.gd
extends SceneTree


func _initialize() -> void:
	var fails := 0
	var pads := PadLegs.new()
	pads.use_prior = false
	var rec := LegsLog.new()
	pads.sim[0] = [0.0, 0.0, 0.0, 1.0]
	pads.sim[1] = [0.0, 0.0, 0.0, 1.0]
	var head := Transform3D(Basis.IDENTITY, Vector3(0, 1.65, 0))
	for i in 72 * 70:                                   # 70 s at 72 fps: the first 10 s fall out
		pads.poll(1.0 / 72.0, 1.65, 1.65, Vector3(0, 0, -1))
		var xl := pads.limbs(head.origin, Vector3(0, 0, -1), 1.65, 0.0, 1.0 / 72.0)
		rec.record(1.0 / 72.0, pads, head, {"l": Vector3(-0.3, 1.2, -0.3)}, 0.0, 1.65, xl)
	var n := rec.lines.size()
	var ok1 := n > 72 * 58 and n <= 72 * 61
	print("log_test: %s kept %d lines (≈ 60 s)" % ["ok  " if ok1 else "FAIL", n])
	var d = JSON.parse_string(rec.lines[n - 1])
	var ok2 := typeof(d) == TYPE_DICTIONARY and d.has("p") and (d.p as Dictionary).has("0") and (d.p["0"].a as Array).size() == 6 and d.has("h") and d.has("hand_l")
	print("log_test: %s a line has the raw axes, the head, the hands — %s" % ["ok  " if ok2 else "FAIL", rec.lines[n - 1].left(160)])
	var raw := ("\n".join(rec.lines) + "\n").to_utf8_buffer()
	var gz := raw.compress(FileAccess.COMPRESSION_GZIP)
	var back := gz.decompress_dynamic(-1, FileAccess.COMPRESSION_GZIP)
	var ok3 := back == raw
	print("log_test: %s gzip %d → %d bytes, unpacks the same" % ["ok  " if ok3 else "FAIL", raw.size(), gz.size()])
	for ok in [ok1, ok2, ok3]:
		if not ok:
			fails += 1
	print("log_test: %s" % ("PASS" if fails == 0 else "FAIL (%d)" % fails))
	quit(1 if fails else 0)
