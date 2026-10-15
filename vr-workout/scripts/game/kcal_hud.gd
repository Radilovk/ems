## The calorie display of the chef scenario, heads-up: a small glass card above the line of sight that follows the
## head's turn (gently, so it never swims). The one number that matters is biggest: the balance in kcal and in
## kilos — red and "+" when the player has eaten more than burned, green and "−" when burned more. Under it a
## balance bar (green to the left, red to the right of the middle) and the two sides of it: burned · eaten.
## A change pulses the card and its number counts to the new value.
class_name KcalHud
extends Node3D

const FONT := preload("res://assets/fonts/Inter-SemiBold.otf")
const FONT_REG := preload("res://assets/fonts/Inter-Regular.otf")
const GLASS := preload("res://shaders/glass.gdshader")
const SIZE := Vector2(0.56, 0.17)
const RED := Color(1.0, 0.36, 0.3)
const GREEN := Color(0.4, 1.0, 0.55)
const AHEAD := 1.3                       # m in front of the eyes …
const UP := 0.36                         # … and this much above them (out of the play, in sight)
const BAR_FULL := 3000.0                 # kcal at which the bar is full

var burned := 0.0                        # kcal taken off by smashing food
var eaten := 0.0                         # kcal of food that got through
var _shown := 0.0                        # the balance on screen (counts to the real one)
var _big: Label3D
var _kg: Label3D
var _sides: Label3D
var _fill: MeshInstance3D
var _fill_mat: StandardMaterial3D
var _pulse := 0.0
var _yaw := 0.0
var _placed := false


func _ready() -> void:
	var card := MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = SIZE
	card.mesh = q
	var m := ShaderMaterial.new()
	m.shader = GLASS
	m.set_shader_parameter("size", SIZE)
	m.set_shader_parameter("radius", 0.02)
	m.render_priority = 10
	card.material_override = m
	add_child(card)
	_big = _label(FONT, 96, Vector3(-0.05, 0.035, 0.002))
	_kg = _label(FONT, 56, Vector3(0.2, 0.03, 0.002))
	_sides = _label(FONT_REG, 46, Vector3(0, -0.058, 0.002))
	_sides.modulate = Color(1, 1, 1, 0.8)
	var track := MeshInstance3D.new()                 # the bar: a thin track, a tick in the middle, the fill
	var tq := QuadMesh.new()
	tq.size = Vector2(0.46, 0.012)
	track.mesh = tq
	track.material_override = _flat(Color(1, 1, 1, 0.16))
	track.position = Vector3(0, -0.022, 0.001)
	add_child(track)
	var tick := MeshInstance3D.new()
	var kq := QuadMesh.new()
	kq.size = Vector2(0.003, 0.026)
	tick.mesh = kq
	tick.material_override = _flat(Color(1, 1, 1, 0.7))
	tick.position = Vector3(0, -0.022, 0.003)
	add_child(tick)
	_fill = MeshInstance3D.new()
	var fq := QuadMesh.new()
	fq.size = Vector2(1, 0.012)
	_fill.mesh = fq
	_fill_mat = _flat(GREEN)
	_fill.material_override = _fill_mat
	_fill.position = Vector3(0, -0.022, 0.002)
	add_child(_fill)
	_refresh(0.0)


func _label(f: Font, size: int, pos: Vector3) -> Label3D:
	var l := Label3D.new()
	l.font = f
	l.font_size = size
	l.pixel_size = 0.0004
	l.position = pos
	l.no_depth_test = true
	l.render_priority = 12
	l.outline_size = 0
	add_child(l)
	return l


func _flat(c: Color) -> StandardMaterial3D:
	var m := StandardMaterial3D.new()
	m.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	m.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	m.albedo_color = c
	m.no_depth_test = true
	m.render_priority = 11
	return m


func reset() -> void:
	burned = 0.0
	eaten = 0.0
	_shown = 0.0
	_refresh(0.0)


func balance() -> float:
	return eaten - burned


static func kg_text(kcal: float) -> String:
	var kg := kcal / Defs.KCAL_PER_KG
	return ("%+.2f кг" % kg).replace(".", ",")


static func kcal_text(kcal: float) -> String:
	var n := int(round(kcal))
	return ("+" if n > 0 else ("−" if n < 0 else "")) + Menu._num(absi(n)) + " ккал"


## Food burned (smashed) or eaten (got through): the card pulses, the number counts.
func add(burn: float, eat: float) -> void:
	burned += burn
	eaten += eat
	_pulse = 1.0 if eat > 0.0 else 0.6


## Once a frame: follow the head's turn, count, pulse.
func tick(delta: float, cam: Node3D) -> void:
	if not visible or cam == null:
		return
	var f := -cam.global_basis.z
	f.y = 0.0
	if f.length() > 0.01:
		var want := atan2(-f.x, -f.z)
		_yaw = want if not _placed else lerp_angle(_yaw, want, minf(delta * 2.2, 1.0))
		_placed = true
	var b := Basis(Vector3.UP, _yaw)
	global_transform = Transform3D(b, cam.global_position + b * Vector3(0, UP, -AHEAD))
	look_at(cam.global_position, Vector3.UP, true)
	var target := balance()
	_shown = move_toward(_shown, target, maxf(absf(target - _shown) * 6.0, 120.0) * delta)
	_pulse = maxf(_pulse - delta * 2.5, 0.0)
	scale = Vector3.ONE * (1.0 + 0.12 * _pulse)
	_refresh(_shown)


func _refresh(v: float) -> void:
	var c := RED if v > 0.5 else GREEN
	_big.text = kcal_text(v)
	_big.modulate = c.lerp(Color.WHITE, 0.35 * _pulse)
	_kg.text = kg_text(v)
	_kg.modulate = c
	_sides.text = "изгорени −%s   ·   изядени +%s" % [Menu._num(int(round(burned))), Menu._num(int(round(eaten)))]
	var w := clampf(absf(v) / BAR_FULL, 0.0, 1.0) * 0.23
	_fill.scale = Vector3(maxf(w, 0.0005), 1, 1)
	_fill.position.x = w * 0.5 * (1.0 if v > 0.0 else -1.0)
	_fill_mat.albedo_color = c
