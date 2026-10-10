## A smooth "glass" figure built from capsules, posed by joint angles in degrees.
## Faces +Z. Every body part knows which XEMS suit channels lie under it, so the figure can glow exactly where
## the suit works (set_active). Feet stay on the floor by themselves: the hip height follows the legs.
class_name Mannequin
extends Node3D

const TRAINER_SHADER := preload("res://shaders/trainer.gdshader")

# XEMS channels, the names the tablet uses (train row columns).
const CALF := "Прасец"
const QUAD := "Предно бедро"
const HAM := "Задно бедро"
const GLUTE := "Глутеус"
const ABS := "Корем"
const LOWBACK := "Кръст"
const BACK := "Гръб"
const TRAPS := "Трапец"
const CHEST := "Гърди"
const ARMS := "Ръце"

# Segment lengths in metres (a 1.75 m person).
const THIGH := 0.44
const SHIN := 0.43
const FOOT_H := 0.07
const UPPER_ARM := 0.29
const FOREARM := 0.26

var joints := {}            # name -> Node3D pivot
var _by_channel := {}       # channel -> Array[ShaderMaterial]
var _all: Array[ShaderMaterial] = []
var base_color := Color(0.10, 0.62, 0.72, 0.82)


func _init(color := Color(0.10, 0.62, 0.72, 0.82)) -> void:
	base_color = color
	_build()
	set_pose({})


func _mat(channels: Array) -> ShaderMaterial:
	var m := ShaderMaterial.new()
	m.shader = TRAINER_SHADER
	m.set_shader_parameter("base", base_color)
	_all.append(m)
	for c in channels:
		if not _by_channel.has(c):
			_by_channel[c] = []
		_by_channel[c].append(m)
	return m


func _joint(name: String, parent: Node3D, pos: Vector3) -> Node3D:
	var j := Node3D.new()
	j.name = name
	j.position = pos
	parent.add_child(j)
	joints[name] = j
	return j


## A capsule hanging from `parent` along -Y (down=true) or standing along +Y.
func _limb(parent: Node3D, length: float, radius: float, channels: Array, down := true, squash := Vector3.ONE) -> MeshInstance3D:
	var mesh := CapsuleMesh.new()
	mesh.radius = radius
	mesh.height = length + radius * 1.2
	mesh.radial_segments = 24
	mesh.rings = 8
	var mi := MeshInstance3D.new()
	mi.mesh = mesh
	mi.material_override = _mat(channels)
	mi.position = Vector3(0, -length * 0.5 if down else length * 0.5, 0)
	mi.scale = squash
	mi.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_ON
	parent.add_child(mi)
	return mi


func _ball(parent: Node3D, pos: Vector3, radius: float, channels: Array, squash := Vector3.ONE) -> MeshInstance3D:
	var mesh := SphereMesh.new()
	mesh.radius = radius
	mesh.height = radius * 2.0
	mesh.radial_segments = 24
	mesh.rings = 12
	var mi := MeshInstance3D.new()
	mi.mesh = mesh
	mi.material_override = _mat(channels)
	mi.position = pos
	mi.scale = squash
	parent.add_child(mi)
	return mi


func _build() -> void:
	var root := _joint("root", self, Vector3(0, THIGH + SHIN + FOOT_H, 0))
	_ball(root, Vector3(0, 0.02, -0.02), 0.13, [GLUTE], Vector3(1.25, 0.8, 0.95))      # pelvis

	var spine := _joint("spine", root, Vector3(0, 0.06, 0))
	_limb(spine, 0.24, 0.115, [ABS, LOWBACK], false, Vector3(1.15, 1.0, 0.82))          # abdomen
	var chest := Node3D.new()
	chest.position = Vector3(0, 0.27, 0)
	spine.add_child(chest)
	_limb(chest, 0.25, 0.15, [CHEST, BACK], false, Vector3(1.28, 1.0, 0.78))            # chest
	_ball(chest, Vector3(0, 0.27, -0.01), 0.1, [TRAPS], Vector3(2.0, 0.55, 0.9))        # traps

	var neck := _joint("neck", chest, Vector3(0, 0.33, 0))
	_limb(neck, 0.05, 0.045, [], false)
	_ball(neck, Vector3(0, 0.16, 0.01), 0.105, [], Vector3(0.9, 1.1, 1.0))               # head

	for side in [1, -1]:
		var s := "l" if side == 1 else "r"
		var sh := _joint("sh_" + s, chest, Vector3(0.205 * side, 0.27, 0))
		_ball(sh, Vector3.ZERO, 0.065, [TRAPS, ARMS])
		_limb(sh, UPPER_ARM, 0.052, [ARMS])
		var el := _joint("el_" + s, sh, Vector3(0, -UPPER_ARM, 0))
		_limb(el, FOREARM, 0.044, [ARMS])
		_ball(el, Vector3(0, -FOREARM - 0.05, 0.0), 0.05, [], Vector3(0.9, 1.1, 0.7))   # hand

		var hip := _joint("hip_" + s, root, Vector3(0.095 * side, -0.03, 0))
		_limb(hip, THIGH, 0.078, [QUAD, HAM])
		var kn := _joint("kn_" + s, hip, Vector3(0, -THIGH, 0))
		_limb(kn, SHIN, 0.058, [CALF])
		var ft := Node3D.new()
		ft.position = Vector3(0, -SHIN - 0.02, 0.05)
		kn.add_child(ft)
		_ball(ft, Vector3.ZERO, 0.05, [], Vector3(0.9, 0.55, 2.0))                       # foot


## pose keys (degrees): lean, twist, head, sh_l/sh_r = Vector2(flex forward, out to the side),
## el_l/el_r (bend), hip_l/hip_r = Vector2(flex forward, out), kn_l/kn_r (bend).
func set_pose(p: Dictionary) -> void:
	var lean: float = p.get("lean", 0.0)
	joints["spine"].rotation = Vector3(deg_to_rad(lean), deg_to_rad(p.get("twist", 0.0)), 0)
	joints["neck"].rotation = Vector3(deg_to_rad(p.get("head", 0.0) - lean * 0.6), 0, 0)
	var drop := 0.0
	for s in ["l", "r"]:
		var side := 1.0 if s == "l" else -1.0
		var sh: Vector2 = p.get("sh_" + s, Vector2.ZERO)
		joints["sh_" + s].rotation = Vector3(-deg_to_rad(sh.x), 0, deg_to_rad(sh.y) * side)
		joints["el_" + s].rotation = Vector3(-deg_to_rad(p.get("el_" + s, 0.0)), 0, 0)
		var hp: Vector2 = p.get("hip_" + s, Vector2.ZERO)
		var kn: float = p.get("kn_" + s, 0.0)
		joints["hip_" + s].rotation = Vector3(-deg_to_rad(hp.x), 0, deg_to_rad(hp.y) * side)
		joints["kn_" + s].rotation = Vector3(deg_to_rad(kn), 0, 0)
		var a := deg_to_rad(hp.x)
		var leg := THIGH * cos(a) * cos(deg_to_rad(hp.y)) + SHIN * cos(a - deg_to_rad(kn))
		drop = max(drop, leg)
	joints["root"].position.y = drop + FOOT_H + 0.03


## Blend two poses (t = 0..1). Vectors and floats both.
static func blend(a: Dictionary, b: Dictionary, t: float) -> Dictionary:
	var out := {}
	for k in a.keys() + b.keys():
		if out.has(k):
			continue
		var va = a.get(k, Vector2.ZERO if (b.get(k) is Vector2) else 0.0)
		var vb = b.get(k, Vector2.ZERO if (va is Vector2) else 0.0)
		if va is Vector2 or vb is Vector2:
			out[k] = (va as Vector2).lerp(vb as Vector2, t)
		else:
			out[k] = lerpf(float(va), float(vb), t)
	return out


## Glow on the parts over these channels (0..1); everything else calm.
func set_active(channels: Array, amount: float) -> void:
	for m in _all:
		m.set_shader_parameter("active", 0.0)
	for c in channels:
		for m in _by_channel.get(c, []):
			m.set_shader_parameter("active", amount)
