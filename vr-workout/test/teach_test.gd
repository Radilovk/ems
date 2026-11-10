## Teaching the legs (owner 2026-11-09): two extra sensors on the thighs for one round, then off. Fake gamepads: the
## shins as always, then two more that appear once the legs are ready (= thighs). Checks: the thighs find their side
## and read the thigh right; after a round of knee raises the prior learns this person (the last layer refitted, saved)
## and its thighs come closer to the measured ones.
##   godot --headless --path vr-workout --script res://test/teach_test.gd
extends SceneTree

const STAND_H := 1.65
const DT := 1.0 / 72.0
const FWD := Vector3(0, 0, -1)
const LEFT := Vector3(-1, 0, 0)
var pads := PadLegs.new()
var fails := 0
var sensors := [
	{"id": 0, "leg": "l", "yaw": 1.1, "mount": 0.4},
	{"id": 1, "leg": "r", "yaw": -2.3, "mount": 2.9},
	{"id": 2, "leg": "l", "yaw": 0.3, "mount": -1.2},       # thighs (teaching)
	{"id": 3, "leg": "r", "yaw": 2.2, "mount": 1.7},
]


func _to_sensor(yaw: float) -> Basis:
	var c0 := Basis(Vector3(1, 0, 0), Vector3(0, 0, 1), Vector3(0, -1, 0)).transposed()
	return Basis(Vector3(0, 0, 1), yaw) * c0


func _board(s: Dictionary) -> Basis:
	var out := LEFT if s.leg == "l" else -LEFT
	var x := Vector3.UP.rotated(out, s.mount)
	return Basis(x, out.cross(x), out)


func _feed(s: Dictionary, g: Basis) -> void:
	var q := Quaternion(_to_sensor(s.yaw) * g * _board(s))
	if q.w < 0.0:
		q = -q
	pads.sim[s.id] = [q.x, q.y, q.z, q.w]


## one frame: shins and (if present) thighs turned by their game-world bases
func _frame(head_h: float, sl: Basis, sr: Basis, tl: Basis, tr: Basis, thighs: bool) -> Dictionary:
	_feed(sensors[0], sl)
	_feed(sensors[1], sr)
	if thighs:
		_feed(sensors[2], tl)
		_feed(sensors[3], tr)
	pads.poll(DT, head_h, STAND_H, FWD)
	return pads.limbs(Vector3(0, head_h, 0), FWD, STAND_H, 0.0, DT)


func _hold(secs: float, head_h: float, sl: Basis, sr: Basis, tl: Basis, tr: Basis, thighs: bool) -> void:
	for i in int(secs / DT):
		_frame(head_h, sl, sr, tl, tr, thighs)


func _check(name: String, ok: bool, info: String) -> void:
	print("teach_test: %s %s — %s" % ["ok  " if ok else "FAIL", name, info])
	if not ok:
		fails += 1


## a round of right knee raises (thigh up to 80°, knee bent 95°): mean angle between the solved and the true thigh
func _round(thighs: bool) -> float:
	var I := Basis.IDENTITY
	var err := 0.0
	var n := 0
	for rep in 6:
		var m := int(1.6 / DT)
		for i in m:
			var x := 0.5 - 0.5 * cos(TAU * float(i) / m)
			var phi := deg_to_rad(80.0) * x
			var k := deg_to_rad(95.0) * x
			var thigh := Basis(LEFT, -phi)                  # the thigh's top goes back = the knee comes up and forward
			var shin := Basis(LEFT, k - phi)
			var L := _frame(STAND_H, I, shin, I, thigh, thighs)
			if L.is_empty() or x < 0.3:
				continue
			var truth := thigh * Vector3.DOWN
			var got: Vector3 = ((L.pos.knee_r as Vector3) - (L.pos.hip_r as Vector3)).normalized()
			err += rad_to_deg(got.angle_to(truth))
			n += 1
	return err / maxf(1.0, n)


func _initialize() -> void:
	pads.prior.forget()                                    # no person learnt yet
	var I := Basis.IDENTITY
	var t25 := Basis(LEFT, deg_to_rad(25.0))
	_hold(1.5, STAND_H, I, I, I, I, false)
	_hold(0.5, STAND_H - 0.15, t25, t25, I, I, false)
	_hold(1.5, STAND_H, I, I, I, I, false)
	_check("legs ready", pads.ready(), pads.status)
	var before := _round(false)
	# the teaching sensors on the thighs: seen as thighs, a still stand, then a knee bend (thighs turn the other way)
	_hold(1.5, STAND_H, I, I, I, I, true)
	_check("thighs seen", pads.role.size() == 2, str(pads.role))
	var th30 := Basis(LEFT, deg_to_rad(-30.0))
	_hold(0.5, STAND_H - 0.15, t25, t25, th30, th30, true)
	_hold(1.5, STAND_H, I, I, I, I, true)
	_check("thighs calibrated", pads.teaching() and pads.side.get(2) == "l" and pads.side.get(3) == "r", str(pads.side))
	var lift := Basis(LEFT, deg_to_rad(-80.0))
	_hold(0.2, STAND_H, I, I, I, lift, true)
	var td := pads.thigh_dir("r")
	_check("thigh read right", td.angle_to(lift * Vector3.DOWN) < deg_to_rad(2.0), "thigh_r %s" % td)
	_hold(1.0, STAND_H, I, I, I, I, true)
	_round(true)                                           # the teaching round
	var learnt := pads.teach_finish()
	_check("learnt and saved", learnt and FileAccess.file_exists(LegsPrior.PERSONAL_PATH) and pads.prior.personal.size() == 195,
		"fit %s, %d weights" % [learnt, pads.prior.personal.size()])
	pads.sim.erase(2)                                      # the thigh sensors taken off
	pads.sim.erase(3)
	_hold(1.5, STAND_H, I, I, I, I, false)
	var after := _round(false)
	_check("thighs closer after teaching", after < before - 3.0, "thigh %.1f° → %.1f°" % [before, after])
	pads.prior.forget()
	print("teach_test: %s" % ("PASS" if fails == 0 else "FAIL (%d)" % fails))
	quit(1 if fails else 0)
