## One thing flying at the player: a plasma sphere to break, or a hazard beam to avoid.
## It flies straight along −Z → +Z (frame space) at `speed`; the game judges it. Looks only live here.
class_name Elem
extends Node3D

const PLASMA := preload("res://shaders/plasma.gdshader")
const HALO := preload("res://shaders/halo.gdshader")
const HAZARD := preload("res://shaders/hazard.gdshader")

var kind: int
var speed := 3.0
var radius := 0.15                 # breakable: sphere radius · hazard: half thickness
var half := Vector3.ZERO           # hazard: half extents of its box (frame space)
var side := 0                      # -1 left · +1 right · 0 middle
var done := false                  # broken / dodged / has hit: no longer judged
var contact_z := Defs.CONTACT_Z
var judged_pass := false           # the contact plane has been passed once
var sound: AudioStreamPlayer3D
var _mat: ShaderMaterial
var _halo_mat: ShaderMaterial
var _spin := Vector3.ZERO
var _t := 0.0


static func make(k: int, s: int, spd: float, height: float) -> Elem:
	var e := Elem.new()
	e.kind = k
	e.side = s
	e.speed = spd
	if Defs.is_hazard(k):
		e._build_hazard(height)
	else:
		e._build_orb(height)
	return e


func is_hazard() -> bool:
	return Defs.is_hazard(kind)


func _build_orb(height: float) -> void:
	radius = 0.16
	var c: Color = Defs.COLOR[kind]
	var m := MeshInstance3D.new()
	var sm := SphereMesh.new()
	sm.radius = radius
	sm.height = radius * 2.0
	sm.radial_segments = 24
	sm.rings = 12
	m.mesh = sm
	_mat = ShaderMaterial.new()
	_mat.shader = PLASMA
	_mat.set_shader_parameter("color", c)
	m.material_override = _mat
	m.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(m)
	var h := MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = Vector2.ONE * radius * 5.0
	h.mesh = q
	_halo_mat = ShaderMaterial.new()
	_halo_mat.shader = HALO
	_halo_mat.set_shader_parameter("color", c)
	h.material_override = _halo_mat
	h.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(h)
	var trail := CPUParticles3D.new()
	trail.amount = 22
	trail.lifetime = 0.45
	trail.local_coords = false
	trail.direction = Vector3(0, 0, -1)
	trail.spread = 12.0
	trail.initial_velocity_min = 0.1
	trail.initial_velocity_max = 0.5
	trail.scale_amount_min = 0.6
	trail.scale_amount_max = 1.2
	var tm := SphereMesh.new()
	tm.radius = 0.02
	tm.height = 0.04
	tm.radial_segments = 6
	tm.rings = 3
	var tmat := StandardMaterial3D.new()
	tmat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	tmat.blend_mode = BaseMaterial3D.BLEND_MODE_ADD
	tmat.albedo_color = c
	tm.material = tmat
	trail.mesh = tm
	add_child(trail)
	_spin = Vector3(0.4, 0.9, 0.2)


func _build_hazard(height: float) -> void:
	var c: Color = Defs.COLOR[kind]
	var size := Vector3.ZERO
	var vertical := false
	match kind:
		Defs.Kind.DUCK:                           # a bar across the whole body at head height
			size = Vector3(1.7, 0.16, 0.12)
			half = size * 0.5
		_:                                        # a pillar beside the head
			size = Vector3(0.3, 1.3, 0.12)
			half = size * 0.5
			vertical = true
	radius = 0.12
	var m := MeshInstance3D.new()
	var bm := BoxMesh.new()
	bm.size = size
	m.mesh = bm
	var mat := ShaderMaterial.new()
	mat.shader = HAZARD
	mat.set_shader_parameter("color", c)
	mat.set_shader_parameter("vertical", vertical)
	mat.set_shader_parameter("stripes", 9.0 if not vertical else 6.0)
	m.material_override = mat
	m.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	_mat = mat
	add_child(m)
	var h := MeshInstance3D.new()                 # a broad red glow around it: you cannot miss it
	var q := QuadMesh.new()
	q.size = Vector2(max(size.x, size.y) * 1.5, max(size.x, size.y) * 1.5)
	h.mesh = q
	_halo_mat = ShaderMaterial.new()
	_halo_mat.shader = HALO
	_halo_mat.set_shader_parameter("color", c)
	_halo_mat.set_shader_parameter("energy", 0.35)
	h.material_override = _halo_mat
	add_child(h)
	for sx in [-1.0, 1.0]:                        # end caps: spikes, so it reads as dangerous even in outline
		var cap := MeshInstance3D.new()
		var cm := CylinderMesh.new()
		cm.top_radius = 0.0
		cm.bottom_radius = 0.07
		cm.height = 0.22
		cap.mesh = cm
		var cmat := StandardMaterial3D.new()
		cmat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
		cmat.albedo_color = Color(1.0, 0.25, 0.2)
		cap.material_override = cmat
		if vertical:
			cap.position = Vector3(0, sx * (size.y * 0.5 + 0.08), 0)
			cap.rotation_degrees = Vector3(0, 0, 0 if sx < 0 else 180)
		else:
			cap.position = Vector3(sx * (size.x * 0.5 + 0.08), 0, 0)
			cap.rotation_degrees = Vector3(0, 0, 90 if sx < 0 else -90)
		add_child(cap)


func flash(amount: float) -> void:
	if _mat:
		_mat.set_shader_parameter("pulse", amount)


func advance(delta: float) -> void:
	_t += delta
	position.z += speed * delta
	if _t < 0.4 and speed > 0.0:               # it materialises out of the far wall
		scale = Vector3.ONE * clamp(_t / 0.4, 0.2, 1.0)
	if _mat and not is_hazard():
		rotation += _spin * delta
	if _halo_mat and not is_hazard():
		_halo_mat.set_shader_parameter("energy", 0.55 + 0.2 * sin(_t * 8.0))
