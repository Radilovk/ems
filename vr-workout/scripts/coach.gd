## A human coach that shows the exercises. Any humanoid rig works: the Quaternius / Unreal names (pelvis, thigh_l…),
## Mixamo (Hips, LeftUpLeg…), MakeHuman / MPFB game rig, Rigify-style (thigh.L…). Each bone is found by its role, the
## figure is turned to face +Z, scaled if it came in centimetres and stood on the floor, so a .glb dropped on the
## headset just works.
## set_pose(dict) for the exercises (model axes: the figure faces +Z, its left is +X), play(clip) for the ready-made
## moves (Punch_Jab, Punch_Cross… — only the built-in coach has them). The body is posed the way a person moves:
##   the pelvis is placed and tilted (a hip hinge, the spine stays long), the feet are planted where the pose says and
##   the legs reach them by two-bone IK (no sliding, no floating, the knees track over the toes), the arms and the
##   head hang off the trunk, the gaze stays level. While standing he breathes and sways a little.
## Poses are applied in "limbs hanging down" frames, so the T- or A-pose rest of a rig never leaks into the angles.
class_name Coach
extends Node3D

const MODEL := preload("res://assets/coach/coach.gltf")
const ANIMS := preload("res://assets/coach/animations.glb")
const HAIR := [preload("res://assets/coach/Hair_SimpleParted.gltf"), preload("res://assets/coach/Hair_Beard.gltf")]

const HAIR_COLOR := Color(0.22, 0.15, 0.1)
const XFADE := 0.7

var skel: Skeleton3D
var player: AnimationPlayer
var clip := ""                      # "" = procedural pose mode
var ok := false                     # false: no humanoid skeleton found (the model is shown as it is)

var _wrap: Node3D                   # turns / scales / lifts the model into place
var _role := {}                     # role ("pelvis", "thigh_l"…) -> bone index
var _spine: Array[int] = []         # pelvis (excl.) → chest, bottom up
var _rest := {}                     # bone index -> rest Transform3D in coach space
var _M := Transform3D.IDENTITY      # skeleton space -> coach space
var _order: Array[int] = []         # parents before children
var _base := {}                     # bone index -> Basis taking the rest arm into "hanging down"
var _len := {}
var _ball := {}                     # "l"/"r" -> rest ball-of-foot point (coach space)
var _life := 0.0                    # seconds, drives breathing and sway
var _calm := 1.0                    # 1 standing still … 0 deep in an exercise (less sway)
var _last := {}                     # the last pose asked for
var _from := {}                     # the pose a change of exercise eases away from
var _xf := 0.0                      # seconds left of that easing


## src: null = the built-in coach; a PackedScene or an instanced Node3D = any humanoid model.
func _init(src = null) -> void:
	_wrap = Node3D.new()
	add_child(_wrap)
	var model: Node3D
	if src == null:
		model = MODEL.instantiate()
	elif src is PackedScene:
		model = src.instantiate()
	else:
		model = src
	_wrap.add_child(model)
	var sk := model.find_children("*", "Skeleton3D", true, false)
	if sk.is_empty():
		return
	skel = sk[0]
	if src == null:
		_dress_builtin()
	if not _find_roles():
		return
	_place()
	ok = true
	if src == null:
		player = AnimationPlayer.new()
		model.add_child(player)
		var a: AnimationPlayer = ANIMS.instantiate().find_children("*", "AnimationPlayer", true, false)[0]
		player.add_animation_library("", a.get_animation_library(""))
		player.root_node = NodePath("..")      # tracks are "Armature/Skeleton3D:bone" from the model root
	set_pose({})


## Put on clothes / hair made for this rig: every skinned mesh of `piece` moves onto our skeleton (its skin binds by
## bone name). Returns how many meshes were put on.
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


func _dress_builtin() -> void:
	for mi in skel.find_children("Eyebrows*", "MeshInstance3D", false, false):
		_tint(mi, HAIR_COLOR)
	# Hair and beard are skinned to the same rig: move their meshes onto our skeleton (skins bind by bone name).
	for h in HAIR:
		var hs: Node = h.instantiate()
		for mi in hs.find_children("*", "MeshInstance3D", true, false):
			mi.get_parent().remove_child(mi)
			skel.add_child(mi)
			mi.skeleton = NodePath("..")
			_tint(mi, HAIR_COLOR)          # the free pack ships the hair grey (the colour lives in a paid shader)
		hs.free()


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
	for s in ["l", "r"]:
		var ankle: Vector3 = _rest[_role["foot_" + s]].origin
		if _role.has("ball_" + s):
			_ball[s] = _rest[_role["ball_" + s]].origin
		else:
			_ball[s] = Vector3(ankle.x, 0.015, ankle.z + 0.13 * tall / 1.75)
		# Arms: the rest arm (T-pose, A-pose, elbows bent…) → hanging straight down. Each segment is turned by the
		# least it needs after its parent's turn, so the palms keep their natural roll.
		var chain: Array = [_role["upperarm_" + s], _role["lowerarm_" + s]]
		if _role.has("hand_" + s):
			chain.append(_role["hand_" + s])
		var tips: Array = [_role["lowerarm_" + s]]
		if _role.has("hand_" + s):
			tips.append(_role["hand_" + s])
			var finger := _child_like(_role["hand_" + s], "middle")
			tips.append(finger)
		var down := Basis.IDENTITY
		for k in chain.size():
			var tip: int = tips[k] if k < tips.size() else -1
			if tip >= 0:
				var dir: Vector3 = down * (_rest[tip].origin - _rest[chain[k]].origin).normalized()
				down = Basis(Quaternion(dir, Vector3.DOWN)) * down
			_base[chain[k]] = down
	_len["thigh"] = (_rest[_role.calf_l].origin - _rest[_role.thigh_l].origin).length()
	_len["shin"] = (_rest[_role.foot_l].origin - _rest[_role.calf_l].origin).length()


static func _tint(mi: MeshInstance3D, c: Color) -> void:
	for i in mi.mesh.get_surface_count():
		var m := mi.get_active_material(i)
		if m is BaseMaterial3D:
			var d: BaseMaterial3D = m.duplicate()
			d.albedo_color = c
			mi.set_surface_override_material(i, d)


func _process(delta: float) -> void:
	_life += delta
	_xf = max(_xf - delta, 0.0)


## The next exercise starts from another stance: walk the feet and the arms over instead of jumping.
func ease_into_next() -> void:
	_from = _last
	_xf = XFADE


static func blend(a: Dictionary, b: Dictionary, t: float) -> Dictionary:
	var out := {}
	for k in a.keys() + b.keys():
		if out.has(k):
			continue
		var va = a.get(k)
		var vb = b.get(k)
		var z = va if va != null else vb
		var zero = Vector3.ZERO if z is Vector3 else (Vector2.ZERO if z is Vector2 else 0.0)
		if va == null:
			va = zero
		if vb == null:
			vb = zero
		out[k] = lerp(va, vb, t)
	return out


func has_clip(name: String) -> bool:
	return player != null and player.has_animation(name)


## Play a ready-made move (restarts it). The pose is the animation's until set_pose() takes over again.
func play(name: String, speed := 1.0) -> void:
	_last = {}
	clip = name
	player.speed_scale = speed
	player.stop()
	player.play(name, 0.15)


func set_active(_channels: Array, _amount: float) -> void:
	pass                                        # the body map shows the muscles; the coach stays human


static func _rx(deg: float) -> Basis:
	return Basis(Vector3.RIGHT, deg_to_rad(deg))


static func _rz(deg: float) -> Basis:
	return Basis(Vector3.BACK, deg_to_rad(deg))


static func _ry(deg: float) -> Basis:
	return Basis(Vector3.UP, deg_to_rad(deg))


## Pose keys (all optional; {} = standing at rest). Lengths in metres, angles in degrees:
##   hips: Vector3 pelvis offset (x = his left, y = up, z = forward)    tilt: pelvis forward (the hip hinge)
##   yaw: pelvis turn (+ = to his left)   roll: pelvis drop to his right   spine: extra spine flexion (+ forward)
##   twist: chest turn on the pelvis      head: gaze below the horizon (the neck undoes the trunk lean)
##   foot_l/_r: Vector3 move of the ball of the foot (the floor contact) from standing; y > 0 = in the air
##   ft_l/_r: heel raise (+, pivots on the ball, the toes stay flat)   toe_l/_r: toes out   knee_l/_r: knee out
##   sh_l/_r: Vector2(flex forward, out to the side) on the chest      el_l/_r: elbow bend   sup_l/_r: palm turn up
func set_pose(p: Dictionary) -> void:
	if not ok:
		return
	if clip != "":
		player.stop()
		clip = ""
	_last = p
	if _xf > 0.0 and not _from.is_empty():
		p = blend(_from, p, Exercises.smooth(1.0 - _xf / XFADE))
	var f := {}                                 # bone index -> frame rotation (coach axes, limbs-down semantics)
	var tilt: float = p.get("tilt", 0.0)
	var spine: float = p.get("spine", 0.0)
	var yaw: float = p.get("yaw", 0.0)
	var twist: float = p.get("twist", 0.0)
	var hips: Vector3 = p.get("hips", Vector3.ZERO)
	# Life: a slow breath (chest lifts, shoulders rise) and a small weight shift; calmer deep in a movement.
	var depth: float = clamp(-hips.y / 0.3 + absf(tilt) / 40.0, 0.0, 1.0)
	_calm = lerpf(_calm, 1.0 - depth, 0.1)
	var breath := sin(_life * TAU / 4.2)
	var sway := sin(_life * TAU / 7.3) * _calm
	hips += Vector3(sway * 0.008, 0, 0)
	var pel: Basis = _ry(yaw) * _rx(tilt) * _rz(-float(p.get("roll", 0.0)) - sway * 0.8)
	f[_role.pelvis] = pel
	var n: int = max(_spine.size(), 1)
	var prev := pel
	for k in _spine.size():
		var upper := float(k) / n                # 0 at the waist … near 1 at the chest: the breath lifts the chest
		prev = prev * _rx(spine / n - breath * 1.4 * upper * 2.0 / n) * _ry(twist / n) * _rz(sway * 0.8 * (1.0 - upper) / n)
		f[_spine[k]] = prev
	var chest := prev
	var trunk := tilt + spine - breath * 1.4
	var gaze: float = float(p.get("head", 0.0)) - trunk * 0.8
	var turn := -(yaw + twist) * 0.8
	if _role.has("neck"):
		f[_role.neck] = chest * _ry(turn * 0.5) * _rx(gaze * 0.5)
		if _role.has("head"):
			f[_role.head] = f[_role.neck] * _ry(turn * 0.5) * _rx(gaze * 0.5)
	elif _role.has("head"):
		f[_role.head] = chest * _ry(turn) * _rx(gaze)

	# Pelvis first: the hip joints follow it, the legs then reach the planted feet.
	var pel_pos: Vector3 = _rest[_role.pelvis].origin + hips
	var legs := {}
	for _pass in 3:                             # lower the pelvis if a planted foot is out of reach
		var short := 0.0
		for s in ["l", "r"]:
			var leg := _leg(p, s, pel_pos, pel)
			legs[s] = leg
			if not leg.air:
				short = max(short, leg.short)
		if short <= 0.0005:
			break
		pel_pos.y -= short
	for s in ["l", "r"]:
		var side := 1.0 if s == "l" else -1.0
		var leg: Dictionary = legs[s]
		f[_role["thigh_" + s]] = leg.thigh
		f[_role["calf_" + s]] = leg.calf
		f[_role["foot_" + s]] = leg.foot
		if _role.has("ball_" + s):
			f[_role["ball_" + s]] = leg.ball
		var arm_root := chest
		if _role.has("clavicle_" + s):
			arm_root = chest * _rz(-breath * 0.6 * side)
			f[_role["clavicle_" + s]] = arm_root
		var sh: Vector2 = p.get("sh_" + s, Vector2.ZERO)
		var el: float = p.get("el_" + s, 0.0)
		var sup: float = float(p.get("sup_" + s, 0.0)) * side * 0.5
		f[_role["upperarm_" + s]] = arm_root * _rx(-sh.x) * _rz(sh.y * side)
		f[_role["lowerarm_" + s]] = f[_role["upperarm_" + s]] * _rx(-el) * _ry(sup)
		if _role.has("hand_" + s):
			f[_role["hand_" + s]] = f[_role["lowerarm_" + s]] * _ry(sup)

	var posed := {}                              # bone index -> posed Transform3D (coach space)
	var to_skel := _M.affine_inverse()
	for i in _order:
		var parent := skel.get_bone_parent(i)
		var rest: Transform3D = _rest[i]
		var g: Transform3D
		if f.has(i):
			var basis: Basis = f[i] * _base.get(i, Basis.IDENTITY) * rest.basis
			var origin: Vector3
			if i == _role.pelvis:
				origin = pel_pos
			elif parent < 0:
				origin = rest.origin
			else:
				var pf: Basis = f.get(parent, Basis.IDENTITY) * _base.get(parent, Basis.IDENTITY)
				origin = posed[parent].origin + pf * (rest.origin - _rest[parent].origin)
			g = Transform3D(basis, origin)
		elif parent >= 0:
			g = posed[parent] * (_rest[parent].affine_inverse() * rest)   # fingers etc. follow their parent
		else:
			g = rest
		posed[i] = g
		var local: Transform3D = (posed[parent].affine_inverse() * g) if parent >= 0 else to_skel * g
		skel.set_bone_pose_position(i, local.origin)
		skel.set_bone_pose_rotation(i, local.basis.get_rotation_quaternion())
		skel.set_bone_pose_scale(i, local.basis.get_scale())


## One leg by two-bone IK: from the hip joint (on the posed pelvis) to the ankle that puts the ball of the foot where
## the pose plants it. The knee bends in the plane of the toes, so it tracks over the foot.
func _leg(p: Dictionary, s: String, pel_pos: Vector3, pel: Basis) -> Dictionary:
	var side := 1.0 if s == "l" else -1.0
	var toe: float = p.get("toe_" + s, 0.0)
	var heel: float = p.get("ft_" + s, 0.0)
	var foot_off: Vector3 = p.get("foot_" + s, Vector3.ZERO)
	var foot_rot := _ry(toe * side) * _rx(heel)
	var thigh: Transform3D = _rest[_role["thigh_" + s]]
	var calf: Transform3D = _rest[_role["calf_" + s]]
	var ankle_rest: Vector3 = _rest[_role["foot_" + s]].origin
	var ball_rest: Vector3 = _ball[s]
	var ankle := ball_rest + foot_off - foot_rot * (ball_rest - ankle_rest)
	var hip: Vector3 = pel_pos + pel * (thigh.origin - _rest[_role.pelvis].origin)
	var l1: float = _len.thigh
	var l2: float = _len.shin
	var to := ankle - hip
	var dist := to.length()
	var reach := (l1 + l2) * 0.999
	var short: float = max(dist - reach, 0.0)
	dist = clamp(dist, absf(l1 - l2) + 0.01, reach)
	var d := to.normalized()
	var pole := _ry((toe + float(p.get("knee_" + s, 0.0))) * side) * Vector3.BACK     # knee points along the toes
	var hinge := pole.cross(d).normalized()
	var nrm := d.cross(hinge)
	var a := (l1 * l1 - l2 * l2 + dist * dist) / (2.0 * dist)
	var knee := hip + d * a + nrm * sqrt(max(l1 * l1 - a * a, 0.0))
	var ank := hip + d * dist
	var thigh_rest_dir: Vector3 = (calf.origin - thigh.origin).normalized()
	var calf_rest_dir: Vector3 = (ankle_rest - calf.origin).normalized()
	return {
		"thigh": _aim((knee - hip).normalized(), hinge) * _aim(thigh_rest_dir, Vector3.RIGHT).inverse(),
		"calf": _aim((ank - knee).normalized(), hinge) * _aim(calf_rest_dir, Vector3.RIGHT).inverse(),
		"foot": foot_rot,
		"ball": _ry(toe * side),                # the toes stay flat on the floor when the heel rises
		"short": short,
		"air": foot_off.y > 0.01,
	}


## A frame whose -Y runs along `dir` (a limb hanging that way) and whose X is the hinge axis.
static func _aim(dir: Vector3, hinge: Vector3) -> Basis:
	var y := -dir
	var z := hinge.cross(y).normalized()
	var x := y.cross(z)
	return Basis(x, y, z)
