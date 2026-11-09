## The legs straight from two shin sensors as Bluetooth gamepads (PadLegs): two fake gamepads named "XEMS Motion …",
## each with its own unknown heading and mounting on the outer side of the shin, feed their orientation as joypad axes.
## The player stands still (zero), bends the knees once (calibration), then: a squat, a front kick, a step to the side.
## Checks: left/right found, shins in the game = the true shins, the knee bent where it must be, feet on the floor.
##   godot --headless --path vr-workout --script res://test/pad_test.gd
extends SceneTree

const STAND_H := 1.65                   # eye height standing
const FLOOR := 0.0
var pads := PadLegs.new()
var fails := 0
# per sensor: its world heading (rad) and how the board sits on the shin (rad, turned in the board's plane)
var sensors := [
	{"id": 0, "leg": "l", "yaw": 1.1, "mount": 0.4},
	{"id": 1, "leg": "r", "yaw": -2.3, "mount": 2.9},
]
const FWD := Vector3(0, 0, -1)
const LEFT := Vector3(-1, 0, 0)


## game world (y up, −z ahead) → the sensor's own world (z up, its own heading)
func _to_sensor(yaw: float) -> Basis:
	var c0 := Basis(Vector3(1, 0, 0), Vector3(0, 0, 1), Vector3(0, -1, 0)).transposed()   # rows: X→x, −Z→y, Y→z
	return Basis(Vector3(0, 0, 1), yaw) * c0


## the board in the game at the zero pose: its top (z) facing out of the leg, its x along the shin turned by `mount`
func _board(s: Dictionary) -> Basis:
	var out := LEFT if s.leg == "l" else -LEFT
	var x := Vector3.UP.rotated(out, s.mount)
	return Basis(x, out.cross(x), out)


## feed one sensor: the shin turned by g (game world) since the zero pose
func _feed(s: Dictionary, g: Basis) -> void:
	var q := Quaternion(_to_sensor(s.yaw) * g * _board(s))
	if q.w < 0.0:
		q = -q
	pads.sim[s.id] = [q.x, q.y, q.z, q.w]


func _step(head_h: float, gl: Basis, gr: Basis, secs: float) -> void:
	var n := int(secs * 72.0)
	for i in n:
		_feed(sensors[0], gl)
		_feed(sensors[1], gr)
		pads.poll(1.0 / 72.0, head_h, STAND_H, FWD)
		pads.limbs(Vector3(0, head_h, 0), FWD, STAND_H, FLOOR, 1.0 / 72.0)     # once a frame, as the game does


func _check(name: String, ok: bool, info: String) -> void:
	print("pad_test: %s %s — %s" % ["ok  " if ok else "FAIL", name, info])
	if not ok:
		fails += 1


func _initialize() -> void:
	pads.use_prior = false              # the physics path (the learned prior: prior_test.gd + legs_prior.py eval)
	var I := Basis.IDENTITY
	_step(STAND_H, I, I, 0.3)
	_check("found", pads.status == "found", pads.status)
	_step(STAND_H, I, I, 1.2)
	_check("zero pose", pads.status == "bend", pads.status)
	# calibration bend: head 15 cm down, shins 25° forward
	var t25 := Basis(LEFT, deg_to_rad(25.0))
	_step(STAND_H - 0.15, t25, t25, 0.5)
	_check("calibrated", pads.status == "ready", pads.status)
	_check("left / right", pads.side.get(0) == "l" and pads.side.get(1) == "r", str(pads.side))
	_step(STAND_H, I, I, 1.2)                       # stands up, still: the zero again
	var head := Vector3(0, STAND_H, 0)
	# standing: legs straight, feet on the floor
	var L := pads.limbs(head, FWD, STAND_H, FLOOR)
	_check("standing", not L.is_empty() and absf(L.pos.foot_l.y - 0.039 * STAND_H / 0.936) < 0.03 and L.pos.knee_l.y > 0.4,
		"knee_l %s foot_l %s" % [L.pos.get("knee_l"), L.pos.get("foot_l")])
	# squat: head 35 cm down, shins 35° forward → the shins in the game tilt 35° forward, knees ahead of the ankles
	var t35 := Basis(LEFT, deg_to_rad(35.0))
	_step(STAND_H - 0.35, t35, t35, 0.2)
	L = pads.limbs(head - Vector3(0, 0.35, 0), FWD, STAND_H, FLOOR)
	var shin: Vector3 = (L.pos.knee_l - (L.pos.foot_l - L.dir.l * 0.06)).normalized()
	var tilt := rad_to_deg(shin.angle_to(Vector3.UP))
	_check("squat shin", absf(tilt - 35.0) < 2.0 and shin.dot(FWD) > 0.3, "tilt %.1f° dir %s" % [tilt, shin])
	_check("squat feet down", absf(L.pos.foot_r.y - 0.039 * STAND_H / 0.936) < 0.04, "foot_r %s" % L.pos.foot_r)
	_check("squat knees ahead", L.pos.knee_l.z < L.pos.hip_l.z - 0.1, "knee_l %s hip_l %s" % [L.pos.knee_l, L.pos.hip_l])
	# front kick, right leg: shin swung up to 100° (foot ahead and up), left stands
	var kick := Basis(LEFT, deg_to_rad(-100.0))
	_step(STAND_H, I, kick, 0.2)
	L = pads.limbs(head, FWD, STAND_H, FLOOR)
	_check("kick foot up and ahead", L.pos.foot_r.y > 0.6 and L.pos.foot_r.z < -0.4, "foot_r %s knee_r %s" % [L.pos.foot_r, L.pos.knee_r])
	_check("kick other foot down", L.pos.foot_l.y < 0.1, "foot_l %s" % L.pos.foot_l)
	_check("kick boot points up", (L.dir.r as Vector3).y > 0.8, "dir_r %s" % L.dir.r)
	# side step: left shin tilts out 15°
	var side := Basis(FWD, deg_to_rad(-15.0))
	_step(STAND_H, side, I, 0.2)
	L = pads.limbs(head, FWD, STAND_H, FLOOR)
	var sl: Vector3 = (L.pos.knee_l - (L.pos.foot_l - L.dir.l * 0.06)).normalized()
	_check("side tilt", absf(rad_to_deg(sl.angle_to(Vector3.UP)) - 15.0) < 2.0 and sl.x > 0.1, "shin_l %s" % sl)
	# measured with a controller: a shin 10 % longer than the model's, feet turned out 10°, standing a bit wide
	_step(STAND_H, I, I, 1.2)
	var H := STAND_H / 0.936
	var ls_true := 0.246 * H * 1.1
	var ah := 0.039 * H
	var ank := {"l": Vector3(-0.13, ah, 0.03), "r": Vector3(0.13, ah, 0.03)}
	var toe_dir := {"l": FWD.rotated(Vector3.UP, deg_to_rad(10.0)), "r": FWD.rotated(Vector3.UP, deg_to_rad(-10.0))}
	pads.start_measure()
	for sd in ["l", "r"]:
		pads.touch((ank[sd] as Vector3) + Vector3.UP * ls_true, head, FLOOR, STAND_H)
		pads.touch((ank[sd] as Vector3) + (toe_dir[sd] as Vector3) * 0.16, head, FLOOR, STAND_H)
	_check("measured", pads.measure == 4 and absf(float(pads.cal.ls) - ls_true) < 0.01,
		"measure %d shin %.3f (true %.3f)" % [pads.measure, float(pads.cal.get("ls", 0.0)), ls_true])
	_step(STAND_H, I, I, 1.2)
	L = pads.limbs(head, FWD, STAND_H, FLOOR)
	for sd in ["l", "r"]:
		var an: Vector3 = (L.pos["foot_" + sd] as Vector3) - (L.dir[sd] as Vector3) * 0.06
		var off := Vector2(an.x - (ank[sd] as Vector3).x, an.z - (ank[sd] as Vector3).z).length()
		var turn := rad_to_deg((L.dir[sd] as Vector3).angle_to(toe_dir[sd]))
		_check("measured stance %s" % sd, off < 0.02 and turn < 3.0, "ankle %.1f cm off, foot points %.1f° off" % [off * 100.0, turn])
	print("pad_test: %s" % ("PASS" if fails == 0 else "FAIL (%d)" % fails))
	quit(1 if fails else 0)
