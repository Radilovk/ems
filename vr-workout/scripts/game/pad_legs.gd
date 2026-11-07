## The legs straight from the two XEMS Motion sensors on the shins — no phone, no Wi-Fi (owner 2026-11-07: "connect
## the sensors straight to the game"). Each sensor is a Bluetooth gamepad (firmware 10), paired once in the Quest's own
## Bluetooth settings; the headset reconnects it by itself. Its axes 0..3 = its orientation (qx qy qz qw) — the stick
## axes, which Godot passes on unchanged also through Android's default gamepad mapping (4 and 5 would land on the
## triggers and be rescaled, so the game reads only 0..3; how fast it turns comes from the orientation itself).
##
## The legs from two shins and the head:
##   hips   — under the headset (its height standing → the player's proportions), a little behind the eyes;
##   shins  — measured: each sensor's turn since the zero pose, carried into the game's frame;
##   knees  — the knee is a hinge on the shin's own side axis: the thigh is bent back from the shin until the foot
##            reaches the floor (a squat, a lunge); a foot that cannot reach it even with a straight leg is in the air
##            (a kick) and the thigh then goes halfway between the shin and upright.
## Calibration — automatic, nothing to press:
##   1. standing tall and still (head at standing height, both sensors still ≥ 1 s): the zero pose;
##   2. the first small knee bend (the head goes ≥ 10 cm down): both shins tilt forward about the body's left–right
##      axis — in each sensor's own frame that axis gives "left" (its heading), and its sign against the board's normal
##      (the board's top faces away from the leg, the sensors sit on the outer side) tells the left leg from the right.
##   After that every still, upright moment takes the zero again (no compass on the sensor: its heading creeps).
class_name PadLegs
extends RefCounted

const PREFIX := "XEMS Motion"
const STILL_DPS := 8.0                  # °/s: below this a sensor is still
const STILL_SEC := 1.0
const BEND_M := 0.10                    # head this much lower than standing = a knee bend (calibration step 2)
const BEND_DEG := 12.0                  # … and the shins tilted at least this much
const MAX_AGE_MS := 300

var pads := {}                          # joypad id -> {q, a, w, still, seen}
var side := {}                          # joypad id -> "l" / "r" (after step 2)
var q0 := {}                            # joypad id -> Quaternion: the zero pose (sensor's own world, z up)
var mount := {}                         # joypad id -> angle (rad) from the board normal to "left", about the vertical
var basis := {}                         # joypad id -> Basis: sensor world → game world, at the last zero
var fwd0 := Vector3(0, 0, -1)           # the body's forward at the last zero
var status := "none"                    # none · found · stand · bend · ready
var _last_ms := 0
var sim := {}                           # tests: joypad id -> [qx, qy, qz, qw] instead of the real joypads


func _axis(id: int, i: int) -> float:
	return float(sim[id][i]) if sim.has(id) else Input.get_joy_axis(id, i)


func _sensor_q(id: int) -> Quaternion:
	var q := Quaternion(_axis(id, 0), _axis(id, 1), _axis(id, 2), _axis(id, 3))
	return q.normalized() if q.length() > 0.5 else Quaternion.IDENTITY


## Once a frame: which pads are here, still or moving; calibration steps.
## head_h: the headset's height above the floor; stand_h: standing; fwd: the body's heading (world, horizontal).
func poll(delta: float, head_h: float, stand_h: float, fwd: Vector3) -> void:
	var now := Time.get_ticks_msec()
	var ids := sim.keys()
	for id in ([] if not sim.is_empty() else Input.get_connected_joypads()):
		if Input.get_joy_name(id).begins_with(PREFIX):
			ids.append(id)
	for id in pads.keys():
		if not ids.has(id):
			pads.erase(id)
			side.erase(id)
			q0.erase(id)
			mount.erase(id)
			basis.erase(id)
	for id in ids:
		var p: Dictionary = pads.get(id, {"still": 0.0, "w": 0.0})
		var q := _sensor_q(id)
		if p.has("q") and delta > 0.0:                 # turn speed from the orientation, smoothed over ~0.1 s
			var dq: Quaternion = q * (p.q as Quaternion).inverse()
			var ang := rad_to_deg(2.0 * acos(clampf(absf(dq.w), 0.0, 1.0))) / delta
			p.w = lerpf(float(p.w), ang, clampf(delta / 0.1, 0.0, 1.0))
		p.q = q
		var w: float = p.w
		p.still = (float(p.still) + delta) if w < STILL_DPS else 0.0
		pads[id] = p
		_last_ms = now
	if pads.is_empty():
		status = "none"
		return
	var all_still := true
	for id in pads:
		all_still = all_still and float(pads[id].still) >= STILL_SEC
	var upright := head_h > stand_h - 0.04
	# 1 · the zero pose, and again at every still upright moment (the heading creeps without a compass)
	if all_still and upright:
		for id in pads:
			q0[id] = pads[id].q
			if mount.has(id):
				basis[id] = _basis(id, fwd)
		fwd0 = fwd
		if status in ["none", "found"]:
			status = "bend"
	elif status == "none":
		status = "found"
	# 2 · the first knee bend: each shin's tilt axis = the body's left in the sensor's own frame
	if status == "bend" and head_h < stand_h - BEND_M:
		var done := true
		for id in pads:
			if not q0.has(id):
				done = false
				continue
			var r := _turn(id)                                                    # sensor world
			var ang := rad_to_deg(r.get_angle())
			if ang < BEND_DEG:
				done = false
				continue
			var ax := r.get_axis()
			var axh := Vector2(ax.x, ax.y)
			var n := (q0[id] as Quaternion) * Vector3(0, 0, 1)                   # board normal (away from the leg)
			var nh := Vector2(n.x, n.y)
			if axh.length() < 0.5 or nh.length() < 0.5:
				done = false
				continue
			# shins tilt forward = a turn about the body's left; the left sensor's normal points left, the right's right
			side[id] = "l" if axh.dot(nh) > 0.0 else "r"
			mount[id] = nh.angle_to(axh) if side[id] == "l" else nh.angle_to(-axh)
		if done and side.size() == pads.size():
			for id in pads:
				basis[id] = _basis(id, fwd0)
			status = "ready"


## Sensor world (z up, its own heading) → game world (y up), so that "left" in the sensor (its normal turned by the
## mount angle) becomes the body's left now.
func _basis(id: int, fwd: Vector3) -> Basis:
	var n: Vector3 = (q0[id] as Quaternion) * Vector3(0, 0, 1)
	var nh := Vector2(n.x, n.y).normalized()
	if side[id] == "r":
		nh = -nh
	var lh := nh.rotated(float(mount[id]))          # the body's left in the sensor's world (x, y)
	var left := Vector3.UP.cross(fwd).normalized()
	# sensor x̂ = lh.x·L̂ − lh.y·M̂, ŷ = lh.y·L̂ + lh.x·M̂ with L̂ = left, M̂ = z × left (sensor) → up × left (game)
	var m := Vector3.UP.cross(left)
	return Basis(lh.x * left - lh.y * m, lh.y * left + lh.x * m, Vector3.UP)


## The sensor's turn since the zero pose, in its own world frame (the short way round).
func _turn(id: int) -> Quaternion:
	var r: Quaternion = (pads[id].q as Quaternion) * (q0[id] as Quaternion).inverse()
	return -r if r.w < 0.0 else r


func ready() -> bool:
	return status == "ready" and Time.get_ticks_msec() - _last_ms < MAX_AGE_MS and side.size() >= 1


## The same shape as MotionLink.limbs: {"pos": {"knee_l": Vector3, …, "hip_l": …}, "speed": {}, "dir": {"l": …}}
## (world), or {} until calibrated. head: headset world position; fwd: the body's heading; floor_y: the floor's world y.
func limbs(head: Vector3, fwd: Vector3, stand_h: float, floor_y: float) -> Dictionary:
	if not ready():
		return {}
	var H := stand_h / 0.936                          # body height from eye height
	var lt := 0.245 * H                               # thigh
	var ls := 0.246 * H                               # shin, knee → ankle
	var ah := 0.039 * H                               # ankle above the floor
	var hip_drop := stand_h - (ah + ls + lt)          # eyes → hip joints, standing
	var left := Vector3.UP.cross(fwd).normalized()
	var pelvis := head - Vector3.UP * hip_drop - fwd * 0.05
	var out := {"pos": {}, "speed": {}, "dir": {}}
	for id in side:
		var sd: String = side[id]
		var b: Basis = basis[id]
		var r := _turn(id)
		var g := b * Basis(r) * b.inverse()           # the shin's turn since the zero, in the game's frame
		var u := (g * Vector3.UP).normalized()        # ankle → knee
		var a := (g * left).normalized()              # the knee's hinge axis
		var hip := pelvis + left * (0.052 * H if sd == "l" else -0.052 * H)
		var k := _knee_bend(hip, u, a, lt, ls, floor_y + ah)
		var knee := hip - u.rotated(a, -k) * lt
		var ankle := knee - u * ls
		var fdir := (g * fwd0).normalized()
		out.pos["hip_" + sd] = hip
		out.pos["knee_" + sd] = knee
		out.pos["foot_" + sd] = ankle + fdir * 0.06
		out.dir[sd] = fdir
	return out


## How far the knee bends (rad). The thigh goes back from the shin; the ankle is lowest when the thigh is upright
## (bend = the shin's forward tilt). If even then the ankle is above the floor, the foot is in the air (a kick, a knee
## lifted) and the thigh goes halfway between the shin and upright; else the bend past upright that puts the ankle on
## the floor (a squat, a lunge).
static func _knee_bend(hip: Vector3, u: Vector3, a: Vector3, lt: float, ls: float, ankle_y: float) -> float:
	var f := func(k: float) -> float:
		return hip.y - (u.rotated(a, -k) * lt).y - u.y * ls - ankle_y
	var up_k := clampf(-u.signed_angle_to(Vector3.UP, a), 0.0, deg_to_rad(150.0))
	if f.call(up_k) > 0.02:
		return 0.5 * up_k
	var lo := up_k
	var hi := deg_to_rad(150.0)
	if f.call(hi) < 0.0:
		return hi
	for i in 18:
		var mid := 0.5 * (lo + hi)
		if f.call(mid) < 0.0:
			lo = mid
		else:
			hi = mid
	return 0.5 * (lo + hi)
