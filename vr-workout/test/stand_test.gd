## The owner's case (2026-11-11 recordings): the game thinks the player stands at 1.64 m, the headset never goes above
## 1.57 m. Standing still must still be taken as standing tall (the zero pose), and a knee bend must calibrate.
##   godot --headless --path vr-workout --script res://test/stand_test.gd
extends SceneTree


func _initialize() -> void:
	var pads := PadLegs.new()
	pads.use_prior = false
	pads.sim[0] = [0.0, 0.0, 0.0, 1.0]
	pads.sim[1] = [0.0, 0.0, 0.0, 1.0]
	for i in int(1.6 * 72):
		pads.poll(1.0 / 72.0, 1.57, 1.64, Vector3(0, 0, -1))
	var ok := pads.status == "bend"
	print("stand_test: %s standing at 1.57 m with the game's 1.64 m → %s (seen %.2f m)" % ["ok  " if ok else "FAIL", pads.status, pads.stand_seen])
	print("stand_test: %s" % ("PASS" if ok else "FAIL"))
	quit(0 if ok else 1)
