## One thing flying at the player: a plasma sphere to break, or a hazard beam / wall to avoid.
## It flies from where it was thrown (a gate far ahead, maybe off to a side and high) along a curve that ends straight
## at the player at `speed`, reaching its target exactly at the beat-clock time `arrival`; then it carries on along +Z.
## Frame space; the game judges it. Looks only live here.
class_name Elem
extends Node3D

const PLASMA := preload("res://shaders/plasma.gdshader")
const HALO := preload("res://shaders/halo.gdshader")
const HAZARD := preload("res://shaders/hazard.gdshader")
const APPROACH := preload("res://shaders/approach.gdshader")
const FONT := preload("res://assets/fonts/Inter-SemiBold.otf")

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
var _trail: CPUParticles3D
var bonus := false                  # a golden sphere: rare, worth triple, a bigger burst
var _rings: Array[MeshInstance3D] = []
var _ring_mat: StandardMaterial3D
const BONUS_COLOR := Color(1.0, 0.78, 0.2)
var marker: MeshInstance3D          # a sphere's target ring, waiting at the contact spot (a sibling: it does not fly)
var _marker_mat: ShaderMaterial
var arrival := 0.0                  # beat-clock time it reaches its target (timing of a hit is judged against it)
var travel := 0.0                   # seconds from the gate to the target
var age := 0.0                      # seconds since it was thrown
var p0 := Vector3.ZERO              # the gate
var p1 := Vector3.ZERO              # the curve's pull: straight behind the target, so it ends flying at the player
var p2 := Vector3.ZERO              # the target (contact point / the player's plane)
var flying := false
static var beat := 0.0              # 0 … 1, peaks on each beat: the spheres swell with the music
var food := ""                       # the chef's throws: a key of Defs.FOODS ("" = a sphere, a shield, a hazard)
var hp := 1                          # power points still needed to break it (Defs.FOODS hp; the MEGA burger 3)
var arc := 0.0                       # food is lobbed: the height of its arc over the straight line (m)
var _model: Node3D
static var _scenes := {}             # food model path -> PackedScene (loaded once)
var punch := ""                     # "" any · jab · hook_l · hook_r · upper: the way the fist must travel
var dir := Vector3.ZERO             # Defs.PUNCH[punch]


static func make(k: int, s: int, spd: float, height: float) -> Elem:
	var e := Elem.new()
	e.kind = k
	e.side = s
	e.speed = spd
	if Defs.is_hazard(k):
		e._build_hazard(height)
	elif k == Defs.Kind.BLOCK:
		e._build_shield()
	else:
		e._build_orb(height)
	return e


## The chef's throw: the food's own model, sized and lit so it reads from 8 m in a photo of a square.
static func make_food(id: String, spd: float) -> Elem:
	var e := Elem.new()
	var f: Dictionary = Defs.FOODS[id]
	e.kind = Defs.Kind.APPLE if id == "apple" else Defs.Kind.FOOD
	e.food = id
	e.speed = spd
	e.hp = int(f.hp)
	e._build_food(f)
	return e


## The food's model, its longest side `size` metres, round its middle (also what the chef holds before he throws).
static func food_model(id: String, size := -1.0) -> Node3D:
	var f: Dictionary = Defs.FOODS[id]
	if not _scenes.has(f.model):
		_scenes[f.model] = load(f.model)
	var n: Node3D = (_scenes[f.model] as PackedScene).instantiate()
	var box := AABB()
	var first := true
	for mi in n.find_children("*", "MeshInstance3D", true, false):
		var b: AABB = (mi as MeshInstance3D).get_aabb()
		box = b if first else box.merge(b)
		first = false
		(mi as MeshInstance3D).cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	var holder := Node3D.new()
	holder.add_child(n)
	var k: float = (size if size > 0.0 else float(f.size)) / maxf(box.get_longest_axis_size(), 0.001)
	n.scale = Vector3.ONE * k
	n.position = -box.get_center() * k
	return holder


func _build_food(f: Dictionary) -> void:
	radius = float(f.size) * 0.55
	_model = food_model(food)
	add_child(_model)
	var c: Color = Defs.COLOR[kind] if not Defs.boss(food) else BONUS_COLOR
	var h := MeshInstance3D.new()                  # a soft glow behind it: food is the target, the square is not
	var q := QuadMesh.new()
	q.size = Vector2.ONE * radius * (4.2 if Defs.boss(food) else 3.4)
	h.mesh = q
	_halo_mat = ShaderMaterial.new()
	_halo_mat.shader = HALO
	_halo_mat.set_shader_parameter("color", c)
	h.material_override = _halo_mat
	h.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(h)
	_spin = Vector3(randf_range(-2.0, 2.0), randf_range(2.0, 4.0), randf_range(-1.0, 1.0)) * (0.4 if Defs.boss(food) else 1.0)


## A hit that was not enough (the MEGA burger): it shakes, flashes and flies on, a little slower.
func crack(left: int) -> void:
	hp = left
	var tw := create_tween()
	tw.tween_property(_model, "scale", Vector3(1.25, 0.8, 1.25), 0.06)
	tw.tween_property(_model, "scale", Vector3.ONE, 0.25).set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_OUT)
	if _halo_mat:
		_halo_mat.set_shader_parameter("color", Color(1.0, 0.3, 0.15))


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
	# Orbit rings tell the kinds apart by shape too (fist 1, knee 2, foot 3), and make it turn like a machine part.
	_ring_mat = StandardMaterial3D.new()
	_ring_mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	_ring_mat.albedo_color = c.lightened(0.35)
	# The low one wears one wide flat ring, like a planet: it reads "down there" at a glance.
	var n: int = {Defs.Kind.HAND: 1, Defs.Kind.KNEE: 2, Defs.Kind.FOOT: 3, Defs.Kind.LOW: 1}.get(kind, 1)
	for i in n:
		var r := MeshInstance3D.new()
		var t := TorusMesh.new()
		var wide := 1.35 if kind == Defs.Kind.LOW else 1.0
		t.inner_radius = radius * 1.42 * wide
		t.outer_radius = radius * 1.5 * wide
		t.rings = 32
		t.ring_segments = 4
		r.mesh = t
		r.material_override = _ring_mat
		r.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
		r.rotation_degrees = Vector3(8, 0, 0) if kind == Defs.Kind.LOW else Vector3(70 + i * 55, i * 60, 0)
		add_child(r)
		_rings.append(r)
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
	trail.gravity = Vector3.ZERO                  # a wake that stays on the line of flight, not falling dust
	_trail = trail
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
		Defs.Kind.WALL_L, Defs.Kind.WALL_R:       # a wall over one half of the body, knees to above the head
			size = Vector3(Defs.WALL_W, height * 1.15, 0.12)
			vertical = true
		_:                                        # a pillar beside the head
			size = Vector3(0.3, 1.3, 0.12)
			vertical = true
	half = size * 0.5
	radius = 0.12
	var m := MeshInstance3D.new()
	var bm := BoxMesh.new()
	bm.size = size
	m.mesh = bm
	var mat := ShaderMaterial.new()
	mat.shader = HAZARD
	mat.set_shader_parameter("color", c)
	mat.set_shader_parameter("vertical", vertical)
	mat.set_shader_parameter("stripes", 9.0 if not vertical else (6.0 if size.x < 0.5 else 3.0))
	if size.x > 1.0 and vertical:
		mat.set_shader_parameter("opacity", 0.5)
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
	if kind == Defs.Kind.WALL_L or kind == Defs.Kind.WALL_R:     # which way to step, written on the wall
		var arrow := Label3D.new()
		arrow.text = "▶▶" if kind == Defs.Kind.WALL_L else "◀◀"
		arrow.font = FONT
		arrow.font_size = 160
		arrow.pixel_size = 0.0025
		arrow.modulate = Color(1, 0.92, 0.85)
		arrow.outline_size = 16
		arrow.outline_modulate = Color(0.4, 0, 0, 0.8)
		arrow.position = Vector3(0.0, 0.1, size.z * 0.5 + 0.01)
		add_child(arrow)
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


## A guard to hold: a pink hexagon shield flying at the face — both fists up together in front of it.
func _build_shield() -> void:
	radius = 0.24
	var c: Color = Defs.COLOR[kind]
	var m := MeshInstance3D.new()
	var cm := CylinderMesh.new()
	cm.top_radius = radius
	cm.bottom_radius = radius
	cm.height = 0.04
	cm.radial_segments = 6
	cm.rings = 1
	m.mesh = cm
	m.rotation_degrees = Vector3(90, 0, 0)        # its face towards the player
	_mat = ShaderMaterial.new()
	_mat.shader = PLASMA
	_mat.set_shader_parameter("color", c)
	m.material_override = _mat
	m.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(m)
	var rim := MeshInstance3D.new()
	var t := TorusMesh.new()
	t.inner_radius = radius * 1.08
	t.outer_radius = radius * 1.16
	t.rings = 6
	t.ring_segments = 4
	rim.mesh = t
	rim.rotation_degrees = Vector3(90, 0, 0)
	_ring_mat = StandardMaterial3D.new()
	_ring_mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	_ring_mat.albedo_color = c.lightened(0.45)
	rim.material_override = _ring_mat
	add_child(rim)
	_rings.append(rim)
	var h := MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = Vector2.ONE * radius * 4.0
	h.mesh = q
	_halo_mat = ShaderMaterial.new()
	_halo_mat.shader = HALO
	_halo_mat.set_shader_parameter("color", c)
	h.material_override = _halo_mat
	add_child(h)
	var fm := StandardMaterial3D.new()             # two fists side by side: "guard up"
	fm.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	fm.albedo_color = Color(1, 0.95, 0.98)
	for sx in [-1.0, 1.0]:
		var f := MeshInstance3D.new()
		var fs := SphereMesh.new()
		fs.radius = 0.05
		fs.height = 0.1
		fs.radial_segments = 12
		fs.rings = 6
		f.mesh = fs
		f.scale = Vector3(1.0, 1.15, 0.5)
		f.material_override = fm
		f.position = Vector3(sx * 0.065, 0.02, 0.03)
		add_child(f)
	var word := Label3D.new()
	word.text = "БЛОК"
	word.font = FONT
	word.font_size = 44
	word.pixel_size = 0.002
	word.modulate = c.lightened(0.6)
	word.outline_size = 10
	word.outline_modulate = Color(0.3, 0.0, 0.15, 0.8)
	word.position = Vector3(0, -radius - 0.06, 0.03)
	add_child(word)


## The way the fist must travel through it: a white chevron on the front (straight punch: a bull's-eye dot).
func set_punch(name: String) -> void:
	punch = name
	dir = Defs.PUNCH.get(name, Vector3.ZERO)
	if name == "":
		return
	var holder := Node3D.new()
	holder.position = Vector3(0, 0, radius + 0.012)
	add_child(holder)
	var m := StandardMaterial3D.new()
	m.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	m.albedo_color = Color(1, 1, 1)
	if name == "jab":
		var dot := MeshInstance3D.new()
		var cyl := CylinderMesh.new()
		cyl.top_radius = 0.045
		cyl.bottom_radius = 0.045
		cyl.height = 0.01
		cyl.radial_segments = 16
		dot.mesh = cyl
		dot.rotation_degrees = Vector3(90, 0, 0)
		dot.material_override = m
		holder.add_child(dot)
		return
	# a chevron "^" pointing up; turned for the hooks
	for sx in [-1.0, 1.0]:
		var bar := MeshInstance3D.new()
		var b := BoxMesh.new()
		b.size = Vector3(0.11, 0.028, 0.01)
		bar.mesh = b
		bar.material_override = m
		bar.position = Vector3(sx * 0.036, -0.012, 0)
		bar.rotation_degrees = Vector3(0, 0, -sx * 38.0)
		holder.add_child(bar)
	holder.rotation_degrees.z = {"upper": 0.0, "hook_l": -90.0, "hook_r": 90.0}.get(name, 0.0)
	_spin = Vector3.ZERO                           # the arrow must stay readable: no tumbling


## The ring at the spot where this sphere must be hit: faint and a little wide while the sphere is far, tightening and
## brightening as it comes — strike when the sphere fills it.
## Shown still (the rules' examples): no wake behind it.
func still() -> void:
	if _trail:
		_trail.emitting = false


## Turn this sphere golden (a rare bonus).
func set_bonus() -> void:
	bonus = true
	_mat.set_shader_parameter("color", BONUS_COLOR)
	_halo_mat.set_shader_parameter("color", BONUS_COLOR)
	_ring_mat.albedo_color = BONUS_COLOR.lightened(0.4)
	if _trail:
		(_trail.mesh as PrimitiveMesh).material.albedo_color = BONUS_COLOR
	if _marker_mat:
		_marker_mat.set_shader_parameter("color", BONUS_COLOR)


func make_marker(parent: Node3D) -> void:
	marker = MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = Vector2.ONE
	marker.mesh = q
	_marker_mat = ShaderMaterial.new()
	_marker_mat.shader = APPROACH
	_marker_mat.set_shader_parameter("color", BONUS_COLOR if bonus else Defs.COLOR[kind])
	marker.material_override = _marker_mat
	marker.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	parent.add_child(marker)
	marker.position = Vector3(position.x, position.y, contact_z)
	_update_marker()


func _update_marker() -> void:
	if marker == null:
		return
	var lead := maxf(speed * 1.3, 0.5)                        # the ring starts closing 1.3 s before contact
	var k := clampf((contact_z - position.z) / lead, 0.0, 1.0)
	marker.scale = Vector3.ONE * lerpf(radius * 2.25, radius * 3.4, k)
	_marker_mat.set_shader_parameter("k", k)
	_marker_mat.set_shader_parameter("alpha", clampf(_t / 0.5, 0.0, 1.0) * (0.2 + 0.8 * (1.0 - k)))
	marker.visible = position.z < contact_z + 0.25 and not done


func free_marker() -> void:
	if marker and is_instance_valid(marker):
		marker.queue_free()
	marker = null


func _exit_tree() -> void:
	free_marker()


func flash(amount: float) -> void:
	if _mat:
		_mat.set_shader_parameter("pulse", amount)


## Throw it from `from` so it reaches `target` at beat-clock time `at` (now = the beat clock now).
func fly(from: Vector3, target: Vector3, at: float, now: float) -> void:
	travel = maxf(at - now, 0.3)
	arrival = now + travel
	p0 = from
	p2 = target
	p1 = target - Vector3(0, 0, speed * travel * 0.5)     # straight-on spawn → p1 is the midpoint: an even, straight flight
	age = 0.0
	flying = true
	position = from


## Where it is `t` seconds after it was thrown.
func at_time(t: float) -> Vector3:
	if t >= travel:
		return p2 + Vector3(0, 0, speed * (t - travel))
	var s := t / travel
	if arc > 0.0:                             # lobbed: a straight line from the hand, lifted by a parabola
		return p0.lerp(p2, s) + Vector3(0, arc * 4.0 * s * (1.0 - s), 0)
	return p0 * (1.0 - s) * (1.0 - s) + p1 * 2.0 * (1.0 - s) * s + p2 * s * s


func advance(delta: float) -> void:
	_t += delta
	if flying:
		age += delta
		position = at_time(age)
	else:
		position.z += speed * delta
	if _t < 0.4 and speed > 0.0:               # it materialises out of the gate
		scale = Vector3.ONE * clamp(_t / 0.4, 0.2, 1.0)
	elif not is_hazard() and speed > 0.0:
		scale = Vector3.ONE * (1.0 + 0.09 * beat)
	if (_mat or _model) and not is_hazard():
		rotation += _spin * delta
		for i in _rings.size():
			_rings[i].rotate_object_local(Vector3.UP, delta * (2.5 + i * 1.3) * (1 if i % 2 == 0 else -1))
	if _halo_mat and not is_hazard():
		_halo_mat.set_shader_parameter("energy", (0.3 if food != "" else 0.55) + 0.2 * sin(_t * 8.0))
	_update_marker()
