## The human coach (Quaternius Universal Base Character, CC0) on the Universal Animation Library skeleton.
## set_pose(dict) for the exercises (model axes: the figure faces +Z, its left is +X), play(clip) for the ready-made
## moves (Punch_Jab, Punch_Cross…). The body is posed the way a person moves, not joint by joint:
##   the pelvis is placed and tilted (a hip hinge, the spine stays long), the feet are planted where the pose says and
##   the legs reach them by two-bone IK (no sliding, no floating, the knees track over the toes), the arms and the
##   head hang off the trunk, the gaze stays level. While standing he breathes and sways a little.
## Poses are applied in "limbs hanging down" frames, so the T-pose rest of the rig never leaks into the angles.
class_name Coach
extends Node3D

const MODEL := preload("res://assets/coach/coach.gltf")
const ANIMS := preload("res://assets/coach/animations.glb")
const HAIR := [preload("res://assets/coach/Hair_SimpleParted.gltf"), preload("res://assets/coach/Hair_Beard.gltf")]

const HAIR_COLOR := Color(0.22, 0.15, 0.1)

var skel: Skeleton3D
var player: AnimationPlayer
var clip := ""                      # "" = procedural pose mode

var _rest := {}                     # bone -> rest global Transform3D
var _base := {}                     # bone -> Basis taking the rest bone into the "hanging down" zero pose
var _len := {}
var _life := 0.0                    # seconds, drives breathing and sway
var _calm := 1.0                    # 1 standing still … 0 deep in an exercise (less sway)
var _last := {}                     # the last pose asked for
var _from := {}                     # the pose a change of exercise eases away from
var _xf := 0.0                      # seconds left of that easing
const XFADE := 0.7


func _init() -> void:
	var model := MODEL.instantiate()
	add_child(model)
	skel = model.find_children("*", "Skeleton3D", true, false)[0]
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
	for i in skel.get_bone_count():
		_rest[skel.get_bone_name(i)] = skel.get_bone_global_rest(i)
	# Arms: T-pose (along ±X) → hanging down.
	for s in ["l", "r"]:
		var side := 1.0 if s == "l" else -1.0
		var down := Basis(Vector3(0, 0, 1), -PI / 2 * side)
		for b in ["upperarm_", "lowerarm_", "hand_"]:
			_base[b + s] = down
	_len["thigh"] = (_rest["calf_l"].origin - _rest["thigh_l"].origin).length()
	_len["shin"] = (_rest["foot_l"].origin - _rest["calf_l"].origin).length()

	player = AnimationPlayer.new()
	model.add_child(player)
	var src: AnimationPlayer = ANIMS.instantiate().find_children("*", "AnimationPlayer", true, false)[0]
	player.add_animation_library("", src.get_animation_library(""))
	player.root_node = NodePath("..")          # tracks are "Armature/Skeleton3D:bone" from the model root
	set_pose({})


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
	return player.has_animation(name)


## Play a ready-made move (restarts it). The pose is the animation's until set_pose() takes over again.
func play(name: String, speed := 1.0) -> void:
	_last = {}
	clip = name
	player.speed_scale = speed
	player.stop()
	player.play(name, 0.15)


func loop(name: String) -> void:
	if clip != name or not player.is_playing():
		clip = name
		player.speed_scale = 1.0
		player.play(name, 0.25)


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
	if clip != "":
		player.stop()
		clip = ""
	_last = p
	if _xf > 0.0 and not _from.is_empty():
		p = blend(_from, p, Exercises.smooth(1.0 - _xf / XFADE))
	var f := {}                                 # bone -> frame rotation (model axes, limbs-down semantics)
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
	f["pelvis"] = _ry(yaw) * _rx(tilt) * _rz(-float(p.get("roll", 0.0)) - sway * 0.8)
	f["spine_01"] = f["pelvis"] * _rx(spine / 3.0) * _ry(twist / 3.0) * _rz(sway * 0.5)
	f["spine_02"] = f["spine_01"] * _rx(spine / 3.0 - breath * 0.6) * _ry(twist / 3.0) * _rz(sway * 0.3)
	f["spine_03"] = f["spine_02"] * _rx(spine / 3.0 - breath * 0.8) * _ry(twist / 3.0)
	var trunk := tilt + spine - breath * 1.4
	var gaze: float = (float(p.get("head", 0.0)) - trunk * 0.8) * 0.5
	var turn := -(yaw + twist) * 0.4
	f["neck_01"] = f["spine_03"] * _ry(turn) * _rx(gaze)
	f["Head"] = f["neck_01"] * _ry(turn) * _rx(gaze)

	# Pelvis first: the hip joints follow it, the legs then reach the planted feet.
	var pel_rest: Transform3D = _rest["pelvis"]
	var pel_pos := pel_rest.origin + hips
	var legs := {}
	for _pass in 3:                             # lower the pelvis if a planted foot is out of reach
		var short := 0.0
		for s in ["l", "r"]:
			var leg := _leg(p, s, pel_pos, f["pelvis"])
			legs[s] = leg
			if not leg.air:
				short = max(short, leg.short)
		if short <= 0.0005:
			break
		pel_pos.y -= short
	for s in ["l", "r"]:
		var side := 1.0 if s == "l" else -1.0
		var leg: Dictionary = legs[s]
		f["thigh_" + s] = leg.thigh
		f["calf_" + s] = leg.calf
		f["foot_" + s] = leg.foot
		f["ball_" + s] = leg.ball
		f["clavicle_" + s] = f["spine_03"] * _rz(-breath * 0.6 * side)
		var sh: Vector2 = p.get("sh_" + s, Vector2.ZERO)
		var el: float = p.get("el_" + s, 0.0)
		f["upperarm_" + s] = f["clavicle_" + s] * _rx(-sh.x) * _rz(sh.y * side)
		f["lowerarm_" + s] = f["upperarm_" + s] * _rx(-el) * _ry(float(p.get("sup_" + s, 0.0)) * side * 0.5)
		f["hand_" + s] = f["lowerarm_" + s] * _ry(float(p.get("sup_" + s, 0.0)) * side * 0.5)

	var posed := {}                              # bone -> posed global Transform3D
	for i in skel.get_bone_count():
		var name := skel.get_bone_name(i)
		var parent := skel.get_bone_parent(i)
		var pname := skel.get_bone_name(parent) if parent >= 0 else ""
		var rest: Transform3D = _rest[name]
		var g: Transform3D
		if f.has(name):
			var basis: Basis = f[name] * _base.get(name, Basis.IDENTITY) * rest.basis
			var origin: Vector3
			if name == "pelvis":
				origin = pel_pos
			elif pname == "" or not posed.has(pname):
				origin = rest.origin
			else:
				var pf: Basis = f.get(pname, Basis.IDENTITY) * _base.get(pname, Basis.IDENTITY)
				var pp: Transform3D = posed[pname]
				var prest: Transform3D = _rest[pname]
				origin = pp.origin + pf * (rest.origin - prest.origin)
			g = Transform3D(basis, origin)
		elif parent >= 0 and posed.has(pname):
			g = posed[pname] * (_rest[pname].affine_inverse() * rest)   # fingers etc. follow their parent
		else:
			g = rest
		posed[name] = g
		var local: Transform3D = (posed[pname].affine_inverse() * g) if parent >= 0 else g
		skel.set_bone_pose_position(i, local.origin)
		skel.set_bone_pose_rotation(i, local.basis.get_rotation_quaternion())


## One leg by two-bone IK: from the hip joint (on the posed pelvis) to the ankle that puts the ball of the foot where
## the pose plants it. The knee bends in the plane of the toes, so it tracks over the foot.
func _leg(p: Dictionary, s: String, pel_pos: Vector3, pel: Basis) -> Dictionary:
	var side := 1.0 if s == "l" else -1.0
	var toe: float = p.get("toe_" + s, 0.0)
	var heel: float = p.get("ft_" + s, 0.0)
	var foot_off: Vector3 = p.get("foot_" + s, Vector3.ZERO)
	var foot_rot := _ry(toe * side) * _rx(heel)
	var ankle_rest: Vector3 = _rest["foot_" + s].origin
	var ball_rest: Vector3 = _rest["ball_" + s].origin
	var ankle := ball_rest + foot_off - foot_rot * (ball_rest - ankle_rest)
	var hip: Vector3 = pel_pos + pel * (_rest["thigh_" + s].origin - _rest["pelvis"].origin)
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
	var n := d.cross(hinge)
	var a := (l1 * l1 - l2 * l2 + dist * dist) / (2.0 * dist)
	var knee := hip + d * a + n * sqrt(max(l1 * l1 - a * a, 0.0))
	var ank := hip + d * dist
	var thigh_rest_dir: Vector3 = (_rest["calf_" + s].origin - _rest["thigh_" + s].origin).normalized()
	var calf_rest_dir: Vector3 = (ankle_rest - _rest["calf_" + s].origin).normalized()
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
