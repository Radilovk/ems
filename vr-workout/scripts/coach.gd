## A human coach. Any humanoid rig works: the Quaternius / Unreal names (pelvis, thigh_l…), Mixamo (Hips, LeftUpLeg…),
## MakeHuman / MPFB game rig, Rigify-style (thigh.L…). Each bone is found by its role, the figure is turned to face +Z,
## scaled if it came in centimetres and stood on the floor, so a .glb dropped on the headset just works.
## He moves by motion capture (MoveLib: real people recorded doing the moves), retargeted onto this rig every frame:
##   bone = delta(recorded) · swing(this rig's rest bone → the recorded rest bone) · this rig's rest
## so T-, A- or I-pose rests do not matter; the spine spreads the pelvis → chest turn over however many bones it has, and
## the pelvis height scales with the leg length. A loop (guard, talk, watch, idle) is the base; a move plays once over
## it and hands back with a cross-fade.
class_name Coach
extends Node3D

const FADE := 0.22                  # s: cross-fade between two moves

var skel: Skeleton3D
var ok := false                     # false: no humanoid skeleton found (the model is shown as it is)
var base := "guard"                 # the loop he returns to
var cur := ""                       # the clip playing now
var cur_t := 0.0
var speed := 1.0

var _wrap: Node3D                   # turns / scales / lifts the model into place
var _role := {}                     # role ("pelvis", "thigh_l"…) -> bone index
var _spine: Array[int] = []         # pelvis (excl.) → chest, bottom up
var _rest := {}                     # bone index -> rest Transform3D in coach space
var _M := Transform3D.IDENTITY      # skeleton space -> coach space
var _order: Array[int] = []         # parents before children
var _ball := {}
var _pel_h := 1.0                   # rest pelvis height (m)
var _swing := {}                    # source -> role -> Quaternion (this rig's rest bone → the recorded one)
var _prev := {}                     # the pose faded out of
var _fade := 0.0                    # s left of the cross-fade
var _frozen := false


## src: a PackedScene or an instanced Node3D = any humanoid model (null = an empty coach, ok = false).
func _init(src = null) -> void:
	_wrap = Node3D.new()
	add_child(_wrap)
	var model: Node3D
	if src == null:
		return
	elif src is PackedScene:
		model = src.instantiate()
	else:
		model = src
	_wrap.add_child(model)
	var sk := model.find_children("*", "Skeleton3D", true, false)
	if sk.is_empty() or not _find_roles_in(sk[0]):
		_fit_static(model)                         # not a rig: shown at human size, it cannot move
		return
	_place()
	for ap in model.find_children("*", "AnimationPlayer", true, false):
		(ap as AnimationPlayer).stop()          # the model's own clips would fight the retargeted moves
	ok = MoveLib.load_all()
	if ok:
		play(base, 0.0)

func wear(piece: Node) -> int:
	var n := 0
	if skel == null or piece == null:
		return 0
	for mi in piece.find_children("*", "MeshInstance3D", true, false):
		if (mi as MeshInstance3D).skin == null:
			continue
		mi.get_parent().remove_child(mi)
		skel.add_child(mi)
		mi.owner = null
		(mi as MeshInstance3D).skeleton = NodePath("..")
		n += 1
	piece.queue_free()
	return n


# ---------------------------------------------------------------- rig discovery

const _LIMB := {
	"upperarm": "upperarm", "arm": "upperarm", "upper_arm": "upperarm", "uparm": "upperarm",
	"lowerarm": "lowerarm", "forearm": "lowerarm", "lower_arm": "lowerarm",
	"hand": "hand", "wrist": "hand",
	"clavicle": "clavicle", "shoulder": "clavicle", "collar": "clavicle",
	"thigh": "thigh", "upleg": "thigh", "upperleg": "thigh", "upper_leg": "thigh", "hip": "thigh",
	"calf": "calf", "leg": "calf", "shin": "calf", "lowerleg": "calf", "lower_leg": "calf", "knee": "calf",
	"foot": "foot", "ankle": "foot",
	"ball": "ball", "toebase": "ball", "toe": "ball", "toes": "ball",
}


## "mixamorig:LeftUpLeg" -> ["thigh", "l"], "thigh.L" -> ["thigh", "l"], "Hips" -> ["pelvis", ""].
static func _classify(raw: String) -> Array:
	var n := raw.to_lower()
	if ":" in n:
		n = n.substr(n.rfind(":") + 1)
	for pre in ["mixamorig", "def-", "def_", "bip01", "bip001", "b-", "jnt_", "bone_", "cc_base_", "j_bip_c_"]:
		if n.begins_with(pre):
			n = n.substr(pre.length())
			while n != "" and (n[0].is_valid_int() or n[0] in "_:"):    # mixamorig7_LeftUpLeg, mixamorig:Hips
				n = n.substr(1)
	n = n.replace(".", "_").replace("-", "_").replace(" ", "_").lstrip("_")
	var side := ""
	for pair in [["left", "l"], ["right", "r"]]:
		if n.begins_with(pair[0]):
			side = pair[1]
			n = n.substr(pair[0].length()).lstrip("_")
		elif n.ends_with("_" + pair[0]):
			side = pair[1]
			n = n.left(-pair[0].length() - 1)
	if side == "":
		if n.ends_with("_l") or n.ends_with("_r"):
			side = n.right(1)
			n = n.left(-2)
		elif n.begins_with("l_") or n.begins_with("r_"):
			side = n.left(1)
			n = n.substr(2)
	if side != "":
		return [_LIMB.get(n, ""), side]
	if n in ["hips", "pelvis", "hip"]:
		return ["pelvis", ""]
	if n in ["neck", "neck_01", "neck01", "neck1", "neck_1"]:
		return ["neck", ""]
	if n == "head":
		return ["head", ""]
	return ["", ""]


func _find_roles_in(s: Skeleton3D) -> bool:
	skel = s
	return _find_roles()


## A model without a humanoid skeleton: scale it to 1.75 m and stand it on the floor, so it is at least seen right.
func _fit_static(model: Node3D) -> void:
	var box := AABB()
	var first := true
	for mi in model.find_children("*", "MeshInstance3D", true, false):
		var t := (mi as Node3D).transform
		var n := mi.get_parent()
		while n != _wrap and n is Node3D:
			t = (n as Node3D).transform * t
			n = n.get_parent()
		var b: AABB = t * (mi as MeshInstance3D).get_aabb()
		box = b if first else box.merge(b)
		first = false
	if first or box.size.y <= 0.0:
		return
	var k: float = 1.75 / box.size.y
	_wrap.scale = Vector3.ONE * k
	_wrap.position = Vector3(-box.get_center().x * k, -box.position.y * k, -box.get_center().z * k)


func _find_roles() -> bool:
	for i in skel.get_bone_count():
		var c := _classify(skel.get_bone_name(i))
		if c[0] == "":
			continue
		var role: String = c[0] + ("_" + c[1] if c[1] != "" else "")
		if not _role.has(role):             # the first (closest to the root) wins: neck before neck_02
			_role[role] = i
	for need in ["thigh_l", "thigh_r", "calf_l", "calf_r", "foot_l", "foot_r", "upperarm_l", "upperarm_r",
			"lowerarm_l", "lowerarm_r"]:
		if not _role.has(need):
			push_warning("Coach: no %s bone — not a humanoid rig" % need)
			return false
	if not _role.has("pelvis"):
		_role["pelvis"] = skel.get_bone_parent(_role.thigh_l)
	var top: int = skel.get_bone_parent(_role.neck) if _role.has("neck") else skel.get_bone_parent(
		_role.get("clavicle_l", _role.upperarm_l))
	while top >= 0 and top != _role.pelvis:
		_spine.push_front(top)
		top = skel.get_bone_parent(top)
	var seen := {}
	for i in skel.get_bone_count():
		_visit(i, seen)
	return true


func _visit(i: int, seen: Dictionary) -> void:
	if seen.has(i):
		return
	var p := skel.get_bone_parent(i)
	if p >= 0:
		_visit(p, seen)
	seen[i] = true
	_order.append(i)


## The first child bone whose name holds `part` (the middle finger of a hand), or -1.
func _child_like(bone: int, part: String) -> int:
	for c in skel.get_bone_children(bone):
		if part in skel.get_bone_name(c).to_lower():
			return c
	return -1


func _skel_to_coach() -> Transform3D:
	var t := skel.transform
	var n := skel.get_parent()
	while n != self and n is Node3D:
		t = (n as Node3D).transform * t
		n = n.get_parent()
	return t


func _rest_pos(role: String) -> Vector3:
	return _M * skel.get_bone_global_rest(_role[role]).origin


## Turn the figure to face +Z (its left thigh on +X), bring centimetre rigs to metres, stand the feet on the floor.
func _place() -> void:
	_M = _skel_to_coach()
	# Stand it up: feet → head along +Y (FBX rigs often come Z-up or lying down).
	var top: Vector3 = _rest_pos("head") if _role.has("head") else (_rest_pos("upperarm_l") + _rest_pos("upperarm_r")) * 0.5
	var up := (top - (_rest_pos("foot_l") + _rest_pos("foot_r")) * 0.5).normalized()
	if up.dot(Vector3.UP) < 0.95:
		_wrap.transform = Transform3D(Basis(Quaternion(up, Vector3.UP)), Vector3.ZERO) * _wrap.transform
		_M = _skel_to_coach()
	if _rest_pos("thigh_l").x < _rest_pos("thigh_r").x:
		_wrap.rotate_y(PI)
		_M = _skel_to_coach()
	var head: Vector3 = _rest_pos("head") if _role.has("head") else _rest_pos("upperarm_l") + Vector3(0, 0.2, 0)
	var tall := head.y - _rest_pos("foot_l").y
	if tall < 1.0 or tall > 2.3:                      # cm, mm or a toy scale: make him ~1.80 m
		_wrap.scale *= 1.55 / max(tall, 0.0001)
		_M = _skel_to_coach()
	for s in ["l", "r"]:
		var ankle := _rest_pos("foot_" + s)
		if _role.has("ball_" + s):
			_ball[s] = _rest_pos("ball_" + s)
		else:                                          # no toe bone: the ball sits ~13 cm ahead, on the floor
			_ball[s] = Vector3(ankle.x, 0.0, ankle.z + 0.13 * tall / 1.75)
	var floor_y: float = min(_ball.l.y, _ball.r.y) - 0.015
	if not _role.has("ball_l"):
		floor_y = min(_rest_pos("foot_l").y, _rest_pos("foot_r").y) - 0.085 * tall / 1.75
	_wrap.position.y -= floor_y
	_M = _skel_to_coach()
	for i in skel.get_bone_count():
		_rest[i] = _M * skel.get_bone_global_rest(i)
	_pel_h = _rest[_role.pelvis].origin.y


# ---------------------------------------------------------------- moves

## Start a clip now. A loop becomes the base he stays in; a one-shot move plays once and fades back to the base.
func play(name: String, fade := FADE, spd := 1.0) -> void:
	if not ok or not MoveLib.has(name):
		return
	if MoveLib.clips[name].loop:
		base = name
	if cur != "" and fade > 0.0:
		_prev = _pose_now()
		_fade = fade
	else:
		_fade = 0.0
	cur = name
	cur_t = 0.0
	speed = spd
	_frozen = false


## Stay in this loop (and go there now if no move is playing).
func set_base(name: String, fade := 0.4) -> void:
	if name == base and cur == base:
		return
	base = name
	if cur == "" or MoveLib.clips.get(cur, {}).get("loop", true):
		play(name, fade)


## True while a one-shot move is still playing.
func busy() -> bool:
	return cur != "" and cur != base and not MoveLib.clips[cur].loop


## Hold `name` at `t` seconds (previews, and to measure where a fist / knee / foot is at the hit).
func freeze(name: String, t: float) -> void:
	if not ok or not MoveLib.has(name):
		return
	cur = name
	cur_t = t
	_fade = 0.0
	_frozen = true
	_apply(_pose_now())


func _process(delta: float) -> void:
	if not ok or cur == "" or _frozen:
		return
	cur_t += delta * speed
	_fade = max(_fade - delta, 0.0)
	var c: Dictionary = MoveLib.clips[cur]
	if not c.loop and cur_t >= MoveLib.length(cur) - FADE * 0.5:
		play(base, FADE)                        # hand back to the stance a little before the end
	_apply(_pose_now())


## The pose to show now: the clip at its time, cross-faded out of the previous one.
func _pose_now() -> Dictionary:
	var p := _target(MoveLib.sample(cur, cur_t), MoveLib.clips[cur].src)
	if _fade > 0.0 and not _prev.is_empty():
		var w := 1.0 - _fade / FADE
		w = w * w * (3.0 - 2.0 * w)
		p = MoveLib.mix(_prev, p, w)
	return p


## A recorded pose → this rig: each role's delta gets this rig's rest-to-source swing, the pelvis scales with the legs.
func _target(s: Dictionary, src: String) -> Dictionary:
	var sw := _swing_for(src)
	var out := {}
	for r in MoveLib.roles:
		out[r] = (s[r] as Quaternion) * sw.get(r, Quaternion.IDENTITY)
	var k: float = _pel_h / max(float(MoveLib.sources[src].pel_h), 0.1)
	var rest: Vector3 = _rest[_role.pelvis].origin
	var p: Vector3 = s.pel
	out["pel"] = Vector3(rest.x + p.x * k, p.y * k, rest.z + p.z * k)
	return out


## The bone a role points at on this rig (its rest direction), or -1.
func _tip(role: String) -> int:
	var part := role.left(-2) if role.ends_with("_l") or role.ends_with("_r") else role
	var s := role.right(1)
	match part:
		"clavicle":
			return _role.get("upperarm_" + s, -1)
		"upperarm":
			return _role.get("lowerarm_" + s, -1)
		"lowerarm":
			return _role.get("hand_" + s, -1)
		"hand":
			return _child_like(_role["hand_" + s], "middle") if _role.has("hand_" + s) else -1
		"thigh":
			return _role.get("calf_" + s, -1)
		"calf":
			return _role.get("foot_" + s, -1)
		"foot":
			return _role.get("ball_" + s, -1)
	return -1


func _swing_for(src: String) -> Dictionary:
	if _swing.has(src):
		return _swing[src]
	var out := {}
	var dirs: Dictionary = MoveLib.sources[src].dir
	for r in dirs:
		if not _role.has(r):
			continue
		var tip := _tip(r)
		if tip < 0:
			continue
		var td: Vector3 = (_rest[tip].origin - _rest[_role[r]].origin).normalized()
		var sd: Vector3 = dirs[r]
		if td.length() > 0.5 and td.dot(sd) < 0.99999:
			out[r] = Quaternion(td, sd)
	_swing[src] = out
	return out


## Pose the skeleton: mapped bones get their rotation, the spine shares pelvis → chest, the rest follow their parent.
func _apply(p: Dictionary) -> void:
	var rot := {}                                # bone index -> Quaternion (world delta incl. swing)
	for r in MoveLib.roles:
		if _role.has(r):
			rot[_role[r]] = p[r]
	var n := _spine.size()
	for k in n:
		var w := float(k + 1) / n
		rot[_spine[k]] = (p.pelvis as Quaternion).slerp(p.chest, w)
	var posed := {}
	var to_skel := _M.affine_inverse()
	for i in _order:
		var parent := skel.get_bone_parent(i)
		var rest: Transform3D = _rest[i]
		var g: Transform3D = posed[parent] * (_rest[parent].affine_inverse() * rest) if parent >= 0 else rest
		if rot.has(i):
			g.basis = Basis(rot[i] as Quaternion) * rest.basis
		if i == _role.pelvis:
			g.origin = p.pel
		posed[i] = g
		var local: Transform3D = (posed[parent].affine_inverse() * g) if parent >= 0 else to_skel * g
		skel.set_bone_pose_position(i, local.origin)
		skel.set_bone_pose_rotation(i, local.basis.get_rotation_quaternion())
		skel.set_bone_pose_scale(i, local.basis.get_scale())


## World position of a joint of the rig as it is posed now (roles: hand_l, calf_l = the knee, ball_l, head…).
func joint_world(role: String) -> Vector3:
	if not ok or not _role.has(role):
		return global_position
	return skel.global_transform * _bone_global(_role[role]).origin


func _bone_global(i: int) -> Transform3D:
	var t := skel.get_bone_pose(i)
	var p := skel.get_bone_parent(i)
	return _bone_global(p) * t if p >= 0 else t
