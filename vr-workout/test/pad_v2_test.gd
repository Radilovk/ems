## Firmware 13's gamepad layout (owner 2026-11-10: "the leg sensors move the Quest's menu"): the orientation on the
## pedal axes (qx qy qz, w rebuilt), the acceleration raw on axis 3. The same calibration and squat as pad_test, the
## layout told from fw 10–12's by the values alone.
##   godot --headless --path vr-workout --script res://test/pad_v2_test.gd
extends SceneTree

const STAND_H := 1.65
const FWD := Vector3(0, 0, -1)
const LEFT := Vector3(-1, 0, 0)
var pads := PadLegs.new()
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


func _feed(s: Dictionary, g: Basis) -> void:
	var q := Quaternion(_to_sensor(s.yaw) * g * _board(s))
	if q.w < 0.0:
		q = -q
	# fw 13 as Android gives it: Throttle (qx) and Gas (qz) and Brake (the acceleration, 0 g) as 0..1, Rudder (qy) −1..1
	pads.sim[s.id] = [(q.x + 1.0) * 0.5, q.y, (q.z + 1.0) * 0.5, 0.5]


func _step(head_h: float, gl: Basis, gr: Basis, secs: float) -> void:
	for i in int(secs * 72.0):
		_feed(sensors[0], gl)
		_feed(sensors[1], gr)
		pads.poll(1.0 / 72.0, head_h, STAND_H, FWD)
		pads.limbs(Vector3(0, head_h, 0), FWD, STAND_H, 0.0, 1.0 / 72.0)


func _check(name: String, ok: bool, info: String) -> void:
	print("pad_v2_test: %s %s — %s" % ["ok  " if ok else "FAIL", name, info])
	if not ok:
		fails += 1


func _initialize() -> void:
	pads.use_prior = false
	var I := Basis.IDENTITY
	_step(STAND_H, I, I, 1.5)
	_check("layout", pads._layout(0) == 2 and pads._layout(1) == 2, "%d %d" % [pads._layout(0), pads._layout(1)])
	var t25 := Basis(LEFT, deg_to_rad(25.0))
	_step(STAND_H - 0.15, t25, t25, 0.5)
	_check("calibrated", pads.status == "ready" and pads.side.get(0) == "l" and pads.side.get(1) == "r", "%s %s" % [pads.status, pads.side])
	_step(STAND_H, I, I, 1.2)
	var t35 := Basis(LEFT, deg_to_rad(35.0))
	_step(STAND_H - 0.35, t35, t35, 0.2)
	var L := pads.limbs(Vector3(0, STAND_H - 0.35, 0), FWD, STAND_H, 0.0)
	var shin: Vector3 = ((L.pos.knee_l as Vector3) - ((L.pos.foot_l as Vector3) - (L.dir.l as Vector3) * 0.06)).normalized()
	var tilt := rad_to_deg(shin.angle_to(Vector3.UP))
	_check("squat shin", absf(tilt - 35.0) < 2.0 and shin.dot(FWD) > 0.3, "tilt %.1f°" % tilt)
	print("pad_v2_test: %s" % ("PASS" if fails == 0 else "FAIL (%d)" % fails))
	quit(1 if fails else 0)
