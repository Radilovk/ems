## The feet on the floor and the measured shin (owner's takes 2A49MQ2AH8, MFCMVC9YXW, 2026-11-11: the legs flickered,
## both feet hung in the air while standing, the four touches saved a 0.58 m shin). With the learned prior ON and the
## controllers held at the chest as in VR:
##   · standing still, both shins upright → both feet on the floor, every frame
##   · a kick → that foot up, the other down; no knee or foot thrown aside for a frame (a jump in its speed)
##   · a jump (the head going up fast) → the feet may leave the floor
##   · four touches giving a shin 40 % too long → not taken (the lengths from the height), the feet's turn kept;
##     such a shin saved by an older version → thrown away on load
##   godot --headless --path vr-workout --script res://test/floor_test.gd
extends SceneTree

const STAND_H := 1.57
const FLOOR := 0.0
const FWD := Vector3(0, 0, -1)
const LEFT := Vector3(-1, 0, 0)
var pads := PadLegs.new()
var fails := 0
var sensors := [
	{"id": 0, "leg": "l", "yaw": 0.7, "mount": 0.3},
	{"id": 1, "leg": "r", "yaw": -1.9, "mount": 2.6},
]
var last := {}
var max_jump := 0.0
var both_air := 0
var frames := 0


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


## one frame: the shins turned by gl / gr since standing, the head at head_h; the hands at the chest (as in VR)
func _frame(head_h: float, gl: Basis, gr: Basis) -> Dictionary:
	_feed(sensors[0], gl)
	_feed(sensors[1], gr)
	pads.poll(1.0 / 72.0, head_h, STAND_H, FWD)
	var head := Vector3(0, head_h, 0)
	var hands := {"l": head + Vector3(-0.17, -0.25, -0.28), "r": head + Vector3(0.17, -0.3, -0.28)}
	var L := pads.limbs(head, FWD, STAND_H, FLOOR, 1.0 / 72.0, hands)
	if not L.is_empty():
		for k in ["knee_l", "knee_r", "foot_l", "foot_r"]:
			var p: Vector3 = L.pos[k]
			if last.has(k) and last.has(k + "1"):         # a jump = a sudden change of speed (p − 2 p₋₁ + p₋₂), not a fast move
				var dj := (p - 2.0 * (last[k] as Vector3) + (last[k + "1"] as Vector3)).length()
				if dj > 0.05 and OS.get_environment("FT_DEBUG") != "":
					print("  jump %s %.2f g %s%s %s → %s" % [k, dj, L.ground.l, L.ground.r, last[k], p])
				max_jump = maxf(max_jump, dj)
			if last.has(k):
				last[k + "1"] = last[k]
			last[k] = p
	return L


func _hold(head_h: float, gl: Basis, gr: Basis, secs: float) -> Dictionary:
	var L := {}
	for i in int(secs * 72.0):
		L = _frame(head_h, gl, gr)
		if not L.is_empty():
			frames += 1
			if not L.ground.l and not L.ground.r:
				both_air += 1
	return L


func _check(name: String, ok: bool, info: String) -> void:
	print("floor_test: %s %s — %s" % ["ok  " if ok else "FAIL", name, info])
	if not ok:
		fails += 1


func _initialize() -> void:
	DirAccess.remove_absolute(ProjectSettings.globalize_path(PadLegs.CAL_PATH))
	var I := Basis.IDENTITY
	_hold(STAND_H, I, I, 1.6)
	var t25 := Basis(LEFT, deg_to_rad(25.0))
	_hold(STAND_H - 0.15, t25, t25, 0.5)
	_check("calibrated", pads.status == "ready" and pads.side.get(0) == "l", "%s %s" % [pads.status, pads.side])
	_hold(STAND_H, I, I, 1.5)
	# standing still, upright, the hands at the chest: every frame both feet down
	both_air = 0
	frames = 0
	var down := 0
	for i in 144:
		var L := _hold(STAND_H, I, I, 1.0 / 72.0)
		if L.ground.l and L.ground.r:
			down += 1
	_check("standing: both feet down", down == 144, "%d of 144 frames" % down)
	# a front kick with the right leg (the shin swings up over 0.5 s, held, back down), the left stands
	both_air = 0
	frames = 0
	max_jump = 0.0
	var top := {}
	for i in 36:
		var k := Basis(LEFT, deg_to_rad(-100.0 * (i + 1) / 36.0))
		top = _hold(STAND_H, I, k, 1.0 / 72.0)
	top = _hold(STAND_H, I, Basis(LEFT, deg_to_rad(-100.0)), 0.3)
	for i in 36:
		_hold(STAND_H, I, Basis(LEFT, deg_to_rad(-100.0 * (35 - i) / 36.0)), 1.0 / 72.0)
	_hold(STAND_H, I, I, 0.5)
	_check("kick: the right foot up, the left down", (top.pos.foot_r as Vector3).y > 0.5 and (top.pos.foot_l as Vector3).y < 0.1,
		"foot_r %s foot_l %s" % [top.pos.foot_r, top.pos.foot_l])
	_check("kick: never both feet in the air", both_air == 0, "%d of %d frames" % [both_air, frames])
	# a flicker = a knee or foot thrown somewhere for a frame: its speed changing by > 5 cm a frame (the old switch: 8–12)
	_check("kick: no jumps", max_jump < 0.05, "the largest change of a knee's / foot's step between frames %.1f cm" % (max_jump * 100.0))
	# a jump: the head goes up 12 cm in 0.1 s → the feet may leave the floor
	for i in 7:
		_frame(STAND_H + 0.12 * (i + 1) / 7.0, I, I)
	_check("jump: the feet may leave the floor", pads._jump > 0.0, "jump hold %.2f s" % pads._jump)
	_hold(STAND_H, I, I, 1.5)
	# four touches with a shin 40 % too long (the tip sits on the kneecap's top, the grip point off): not taken
	var H := STAND_H / 0.936
	var ah := 0.039 * H
	var ls_bad := 0.246 * H * 1.4
	var ank := {"l": Vector3(-0.12, ah, 0.03), "r": Vector3(0.12, ah, 0.03)}
	var toe_dir := {"l": FWD.rotated(Vector3.UP, deg_to_rad(12.0)), "r": FWD.rotated(Vector3.UP, deg_to_rad(-8.0))}
	var head := Vector3(0, STAND_H, 0)
	pads.start_measure()
	for sd in ["l", "r"]:
		pads.touch((ank[sd] as Vector3) + Vector3.UP * ls_bad, head, FLOOR, STAND_H)
		pads.touch((ank[sd] as Vector3) + (toe_dir[sd] as Vector3) * 0.16, head, FLOOR, STAND_H)
	_check("a 40 % longer shin is not taken", pads.measure == 4 and not pads.cal.has("ls"),
		"measure %d cal %s" % [pads.measure, pads.cal])
	var L := _hold(STAND_H, I, I, 1.5)
	if OS.get_environment("FT_DEBUG") != "":
		print("  after measure: ground %s knee_l %s foot_l %s dir %s anc %s" % [L.ground, L.pos.knee_l, L.pos.foot_l, L.dir.l, pads.anc])
	var shin := (L.pos.knee_l as Vector3).distance_to((L.pos.foot_l as Vector3) - (L.dir.l as Vector3) * 0.06)
	_check("… the shin from the height", absf(shin - 0.246 * H) < 0.01, "shin %.3f m (model %.3f)" % [shin, 0.246 * H])
	for sd in ["l", "r"]:
		var turn := rad_to_deg((L.dir[sd] as Vector3).angle_to(toe_dir[sd]))
		_check("… the feet's turn kept %s" % sd, turn < 4.0, "foot points %.1f° off" % turn)
	# the same saved by an older version: thrown away on load
	var f := FileAccess.open(PadLegs.CAL_PATH, FileAccess.WRITE)
	f.store_string(JSON.stringify({"stand_h": STAND_H, "ls": 0.578, "lt": 0.576}))
	f.close()
	var p2 := PadLegs.new()
	_check("a saved impossible shin is thrown away", not p2.load_cal(STAND_H) and not FileAccess.file_exists(PadLegs.CAL_PATH), "")
	f = FileAccess.open(PadLegs.CAL_PATH, FileAccess.WRITE)
	f.store_string(JSON.stringify({"stand_h": STAND_H, "ls": 0.246 * H * 1.05, "lt": 0.245 * H * 1.05}))
	f.close()
	_check("a saved plausible shin is kept", p2.load_cal(STAND_H), "")
	DirAccess.remove_absolute(ProjectSettings.globalize_path(PadLegs.CAL_PATH))
	print("floor_test: %s" % ("PASS" if fails == 0 else "FAIL (%d)" % fails))
	quit(1 if fails else 0)
