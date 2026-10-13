## The arena — a space made for the game, built from code (nothing to download, light on the Quest): a night sky with a
## haze on the horizon and stars, a dark glass floor whose neon grid streams towards you, arches of light down the
## lane that flare one after another towards you on every beat, the portal far ahead that everything comes out of,
## and dust in the air for depth. It listens: the bass of whatever music plays brightens it, and a long combo turns
## its colour (cyan → magenta → gold). On a dark ground every glow and burst of the game reads twice as strong.
class_name Arena
extends Node3D

const SKY := preload("res://shaders/arena_sky.gdshader")
const FLOOR := preload("res://shaders/arena_floor.gdshader")
const PORTAL := preload("res://shaders/portal.gdshader")
const PALETTE := [Color(0.1, 0.75, 1.0), Color(0.95, 0.2, 0.85), Color(1.0, 0.72, 0.18)]   # by combo: 0 · 10+ · 20+
const ARCHES := 9
const ARCH_GAP := 2.6

var sky_mat: ShaderMaterial
var _floor_mat: ShaderMaterial
var _portal: Node3D
var _portal_mat: ShaderMaterial
var _ring_mat: StandardMaterial3D
var _arch_mats: Array[StandardMaterial3D] = []
var _color := PALETTE[0]
var _target := PALETTE[0]
var _scroll := 0.0
var _flare := 0.0
var _last_beat := -1
var _gates: Array[Node3D] = []          # side gates (the portal is gate 0): where things are thrown from on an arc
var _gate_ring_mats: Array[StandardMaterial3D] = []
var _gate_disc_mats: Array[ShaderMaterial] = []
var _gate_flare: Array[float] = []


func _init() -> void:
	sky_mat = ShaderMaterial.new()
	sky_mat.shader = SKY
	_build_floor()
	_build_arches()
	_build_portal()
	_build_dust()


func _build_floor() -> void:
	var m := MeshInstance3D.new()
	var p := PlaneMesh.new()
	p.size = Vector2(60, 80)
	m.mesh = p
	_floor_mat = ShaderMaterial.new()
	_floor_mat.shader = FLOOR
	m.material_override = _floor_mat
	m.position = Vector3(0, -0.002, -25)
	m.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(m)


## Gateways of light down the lane, from 5.5 m ahead to the portal: two pillars and a beam each.
func _build_arches() -> void:
	for i in ARCHES:
		var z := -5.5 - i * ARCH_GAP                     # the first one behind the cards
		var w := 3.4 + i * 0.25                       # a little wider far away: the lane opens out
		var h := 3.0 + i * 0.12
		var mat := StandardMaterial3D.new()
		mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
		mat.albedo_color = _color
		_arch_mats.append(mat)
		for part in [[Vector3(-w * 0.5, h * 0.5, z), Vector3(0.06, h, 0.06)], [Vector3(w * 0.5, h * 0.5, z), Vector3(0.06, h, 0.06)],
				[Vector3(0, h, z), Vector3(w + 0.06, 0.06, 0.06)]]:
			var b := MeshInstance3D.new()
			var bm := BoxMesh.new()
			bm.size = part[1]
			b.mesh = bm
			b.material_override = mat
			b.position = part[0]
			b.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
			add_child(b)


func _build_portal() -> void:
	_portal = Node3D.new()
	add_child(_portal)
	var ring := MeshInstance3D.new()
	var t := TorusMesh.new()
	t.inner_radius = 1.25
	t.outer_radius = 1.38
	t.rings = 48
	t.ring_segments = 8
	ring.mesh = t
	ring.rotation_degrees = Vector3(90, 0, 0)
	_ring_mat = StandardMaterial3D.new()
	_ring_mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	_ring_mat.albedo_color = _color
	ring.material_override = _ring_mat
	_portal.add_child(ring)
	var disc := MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = Vector2(2.6, 2.6)
	disc.mesh = q
	_portal_mat = ShaderMaterial.new()
	_portal_mat.shader = PORTAL
	disc.material_override = _portal_mat
	_portal.add_child(disc)
	_portal.position = Vector3(0, 1.35, -14.0)


## Dust drifting towards you in the light: the eye reads depth and motion from it.
func _build_dust() -> void:
	var p := CPUParticles3D.new()
	p.amount = 260
	p.lifetime = 9.0
	p.preprocess = 9.0
	p.emission_shape = CPUParticles3D.EMISSION_SHAPE_BOX
	p.emission_box_extents = Vector3(7, 3, 12)
	p.direction = Vector3(0, 0, 1)
	p.spread = 8.0
	p.gravity = Vector3.ZERO
	p.initial_velocity_min = 0.4
	p.initial_velocity_max = 1.2
	p.scale_amount_min = 0.4
	p.scale_amount_max = 1.2
	var m := SphereMesh.new()
	m.radius = 0.008
	m.height = 0.016
	m.radial_segments = 4
	m.rings = 2
	var mat := StandardMaterial3D.new()
	mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	mat.blend_mode = BaseMaterial3D.BLEND_MODE_ADD
	mat.albedo_color = Color(0.5, 0.75, 0.9, 0.6)
	m.material = mat
	p.mesh = m
	p.position = Vector3(0, 3.2, -13)
	add_child(p)


## A smaller portal on the arc, on a beam of light standing on the floor.
func _build_gate() -> Node3D:
	var g := Node3D.new()
	add_child(g)
	var ring := MeshInstance3D.new()
	var t := TorusMesh.new()
	t.inner_radius = 0.5
	t.outer_radius = 0.56
	t.rings = 36
	t.ring_segments = 6
	ring.mesh = t
	ring.rotation_degrees = Vector3(90, 0, 0)
	var rm := StandardMaterial3D.new()
	rm.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	rm.albedo_color = _color
	ring.material_override = rm
	g.add_child(ring)
	var disc := MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = Vector2(1.08, 1.08)
	disc.mesh = q
	var dm := ShaderMaterial.new()
	dm.shader = PORTAL
	disc.material_override = dm
	g.add_child(disc)
	var beam := MeshInstance3D.new()
	var b := BoxMesh.new()
	b.size = Vector3(0.03, 1.0, 0.03)
	beam.mesh = b
	beam.material_override = rm
	beam.name = "beam"
	g.add_child(beam)
	_gate_ring_mats.append(rm)
	_gate_disc_mats.append(dm)
	_gate_flare.append(0.0)
	g.visible = false
	return g


## The gates of this level (world positions; [0] = the portal ahead, set by set_portal_z). show = false: only the portal.
func set_gates(world: Array, show: bool) -> void:
	while _gates.size() < world.size() - 1:
		_gates.append(_build_gate())
	for i in range(1, world.size()):
		var g := _gates[i - 1]
		var p: Vector3 = world[i]
		var was := g.visible
		g.visible = show
		var beam := g.get_node("beam") as MeshInstance3D
		(beam.mesh as BoxMesh).size.y = maxf(p.y - 0.56, 0.05)
		beam.position = Vector3(0, -0.56 - (beam.mesh as BoxMesh).size.y * 0.5, 0)
		if was:
			var tw := create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
			tw.tween_property(g, "position", p, 1.2)
		else:
			g.position = p
		var to_player := Vector3(-p.x, 0, -p.z)
		if to_player.length() > 0.1:
			g.basis = Basis.looking_at(to_player.normalized(), Vector3.UP)    # the disc faces the player


## Something was thrown out of side gate `i` (1…).
func flare_gate(i: int) -> void:
	if i >= 1 and i - 1 < _gate_flare.size():
		_gate_flare[i - 1] = 1.0


## Where things come from (the game moves it to the spawn distance of the level).
func set_portal_z(z: float, seconds := 1.2) -> void:
	var tw := create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tw.tween_property(_portal, "position:z", z, seconds)


## Something was thrown out of the portal.
func flare() -> void:
	_flare = 1.0


## combo 0 / 10+ / 20+ → the arena's colour.
func set_flow(combo: int) -> void:
	_target = PALETTE[2 if combo >= 20 else (1 if combo >= 10 else 0)]


## Once a frame. beat_t: the beat clock (s) · beat_len: s per beat · bass: 0 … 1 · speed: how fast things fly now (m/s).
func tick(delta: float, beat_t: float, beat_len: float, bass: float, speed: float) -> void:
	_color = _color.lerp(_target, clampf(delta * 2.0, 0.0, 1.0))
	_scroll += speed * delta
	_flare = max(_flare - delta * 4.0, 0.0)
	var phase := fposmod(beat_t, beat_len) / beat_len
	_floor_mat.set_shader_parameter("scroll", _scroll)
	_floor_mat.set_shader_parameter("phase", phase)
	_floor_mat.set_shader_parameter("energy", bass)
	_floor_mat.set_shader_parameter("line", _color)
	sky_mat.set_shader_parameter("energy", bass)
	sky_mat.set_shader_parameter("accent", _color * 0.7)
	_portal_mat.set_shader_parameter("energy", bass)
	_portal_mat.set_shader_parameter("flare", _flare)
	_portal_mat.set_shader_parameter("color", _color)
	_ring_mat.albedo_color = _color * (0.8 + 0.6 * bass + 0.8 * _flare)
	_portal.rotation.z += delta * 0.4
	for i in _gates.size():
		_gate_flare[i] = maxf(_gate_flare[i] - delta * 3.0, 0.0)
		_gate_ring_mats[i].albedo_color = _color * (0.7 + 0.5 * bass + 1.4 * _gate_flare[i])
		_gate_disc_mats[i].set_shader_parameter("energy", bass)
		_gate_disc_mats[i].set_shader_parameter("flare", _gate_flare[i])
		_gate_disc_mats[i].set_shader_parameter("color", _color)
	# the arches light up one after another towards you through the beat, the far one first
	for i in _arch_mats.size():
		var at := 1.0 - float(i) / (_arch_mats.size() - 1)              # 1 = far … 0 = near
		var d := absf(phase - (1.0 - at))
		var lit := exp(-d * d * 60.0)
		_arch_mats[i].albedo_color = _color * (0.18 + 0.25 * bass + 1.1 * lit)
