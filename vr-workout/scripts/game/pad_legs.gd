## The legs straight from the two XEMS Motion sensors on the shins — no phone, no Wi-Fi (owner 2026-11-07: "connect
## the sensors straight to the game"). Each sensor is a Bluetooth gamepad (firmware 10+), paired once in the Quest's own
## Bluetooth settings; the headset reconnects it by itself. Its axes 0..3 = its orientation (qx qy qz qw) — the stick
## axes, passed on unchanged through Android's default gamepad mapping; axis 4 (Ry = the shin's vertical acceleration
## without gravity, g × 8192) lands on the left trigger, which Godot rescales to 0..1 — it is decoded back and checked
## (still ⇒ 0 g) before it is used; without it the legs are solved from the orientations alone.
##
## Owner 2026-11-08: "direction, position, turning, knee strike, kick — very unrealistic, also when bending". The model
## since then (docs/xems-motion.md "VR legs — bottom-up"), offline vs scripted truth (scripts/vr-legs/legs_proto.py):
##   feet   — planted where they stand (anchors on the floor), not under the head: a bend or a squat moves the hips,
##            not the feet (old: the feet slid after the head; bend: knees 40 cm off on average → 1.3 cm);
##   hips   — solved between the planted legs (ankle → measured shin → thigh) and the headset (trunk length): a hip
##            hinge puts them back, a squat down and back (old: always straight under the head);
##   lifted — a foot whose shin rose (vertical acceleration, integrated, reset on every still moment and landing) is in
##            the air; the knee is bent so the ankle is at that height (knee strike: the thigh rises; old: a knee lifted
##            with the shin upright looked like standing — knee strike 8 → 2 cm mean, front kick 9 → 2–4 cm);
##   heading — each leg keeps its own: a still stand re-zeroes the tilt but no longer turns the legs to where the head
##            looks (old: looking aside for a second turned both legs); the hips face where the legs face.
## Calibration — automatic, nothing to press:
##   1. standing tall and still (head at standing height, both sensors still ≥ 1 s): the zero pose;
##   2. the first small knee bend (the head goes ≥ 10 cm down): both shins tilt forward about the body's left–right
##      axis — in each sensor's own frame that axis gives "left" (its heading), and its sign against the board's normal
##      (the board's top faces away from the leg, the sensors sit on the outer side) tells the left leg from the right.
##   After that every still, upright moment takes the zero again (no compass on the sensor: its tilt is re-anchored,
##   its heading pulled slowly toward the body's).
class_name PadLegs
extends RefCounted

const PREFIX := "XEMS Motion"
const STILL_DPS := 8.0                  # °/s: below this a sensor is still
const STILL_SEC := 1.0
const BEND_M := 0.10                    # head this much lower than standing = a knee bend (calibration step 2)
const BEND_DEG := 12.0                  # … and the shins tilted at least this much
const MAX_AGE_MS := 300
const ACC_AXIS := 4
const LIFT := 0.05                      # m: a foot this high is in the air
const HEADING_PULL_S := 20.0            # s of still standing to pull a leg's heading onto the body's
const HEADING_SNAP := 1.0471976         # 60°: a leg further off than this is re-aimed at once (gross error)

var pads := {}                          # joypad id -> {q, w, still}
var side := {}                          # joypad id -> "l" / "r" (after step 2)
var q0 := {}                            # joypad id -> Quaternion: the zero pose (sensor's own world, z up)
var mount := {}                         # joypad id -> angle (rad) from the board normal to "left", about the vertical
var basis := {}                         # joypad id -> Basis: sensor world → game world, at the last zero
var lfwd := {}                          # joypad id -> the leg's forward in the game at the last zero (horizontal)
var vert := {}                          # joypad id -> the vertical tracker (see _vert)
var fwd0 := Vector3(0, 0, -1)           # the body's forward at the calibration
var status := "none"                    # none · found · stand · bend · ready
var _last_ms := 0
var _head_prev := Vector3.INF
var _head_v := 0.0                      # m/s, smoothed: a still stand needs a still head (a bend moves it)
var role := {}                          # joypad id -> "thigh" (teaching: sensors on the thighs for a session); else a shin
var _rezero := true                     # the next limbs() puts the feet under the body again
var sim := {}                           # tests: joypad id -> [qx, qy, qz, qw(, axis 4)] instead of the real joypads
# the solved body (world): pelvis centre, the planted feet, per leg: in the air, knee bend, time since landing
var pc := Vector3.ZERO
var pc_off := Vector3.ZERO
var anc := {}                           # "l"/"r" -> ankle on the floor (world) while that foot is planted
var air := {"l": false, "r": false}
var kprev := {"l": 0.0, "r": 0.0}
var land := {"l": 0.0, "r": 0.0}
var prior := LegsPrior.new()            # the learned prior (CMU): feet on the floor, thighs, hips — physics on top
# The body measured with a controller (owner 2026-11-09: "a good calibration with the cameras"): the headset's cameras
# track the controllers to a few mm — touch the left knee, the left shoe's tip, the right knee, the right shoe's tip
# (trigger each). Gives the person's own shin and thigh, where each foot points (the strap may sit turned), where the
# feet stand. Kept on the headset (CAL_PATH) — once per person.
const CAL_PATH := "user://legs_cal.json"
const MEASURE := ["kl", "tl", "kr", "tr"]
var measure := -1                       # -1 · 0..3 = the touch being waited for · 4 = done this session
var _touch := {}                        # "kl"/"tl"/"kr"/"tr" -> world point
var cal := {}                           # {"stand_h", "ls", "lt", "foot": {sd: [fwd, left]} (ankle from the eyes, body frame), "turn": {sd: rad}}
var use_prior := true
var _t := 0.0


func _axis(id: int, i: int) -> float:
	if sim.has(id):
		return float(sim[id][i]) if (sim[id] as Array).size() > i else 0.0
	return Input.get_joy_axis(id, i)


func _sensor_q(id: int) -> Quaternion:
	var q := Quaternion(_axis(id, 0), _axis(id, 1), _axis(id, 2), _axis(id, 3))
	return q.normalized() if q.length() > 0.5 else Quaternion.IDENTITY


## Once a frame: which pads are here, still or moving; calibration steps; the shins' heights.
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
			lfwd.erase(id)
			vert.erase(id)
			role.erase(id)
	for id in ids:
		if not pads.has(id) and status == "ready" and _thighs() < 2:
			role[id] = "thigh"                         # a sensor that comes after the legs are ready: on a thigh (teaching)
		var p: Dictionary = pads.get(id, {"still": 0.0, "w": 0.0})
		var q := _sensor_q(id)
		if p.has("q") and delta > 0.0:                 # turn speed from the orientation, smoothed over ~0.1 s
			var dq: Quaternion = q * (p.q as Quaternion).inverse()
			var ang := rad_to_deg(2.0 * acos(clampf(absf(dq.w), 0.0, 1.0))) / delta
			p.w = lerpf(float(p.w), ang, clampf(delta / 0.1, 0.0, 1.0))
		p.q = q
		var w: float = p.w
		p.still = (float(p.still) + delta) if w < STILL_DPS and not _acc_busy(id) else 0.0
		pads[id] = p
		_last_ms = now
	if pads.is_empty():
		status = "none"
		return
	var all_still := true
	for id in pads:
		all_still = all_still and float(pads[id].still) >= STILL_SEC
	var upright := head_h > stand_h - 0.04
	# standing tall and still: the sensors still, the head still, both shins upright (else a slow bend or a slow knee
	# raise — shins hardly turning, head still high — was taken for a stand: the feet jumped under the head)
	var shins_up := true
	for id in pads:
		if status == "ready" and basis.has(id) and side.has(id):
			shins_up = shins_up and (_g(id) * Vector3.UP).angle_to(Vector3.UP) < deg_to_rad(8.0)
	var stand := all_still and upright and _head_v < 0.08 and shins_up
	for id in pads:
		_vert(id, delta, stand)
	# 1 · the zero pose, and again at every still upright moment (the tilt is re-anchored; the heading is kept)
	if stand:
		for id in pads:
			if mount.has(id) and basis.has(id) and lfwd.has(id):
				var f := _leg_fwd_now(id)
				var lf: Vector3 = lfwd[id]
				if f.length() > 0.5:
					lf = f
				var want := fwd                       # the body's forward, turned by this foot's measured toe-out
				if cal.has("turn") and side.has(id):
					want = fwd.rotated(Vector3.UP, float(cal.turn.get(side[id], 0.0)))
				if lf.angle_to(want) > HEADING_SNAP:
					lf = want
				else:
					lf = lf.slerp(want, clampf(delta / HEADING_PULL_S, 0.0, 1.0)).normalized()
				lfwd[id] = lf
			q0[id] = pads[id].q
			if mount.has(id):
				basis[id] = _basis(id, lfwd.get(id, fwd))
		_rezero = true
		if status in ["none", "found"]:
			fwd0 = fwd
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
				lfwd[id] = fwd0
				basis[id] = _basis(id, fwd0)
			status = "ready"
	# teaching: a thigh sensor learns its side and mounting at the next knee bend — the thigh turns the other way than
	# the shin (its top goes back: about the body's right), so "left" in its own frame is minus the turn's axis
	if status == "ready" and head_h < stand_h - BEND_M:
		for id in role:
			if side.has(id) or not q0.has(id) or not pads.has(id):
				continue
			var r := _turn(id)
			if rad_to_deg(r.get_angle()) < 8.0:
				continue
			var ax := r.get_axis()
			var axh := -Vector2(ax.x, ax.y)
			var n := (q0[id] as Quaternion) * Vector3(0, 0, 1)
			var nh := Vector2(n.x, n.y)
			if axh.length() < 0.5 or nh.length() < 0.5:
				continue
			side[id] = "l" if axh.dot(nh) > 0.0 else "r"
			mount[id] = nh.angle_to(axh) if side[id] == "l" else nh.angle_to(-axh)
			lfwd[id] = fwd
			basis[id] = _basis(id, fwd)


## The leg's forward in the game now (horizontal; ZERO if the shin's hinge is too steep to tell).
func _leg_fwd_now(id: int) -> Vector3:
	var g := _g(id)
	var a := g * Vector3.UP.cross(lfwd[id] as Vector3)
	var f := a.cross(Vector3.UP)
	return f.normalized() if f.length() > 0.3 else Vector3.ZERO


## The shin's vertical acceleration (g) from axis 4, or NAN while not (yet) known to be there. The stick/trigger form
## is told from the value at rest (0 g ⇒ 0.0 as a stick, 0.5 as a trigger); "live" once it moved with the shin.
func _acc_g(id: int, v: Dictionary) -> float:
	var x := _axis(id, ACC_AXIS)
	match int(v.mode):
		1:
			return x * 4.0
		2:
			return (2.0 * x - 1.0) * 4.0
	return NAN


## The vertical tracker of one shin: height above its standing place (m), from the vertical acceleration — integrated
## twice, its offset learnt while the player stands tall and still (the truth there is 0), the speed reset at every
## still moment, a landing's jolt held off, the height let down when still and low.
func _vert(id: int, dt: float, stand: bool) -> void:
	var v: Dictionary = vert.get(id, {"mode": 0, "live": false, "m": 0.0, "mn": 0, "bias": 0.0, "sig": 0.3, "am": 0.0,
		"v": 0.0, "h": 0.0, "hold": 0.0, "st": 0.0})
	vert[id] = v
	if dt <= 0.0:
		return
	if int(v.mode) == 0:                        # which form: the mean at the first still stand
		if stand:
			v.m = float(v.m) + _axis(id, ACC_AXIS)
			v.mn = int(v.mn) + 1
			if int(v.mn) >= 30:
				var m: float = float(v.m) / float(v.mn)
				v.mode = 2 if absf(m - 0.5) < 0.02 else 1 if absf(m) < 0.02 else -1
		return
	var g := _acc_g(id, v)
	if is_nan(g):
		return
	var a := clampf(g, -4.0, 4.0) * 9.81
	v.g = g
	var e: float = a - float(v.bias)
	var w: float = float(pads[id].w)
	if not bool(v.live) and absf(e) > 2.0:
		v.live = true                           # it moves (a missing axis reads a constant): the axis is really there
	if stand:
		v.bias = float(v.bias) + (a - float(v.bias)) * minf(1.0, dt / 0.5)
		v.sig = float(v.sig) + (absf(e) - float(v.sig)) * minf(1.0, dt / 0.5)
		v.h = 0.0
		v.v = 0.0
		v.am = absf(e)
		return
	v.am = float(v.am) + (absf(e) - float(v.am)) * minf(1.0, dt / 0.1)
	var quiet := w < 15.0 and float(v.am) < 0.3 + 2.0 * float(v.sig)
	v.st = float(v.st) + dt if quiet else 0.0
	if float(v.hold) > 0.0:
		v.hold = float(v.hold) - dt
		v.v = 0.0
	else:
		v.v = float(v.v) + e * dt
	v.h = float(v.h) + float(v.v) * dt
	if float(v.h) <= 0.0:
		if float(v.v) < -0.2:
			v.hold = 0.2                        # touched down: the landing's jolt is not a lift
		v.h = 0.0
		v.v = maxf(float(v.v), 0.0)
	v.h = minf(float(v.h), 1.2)
	if float(v.st) > 0.12:
		v.v = 0.0
		v.h = float(v.h) * exp(-dt / (0.08 if float(v.h) < 0.12 else 1.5))


## The shin's vertical acceleration is clearly busy (it is moving up or down, however little it turns).
func _acc_busy(id: int) -> bool:
	var v: Dictionary = vert.get(id, {})
	return _has_h(id) and float(v.am) > 0.3 + 2.0 * float(v.sig)


## True when the shin's height is measured (axis 4 decoded and seen moving).
func _has_h(id: int) -> bool:
	var v: Dictionary = vert.get(id, {})
	return not v.is_empty() and int(v.mode) > 0 and bool(v.live)


## Sensor world (z up, its own heading) → game world (y up), so that "left" in the sensor (its normal turned by the
## mount angle) becomes the leg's left (from its forward f).
func _basis(id: int, f: Vector3) -> Basis:
	var n: Vector3 = (q0[id] as Quaternion) * Vector3(0, 0, 1)
	var nh := Vector2(n.x, n.y).normalized()
	if side[id] == "r":
		nh = -nh
	var lh := nh.rotated(float(mount[id]))          # the body's left in the sensor's world (x, y)
	var left := Vector3.UP.cross(f).normalized()
	# sensor x̂ = lh.x·L̂ − lh.y·M̂, ŷ = lh.y·L̂ + lh.x·M̂ with L̂ = left, M̂ = z × left (sensor) → up × left (game)
	var m := Vector3.UP.cross(left)
	return Basis(lh.x * left - lh.y * m, lh.y * left + lh.x * m, Vector3.UP)


## The sensor's turn since the zero pose, in its own world frame (the short way round).
func _turn(id: int) -> Quaternion:
	var r: Quaternion = (pads[id].q as Quaternion) * (q0[id] as Quaternion).inverse()
	return -r if r.w < 0.0 else r


## The shin's turn since the zero, in the game's frame.
func _g(id: int) -> Basis:
	var b: Basis = basis[id]
	return b * Basis(_turn(id)) * b.inverse()


## Measure the legs (the game guides it): start → touch(point) four times → measure == 4, cal saved.
func start_measure() -> void:
	measure = 0
	_touch.clear()


func load_cal(stand_h: float) -> bool:
	if not FileAccess.file_exists(CAL_PATH):
		return false
	var d = JSON.parse_string(FileAccess.get_file_as_string(CAL_PATH))
	if typeof(d) != TYPE_DICTIONARY or absf(float(d.get("stand_h", 0.0)) - stand_h) > 0.06:
		return false                                  # someone else (another height): measure again
	cal = d
	return true


## One touch with the controller's tip (world). head: the eyes now; floor_y: the floor; stand_h: eye height standing.
func touch(point: Vector3, head: Vector3, floor_y: float, stand_h: float) -> void:
	if measure < 0 or measure >= MEASURE.size():
		return
	_touch[MEASURE[measure]] = point
	measure += 1
	if measure < MEASURE.size():
		return
	# all four: the person's own legs (the shin from the knee down its measured direction to the ankle's height)
	var H := stand_h / 0.936
	var ah := 0.039 * H
	var c := {"stand_h": stand_h, "foot": {}, "turn": {}}
	var lss := []
	var bf := Vector3.ZERO
	for sd in ["l", "r"]:
		var id := _id_of(sd)
		var u := (_g(id) * Vector3.UP).normalized() if id >= 0 else Vector3.UP
		var k: Vector3 = _touch["k" + sd]
		var t: Vector3 = _touch["t" + sd]
		var ls := clampf((k.y - floor_y - ah) / maxf(0.5, u.y), 0.6 * 0.246 * H, 1.4 * 0.246 * H)
		lss.append(ls)
		var ankle := k - u * ls
		var fd := Vector3(t.x - ankle.x, 0.0, t.z - ankle.z)
		if fd.length() > 0.05:
			bf += fd.normalized()
		c.foot[sd] = ankle
		c.turn[sd] = fd
	bf = bf.normalized() if bf.length() > 0.3 else Vector3(0, 0, -1)
	var left := Vector3.UP.cross(bf).normalized()
	for sd in ["l", "r"]:
		var a: Vector3 = (c.foot[sd] as Vector3) - head
		c.foot[sd] = [a.dot(bf), a.dot(left)]            # the ankle from the eyes, in the body's frame
		var fd: Vector3 = c.turn[sd]
		c.turn[sd] = bf.signed_angle_to(fd.normalized(), Vector3.UP) if fd.length() > 0.05 else 0.0
	c.ls = (float(lss[0]) + float(lss[1])) * 0.5
	c.lt = c.ls * 0.245 / 0.246                       # the thigh: not touched (the hip is hard to find) — from the shin
	cal = c
	var f := FileAccess.open(CAL_PATH, FileAccess.WRITE)
	if f:
		f.store_string(JSON.stringify(cal))
	# where each foot points, measured: the leg's forward = the body's forward turned by its toe-out
	for id in side:
		var sd: String = side[id]
		if q0.has(id) and mount.has(id) and not role.has(id):
			lfwd[id] = bf.rotated(Vector3.UP, float(c.turn[sd]))
			basis[id] = _basis(id, lfwd[id])
	_rezero = true


func _id_of(sd: String) -> int:
	for id in side:
		if side[id] == sd and not role.has(id):
			return id
	return -1


func _thighs() -> int:
	return role.size()


## Teaching: the thighs measured (both sides calibrated) — the prior learns this person while they play.
func teaching() -> bool:
	var n := 0
	for id in role:
		if side.has(id) and basis.has(id) and pads.has(id):
			n += 1
	return n >= 2


## The thigh as measured by a teaching sensor (hip → knee, world), or ZERO.
func thigh_dir(sd: String) -> Vector3:
	for id in role:
		if side.get(id, "") == sd and basis.has(id) and pads.has(id):
			return (_g(id) * Vector3.DOWN).normalized()
	return Vector3.ZERO


## End of a teaching session: fit this person's thighs into the prior (true: learnt and saved).
func teach_finish() -> bool:
	return prior.fit()


func ready() -> bool:
	return status == "ready" and Time.get_ticks_msec() - _last_ms < MAX_AGE_MS and side.size() >= 1


## The same shape as MotionLink.limbs: {"pos": {"knee_l": Vector3, …, "hip_l": …}, "speed": {}, "dir": {"l": …},
## "ground": {"l": bool}} (world), or {} until calibrated. head: headset world position; fwd: the head's heading
## (only a fallback: the hips face where the legs face); floor_y: the floor's world y. Once a frame.
func limbs(head: Vector3, fwd: Vector3, stand_h: float, floor_y: float, delta := 1.0 / 72.0, hands := {}) -> Dictionary:
	if not ready():
		return {}
	if delta > 0.0 and _head_prev != Vector3.INF:
		_head_v = lerpf(_head_v, head.distance_to(_head_prev) / delta, clampf(delta / 0.15, 0.0, 1.0))
	_head_prev = head
	var H := stand_h / 0.936                          # body height from eye height
	var lt := float(cal.get("lt", 0.245 * H))         # thigh (measured, else from the height)
	var ls := float(cal.get("ls", 0.246 * H))         # shin, knee → ankle
	var ah := 0.039 * H                               # ankle above the floor
	var hw := 0.052 * H                               # hip joint from the middle
	var hip_drop := stand_h - (ah + ls + lt)          # eyes → hip joints, standing
	var trunk := Vector2(hip_drop, 0.05).length()     # hip centre → eyes
	# the legs as measured: shin direction (ankle → knee), hinge, foot direction; the body faces where the legs face
	var U := {}
	var A := {}
	var D := {}
	var hid := {}
	var bf := Vector3.ZERO
	for id in side:
		if role.has(id):
			continue                                      # a teaching sensor on the thigh: not a shin
		var sd: String = side[id]
		var g := _g(id)
		var lf: Vector3 = lfwd.get(id, fwd0)
		U[sd] = (g * Vector3.UP).normalized()
		A[sd] = (g * Vector3.UP.cross(lf)).normalized()
		D[sd] = (g * lf).normalized()
		hid[sd] = id
		var f := (A[sd] as Vector3).cross(Vector3.UP)
		if f.length() > 0.3:
			bf += f.normalized()
	if bf.length() < 0.5:
		bf = fwd
	bf = bf.normalized()
	var left := Vector3.UP.cross(bf).normalized()
	var stand_off := -Vector3.UP * hip_drop - bf * 0.05
	var sgn := {"l": 1.0, "r": -1.0}
	if _rezero or pc.distance_to(head) > trunk + 0.5:  # standing tall and still (or lost): feet under the hips
		_rezero = false
		pc = head + stand_off
		pc_off = stand_off
		for sd in U:
			var p: Vector3 = pc + left * hw * float(sgn[sd])
			if cal.has("foot"):                         # where this person stands, measured
				var fo: Array = cal.foot[sd]
				p = head + bf * float(fo[0]) + left * float(fo[1])
			anc[sd] = Vector3(p.x, floor_y + ah, p.z)
			air[sd] = false
			kprev[sd] = 0.0
	# the learned prior (needs both legs)
	var P := {}
	_t += delta
	if use_prior and U.has("l") and U.has("r"):
		var acc := {}
		if _has_h(hid["l"]) and _has_h(hid["r"]):
			for sd in U:
				var v: Dictionary = vert[hid[sd]]
				acc[sd] = float(v.get("g", 0.0)) - float(v.bias) / 9.81
		P = prior.step(_t, delta, U, A, acc, head, stand_h - ah, floor_y + ah, hands)
		if teaching():                                    # the thighs are measured: the prior learns this person
			for sd in U:
				var t := thigh_dir(sd)
				if t != Vector3.ZERO:
					prior.learn(sd, t)
	# 1 · which feet are on the floor
	var ground := {}
	for sd in U:
		var u: Vector3 = U[sd]
		if not P.is_empty():
			ground[sd] = P.ground[sd]
		elif _has_h(hid[sd]):
			ground[sd] = float(vert[hid[sd]].h) < LIFT
		else:                                         # no height: in the air if even a straight-down thigh can't reach
			var hip: Vector3 = pc + left * hw * float(sgn[sd])
			var up_k := clampf(-u.signed_angle_to(Vector3.UP, A[sd]), 0.0, deg_to_rad(150.0))
			ground[sd] = hip.y - (u.rotated(A[sd], -up_k) * lt).y - u.y * ls - (floor_y + ah) < LIFT
		if not ground[sd]:
			anc.erase(sd)
	# 2 · the hips: between the planted legs (each hip a thigh's length from its knee) and the head (a trunk's length)
	var planted := []
	for sd in U:
		if ground[sd] and anc.has(sd):
			planted.append(sd)
	if planted.is_empty():                            # both feet up (a jump): the hips where the prior says, or with the head
		pc = P.pc if not P.is_empty() else head + pc_off
	else:
		var knees := {}
		for sd in planted:
			knees[sd] = (anc[sd] as Vector3) + (U[sd] as Vector3) * ls
		for it in 12:
			var acc := Vector3.ZERO
			var n := 0.0
			for sd in planted:
				var off: Vector3 = left * hw * float(sgn[sd])
				var d: Vector3 = pc + off - knees[sd]
				acc += (knees[sd] as Vector3) + d.normalized() * lt - off
				n += 1.0
			var dh := pc - head
			acc += (head + dh.normalized() * trunk) * 1.5
			n += 1.5
			if not P.is_empty():                      # the prior's hips: the directions the legs don't fix
				acc += (P.pc as Vector3) * 0.5
				n += 0.5
			else:
				acc += (head + stand_off) * 0.03      # a whisper toward standing: the free directions don't wander
				n += 0.03
			pc = acc / n
			pc.y = minf(pc.y, head.y - 0.1)
		for sd in planted:                            # stretched past reach: that foot stepped — slide it along
			var d: Vector3 = pc + left * hw * float(sgn[sd]) - knees[sd]
			var e := d.length() - lt
			var dh := Vector3(d.x, 0.0, d.z)
			if e > 0.03 and dh.length() > 0.001:
				anc[sd] = (anc[sd] as Vector3) + dh.normalized() * (e - 0.03)
		pc_off = pc - head
	# 3 · each leg: planted → up from its anchor; lifted → down from the hip, the knee bent to the measured height
	var out := {"pos": {}, "speed": {}, "dir": {}, "ground": {}}
	for sd in U:
		var u: Vector3 = U[sd]
		var a: Vector3 = A[sd]
		var hip: Vector3 = pc + left * hw * float(sgn[sd])
		var knee: Vector3
		var ankle: Vector3
		if ground[sd] and anc.has(sd):
			ankle = anc[sd]
			knee = ankle + u * ls
			land[sd] = float(land[sd]) - delta
			if float(land[sd]) > 0.0 and u.y > cos(deg_to_rad(12.0)):    # just landed, shin upright: under the hip
				var t := hip - Vector3.UP * (lt + ls)
				var k := minf(1.0, delta / 0.25)
				anc[sd] = Vector3(lerpf(ankle.x, t.x, k), ankle.y, lerpf(ankle.z, t.z, k))
		elif not P.is_empty():                         # lifted: the thigh where the prior says, the shin as measured
			knee = hip + (P.thigh[sd] as Vector3) * lt
			ankle = knee - u * ls
			ankle.y = maxf(ankle.y, floor_y + ah)
			if ground[sd]:
				anc[sd] = Vector3(ankle.x, floor_y + ah, ankle.z)
				ankle = anc[sd]
				knee = ankle + u * ls
				land[sd] = 0.5
		else:
			var k := 0.0
			if _has_h(hid[sd]):
				var target := floor_y + ah + float(vert[hid[sd]].h)
				var best := INF
				for i in 51:
					var kk := deg_to_rad(150.0) * i / 50.0
					var ay := hip.y - (u.rotated(a, -kk) * lt).y - u.y * ls
					var c := absf(ay - target) + 0.03 * absf(kk - float(kprev[sd]))
					if c < best:
						best = c
						k = kk
			else:
				k = _knee_bend(hip, u, a, lt, ls, floor_y + ah)
			kprev[sd] = k
			knee = hip - u.rotated(a, -k) * lt
			ankle = knee - u * ls
			ankle.y = maxf(ankle.y, floor_y + ah)
			if ground[sd]:                             # just put down: it stays where it landed
				anc[sd] = Vector3(ankle.x, floor_y + ah, ankle.z)
				ankle = anc[sd]
				knee = ankle + u * ls
				land[sd] = 0.5
		air[sd] = not ground[sd]
		var fdir: Vector3 = D[sd]
		var fl := Vector3(fdir.x, 0.0, fdir.z)
		var foot_ahead: Vector3 = fl.normalized() if ground[sd] and fl.length() > 0.3 else fdir
		out.pos["hip_" + sd] = hip
		out.pos["knee_" + sd] = knee
		out.pos["foot_" + sd] = ankle + foot_ahead * 0.06
		out.dir[sd] = foot_ahead if ground[sd] else fdir
		out.ground[sd] = ground[sd]
	return out


## How far the knee bends (rad) without a measured height. The thigh goes back from the shin; the ankle is lowest when
## the thigh is upright (bend = the shin's forward tilt). If even then the ankle is above the floor, the foot is in the
## air and the thigh goes halfway between the shin and upright; else the bend past upright that puts the ankle on
## the floor.
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
