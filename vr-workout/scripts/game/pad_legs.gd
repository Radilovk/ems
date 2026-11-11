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
const MEASURE := ["hl", "kl", "al", "tl", "hr", "kr", "ar", "tr"]     # hip, knee, ankle, toe — left, then right
var measure := -1                       # -1 · 0..7 the touch being waited for · 8 the control pose · 9 done
var _touch := {}                        # "hl"… -> {"p": the bony point (world), "g": the shin's turn since the zero then}
var cal := {}                           # {"stand_h", "ls", "lt", "ah", "hw", "foot": {sd: [fwd, left]} (ankle from the
                                        # eyes, body frame), "turn": {sd: rad}, "toe": {sd: m}, "u0": {sd: shin at the zero}}
var use_prior := true
# The hands are NOT given to the prior (owner's take 2A49MQ2AH8): in CMU people stand with the arms down, in VR the
# controllers are held at the chest — outside what it learnt, it read every stand as "both feet in the air" (standing
# still, both shins upright: P(on the floor) 0.00 with the hands, 0.94 without; trained also without them).
var prior_hands := false
# Which feet are on the floor, steadied (the same take: the prior's answer flipped nearly every frame, each flip moved
# the knee 8–12 cm — the flicker) and held to physics: no one floats. Off the floor both only in a jump (the head
# going up fast near its standing height, held JUMP_HOLD); both shins upright and still = both feet down (unless the
# measured height shows one lifted: in a knee raise the shin hangs upright too).
const GND_TAU := 0.08                   # s: P(on the floor) smoothed
const JUMP_VY := 0.8                    # m/s: the head going up this fast near standing = a jump
const JUMP_HOLD := 0.5                  # s: the feet may both be up this long after it
const UPRIGHT_DEG := 10.0               # a shin this close to vertical …
const UPRIGHT_DPS := 40.0               # … and turning slower than this stands on its foot
const BLEND_S := 0.1                    # s: a leg's switch (planted ⇄ lifted, re-placed) cross-fades over this
const PRIOR_TAU := 0.05                 # s: the prior's thighs and hips smoothed (its frame-to-frame noise is 5–8 cm)
var _pg := {"l": 1.0, "r": 1.0}
var _gnd := {"l": true, "r": true}
var _head_vy := 0.0
var _jump := 0.0
var _blend := {}                        # sd -> [knee, foot (world) where it was at the switch, 0..1 of the cross-fade]
var _prev_out := {}
var _gprev := {}
var _pth := {}                          # the prior's thighs, smoothed
var _ppc := Vector3.INF                 # … and hips
var _t := 0.0


func _axis(id: int, i: int) -> float:
	if sim.has(id):
		return float(sim[id][i]) if (sim[id] as Array).size() > i else 0.0
	return Input.get_joy_axis(id, i)


## The report layout: 1 = fw 10–12 (sticks: qx qy qz qw on 0..3, the acceleration on 4 as a trigger) · 2 = fw 13 (pedals
## Throttle Rudder Steering Gas = qx qy MARK qz on 0..3, w ≥ 0 rebuilt — the system no longer navigates with the legs).
## Android gives the pedals that are not "centred" (Throttle, Gas) as 0..1: undone with 2v − 1, unless a negative value
## shows they come as −1..1. fw 13 is told by its mark: Steering (centred, passed on as is) always 0.777.
func _layout(id: int) -> int:
	var p: Dictionary = pads.get(id, {})
	return int(p.get("lay", 1))


func _sense_layout(id: int, p: Dictionary) -> void:
	if int(p.get("lay_n", 0)) >= 30:
		return
	var n := Vector4(_axis(id, 0), _axis(id, 1), _axis(id, 2), _axis(id, 3)).length()
	if n < 0.05:
		return                                        # nothing received yet (all zeros)
	p.lay_n = int(p.get("lay_n", 0)) + 1
	p.lay_mark = int(p.get("lay_mark", 0)) + (1 if absf(_axis(id, 2) - MARK13) < 0.003 else 0)
	p.lay = 2 if int(p.lay_mark) > int(p.lay_n) / 2 else 1


func _sensor_q(id: int) -> Quaternion:
	if _layout(id) == 2:
		var p: Dictionary = pads.get(id, {})
		var a0 := _axis(id, 0)
		var a3 := _axis(id, 3)
		if a0 < -0.02 or a3 < -0.02:
			p.cen = true                              # this headset gives the pedals as −1..1
		var cen := bool(p.get("cen", false))
		var x := a0 if cen else 2.0 * a0 - 1.0
		var y := _axis(id, 1)
		var z := a3 if cen else 2.0 * a3 - 1.0
		var w := sqrt(maxf(0.0, 1.0 - x * x - y * y - z * z))
		return Quaternion(x, y, z, w).normalized()
	var q := Quaternion(_axis(id, 0), _axis(id, 1), _axis(id, 2), _axis(id, 3))
	return q.normalized() if q.length() > 0.5 else Quaternion.IDENTITY


## Once a frame: which pads are here, still or moving; calibration steps; the shins' heights.
## head_h: the headset's height above the floor; stand_h: standing; fwd: the body's heading (world, horizontal).
## The standing eye height as the headset shows it: the highest the head was in the last 20 s (owner 2026-11-11,
## three recordings: the game's own standing height said 1.64 m, the head never rose above 1.57 m — "stand tall" was
## never met and the legs stayed at "stand up straight"). Not below 85 % of the game's height (a long squat). Only a
## height the head held for HOLD_S: a jump's top would make the legs longer for 20 s.
var _hist_h: Array = []                 # [time s, head height]
var _hclock := 0.0
var stand_seen := 0.0


var _hold_h: Array = []                 # [time s, head height] of the last HOLD_S: what the head held, not touched


const HOLD_S := 0.3                     # s: a height counts once the head held it this long (a jump's top does not)


func _stand_eff(head_h: float, stand_h: float, delta: float) -> float:
	_hclock += delta
	_hold_h.append([_hclock, head_h])
	while _hold_h.size() > 1 and float(_hold_h[0][0]) < _hclock - HOLD_S:
		_hold_h.pop_front()
	var held := head_h
	for e in _hold_h:
		held = minf(held, float(e[1]))
	_hist_h.append([_hclock, held])
	while _hist_h.size() > 2 and float(_hist_h[0][0]) < _hclock - 20.0:
		_hist_h.pop_front()
	var m := 0.0
	for e in _hist_h:
		m = maxf(m, float(e[1]))
	stand_seen = maxf(m, 0.85 * stand_h)
	return stand_seen


func poll(delta: float, head_h: float, stand_h: float, fwd: Vector3) -> void:
	stand_h = _stand_eff(head_h, stand_h, delta)
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
		_sense_layout(id, p)
		pads[id] = p
		var q := _smooth_q(p, _sensor_q(id), delta)
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
	_stand_now = stand
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


## The sensors' orientation between their samples (owner's takes 2A49MQ2AH8, MFCMVC9YXW: while moving a new value
## came only ~32 times a second, the game draws 72 — each shin held for 2–3 frames, then a jump: the legs stuttered).
## A new value is reached over the usual gap between values (~31 ms; on average ~15 ms later), from where the
## shin is drawn now: a smooth path instead of steps. Fed every frame (tests), it is taken at once.
const SAMPLE_MIN := 1.0 / 90.0
const SAMPLE_MAX := 1.0 / 20.0


func _smooth_q(p: Dictionary, raw: Quaternion, delta: float) -> Quaternion:
	if not p.has("qr"):
		p.qr = raw
		p.qa = raw
		p.qt = _hclock
		p.qs = _hclock
		p.qiv = SAMPLE_MIN
		return raw
	if not raw.is_equal_approx(p.qr):                 # a new sample
		var iv := _hclock - float(p.qs)
		if iv < SAMPLE_MAX:                           # a longer gap is a still shin (same values), not the rate
			p.qiv = lerpf(float(p.qiv), maxf(iv, SAMPLE_MIN), 0.2)
		p.qs = _hclock
		p.qa = p.get("q", raw)
		p.qr = raw
		p.qt = _hclock - delta                        # this frame is already one step along
	var k := clampf((_hclock - float(p.qt)) / float(p.qiv), 0.0, 1.0)
	var qa: Quaternion = p.qa
	return qa.slerp(raw, k).normalized() if qa.dot(raw) >= 0.0 else (-qa).slerp(raw, k).normalized()


## The leg's forward in the game now (horizontal; ZERO if the shin's hinge is too steep to tell).
func _leg_fwd_now(id: int) -> Vector3:
	var g := _g(id)
	var a := g * Vector3.UP.cross(lfwd[id] as Vector3)
	var f := a.cross(Vector3.UP)
	return f.normalized() if f.length() > 0.3 else Vector3.ZERO


const MARK13 := 0.777                   # fw 13's constant on the Steering axis


func _acc_axis(id: int) -> int:
	return -1 if _layout(id) == 2 else ACC_AXIS       # fw 13 sends no acceleration


## The shin's vertical acceleration (g) from axis 4 (fw 13: 3, raw), or NAN while not (yet) known to be there. The stick/trigger form
## is told from the value at rest (0 g ⇒ 0.0 as a stick, 0.5 as a trigger); "live" once it moved with the shin.
func _acc_g(id: int, v: Dictionary) -> float:
	var x := _axis(id, _acc_axis(id))
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
	if _acc_axis(id) < 0:
		return                                        # no acceleration on this sensor's gamepad (fw 13)
	var v: Dictionary = vert.get(id, {"mode": 0, "live": false, "m": 0.0, "mn": 0, "bias": 0.0, "sig": 0.3, "am": 0.0,
		"v": 0.0, "h": 0.0, "hold": 0.0, "st": 0.0})
	vert[id] = v
	if dt <= 0.0:
		return
	if int(v.mode) == 0:                        # which form: the mean at the first still stand
		if stand:
			v.m = float(v.m) + _axis(id, _acc_axis(id))
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


## Measure the legs (the game guides it), every time the sensors are put on (owner 2026-11-11: "calibrate each time,
## touches and a control pose — precision every time"). Four bony points per leg, each easy to find by touch and a
## known distance from its joint: the bump at the side of the hip (greater trochanter), the outer side of the knee
## at its crease (lateral epicondyle), the outer ankle bone (lateral malleolus), the shoe's tip; then the control pose:
## standing tall and still, feet parallel. The person may bend to reach: each touch keeps the shin's turn at that
## moment (from its sensor), so the knee and ankle touched at different moments still give the true shin — its length
## AND its real direction against the sensor (the strap never sits exactly along the bone). Gives: shin, thigh, ankle
## height, hip width, the shin's direction at the zero (per leg), each foot's direction, where the feet stand.
## start → touch × 8 (measure 0..7) → 8 = waiting for the control pose → 9 = done (cal saved).
func start_measure() -> void:
	measure = 0
	_touch.clear()
	_last_reject = ""


## What to touch now (MEASURE[measure]) and where it should be (world, from the legs as solved now), or INF.
func measure_target() -> Vector3:
	if measure < 0 or measure >= MEASURE.size() or _seen.is_empty():
		return Vector3.INF
	var key: String = MEASURE[measure]
	var sd := key.right(1)
	var out: Vector3 = _seen.get("out_" + sd, Vector3.ZERO)        # the outer side of this leg
	var k: float = _seen.get("k", 1.0)
	match key.left(1):
		"h":
			return (_seen["hip_" + sd] as Vector3) + out * LM_HIP.x * k + Vector3.UP * LM_HIP.y * k
		"k":
			return (_seen["knee_" + sd] as Vector3) + out * LM_KNEE.x * k + Vector3.UP * LM_KNEE.y * k
		"a":
			return (_seen["ankle_" + sd] as Vector3) + out * LM_ANKLE.x * k + Vector3.UP * LM_ANKLE.y * k
		_:
			var d: Vector3 = _seen.get("dir_" + sd, Vector3.ZERO)
			return (_seen["ankle_" + sd] as Vector3) + Vector3(d.x, 0.0, d.z).normalized() * TOE * k + Vector3.UP * 0.02
	return Vector3.INF


func measure_done() -> bool:
	return measure > MEASURE.size()


# The bony points' offsets from their joints (m, for a 1.75 m body: outward, up) — the joint is that far inside.
const LM_HIP := Vector2(0.075, -0.01)
const LM_KNEE := Vector2(0.045, 0.0)
const LM_ANKLE := Vector2(0.027, -0.005)
const TOE := 0.215                      # ankle → shoe tip, ahead (1.75 m body)
const TOUCH_R := 0.25                   # m: a touch further than this from where it should be is not taken
const LEN_TOL := 0.15                   # a measured length is taken within ±15 % of what the height gives
var _last_reject := ""
var _stand_now := false                # poll: standing tall and still this frame (the control pose)
var _seen := {}                         # the legs as last solved (world) + the body's frame: for measure_target


func load_cal(stand_h: float) -> bool:
	if not FileAccess.file_exists(CAL_PATH):
		return false
	var d = JSON.parse_string(FileAccess.get_file_as_string(CAL_PATH))
	if typeof(d) != TYPE_DICTIONARY or absf(float(d.get("stand_h", 0.0)) - stand_h) > 0.06:
		return false                                  # someone else (another height): measure again
	if d.has("ls") and not _shin_ok(float(d.ls), float(d.stand_h)):
		DirAccess.remove_absolute(ProjectSettings.globalize_path(CAL_PATH))
		return false                                  # an impossible shin saved by an earlier version: measure again
	d.erase("u0")                                     # the shin against its strap: only from this session's touches
	cal = d
	return true


## A measured shin is taken only within ±12 % of what the height gives (0.246 H; people vary ~±6 %). The owner's take
## MFCMVC9YXW: the four touches made the shin 0.41 → 0.58 m (the clamp's top) — the kneecap is above the joint and the
## controller's tip is a guess; saved, every later session stood on 1.16 m legs (knees 0.65 m, the hips 1.22 m).
const SHIN_TOL := 0.12


static func _shin_ok(ls: float, stand_h: float) -> bool:
	var m := 0.246 * stand_h / 0.936
	return absf(ls - m) <= SHIN_TOL * m


## One touch with the controller's tip at a bony point (world). Returns "ok", "far" (not near the glowing point: not
## taken) or "" (no measuring now). head: the eyes now; floor_y: the floor; stand_h: eye height standing.
func touch(point: Vector3, head: Vector3, floor_y: float, stand_h: float) -> String:
	if measure < 0 or measure >= MEASURE.size():
		return ""
	var want := measure_target()
	if want != Vector3.INF and point.distance_to(want) > TOUCH_R:
		_last_reject = MEASURE[measure]
		return "far"
	var key: String = MEASURE[measure]
	var sd := key.right(1)
	var id := _id_of(sd)
	_touch[key] = {"p": point, "g": _g(id) if id >= 0 and basis.has(id) else Basis.IDENTITY, "lf": lfwd.get(id, fwd0)}
	measure += 1
	return "ok"


## The control pose (standing tall and still, after the touches): everything from the touches, saved. limbs() calls it.
func _finish_measure(head: Vector3, floor_y: float, stand_h: float, bf: Vector3) -> void:
	var H := stand_h / 0.936
	var k := H / 1.75
	var left := Vector3.UP.cross(bf).normalized()
	var c := {"stand_h": stand_h, "foot": {}, "turn": {}, "u0": {}, "toe": {}}
	var lss := []
	var lts := []
	var ahs := []
	var hips := {}
	var bad := []
	for sd in ["l", "r"]:
		var id := _id_of(sd)
		var inw := left * (-1.0 if sd == "l" else 1.0)                    # towards the middle
		var th: Dictionary = _touch["h" + sd]
		var tk: Dictionary = _touch["k" + sd]
		var ta: Dictionary = _touch["a" + sd]
		var tt: Dictionary = _touch["t" + sd]
		var ankle: Vector3 = (ta.p as Vector3) + inw * LM_ANKLE.x * k - Vector3.UP * LM_ANKLE.y * k
		# the foot's direction first: the leg's frame turns with it, and the shin's turns at the touches with that
		var fd: Vector3 = (tt.p as Vector3) - ankle
		fd.y = 0.0
		c.turn[sd] = bf.signed_angle_to(fd.normalized(), Vector3.UP) if fd.length() > 0.08 else 0.0
		c.toe[sd] = clampf(fd.length(), 0.12, 0.3) if fd.length() > 0.08 else TOE * k
		var lf_n := bf.rotated(Vector3.UP, float(c.turn[sd]))
		var gk := _reframe(tk, lf_n)
		var gh := _reframe(th, lf_n)
		var knee: Vector3 = (tk.p as Vector3) + inw * LM_KNEE.x * k - Vector3.UP * LM_KNEE.y * k
		var hip: Vector3 = (th.p as Vector3) + inw * LM_HIP.x * k - Vector3.UP * LM_HIP.y * k
		# the shin: ankle (the foot stays planted) → the knee as it was at its touch; its direction then, turned back
		# by the sensor's own turn since the zero = the shin's direction at the zero (the strap's error taken out)
		var d := knee - ankle
		var ls := d.length()
		var u0 := gk.inverse() * (d / maxf(ls, 0.01))
		if not _len_ok(ls, 0.246 * H) or u0.angle_to(Vector3.UP) > deg_to_rad(20.0):
			bad.append("shin " + sd)
			ls = 0.246 * H
			u0 = Vector3.UP
		lss.append(ls)
		# the thigh: the hip as touched ↔ the knee where the shin put it at the hip's touch
		var knee_h := ankle + gh * u0 * ls
		var lt := hip.distance_to(knee_h)
		if not _len_ok(lt, 0.245 * H):
			bad.append("thigh " + sd)
			lt = 0.245 * H
		lts.append(lt)
		hips[sd] = hip
		var ah := ankle.y - floor_y
		ahs.append(ah if ah > 0.5 * 0.039 * H and ah < 1.7 * 0.039 * H else 0.039 * H)
		var a := ankle - head                                              # where this foot stands, from the eyes
		c.foot[sd] = [a.dot(bf), a.dot(left)]
		var ll := Vector3.UP.cross(lf_n).normalized()
		c.u0[sd] = [u0.dot(lf_n), u0.dot(ll), u0.y]                       # in the leg's own frame (forward, left, up)
	c.ls = (float(lss[0]) + float(lss[1])) * 0.5
	c.lt = (float(lts[0]) + float(lts[1])) * 0.5
	c.ah = (float(ahs[0]) + float(ahs[1])) * 0.5
	var hd: Vector3 = (hips.r as Vector3) - (hips.l as Vector3)
	var hw := Vector2(hd.x, hd.z).length() * 0.5
	c.hw = hw if _len_ok(hw, 0.052 * H, 0.35) else 0.052 * H
	c.bad = bad
	cal = c
	var f := FileAccess.open(CAL_PATH, FileAccess.WRITE)
	if f:
		f.store_string(JSON.stringify(cal))
	for id in side:                                   # where each foot points, measured
		var sd: String = side[id]
		if q0.has(id) and mount.has(id) and not role.has(id):
			lfwd[id] = bf.rotated(Vector3.UP, float(c.turn[sd]))
			basis[id] = _basis(id, lfwd[id])          # (u0 is in the leg's own frame: it turns with it)
	measure = MEASURE.size() + 1
	_rezero = true


## A touch's shin turn as the leg's frame will be once its forward is lf_n (the frame turns with the forward).
static func _reframe(t: Dictionary, lf_n: Vector3) -> Basis:
	var R := Basis(Vector3.UP, (t.lf as Vector3).signed_angle_to(lf_n, Vector3.UP))
	return R * (t.g as Basis) * R.inverse()


static func _len_ok(v: float, model: float, tol := LEN_TOL) -> bool:
	return absf(v - model) <= tol * model


## The shin's direction at the zero pose (world, with this leg's forward): measured, else straight up.
func _u0(id: int, sd: String) -> Vector3:
	if not cal.has("u0") or not (cal.u0 as Dictionary).has(sd):
		return Vector3.UP
	var u: Array = cal.u0[sd]
	var lf: Vector3 = lfwd.get(id, fwd0)
	return (lf * float(u[0]) + Vector3.UP.cross(lf).normalized() * float(u[1]) + Vector3.UP * float(u[2])).normalized()


## The controller's tip in its own frame (m): found by pivoting (hold the trigger on a point and rock the controller),
## kept on the headset. Before that a guess: a few cm ahead of the controller's origin.
const TIP_PATH := "user://legs_tip.json"
var tip := Vector3(0, 0, -0.06)
var tip_known := false


func _init() -> void:
	load_tip()


func load_tip() -> void:
	if FileAccess.file_exists(TIP_PATH):
		var d = JSON.parse_string(FileAccess.get_file_as_string(TIP_PATH))
		if typeof(d) == TYPE_ARRAY and (d as Array).size() == 3:
			tip = Vector3(float(d[0]), float(d[1]), float(d[2]))
			tip_known = true


## A touch from the controller's poses while the trigger was held (world transforms). Rocked enough (> 15°): the tip
## and the point both solved (pivot calibration), the tip kept; else the point from the known tip.
func touch_pose(xfs: Array, head: Vector3, floor_y: float, stand_h: float) -> String:
	if xfs.is_empty():
		return ""
	var pv := pivot(xfs)
	var p := Vector3.ZERO
	if not pv.is_empty() and float(pv.spread) > 15.0 and float(pv.rms) < 0.01 \
			and (pv.tip as Vector3).length() > 0.02 and (pv.tip as Vector3).length() < 0.2:
		tip = pv.tip if not tip_known else tip.lerp(pv.tip, 0.5)
		tip_known = true
		var f := FileAccess.open(TIP_PATH, FileAccess.WRITE)
		if f:
			f.store_string(JSON.stringify([tip.x, tip.y, tip.z]))
		p = pv.point
	else:
		for x in xfs:
			p += (x as Transform3D) * tip
		p /= xfs.size()
	return touch(p, head, floor_y, stand_h)


## Pivot calibration: poses R_i, o_i of a rigid tool whose tip t (tool frame) rests on one point p: R_i t + o_i = p.
## Least squares over (t, p). Returns {"tip", "point", "spread" (°, the widest turn between poses), "rms" (m)} or {}.
static func pivot(xfs: Array) -> Dictionary:
	if xfs.size() < 10:
		return {}
	var M := []
	for i in 6:
		M.append([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])
	var spread := 0.0
	var b0: Basis = (xfs[0] as Transform3D).basis.orthonormalized()
	for x in xfs:
		var t: Transform3D = x
		var R := t.basis.orthonormalized()
		spread = maxf(spread, rad_to_deg(b0.get_rotation_quaternion().angle_to(R.get_rotation_quaternion())))
		for r in 3:                                   # row r of [R | −I] · (t, p) = −o
			var row := [R[0][r], R[1][r], R[2][r], 0.0, 0.0, 0.0]
			row[3 + r] = -1.0
			var rhs: float = -t.origin[r]
			for i in 6:
				for j in 6:
					M[i][j] = float(M[i][j]) + float(row[i]) * float(row[j])
				M[i][6] = float(M[i][6]) + float(row[i]) * rhs
	var sol := _solve(M)
	if sol.is_empty():
		return {}
	var tp := Vector3(sol[0], sol[1], sol[2])
	var pp := Vector3(sol[3], sol[4], sol[5])
	var e := 0.0
	for x in xfs:
		e += ((x as Transform3D) * tp).distance_squared_to(pp)
	return {"tip": tp, "point": pp, "spread": spread, "rms": sqrt(e / xfs.size())}


## Gauss–Jordan on an n × (n+1) augmented matrix (partial pivoting); [] when singular.
static func _solve(M: Array) -> Array:
	var n := M.size()
	for c in n:
		var best := c
		for r in range(c + 1, n):
			if absf(float(M[r][c])) > absf(float(M[best][c])):
				best = r
		if absf(float(M[best][c])) < 1e-9:
			return []
		var tmp = M[c]
		M[c] = M[best]
		M[best] = tmp
		for r in n:
			if r == c:
				continue
			var f: float = float(M[r][c]) / float(M[c][c])
			for j in range(c, n + 1):
				M[r][j] = float(M[r][j]) - f * float(M[c][j])
	var out := []
	for i in n:
		out.append(float(M[i][n]) / float(M[i][i]))
	return out


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
		_head_vy = lerpf(_head_vy, (head.y - _head_prev.y) / delta, clampf(delta / 0.08, 0.0, 1.0))
	_head_prev = head
	if stand_seen > 0.0:
		stand_h = stand_seen                          # as the headset shows it (poll), not the game's guess
	var H := stand_h / 0.936                          # body height from eye height
	var lt := float(cal.get("lt", 0.245 * H))         # thigh (measured, else from the height)
	var ls := float(cal.get("ls", 0.246 * H))         # shin, knee → ankle
	var ah := float(cal.get("ah", 0.039 * H))         # ankle above the floor
	var hw := float(cal.get("hw", 0.052 * H))         # hip joint from the middle
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
		U[sd] = (g * _u0(id, sd)).normalized()       # the shin as measured at the zero (touches), turned since
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
	if measure == MEASURE.size() and _stand_now:      # the touches done, now standing tall and still: the control pose
		_finish_measure(head, floor_y, stand_h, bf)
		return limbs(head, fwd, stand_h, floor_y, 0.0, hands)
	var stand_off := -Vector3.UP * hip_drop - bf * 0.05
	var sgn := {"l": 1.0, "r": -1.0}
	var rezeroed := false
	if _rezero or pc.distance_to(head) > trunk + 0.5:  # standing tall and still (or lost): feet under the hips
		_rezero = false
		rezeroed = true                               # the feet re-placed: blended like a switch (no teleport)
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
		P = prior.step(_t, delta, U, A, acc, head, stand_h - ah, floor_y + ah, hands if prior_hands else {})
		var kp := clampf(delta / PRIOR_TAU, 0.0, 1.0)
		for sd in U:
			var th: Vector3 = P.thigh[sd]
			_pth[sd] = th if not _pth.has(sd) else (_pth[sd] as Vector3).slerp(th, kp).normalized()
			P.thigh[sd] = _pth[sd]
		_ppc = P.pc if _ppc == Vector3.INF else _ppc.lerp(P.pc, kp)
		P.pc = _ppc

	# 1 · which feet are on the floor: the prior's (or the geometry's) answer steadied, then physics
	var ground := {}
	for sd in U:
		var u: Vector3 = U[sd]
		var g := 0.0
		if not P.is_empty():
			g = float(P.p[sd])
		elif _has_h(hid[sd]):
			g = 1.0 if float(vert[hid[sd]].h) < LIFT else 0.0
		else:                                         # no height: in the air if even a straight-down thigh can't reach
			var hip: Vector3 = pc + left * hw * float(sgn[sd])
			var up_k := clampf(-u.signed_angle_to(Vector3.UP, A[sd]), 0.0, deg_to_rad(150.0))
			g = 1.0 if hip.y - (u.rotated(A[sd], -up_k) * lt).y - u.y * ls - (floor_y + ah) < LIFT else 0.0
		_pg[sd] = lerpf(float(_pg[sd]), g, clampf(delta / GND_TAU, 0.0, 1.0)) if not P.is_empty() else g
		_gnd[sd] = float(_pg[sd]) > 0.35 if _gnd[sd] else float(_pg[sd]) > 0.65
		ground[sd] = _gnd[sd]
	if _head_vy > JUMP_VY and head.y - floor_y > stand_h - 0.08:
		_jump = JUMP_HOLD
	else:
		_jump = maxf(0.0, _jump - delta)
	if _jump <= 0.0 and U.size() == 2:
		var both_up := true
		for sd in U:
			both_up = both_up and (U[sd] as Vector3).angle_to(Vector3.UP) < deg_to_rad(UPRIGHT_DEG) \
				and float(pads[hid[sd]].get("w", 0.0)) < UPRIGHT_DPS \
				and not (_has_h(hid[sd]) and float(vert[hid[sd]].h) > 2.0 * LIFT)   # a knee raise: the shin hangs upright
		if both_up:
			for sd in U:
				ground[sd] = true
		elif not ground.l and not ground.r:           # no one floats: the likelier foot is down
			var sd: String = "l" if float(_pg.l) >= float(_pg.r) else "r"
			ground[sd] = true
	for sd in U:
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
	# teaching (the thighs measured): the prior learns this person's thighs, and the hips where the planted legs put
	# them (anchor → measured shin → measured thigh)
	if not P.is_empty() and teaching():
		var hips := Vector3.ZERO
		var nh := 0
		for sd in planted:
			var tdir := thigh_dir(sd)
			if tdir != Vector3.ZERO:
				hips += (anc[sd] as Vector3) + (U[sd] as Vector3) * ls - tdir * lt - left * hw * float(sgn[sd])
				nh += 1
		var pcm := hips / nh if nh > 0 else Vector3.INF
		for sd in U:
			var t := thigh_dir(sd)
			if t != Vector3.ZERO:
				prior.learn(sd, t, pcm)
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
		var foot := ankle + foot_ahead * 0.06
		var switched: bool = _gprev.has(sd) and _gprev[sd] != ground[sd]
		if (switched or rezeroed) and _prev_out.has("knee_" + sd):   # planted ⇄ lifted, re-placed: cross-fade
			if switched or (_prev_out["knee_" + sd] as Vector3).distance_to(knee) > 0.01 \
					or (_prev_out["foot_" + sd] as Vector3).distance_to(foot) > 0.01:
				_blend[sd] = [_prev_out["knee_" + sd], _prev_out["foot_" + sd], 0.0]   # from where it was
		_gprev[sd] = ground[sd]
		if _blend.has(sd):
			var bl: Array = _blend[sd]
			bl[2] = float(bl[2]) + delta / BLEND_S
			var w := smoothstep(0.0, 1.0, float(bl[2]))             # speed ramps up from zero: no jump, no jerk
			knee = (bl[0] as Vector3).lerp(knee, w)
			foot = (bl[1] as Vector3).lerp(foot, w)
			foot.y = maxf(foot.y, floor_y)
			if float(bl[2]) >= 1.0:
				_blend.erase(sd)
		_prev_out["knee_" + sd] = knee
		_prev_out["foot_" + sd] = foot
		out.pos["hip_" + sd] = hip
		out.pos["knee_" + sd] = knee
		out.pos["foot_" + sd] = foot
		out.pos["ankle_" + sd] = foot - foot_ahead * 0.06
		_seen["hip_" + sd] = hip
		_seen["knee_" + sd] = knee
		_seen["ankle_" + sd] = foot - foot_ahead * 0.06
		_seen["dir_" + sd] = foot_ahead
		_seen["out_" + sd] = left * float(sgn[sd])
		out.dir[sd] = foot_ahead if ground[sd] else fdir
		out.ground[sd] = ground[sd]
	_seen.k = H / 1.75
	out["size"] = {"ls": ls, "lt": lt, "ah": ah, "hw": hw, "H": H, "toe": cal.get("toe", {})}
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
