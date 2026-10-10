## The human coach (Quaternius Universal Base Character, CC0) on the Universal Animation Library skeleton.
## Same API as Mannequin: set_pose(dict) for the exercises (joint angles in degrees, model axes: the figure faces
## +Z, its left is +X), play(clip) for the ready-made moves (Punch_Jab, Punch_Cross, Idle_Talking_Loop…).
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
	_len["foot"] = _rest["foot_l"].origin.y
	_len["hip"] = _rest["thigh_l"].origin.y

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


func has_clip(name: String) -> bool:
	return player.has_animation(name)


## Play a ready-made move (restarts it). The pose is the animation's until set_pose() takes over again.
func play(name: String, speed := 1.0) -> void:
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


## Same keys as Mannequin.set_pose, plus ft_l/ft_r: foot tilt from flat (degrees, negative = toes down), for a back foot on its toes.
func set_pose(p: Dictionary) -> void:
	if clip != "":
		player.stop()
		clip = ""
	var lean: float = p.get("lean", 0.0)
	var twist: float = p.get("twist", 0.0)
	var f := {}                                 # bone -> frame rotation (model axes, limbs-down semantics)
	f["pelvis"] = Basis.IDENTITY
	f["spine_01"] = _rx(lean / 3.0) * _ry(twist / 3.0)
	f["spine_02"] = f["spine_01"] * _rx(lean / 3.0) * _ry(twist / 3.0)
	f["spine_03"] = f["spine_02"] * _rx(lean / 3.0) * _ry(twist / 3.0)
	f["neck_01"] = f["spine_03"] * _rx((p.get("head", 0.0) - lean * 0.6) * 0.5)
	f["Head"] = f["neck_01"] * _rx((p.get("head", 0.0) - lean * 0.6) * 0.5)
	var drop := 0.0
	for s in ["l", "r"]:
		var side := 1.0 if s == "l" else -1.0
		f["clavicle_" + s] = f["spine_03"]
		var sh: Vector2 = p.get("sh_" + s, Vector2.ZERO)
		f["upperarm_" + s] = f["spine_03"] * _rx(-sh.x) * _rz(sh.y * side)
		f["lowerarm_" + s] = f["upperarm_" + s] * _rx(-float(p.get("el_" + s, 0.0)))
		f["hand_" + s] = f["lowerarm_" + s]
		var hp: Vector2 = p.get("hip_" + s, Vector2.ZERO)
		var kn: float = p.get("kn_" + s, 0.0)
		f["thigh_" + s] = _rx(-hp.x) * _rz(hp.y * side)
		f["calf_" + s] = f["thigh_" + s] * _rx(kn)
		f["foot_" + s] = f["calf_" + s] * _rx(hp.x - kn + float(p.get("ft_" + s, 0.0)))   # flat; ft_ < 0 = toes down
		f["ball_" + s] = f["foot_" + s]
		var a := deg_to_rad(hp.x)
		var leg: float = _len.thigh * cos(a) * cos(deg_to_rad(hp.y)) + _len.shin * cos(a - deg_to_rad(kn))
		drop = max(drop, leg)
	var hip_y: float = drop + _len.foot
	var lift := Vector3(0, hip_y - _len.hip, 0)

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
			if pname == "" or not posed.has(pname):
				origin = rest.origin + (lift if name == "pelvis" else Vector3.ZERO)
			else:
				var pf: Basis = f.get(pname, Basis.IDENTITY) * _base.get(pname, Basis.IDENTITY)
				var pp: Transform3D = posed[pname]
				var prest: Transform3D = _rest[pname]
				origin = pp.origin + pf * (rest.origin - prest.origin)
				if name == "pelvis":
					origin += lift
			g = Transform3D(basis, origin)
		elif parent >= 0 and posed.has(pname):
			g = posed[pname] * (_rest[pname].affine_inverse() * rest)   # fingers etc. follow their parent
		else:
			g = rest
		posed[name] = g
		var local: Transform3D = (posed[pname].affine_inverse() * g) if parent >= 0 else g
		skel.set_bone_pose_position(i, local.origin)
		skel.set_bone_pose_rotation(i, local.basis.get_rotation_quaternion())
