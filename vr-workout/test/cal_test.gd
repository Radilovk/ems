## The legs calibrated every session (owner 2026-11-11: "touches with the controllers and a control pose — precision
## every time"). A person unlike the model — shin 8 % longer, thigh 6 % shorter, wider hips, ankles higher, each shin
## standing 5° forward of where its strap says, the feet turned out — touches the four bony points of each leg with a
## controller whose tip is not where the game first guesses (the first touch rocked: the tip found by pivoting),
## bending while touching (the shins tilt 20–30°), then stands still (the control pose). Checks: every length, the
## shins' real direction, the feet's turn, the tip — and then a squat drawn where the true knees are.
##   godot --headless --path vr-workout --script res://test/cal_test.gd
extends SceneTree

const STAND_H := 1.62
const FLOOR := 0.0
const FWD := Vector3(0, 0, -1)
const LEFT := Vector3(-1, 0, 0)
var pads := PadLegs.new()
var fails := 0
var sensors := [
	{"id": 0, "leg": "l", "yaw": 0.9, "mount": 0.5},
	{"id": 1, "leg": "r", "yaw": -2.0, "mount": 2.7},
]
var H := STAND_H / 0.936
var K := H / 1.75
var LS := 0.246 * H * 1.08
var LT := 0.245 * H * 0.94
var AH := 0.039 * H * 1.2
var HW := 0.052 * H * 1.12
var TILT := deg_to_rad(5.0)                      # each shin's real lean forward at the zero (the strap says upright)
var TURN := {"l": deg_to_rad(9.0), "r": deg_to_rad(-6.0)}
var TIP := Vector3(0.012, -0.018, -0.082)        # the controller's real tip (its own frame)
var ank := {}
var u0 := {}


func _to_sensor(yaw: float) -> Basis:
	var c0 := Basis(Vector3(1, 0, 0), Vector3(0, 0, 1), Vector3(0, -1, 0)).transposed()
	return Basis(Vector3(0, 0, 1), yaw) * c0


func _board(s: Dictionary) -> Basis:
	var out := LEFT if s.leg == "l" else -LEFT
	var x := Vector3.UP.rotated(out, s.mount)
	return Basis(x, out.cross(x), out)


## the strap turned by g since the zero (game world) — the bone turns the same
func _feed(g) -> void:
	for s in sensors:
		var gs: Basis = g[s.leg] if g is Dictionary else g
		var q := Quaternion(_to_sensor(s.yaw) * gs * _board(s))
		if q.w < 0.0:
			q = -q
		pads.sim[s.id] = [q.x, q.y, q.z, q.w]


func _frames(head_h: float, g, secs: float) -> Dictionary:
	var L := {}
	for i in maxi(1, int(secs * 72.0)):
		_feed(g)
		pads.poll(1.0 / 72.0, head_h, STAND_H, FWD)
		L = pads.limbs(Vector3(0, head_h, 0), FWD, STAND_H, FLOOR, 1.0 / 72.0)
	return L


## a bend of both legs, each about its own hinge (the knee goes over the toes)
func _bend(deg: float) -> Dictionary:
	var g := {}
	for sd in ["l", "r"]:
		g[sd] = Basis(Vector3.UP.cross(FWD.rotated(Vector3.UP, float(TURN[sd]))), deg_to_rad(deg))
	return g


func _check(name: String, ok: bool, info: String) -> void:
	print("cal_test: %s %s — %s" % ["ok  " if ok else "FAIL", name, info])
	if not ok:
		fails += 1


## the controller held with its tip on p: rocked (n poses within ±25°) or still
func _poses(p: Vector3, rock: bool) -> Array:
	var out := []
	var rng := RandomNumberGenerator.new()
	rng.seed = int(p.x * 1000.0) + 7
	var base := Basis(Vector3(1, 0, 0), deg_to_rad(-60.0))          # pointing down-forward, as one reaches a leg
	for i in (24 if rock else 3):
		var R := base
		if rock:
			R = Basis(Vector3(rng.randf_range(-1, 1), rng.randf_range(-1, 1), rng.randf_range(-1, 1)).normalized(),
				deg_to_rad(rng.randf_range(10.0, 25.0))) * base
		out.append(Transform3D(R, p - R * TIP))
	return out


func _initialize() -> void:
	DirAccess.remove_absolute(ProjectSettings.globalize_path(PadLegs.CAL_PATH))
	DirAccess.remove_absolute(ProjectSettings.globalize_path(PadLegs.TIP_PATH))
	pads.use_prior = false
	var I := Basis.IDENTITY
	_frames(STAND_H, I, 1.6)
	_frames(STAND_H - 0.15, _bend(25.0), 0.5)
	_frames(STAND_H, I, 1.5)
	_check("calibrated", pads.status == "ready", pads.status)
	# the true body (standing, the zero)
	var hips := {}
	for sd in ["l", "r"]:
		var sx := -1.0 if sd == "l" else 1.0
		ank[sd] = Vector3(sx * (HW + 0.01), AH, 0.03)
		u0[sd] = Vector3.UP.rotated(LEFT, TILT)
		var knee: Vector3 = (ank[sd] as Vector3) + (u0[sd] as Vector3) * LS
		hips[sd] = knee + Vector3.UP * LT + Vector3(sx * -0.01, 0, 0)
	pads.start_measure()
	_check("far touch refused", pads.touch(Vector3(0, 1.2, -0.6), Vector3(0, STAND_H, 0), FLOOR, STAND_H) == "far" and pads.measure == 0, "measure %d" % pads.measure)
	var first := true
	for sd in ["l", "r"]:
		var sx := -1.0 if sd == "l" else 1.0
		var out := Vector3(sx, 0, 0)
		var fdir := FWD.rotated(Vector3.UP, float(TURN[sd]))
		# the hip, standing
		_frames(STAND_H, I, 0.3)
		var r := pads.touch_pose(_poses((hips[sd] as Vector3) + out * PadLegs.LM_HIP.x * K + Vector3.UP * PadLegs.LM_HIP.y * K, first), Vector3(0, STAND_H, 0), FLOOR, STAND_H)
		_check("touch hip %s" % sd, r == "ok", r)
		first = false
		# the knee, bent 20° to reach it
		var g20 := _bend(20.0)
		_frames(STAND_H - 0.2, g20, 0.3)
		var kn: Vector3 = (ank[sd] as Vector3) + (g20[sd] as Basis) * (u0[sd] as Vector3) * LS
		r = pads.touch_pose(_poses(kn + out * PadLegs.LM_KNEE.x * K, false), Vector3(0, STAND_H - 0.2, 0), FLOOR, STAND_H)
		_check("touch knee %s" % sd, r == "ok", r)
		# the ankle and the toe, bent down (30°)
		_frames(STAND_H - 0.45, _bend(30.0), 0.3)
		r = pads.touch_pose(_poses((ank[sd] as Vector3) + out * PadLegs.LM_ANKLE.x * K + Vector3.UP * PadLegs.LM_ANKLE.y * K, false), Vector3(0, STAND_H - 0.45, 0), FLOOR, STAND_H)
		_check("touch ankle %s" % sd, r == "ok", r)
		r = pads.touch_pose(_poses((ank[sd] as Vector3) + fdir * 0.22 + Vector3.UP * 0.03, false), Vector3(0, STAND_H - 0.45, 0), FLOOR, STAND_H)
		_check("touch toe %s" % sd, r == "ok", r)
	_check("waiting for the control pose", pads.measure == PadLegs.MEASURE.size(), "measure %d" % pads.measure)
	_frames(STAND_H, I, 1.6)                          # the control pose: tall and still
	_check("done", pads.measure_done(), "measure %d" % pads.measure)
	var c := pads.cal
	_check("tip found", pads.tip.distance_to(TIP) < 0.004, "tip %s (true %s)" % [pads.tip, TIP])
	_check("shin", absf(float(c.get("ls", 0)) - LS) < 0.01, "%.3f m (true %.3f, model %.3f)" % [float(c.get("ls", 0)), LS, 0.246 * H])
	_check("thigh", absf(float(c.get("lt", 0)) - LT) < 0.015, "%.3f m (true %.3f, model %.3f)" % [float(c.get("lt", 0)), LT, 0.245 * H])
	_check("ankle height", absf(float(c.get("ah", 0)) - AH) < 0.006, "%.3f m (true %.3f)" % [float(c.get("ah", 0)), AH])
	_check("hip width", absf(float(c.get("hw", 0)) - HW) < 0.012, "%.3f m (true %.3f)" % [float(c.get("hw", 0)), HW])
	for sd in ["l", "r"]:
		var t := rad_to_deg(float(c.turn[sd]) - float(TURN[sd]))
		_check("foot turn %s" % sd, absf(t) < 2.0, "%.1f° off" % t)
		var id := 0 if sd == "l" else 1
		var e := rad_to_deg(pads._u0(id, sd).angle_to(u0[sd]))
		_check("shin at the zero %s" % sd, e < 1.5, "%.2f° off (the strap's error was 5°)" % e)
	# a squat, each knee over its toes (the hinge across the foot): the true knees vs the drawn
	var g35 := _bend(35.0)
	var L := _frames(STAND_H - 0.3, g35, 0.3)
	for sd in ["l", "r"]:
		var kt: Vector3 = (ank[sd] as Vector3) + (g35[sd] as Basis) * (u0[sd] as Vector3) * LS
		var kd: Vector3 = L.pos["knee_" + sd]
		var an: Vector3 = L.pos["ankle_" + sd]
		var d := kd - an
		var dt := kt - (ank[sd] as Vector3)
		_check("squat knee %s" % sd, d.distance_to(dt) < 0.02 and absf(an.y - AH) < 0.01,
			"shin off %.1f cm, ankle height %.3f (true %.3f)" % [d.distance_to(dt) * 100.0, an.y, AH])
	DirAccess.remove_absolute(ProjectSettings.globalize_path(PadLegs.CAL_PATH))
	DirAccess.remove_absolute(ProjectSettings.globalize_path(PadLegs.TIP_PATH))
	print("cal_test: %s" % ("PASS" if fails == 0 else "FAIL (%d)" % fails))
	quit(1 if fails else 0)
