## What the eyes get on top of the elements themselves: a sphere breaking into glowing shards with sparks, a
## shockwave and a flash of its light on the room and the gloves; points that rise from the spot; the red edge of the
## view when a hit is taken; light trails behind the fists (bright once a strike is fast enough to count).
## Everything here is short-lived and cheap (CPU particles, a few quads, one light per burst) for the Quest's GPU.
class_name Fx
extends Node3D

const SHOCK := preload("res://shaders/shock.gdshader")
const VIGNETTE := preload("res://shaders/vignette.gdshader")
const TRAIL := preload("res://shaders/trail.gdshader")
const FONT := preload("res://assets/fonts/Inter-SemiBold.otf")

var comfort := false                 # softer: fewer sparks, a dimmer flash (light-sensitive players)
var _vig_mat: ShaderMaterial
var _shard_mesh: PrismMesh
var _spark_mesh: SphereMesh
var _quad := QuadMesh.new()


func _ready() -> void:
	_shard_mesh = PrismMesh.new()
	_shard_mesh.size = Vector3(0.022, 0.036, 0.01)
	_spark_mesh = SphereMesh.new()
	_spark_mesh.radius = 0.007
	_spark_mesh.height = 0.014
	_spark_mesh.radial_segments = 4
	_spark_mesh.rings = 2
	_quad.size = Vector2.ONE


## Around the head (a child of the camera): the red edge for a hit taken.
func attach_vignette(cam: Node3D) -> void:
	var m := MeshInstance3D.new()
	var s := SphereMesh.new()
	s.radius = 0.25
	s.height = 0.5
	s.radial_segments = 16
	s.rings = 8
	m.mesh = s
	_vig_mat = ShaderMaterial.new()
	_vig_mat.shader = VIGNETTE
	_vig_mat.render_priority = 100
	m.material_override = _vig_mat
	m.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	cam.add_child(m)


func vignette(amount: float) -> void:
	if _vig_mat:
		_vig_mat.set_shader_parameter("amount", clampf(amount, 0.0, 1.0))


## A sphere breaks: shards fly on along the strike (`dir`), sparks, a shockwave, its light flashes on the room.
func shatter(at: Vector3, color: Color, dir: Vector3, big := 1.0) -> void:
	var d := dir.normalized() if dir.length() > 0.01 else Vector3.FORWARD
	var shards := _particles(_shard_mesh, color.lightened(0.25), 16, 0.6, 0.9, 2.4 * big, d, 40.0)
	shards.particle_flag_rotate_y = true
	shards.angular_velocity_min = -720
	shards.angular_velocity_max = 720
	shards.angle_min = 0
	shards.angle_max = 360
	shards.gravity = Vector3(0, -4.0, 0)
	shards.damping_min = 1.0
	shards.damping_max = 2.5
	shards.scale_amount_min = 0.6
	shards.scale_amount_max = 1.5
	_spawn(shards, at)
	var sparks := _particles(_spark_mesh, Color(1, 1, 1).lerp(color, 0.35), 14 if comfort else 34, 0.3, 1.8, 4.5 * big, d, 180.0)
	sparks.damping_min = 4.0
	sparks.damping_max = 8.0
	_spawn(sparks, at)
	shock(at, color, 0.5 * big, 0.32)
	_flash(at, color, (1.0 if comfort else 3.5) * big, 0.28)


## Something red landed on you: a dark red burst at the spot.
func impact(at: Vector3) -> void:
	var c := Color(1.0, 0.15, 0.1)
	_spawn(_particles(_spark_mesh, c, 50, 0.5, 1.0, 3.0, Vector3.BACK, 180.0), at)
	shock(at, c, 0.6, 0.4)
	_flash(at, c, 0.8 if comfort else 2.5, 0.35)


## A beam slid past: a soft white ring where it would have hit.
func passed(at: Vector3) -> void:
	shock(at, Color(0.85, 1.0, 0.95), 0.45, 0.45)


func shock(at: Vector3, color: Color, size: float, life: float) -> void:
	var m := MeshInstance3D.new()
	m.mesh = _quad
	var mat := ShaderMaterial.new()
	mat.shader = SHOCK
	mat.set_shader_parameter("color", color)
	m.material_override = mat
	m.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	m.scale = Vector3.ONE * size
	add_child(m)
	m.global_position = at
	var tw := m.create_tween()
	tw.tween_method(func(v: float) -> void: mat.set_shader_parameter("age", v), 0.0, 1.0, life)
	tw.tween_callback(m.queue_free)


## Points rise from where they were earned and fade.
func popup(at: Vector3, text: String, color: Color, size := 46) -> void:
	var l := Label3D.new()
	l.text = text
	l.font = FONT
	l.font_size = size
	l.pixel_size = 0.0016
	l.modulate = color
	l.outline_size = 8
	l.outline_modulate = Color(0, 0, 0, 0.45)
	l.billboard = BaseMaterial3D.BILLBOARD_ENABLED
	l.no_depth_test = true
	l.render_priority = 5
	add_child(l)
	l.global_position = at + Vector3(0, 0.12, 0)
	l.scale = Vector3.ONE * 0.6
	var tw := l.create_tween().set_parallel(true)
	tw.tween_property(l, "scale", Vector3.ONE, 0.18).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	tw.tween_property(l, "global_position", l.global_position + Vector3(0, 0.32, 0), 0.9).set_ease(Tween.EASE_OUT)
	tw.tween_property(l, "modulate:a", 0.0, 0.45).set_delay(0.5)
	tw.chain().tween_callback(l.queue_free)


func _particles(mesh: Mesh, color: Color, amount: int, life: float, v0: float, v1: float, dir: Vector3,
		spread: float) -> CPUParticles3D:
	var p := CPUParticles3D.new()
	p.emitting = false                           # (on by default: it would burst at the origin before it is placed)
	p.one_shot = true
	p.amount = amount
	p.lifetime = life
	p.explosiveness = 1.0
	p.direction = dir
	p.spread = spread
	p.initial_velocity_min = v0
	p.initial_velocity_max = v1
	p.gravity = Vector3(0, -1.5, 0)
	var mat := StandardMaterial3D.new()
	mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	mat.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA     # not additive: it must read on a white room too
	mat.albedo_color = color
	mat.vertex_color_use_as_albedo = true
	var m := mesh.duplicate() as PrimitiveMesh
	m.material = mat
	p.mesh = m
	var g := Gradient.new()                      # bright, then fading out
	g.set_color(0, Color(1, 1, 1, 1))
	g.set_color(1, Color(1, 1, 1, 0))
	g.add_point(0.6, Color(1, 1, 1, 0.8))
	p.color_ramp = g
	return p


func _spawn(p: CPUParticles3D, at: Vector3) -> void:
	add_child(p)
	p.global_position = at
	p.restart()
	get_tree().create_timer(p.lifetime + 0.3, false).timeout.connect(p.queue_free)


func _flash(at: Vector3, color: Color, energy: float, life: float) -> void:
	var l := OmniLight3D.new()
	l.light_color = color.lightened(0.2)
	l.light_energy = energy
	l.omni_range = 2.6
	l.shadow_enabled = false
	add_child(l)
	l.global_position = at
	var tw := l.create_tween()
	tw.tween_property(l, "light_energy", 0.0, life).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_EXPO)
	tw.tween_callback(l.queue_free)


# ---------------------------------------------------------------- trails

## A ribbon of the last positions of one limb, in world space. update() once a frame.
class Trail extends MeshInstance3D:
	const N := 14
	var pts: Array[Vector3] = []
	var hot: Array[float] = []
	var color := Color(0.25, 0.85, 1.0)
	var width := 0.045
	var _im := ImmediateMesh.new()

	func _init(c: Color, w: float) -> void:
		color = c
		width = w
		mesh = _im
		top_level = true
		cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
		var m := ShaderMaterial.new()
		m.shader = TRAIL
		material_override = m

	## p: where the limb is now (world) · heat: 0 slow … 1 fast enough to break · eye: the camera position.
	func update(p: Vector3, heat: float, eye: Vector3, show := true) -> void:
		pts.push_front(p)
		hot.push_front(heat)
		if pts.size() > N:
			pts.pop_back()
			hot.pop_back()
		_im.clear_surfaces()
		if not show or pts.size() < 3:
			return
		_im.surface_begin(Mesh.PRIMITIVE_TRIANGLE_STRIP)
		for i in pts.size():
			var a := pts[i]
			var along := (a - pts[i + 1]) if i < pts.size() - 1 else (pts[i - 1] - a)
			if along.length() < 0.0005:
				along = Vector3.UP * 0.001
			var side := along.cross(eye - a).normalized()
			var f := 1.0 - float(i) / (pts.size() - 1)               # 1 at the fist … 0 at the tail
			var h := hot[i]
			var c := color.lerp(Color(1, 1, 1), h * 0.65)
			c.a = f * f * (0.12 + 0.88 * h)
			var w := width * (0.4 + 0.6 * f) * (0.7 + 0.5 * h)
			_im.surface_set_color(c)
			_im.surface_set_uv(Vector2(1.0 - f, 0.0))
			_im.surface_add_vertex(a + side * w)
			_im.surface_set_color(c)
			_im.surface_set_uv(Vector2(1.0 - f, 1.0))
			_im.surface_add_vertex(a - side * w)
		_im.surface_end()
