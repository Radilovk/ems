## A leg recording (legs_log.gd, fetched by scripts/vr-legs/pad_replay.py) played through the game's own PadLegs: the
## raw axes, the headset, the hands, as they came. The recording starts after the game's calibration, so the replay
## calibrates on its own last still stand (held) + its knee bends, then plays it once more and measures:
## jumps (a knee or foot whose step changes by > 5 cm between frames = the flicker), both feet "in the air" while the head stands tall,
## the highest foot, the shin used.
##   REPLAY=<file.jsonl> [REPLAY_LS=0.58] godot --headless --path vr-workout --script res://test/replay.gd
extends SceneTree


func _initialize() -> void:
	var path := OS.get_environment("REPLAY")
	var L := []
	for line in FileAccess.get_file_as_string(path).split("\n"):
		if line.strip_edges() != "":
			L.append(JSON.parse_string(line))
	var pads := PadLegs.new()
	var ls_env := OS.get_environment("REPLAY_LS")
	if ls_env != "":
		pads.cal = {"stand_h": float(L[-1].sh), "ls": float(ls_env), "lt": float(ls_env) * 0.245 / 0.246}
	var fwd := Vector3(0, 0, -1)
	var passes := 0
	var still: Dictionary = L[-1]                     # the take ends standing still: held 1.5 s = the zero pose
	for i in 108:
		fwd = _step(pads, still, fwd)
	while passes < 3 and not pads.ready():            # … then its own knee bends give the sides and mountings
		for f in L:
			fwd = _step(pads, f, fwd)
		passes += 1
	if not pads.ready():
		print("replay: never calibrated (%s)" % pads.status)
		quit(1)
		return
	print("replay: sides %s (the game's own: %s)" % [pads.side, {0: L[-1].p["0"].side, 1: L[-1].p["1"].side}])
	if pads.side.size() < 2 or pads.side.values().count("l") != 1:
		pads.side = {0: str(L[-1].p["0"].side), 1: str(L[-1].p["1"].side)}
		print("replay: both on one side — the game's sides taken")
	_fit_mount(pads, L)
	var prev := {}
	var kinds := {}
	var jumps := 0
	var up_n := 0
	var air2 := 0
	var hi := 0.0
	var air1 := {"l": 0, "r": 0}
	for f in L:
		fwd = _step(pads, f, fwd)
		var o: Dictionary = pads.limbs(_v(f.h), fwd, float(f.sh), float(f.f), float(f.dt), _hands(f))
		if o.is_empty():
			continue
		if OS.get_environment("REPLAY_TRACE") != "" and int(float(f.t) * 4.0) != int((float(f.t) - float(f.dt)) * 4.0):
			var row := "%6.2f head %.2f/%.2f" % [float(f.t) - float(L[0].t), float(f.h[1]) - float(f.f), pads.stand_seen]
			for id in pads.side:
				var sd: String = pads.side[id]
				var u := (pads._g(id) * Vector3.UP).normalized()
				var pg := 1.0 / (1.0 + exp(-float(pads.prior._last[sd][6][0]))) if pads.prior._last.has(sd) else -1.0
				row += "  %s tilt %3.0f° p(gnd) %.2f %s h %.2f" % [sd, rad_to_deg(u.angle_to(Vector3.UP)), pg, "G" if o.ground[sd] else "-", float(pads.vert[id].get("h", -1)) if pads._has_h(id) else -1.0]
			print(row)
		var mv := 0.0
		for k in ["knee_l", "knee_r", "foot_l", "foot_r"]:
			var p: Vector3 = o.pos[k]
			if prev.has(k) and prev.has(k + "1"):     # a jump = a sudden change of speed (p − 2 p₋₁ + p₋₂) > 5 cm
				var dk := (p - 2.0 * (prev[k] as Vector3) + (prev[k + "1"] as Vector3)).length()
				mv = maxf(mv, dk)
				if dk > 0.05:
					var sd: String = k.right(1)
					var why: String = ("switch" if prev.has("g" + sd) and prev["g" + sd] != o.ground[sd] else "planted" if o.ground[sd] else "air") + " " + k.left(4)
					kinds[why] = int(kinds.get(why, 0)) + 1
					if OS.get_environment("REPLAY_WHEN") != "" and why.begins_with("air"):
						print("  %s at %.2f s: %.2f" % [k, float(f.t) - float(L[0].t), dk])
			if prev.has(k):
				prev[k + "1"] = prev[k]
			prev[k] = p
			if k.begins_with("foot"):
				hi = maxf(hi, p.y - float(f.f))
		var win := OS.get_environment("REPLAY_WIN").split(",")
		if win.size() == 2 and float(f.t) - float(L[0].t) >= float(win[0]) and float(f.t) - float(L[0].t) <= float(win[1]):
			print("%6.3f g %s%s pc %s kl %s kr %s fl %s fr %s" % [float(f.t) - float(L[0].t), "G" if o.ground.l else "-", "G" if o.ground.r else "-", pads.pc.snapped(Vector3.ONE * 0.01), (o.pos.knee_l as Vector3).snapped(Vector3.ONE * 0.01), (o.pos.knee_r as Vector3).snapped(Vector3.ONE * 0.01), (o.pos.foot_l as Vector3).snapped(Vector3.ONE * 0.01), (o.pos.foot_r as Vector3).snapped(Vector3.ONE * 0.01)])
		prev.gl = o.ground.l
		prev.gr = o.ground.r
		if mv > 0.05:
			jumps += 1
		if float(f.h[1]) - float(f.f) > pads.stand_seen - 0.06:
			up_n += 1
			if not o.ground.l and not o.ground.r:
				air2 += 1
		for sd in ["l", "r"]:
			if not o.ground[sd]:
				air1[sd] += 1
	var n := L.size()
	print("replay: %d frames, calibrated after %d pass(es), shin %.3f m" % [n, passes, float(pads.cal.get("ls", 0.246 * pads.stand_seen / 0.936))])
	print("replay: jumps (speed change > 5 cm a frame) %d (%.1f / s)" % [jumps, jumps / (n / 72.0)])
	print("replay: the jumps by kind %s" % [kinds])
	print("replay: standing tall %d frames, both feet in the air %.0f %%" % [up_n, 100.0 * air2 / maxf(1, up_n)])
	print("replay: in the air L %.0f %% R %.0f %%, highest foot %.2f m" % [100.0 * air1.l / n, 100.0 * air1.r / n, hi])
	quit(0)


## The game calibrated before the take began; its mounting is found again from what it drew: on planted frames the
## knee is the anchor + the shin · ls (the foot 6 cm ahead of the ankle), so each pad's mounting (about the vertical) is
## the one whose shin best matches the game's.
func _fit_mount(pads: PadLegs, L: Array) -> void:
	for id in pads.side.keys():
		var sd: String = pads.side[id]
		var best := INF
		var bm := 0.0
		var lsg := 0.0
		var ng := 0
		for f in L:
			if f.o.g[sd]:
				lsg += _v(f.o["knee_" + sd]).distance_to(_v(f.o["foot_" + sd]))
				ng += 1
		lsg /= maxf(1, ng)
		for i in 72:
			var m := TAU * i / 72.0
			pads.mount[id] = m
			pads.basis[id] = pads._basis(id, pads.lfwd[id])
			var e := 0.0
			var k := 0
			for f in L:
				k += 1
				if k % 6 != 0 or not f.o.g[sd]:
					continue
				var d := _v(f.o["knee_" + sd]) - _v(f.o["foot_" + sd])
				var fa := Vector3(-d.x, 0.0, -d.z).normalized()
				var ug := (d + fa * 0.06).normalized()
				var a: Array = f.p[str(id)].a
				pads.pads[id].q = Quaternion(a[0], a[1], a[2], a[3]).normalized()     # fw 10–12 layout
				var u := (pads._g(id) * Vector3.UP).normalized()
				e += u.angle_to(ug)
			if e < best:
				best = e
				bm = m
		pads.mount[id] = bm
		pads.basis[id] = pads._basis(id, pads.lfwd[id])
		print("replay: pad %d (%s) mounting %.0f°, the game's drawn shin %.3f m (%d planted frames)" % [id, sd, rad_to_deg(bm), lsg, ng])


func _step(pads: PadLegs, f: Dictionary, fwd: Vector3) -> Vector3:
	for id in f.p:
		pads.sim[int(id)] = f.p[id].a
	var hf := _v(f.hf)
	hf.y = 0.0
	if hf.length() > 0.2:
		fwd = fwd.slerp(hf.normalized(), clampf(float(f.dt) / 0.8, 0.0, 1.0)).normalized()
	pads.poll(float(f.dt), float(f.h[1]) - float(f.f), float(f.sh), fwd)
	return fwd


func _hands(f: Dictionary) -> Dictionary:
	return {"l": _v(f.hand_l), "r": _v(f.hand_r)} if f.has("hand_l") and f.has("hand_r") else {}


func _v(a) -> Vector3:
	return Vector3(float(a[0]), float(a[1]), float(a[2]))
