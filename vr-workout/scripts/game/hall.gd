## The brutalist hall, dressed for training (built from code, no downloads): a big LED wall at the end of the hall
## playing the music as light, neon strips along the ceiling whose cross bars run towards you on every beat, tubes of
## light standing down both sides, two boxing bags and a corner of gym kit beside you, glowing lane lines on the
## floor and two big words on the side walls. The colour follows the combo like the arena's (cyan → magenta → gold).
class_name HallDressing
extends Node3D

const LED := preload("res://shaders/led_wall.gdshader")
const FONT := preload("res://assets/fonts/Inter-SemiBold.otf")
const PALETTE := [Color(0.1, 0.75, 1.0), Color(0.95, 0.2, 0.85), Color(1.0, 0.72, 0.18)]
const CEIL := 2.9                     # under the beams of the hall's ceiling
const LANE_END := -15.0

var _led: ShaderMaterial
var _glow_mats: Array[StandardMaterial3D] = []      # lit by the bass
var _cross_mats: Array[StandardMaterial3D] = []     # the ceiling cross bars, far → near
var _words: Array[Label3D] = []
var _color: Color = PALETTE[0]
var _target: Color = PALETTE[0]


func _ready() -> void:
	_build_led_wall()
	_build_ceiling()
	_build_tubes()
	_build_floor_lines()
	_build_bags()
	_build_kit()
	_build_words()


func _glow(c: Color, energy := 2.0) -> StandardMaterial3D:
	var m := StandardMaterial3D.new()
	m.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	m.albedo_color = c * energy
	return m


func _box(size: Vector3, pos: Vector3, mat: Material) -> MeshInstance3D:
	var n := MeshInstance3D.new()
	var b := BoxMesh.new()
	b.size = size
	n.mesh = b
	n.material_override = mat
	n.position = pos
	n.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(n)
	return n


func _build_led_wall() -> void:
	var w := 9.0
	var h := 2.9
	var frame := StandardMaterial3D.new()
	frame.albedo_color = Color(0.05, 0.05, 0.06)
	frame.metallic = 0.6
	frame.roughness = 0.4
	_box(Vector3(w + 0.3, h + 0.3, 0.2), Vector3(0, 0.25 + h * 0.5, LANE_END - 0.12), frame)
	var q := MeshInstance3D.new()
	var qm := QuadMesh.new()
	qm.size = Vector2(w, h)
	q.mesh = qm
	_led = ShaderMaterial.new()
	_led.shader = LED
	_led.set_shader_parameter("dots", Vector2(w * 22.0, h * 22.0))
	q.material_override = _led
	q.position = Vector3(0, 0.25 + h * 0.5, LANE_END)
	add_child(q)
	for x in [-w * 0.5 - 0.15, w * 0.5 + 0.15]:                    # light bars on the frame's sides
		var m := _glow(PALETTE[0])
		_glow_mats.append(m)
		_box(Vector3(0.05, h + 0.3, 0.05), Vector3(x, 0.25 + h * 0.5, LANE_END + 0.02), m)


func _build_ceiling() -> void:
	for x in [-2.2, 2.2]:
		var m := _glow(PALETTE[0], 1.4)
		_glow_mats.append(m)
		_box(Vector3(0.06, 0.04, 19.0), Vector3(x, CEIL, LANE_END * 0.5 + 1.5), m)
	var n := 8
	for i in n:
		var m := _glow(PALETTE[0], 0.3)
		_cross_mats.append(m)
		_box(Vector3(4.4, 0.04, 0.06), Vector3(0, CEIL, LANE_END + 1.0 + i * 2.0), m)


func _build_tubes() -> void:
	for side in [-1.0, 1.0]:
		for i in 6:
			var z := 1.0 - i * 2.8
			var x: float = side * (5.2 + 0.4 * float(i % 2))
			var t := MeshInstance3D.new()
			var c := CapsuleMesh.new()
			c.radius = 0.035
			c.height = 2.6
			c.radial_segments = 8
			c.rings = 2
			t.mesh = c
			var m := _glow(PALETTE[i % 2 * 1], 1.6)
			_glow_mats.append(m)
			t.material_override = m
			t.position = Vector3(x, 1.45, z)
			t.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
			add_child(t)
			var base := StandardMaterial3D.new()                    # a dark steel foot under each tube
			base.albedo_color = Color(0.08, 0.08, 0.09)
			base.metallic = 0.7
			base.roughness = 0.35
			_box(Vector3(0.18, 0.08, 0.18), Vector3(x, 0.04, z), base)


func _build_floor_lines() -> void:
	for x in [-1.7, 1.7]:
		var m := _glow(PALETTE[0], 0.9)
		_glow_mats.append(m)
		_box(Vector3(0.04, 0.006, 15.0), Vector3(x, 0.004, LANE_END * 0.5 + 0.5), m)


## A heavy bag on a chain from the ceiling: leather, a darker band top and bottom.
func _build_bags() -> void:
	var leather := StandardMaterial3D.new()
	leather.albedo_color = Color(0.32, 0.05, 0.05)
	leather.roughness = 0.45
	leather.clearcoat_enabled = true
	leather.clearcoat = 0.4
	var band := StandardMaterial3D.new()
	band.albedo_color = Color(0.06, 0.06, 0.06)
	band.roughness = 0.5
	var chain := StandardMaterial3D.new()
	chain.albedo_color = Color(0.55, 0.56, 0.6)
	chain.metallic = 0.9
	chain.roughness = 0.3
	for p in [Vector3(-3.3, 0, 1.4), Vector3(3.4, 0, 0.6)]:
		var bag := MeshInstance3D.new()
		var cyl := CylinderMesh.new()
		cyl.top_radius = 0.18
		cyl.bottom_radius = 0.18
		cyl.height = 1.1
		cyl.radial_segments = 20
		bag.mesh = cyl
		bag.material_override = leather
		bag.position = p + Vector3(0, 1.15, 0)
		add_child(bag)
		for y in [0.52, -0.52]:
			var r := MeshInstance3D.new()
			var rc := CylinderMesh.new()
			rc.top_radius = 0.185
			rc.bottom_radius = 0.185
			rc.height = 0.07
			rc.radial_segments = 20
			r.mesh = rc
			r.material_override = band
			r.position = Vector3(0, y, 0)
			bag.add_child(r)
		var ch := MeshInstance3D.new()
		var cc := CylinderMesh.new()
		cc.top_radius = 0.012
		cc.bottom_radius = 0.012
		cc.height = 3.6 - 1.7
		ch.mesh = cc
		ch.material_override = chain
		ch.position = p + Vector3(0, 1.7 + (3.6 - 1.7) * 0.5, 0)
		add_child(ch)


## A corner of gym kit to the left: plyo boxes, kettlebells and a rubber mat — the hall reads as a place to train.
func _build_kit() -> void:
	var wood := StandardMaterial3D.new()
	wood.albedo_color = Color(0.55, 0.38, 0.22)
	wood.roughness = 0.8
	var rubber := StandardMaterial3D.new()
	rubber.albedo_color = Color(0.07, 0.07, 0.08)
	rubber.roughness = 0.95
	var iron := StandardMaterial3D.new()
	iron.albedo_color = Color(0.09, 0.09, 0.1)
	iron.metallic = 0.6
	iron.roughness = 0.45
	var at := Vector3(-4.6, 0, -2.2)
	_box(Vector3(2.4, 0.02, 1.8), at + Vector3(0, 0.01, 0), rubber)
	_box(Vector3(0.75, 0.6, 0.6), at + Vector3(-0.6, 0.3, -0.3), wood)
	_box(Vector3(0.6, 0.5, 0.75), at + Vector3(-0.55, 0.85, -0.3), wood)
	_box(Vector3(0.6, 0.45, 0.5), at + Vector3(0.35, 0.225, -0.45), wood)
	for i in 4:
		var kb := Node3D.new()
		kb.position = at + Vector3(-0.6 + i * 0.42, 0, 0.55)
		var s := 0.11 + i * 0.02
		var body := MeshInstance3D.new()
		var sm := SphereMesh.new()
		sm.radius = s
		sm.height = s * 2.0
		body.mesh = sm
		body.material_override = iron
		body.position = Vector3(0, s, 0)
		kb.add_child(body)
		var h := MeshInstance3D.new()
		var tm := TorusMesh.new()
		tm.inner_radius = s * 0.45
		tm.outer_radius = s * 0.62
		h.mesh = tm
		h.material_override = iron
		h.rotation_degrees = Vector3(90, 0, 0)
		h.position = Vector3(0, s * 2.0, 0)
		kb.add_child(h)
		add_child(kb)


## Two big words lit on the side walls, turned towards the player.
func _build_words() -> void:
	for w in [["СИЛА", Vector3(-11.0, 1.9, -10.0), 55.0], ["РИТЪМ", Vector3(11.0, 1.9, -10.0), -55.0]]:
		var l := Label3D.new()
		l.text = w[0]
		l.font = FONT
		l.font_size = 256
		l.pixel_size = 0.0045
		l.outline_size = 18
		l.modulate = PALETTE[0] * 1.6
		l.outline_modulate = Color(PALETTE[0].r, PALETTE[0].g, PALETTE[0].b, 0.35)
		l.shaded = false
		l.position = w[1]
		l.rotation_degrees = Vector3(0, w[2], 0)
		add_child(l)
		_words.append(l)


func set_flow(combo: int) -> void:
	_target = PALETTE[2 if combo >= 20 else (1 if combo >= 10 else 0)]


## Once a frame, like the arena: beat clock, s per beat, bass 0 … 1.
func tick(delta: float, beat_t: float, beat_len: float, bass: float) -> void:
	_color = _color.lerp(_target, clampf(delta * 2.0, 0.0, 1.0))
	var phase := fposmod(beat_t, beat_len) / beat_len
	var second: Color = PALETTE[(PALETTE.find(_target) + 1) % PALETTE.size()]
	_led.set_shader_parameter("color", _color)
	_led.set_shader_parameter("color2", second)
	_led.set_shader_parameter("energy", bass)
	_led.set_shader_parameter("phase", phase)
	for m in _glow_mats:
		m.albedo_color = _color * (1.0 + 1.4 * bass)
	for i in _cross_mats.size():
		var at := float(i) / (_cross_mats.size() - 1)                 # 0 = far … 1 = near
		var d := absf(phase - at)
		_cross_mats[i].albedo_color = _color * (0.25 + 2.2 * exp(-d * d * 60.0))
	for l in _words:
		l.modulate = _color * (1.2 + 0.8 * bass)
		l.outline_modulate = Color(_color.r, _color.g, _color.b, 0.3 + 0.3 * bass)
