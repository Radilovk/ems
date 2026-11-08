## PadLegs against scripted TRUE movements (owner 2026-11-08: "direction, position, turning, knee strike, kick, the
## bend — all unrealistic"). A body (thigh 4 % longer and shin 3 % shorter than the game's model, like a real person)
## moves; its shins drive two fake gamepads exactly as the sensors would — orientation on axes 0..3, the vertical
## acceleration (with noise and an offset) on axis 4 as Android's trigger (0..1) — and the headset follows the body.
## Each movement: knee and ankle error (cm, mean / worst) against the truth; the old model (hips under the head, the
## thigh guessed) is printed alongside. Same movements as scripts/vr-legs/legs_proto.py.
##   godot --headless --path vr-workout --script res://test/pad_truth_test.gd
extends SceneTree

const STAND_H := 1.65
const DT := 1.0 / 72.0
const FWD := Vector3(0, 0, -1)
const LEFT := Vector3(-1, 0, 0)
var H := STAND_H / 0.936
var LT := 0.245 * H
var LS := 0.246 * H
var AH := 0.039 * H
var HW := 0.052 * H
var TLT := LT * 1.04
var TLS := LS * 0.97
var THD := STAND_H - (AH + TLS + TLT)
var rng := RandomNumberGenerator.new()
var fails := 0
var sensors := [
	{"id": 0, "leg": "l", "yaw": 1.1, "mount": 0.4},
	{"id": 1, "leg": "r", "yaw": -2.3, "mount": 2.9},
]


func _to_sensor(yaw: float) -> Basis:
	var c0 := Basis(Vector3(1, 0, 0), Vector3(0, 0, 1), Vector3(0, -1, 0)).transposed()
	return Basis(Vector3(0, 0, 1), yaw) * c0


func _board(s: Dictionary) -> Basis:
	var out := LEFT if s.leg == "l" else -LEFT
	var x := Vector3.UP.rotated(out, s.mount)
	return Basis(x, out.cross(x), out)


func _feed(pads: PadLegs, s: Dictionary, g: Basis, trig: float) -> void:
	var q := Quaternion(_to_sensor(s.yaw) * g * _board(s))
	if q.w < 0.0:
		q = -q
	pads.sim[s.id] = [q.x, q.y, q.z, q.w, trig]


func _sag(f: float, u: float) -> Vector3:
	return FWD * f + Vector3.UP * u


## One pose of the true body: stance legs {t: shin forward tilt, th: thigh back tilt} stand on their place; lifted
## legs {phi: thigh forward, k: knee bend} hang from the hip; lam: the trunk's forward lean.
func _truth(p: Dictionary) -> Dictionary:
	var out := {}
	var sg := {"l": 1.0, "r": -1.0}
	var st: String = p.stance
	var legs := ["l", "r"] if st == "both" else [st]
	var pc := Vector3.ZERO
	for s in legs:
		var q: Dictionary = p[s]
		var ankle := LEFT * HW * float(sg[s]) + Vector3.UP * AH
		var knee := ankle + _sag(sin(q.t), cos(q.t)) * TLS
		var hip := knee + _sag(-sin(q.th), cos(q.th)) * TLT
		out[s] = {"ankle": ankle, "knee": knee, "tilt": float(q.t)}
		pc += hip - LEFT * HW * float(sg[s])
	pc /= legs.size()
	for s in ["l", "r"]:
		if s in legs:
			continue
		var q: Dictionary = p[s]
		var hip := pc + LEFT * HW * float(sg[s])
		var knee := hip + _sag(sin(q.phi), -cos(q.phi)) * TLT
		var a: float = q.phi - q.k
		var ankle := knee + _sag(sin(a), -cos(a)) * TLS
		out[s] = {"ankle": ankle, "knee": knee, "tilt": float(q.k) - float(q.phi)}
	var l0 := atan2(0.05, THD)
	var lam: float = p.get("lam", 0.0)
	out["head"] = pc + _sag(sin(lam + l0), cos(lam + l0)) * Vector2(THD, 0.05).length()
	return out


func _stand() -> Dictionary:
	return {"stance": "both", "l": {"t": 0.0, "th": 0.0}, "r": {"t": 0.0, "th": 0.0}, "lam": 0.0}


func _ease(x: float) -> float:
	return 0.5 - 0.5 * cos(PI * clampf(x, 0.0, 1.0))


func _updown(seq: Array, secs: float, f: Callable) -> void:
	var n := int(secs / DT)
	for i in n:
		var x := _ease(float(i) / n * 2.0) if i < n / 2 else _ease(2.0 - float(i) / n * 2.0)
		seq.append(f.call(x))


func _motion(name: String) -> Array:
	var seq := []
	for i in int(1.2 / DT):
		seq.append(_stand())
	var R := deg_to_rad(1.0)
	match name:
		"squat":
			_updown(seq, 3.0, func(x): return {"stance": "both", "l": {"t": 35 * R * x, "th": 75 * R * x},
				"r": {"t": 35 * R * x, "th": 75 * R * x}, "lam": 30 * R * x})
		"bend":
			_updown(seq, 3.0, func(x): return {"stance": "both", "l": {"t": -4 * R * x, "th": 14 * R * x},
				"r": {"t": -4 * R * x, "th": 14 * R * x}, "lam": 85 * R * x})
		"knee_raise":
			_updown(seq, 1.6, func(x): return {"stance": "l", "l": {"t": 0.0, "th": 0.0}, "r": {"phi": 85 * R * x, "k": 95 * R * x}})
		"front_kick":
			var n := int(1.4 / DT)
			for i in n:
				var x := float(i) / n
				var phi := 80.0
				var k := 0.0
				if x < 0.35:
					phi = 80 * _ease(x / 0.35)
					k = 110 * _ease(x / 0.35)
				elif x < 0.55:
					k = 110 - 100 * _ease((x - 0.35) / 0.2)
				elif x < 0.75:
					k = 10 + 100 * _ease((x - 0.55) / 0.2)
				else:
					phi = 80 * (1 - _ease((x - 0.75) / 0.25))
					k = 110 * (1 - _ease((x - 0.75) / 0.25))
				seq.append({"stance": "l", "l": {"t": 0.0, "th": 0.0}, "r": {"phi": phi * R, "k": k * R}})
		"heel_curl":
			_updown(seq, 1.4, func(x): return {"stance": "l", "l": {"t": 0.0, "th": 0.0}, "r": {"phi": 8 * R * x, "k": 125 * R * x}})
		"back_kick":
			_updown(seq, 1.4, func(x): return {"stance": "l", "l": {"t": 0.0, "th": 0.0}, "r": {"phi": -35 * R * x, "k": 25 * R * x}})
		"walk":
			for rep in 4:
				_updown(seq, 0.6, func(x): return {"stance": "l", "l": {"t": 0.0, "th": 0.0}, "r": {"phi": 45 * R * x, "k": 70 * R * x}})
				_updown(seq, 0.6, func(x): return {"stance": "r", "r": {"t": 0.0, "th": 0.0}, "l": {"phi": 45 * R * x, "k": 70 * R * x}})
	for i in int(0.8 / DT):
		seq.append(_stand())
	return seq


## A calibrated PadLegs (stand, bend, stand) whose acceleration axis is known to be live (a first kick).
func _fresh(acc: bool) -> PadLegs:
	var pads := PadLegs.new()
	var I := Basis.IDENTITY
	var t25 := Basis(LEFT, deg_to_rad(25.0))
	var steps := [[STAND_H, I, 1.5], [STAND_H - 0.15, t25, 0.5], [STAND_H, I, 1.5]]
	for st in steps:
		for i in int(float(st[2]) / DT):
			for s in sensors:
				_feed(pads, s, st[1], 0.5 + rng.randfn(0.0, 0.02) / 8.0 if acc else 0.0)
			pads.poll(DT, st[0], STAND_H, FWD)
			pads.limbs(Vector3(0, st[0], 0), FWD, STAND_H, 0.0, DT)
	if acc:
		_run(pads, "front_kick", true, false)                      # the first kick shows the axis is really there
	return pads


## Plays one movement; returns [knee mean, knee worst, ankle mean, ankle worst, old knee mean, old knee worst] (cm).
func _run(pads: PadLegs, name: String, acc: bool, report := true) -> Array:
	var seq := _motion(name)
	var T := []
	for p in seq:
		T.append(_truth(p))
	# the sensor point (5 cm up the shin) → its vertical acceleration (g), with noise and an offset
	var ay := {"l": [], "r": []}
	for s in ["l", "r"]:
		var h := []
		for t in T:
			h.append((t[s].ankle as Vector3).y + cos(float(t[s].tilt)) * 0.05)
		for i in h.size():
			var a := 0.0 if i == 0 or i == h.size() - 1 else (float(h[i + 1]) - 2.0 * float(h[i]) + float(h[i - 1])) / (DT * DT)
			ay[s].append(a / 9.81 + rng.randfn(0.0, 0.02) + 0.01)
	var ek := []
	var ea := []
	var eo := []
	var hip_drop := STAND_H - (AH + LS + LT)
	for i in T.size():
		var t: Dictionary = T[i]
		var head: Vector3 = t.head
		for s in sensors:
			var g := Basis(LEFT, float(t[s.leg].tilt))
			_feed(pads, s, g, (0.5 + float(ay[s.leg][i]) / 8.0) if acc else 0.0)
		pads.poll(DT, head.y, STAND_H, FWD)
		var L := pads.limbs(head, FWD, STAND_H, 0.0, DT)
		if L.is_empty():
			continue
		for sd in ["l", "r"]:
			var k: Vector3 = L.pos["knee_" + sd]
			var an: Vector3 = (L.pos["foot_" + sd] as Vector3) - (L.dir[sd] as Vector3) * 0.06
			ek.append(k.distance_to(t[sd].knee))
			ea.append(an.distance_to(t[sd].ankle))
			# the old model: hips under the head, the knee bent to the floor or halfway
			var u := Basis(LEFT, float(t[sd].tilt)) * Vector3.UP
			var hip := head - Vector3.UP * hip_drop - FWD * 0.05 + LEFT * HW * (1.0 if sd == "l" else -1.0)
			var kb := PadLegs._knee_bend(hip, u, LEFT, LT, LS, AH)
			eo.append((hip - u.rotated(LEFT, -kb) * LT).distance_to(t[sd].knee))
	var r := [_mean(ek), _max(ek), _mean(ea), _max(ea), _mean(eo), _max(eo)]
	if report:
		print("pad_truth: %-10s %s  knee %4.1f / %4.1f cm  ankle %4.1f / %4.1f cm   (old: knee %4.1f / %4.1f)" % [
			name, "acc  " if acc else "no acc", r[0], r[1], r[2], r[3], r[4], r[5]])
	return r


func _mean(a: Array) -> float:
	var s := 0.0
	for x in a:
		s += float(x)
	return 100.0 * s / maxf(1.0, a.size())


func _max(a: Array) -> float:
	var m := 0.0
	for x in a:
		m = maxf(m, float(x))
	return 100.0 * m


func _check(name: String, ok: bool, info: String) -> void:
	print("pad_truth: %s %s — %s" % ["ok  " if ok else "FAIL", name, info])
	if not ok:
		fails += 1


func _initialize() -> void:
	rng.seed = 7
	# limits: a few cm on average; the worst moments are the instant a foot leaves / touches the floor
	var lim := {"squat": [3.0, 6.0], "bend": [3.0, 6.0], "knee_raise": [5.0, 35.0], "front_kick": [5.0, 35.0],
		"heel_curl": [5.0, 35.0], "back_kick": [6.0, 35.0], "walk": [5.0, 30.0]}
	for acc in [true, false]:
		for name in lim:
			var pads := _fresh(acc)
			var r := _run(pads, name, acc)
			if acc or name in ["squat", "bend"]:          # without the height only the planted movements are solved
				var l: Array = lim[name]
				_check("%s %s" % [name, "acc" if acc else "no acc"], r[0] < l[0] and r[1] < l[1],
					"knee %.1f / %.1f cm (limit %.0f / %.0f)" % [r[0], r[1], l[0], l[1]])
	# a look aside while standing still must not turn the legs (old: the zero took the head's heading)
	var pads := _fresh(true)
	var side := FWD.rotated(Vector3.UP, deg_to_rad(50.0))
	for i in int(2.0 / DT):
		for s in sensors:
			_feed(pads, s, Basis.IDENTITY, 0.5)
		pads.poll(DT, STAND_H, STAND_H, side)
		pads.limbs(Vector3(0, STAND_H, 0), side, STAND_H, 0.0, DT)
	var t35 := Basis(LEFT, deg_to_rad(35.0))
	for i in 10:
		for s in sensors:
			_feed(pads, s, t35, 0.5)
		pads.poll(DT, STAND_H - 0.3, STAND_H, side)
	var L := pads.limbs(Vector3(0, STAND_H - 0.3, 0), side, STAND_H, 0.0, DT)
	var kd: Vector3 = (L.pos.knee_l as Vector3) - ((L.pos.foot_l as Vector3) - (L.dir.l as Vector3) * 0.06)
	var turn := rad_to_deg(Vector2(kd.x, kd.z).angle_to(Vector2(FWD.x, FWD.z)))
	_check("look aside keeps the legs", absf(turn) < 10.0, "knee leans %.1f° off the body's forward" % turn)
	print("pad_truth: %s" % ("PASS" if fails == 0 else "FAIL (%d)" % fails))
	quit(1 if fails else 0)
