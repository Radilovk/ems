## What food does when it is hit or eaten (the chef scenario), in the room's world space:
##   burst  – medium / mighty: the portion flies apart along the punch — a burger into its bun, patty, cheese and
##            tomato (assets/chef/burger_bits.glb), anything else into lumps of its own colour — with a wet splat;
##   drop   – weak: knocked out of the air, it tumbles to the ground, bounces once and is gone;
##   send_back – mighty and aimed ahead: the whole portion flies back into the chef and splats on him;
##   visor  – eaten: a splat of it right across the eyes that slides off.
class_name FoodFx
extends Node3D

const BITS := preload("res://assets/chef/burger_bits.glb")
const SPLAT := preload("res://shaders/splat.gdshader")
const BURGERS := ["burger", "cheeseburger", "mega"]

var comfort := false
var _bits: Array[Mesh] = []
var _lump: SphereMesh
var _visor: MeshInstance3D
var _visor_t := 0.0


func _ready() -> void:
	var n := BITS.instantiate()
	for mi in n.find_children("*", "MeshInstance3D", true, false):
		_bits.append((mi as MeshInstance3D).mesh)
	n.free()
	_lump = SphereMesh.new()
	_lump.radius = 0.03
	_lump.height = 0.045
	_lump.radial_segments = 8
	_lump.rings = 4


## The portion flies apart along `dir` (world); tier 1 = medium, 2 = mighty (more, faster, further).
func burst(at: Vector3, id: String, dir: Vector3, tier: int) -> void:
	var f: Dictionary = Defs.FOODS[id]
	var d := dir.normalized() if dir.length() > 0.01 else Vector3.FORWARD
	var n := (5 if tier < 2 else 9) * (2 if id == "mega" else 1)
	var c: Color = f.splash
	for i in n:
		var p := Debris.new()
		var mi := MeshInstance3D.new()
		mi.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
		if id in BURGERS and not _bits.is_empty() and i % 3 != 2:
			mi.mesh = _bits[randi() % _bits.size()]
			mi.scale = Vector3.ONE * randf_range(0.25, 0.4) * (1.6 if id == "mega" else 1.0)
		else:
			mi.mesh = _lump
			var m := StandardMaterial3D.new()
			m.albedo_color = c.lightened(randf_range(-0.15, 0.2))
			m.roughness = 0.35                      # wet
			mi.material_override = m
			mi.scale = Vector3(1.0, 0.55, 1.0) * randf_range(0.6, 1.5)
		p.add_child(mi)
		add_child(p)
		p.global_position = at + Vector3(randf_range(-0.05, 0.05), randf_range(-0.05, 0.05), randf_range(-0.05, 0.05))
		var spread := Vector3(randf_range(-1, 1), randf_range(-0.3, 1.0), randf_range(-1, 1)) * (0.9 if tier < 2 else 1.6)
		p.vel = d * randf_range(1.5, 3.0) * (1.0 if tier < 2 else 1.9) + spread + Vector3(0, 1.2, 0)
		p.spin = Vector3(randf_range(-9, 9), randf_range(-9, 9), randf_range(-9, 9))
		p.life = randf_range(1.0, 1.6)
	_splash(at, c, 0.35 if tier < 2 else 0.6)


## Knocked down: the whole portion falls, tumbling, bounces once on the ground and shrinks away.
func drop(at: Vector3, id: String, vel: Vector3) -> void:
	var p := Debris.new()
	p.add_child(Elem.food_model(id))
	add_child(p)
	p.global_position = at
	p.vel = vel
	p.spin = Vector3(randf_range(-6, 6), randf_range(-4, 4), randf_range(-6, 6))
	p.life = 2.2
	p.bounce = 0.35
	_splash(at, Defs.FOODS[id].splash, 0.2)


## Sent back: the portion flies from `from` to `to` (world) in `sec`, along a flat arc, and then `hit` is called.
func send_back(from: Vector3, to: Vector3, id: String, sec: float, hit: Callable) -> void:
	var holder := Node3D.new()
	var m := Elem.food_model(id)
	holder.add_child(m)
	add_child(holder)
	holder.global_position = from
	var tw := holder.create_tween()
	tw.tween_method(func(s: float) -> void:
		holder.global_position = from.lerp(to, s) + Vector3(0, 0.6 * 4.0 * s * (1.0 - s), 0)
		m.rotation += Vector3(0.3, 0.5, 0.1), 0.0, 1.0, sec)
	tw.tween_callback(func() -> void:
		_splash(to, Defs.FOODS[id].splash, 0.7)
		burst(to, id, (to - from).normalized(), 1)
		hit.call()
		holder.queue_free())


## Eaten: a splat over the eyes (a quad just in front of the camera), sliding down and fading.
func visor(cam: Node3D, color: Color) -> void:
	if _visor == null:
		_visor = MeshInstance3D.new()
		var q := QuadMesh.new()
		q.size = Vector2(0.34, 0.34)
		_visor.mesh = q
		var m := ShaderMaterial.new()
		m.shader = SPLAT
		m.render_priority = 30
		_visor.material_override = m
		_visor.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
		cam.add_child(_visor)
	var mat := _visor.material_override as ShaderMaterial
	mat.set_shader_parameter("color", Color(color.r, color.g, color.b, 0.55 if comfort else 0.85))
	mat.set_shader_parameter("seed", randf() * 10.0)
	_visor.position = Vector3(randf_range(-0.04, 0.04), randf_range(-0.02, 0.05), -0.22)
	_visor.rotation.z = randf() * TAU
	_visor.scale = Vector3.ONE * 0.5
	_visor.visible = true
	_visor_t = 1.4
	var tw := _visor.create_tween()
	tw.tween_property(_visor, "scale", Vector3.ONE, 0.08).set_ease(Tween.EASE_OUT)


func _process(delta: float) -> void:
	if _visor and _visor.visible:
		_visor_t -= delta
		_visor.position.y -= delta * 0.03                     # it slides down …
		(_visor.material_override as ShaderMaterial).set_shader_parameter("alpha", clampf(_visor_t / 0.7, 0.0, 1.0))
		_visor.visible = _visor_t > 0.0                       # … and is gone


func _splash(at: Vector3, c: Color, size: float) -> void:
	var s := MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = Vector2.ONE * size
	s.mesh = q
	var m := ShaderMaterial.new()
	m.shader = SPLAT
	m.set_shader_parameter("color", c)
	m.set_shader_parameter("seed", randf() * 10.0)
	s.material_override = m
	s.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(s)
	s.global_position = at
	var cam := get_viewport().get_camera_3d()
	if cam:
		s.look_at(cam.global_position, Vector3.UP, true)
	s.scale = Vector3.ONE * 0.3
	var tw := s.create_tween().set_parallel(true)
	tw.tween_property(s, "scale", Vector3.ONE, 0.12).set_ease(Tween.EASE_OUT)
	tw.tween_method(func(a: float) -> void: m.set_shader_parameter("alpha", a), 1.0, 0.0, 0.5).set_delay(0.15)
	tw.chain().tween_callback(s.queue_free)


## A piece in flight: falls, spins, bounces off the floor (y = 0), shrinks at the end of its life.
class Debris extends Node3D:
	var vel := Vector3.ZERO
	var spin := Vector3.ZERO
	var life := 1.2
	var bounce := 0.25
	var _age := 0.0

	func _process(delta: float) -> void:
		_age += delta
		vel.y -= 9.0 * delta
		global_position += vel * delta
		rotation += spin * delta
		if global_position.y < 0.03 and vel.y < 0.0:
			global_position.y = 0.03
			vel = Vector3(vel.x * 0.5, -vel.y * bounce, vel.z * 0.5)
			spin *= 0.5
		if _age > life - 0.3:
			scale = Vector3.ONE * maxf((life - _age) / 0.3, 0.01)
		if _age >= life:
			queue_free()
