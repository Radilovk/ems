## The wrist dock: hold the left forearm out level (elbow bent about 90°), turn the wrist open, palm up, and let go of
## the right trigger — the suit is there over the palm: the strength in the suit now, the trainer's strength (−/+),
## and pause. Press its buttons with the right index finger. Only that pose opens it (owner, 2026-10), so it never
## pops up in play by chance; it works mid-game too. The full impulse settings are the "Костюм" page (pause opens it).
class_name WristDock
extends Node3D

signal pause_pressed

const FONT_BOLD := preload("res://assets/fonts/Inter-SemiBold.otf")
const GLASS := preload("res://shaders/glass.gdshader")
const SIZE := Vector2(0.15, 0.095)
const ACCENT := Color(0.25, 0.85, 1.0)
const PALM_UP := 0.6                  # the palm faces up at least this much (cos of ≤ 53° from straight up)
const FOREARM_LEVEL := 0.55           # … and the forearm is level within this (|sin| of its pitch: ≈ ±33°)
const SHOW_AFTER := 0.15              # s the pose must hold before the card shows (no flicker)
const HIDE_AFTER := 0.35              # s it stays once the pose breaks (a press moves the hand a little)

var tablet: TabletLink
var forced := false                   # desktop preview: always shown in front of the camera
var _hero: Label3D
var _sub: Label3D
var _buttons: Array = []              # {node, mat, id}
var _cool := 0.0
var _show := 0.0                      # 0 … 1, eases in and out
var _held := 0.0                      # s the pose has held (> 0) or been broken (< 0)


func _ready() -> void:
	var card := MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = SIZE
	card.mesh = q
	var m := ShaderMaterial.new()
	m.shader = GLASS
	m.set_shader_parameter("size", SIZE)
	m.set_shader_parameter("radius", 0.014)
	m.render_priority = 20
	card.material_override = m
	add_child(card)
	_hero = _label("—", 64, Vector3(-0.022, 0.018, 0.002))
	_sub = _label("", 22, Vector3(0, -0.012, 0.002))
	_sub.modulate = Color(1, 1, 1, 0.75)
	for b in [["−", Vector3(-0.045, -0.034, 0.004), "minus"], ["+", Vector3(0.0, -0.034, 0.004), "plus"],
			["II", Vector3(0.045, -0.034, 0.004), "pause"]]:
		_buttons.append(_button(b[0], b[1], b[2]))
	scale = Vector3.ONE * 0.001
	visible = false


func _label(text: String, size: int, pos: Vector3) -> Label3D:
	var l := Label3D.new()
	l.text = text
	l.font = FONT_BOLD
	l.font_size = size
	l.pixel_size = 0.00045
	l.position = pos
	l.outline_size = 0
	l.render_priority = 22
	l.no_depth_test = true
	add_child(l)
	return l


func _button(text: String, pos: Vector3, id: String) -> Dictionary:
	var n := MeshInstance3D.new()
	var c := CylinderMesh.new()
	c.top_radius = 0.013
	c.bottom_radius = 0.013
	c.height = 0.006
	c.radial_segments = 20
	n.mesh = c
	n.rotation_degrees = Vector3(90, 0, 0)
	n.position = pos
	var mat := StandardMaterial3D.new()
	mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	mat.albedo_color = Color(ACCENT.r, ACCENT.g, ACCENT.b, 0.5)
	mat.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	mat.render_priority = 21
	mat.no_depth_test = true
	n.material_override = mat
	add_child(n)
	var l := _label(text, 40, pos + Vector3(0, 0, 0.004))
	l.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	return {"node": n, "mat": mat, "id": id, "label": l}


## Once a frame. wrist: the left hand's world pose · eye: camera position · finger: the right fingertip / fist
## (world) or null · pose: the opening pose is held now (Game._dock_pose and the right trigger let go).
func tick(delta: float, wrist: Transform3D, eye: Vector3, finger, pose: bool) -> void:
	_cool = maxf(_cool - delta, 0.0)
	if pose:
		_held = maxf(_held, 0.0) + delta
	else:
		_held = minf(_held, 0.0) - delta
	var want := forced or (_held >= SHOW_AFTER) or (visible and _held > -HIDE_AFTER)
	_show = move_toward(_show, 1.0 if want else 0.0, delta * 6.0)
	visible = _show > 0.01
	if not visible:
		return
	scale = Vector3.ONE * (0.6 + 0.4 * _show)
	if not forced:                             # over the open palm, turned to the eyes
		var at := wrist.origin + Vector3.UP * 0.07
		var face := (eye - at).normalized()
		var up := Vector3.UP - face * Vector3.UP.dot(face)
		if up.length() < 0.2:
			up = -wrist.basis.z
		up = up.normalized()
		global_transform = Transform3D(Basis(up.cross(face).normalized(), up, face), at + face * 0.02)
	_refresh()
	if finger is Vector3:
		for b in _buttons:
			var n: Node3D = b.node
			var d := (finger as Vector3).distance_to(n.global_position)
			(b.mat as StandardMaterial3D).albedo_color.a = 0.95 if d < 0.05 else 0.5
			if d < 0.03 and _cool <= 0.0 and _show > 0.9:
				_cool = 0.4
				_press(b.id)
				var tw := n.create_tween()
				tw.tween_property(n, "scale", Vector3.ONE * 0.8, 0.06)
				tw.tween_property(n, "scale", Vector3.ONE, 0.12)


func _press(id: String) -> void:
	match id:
		"minus":
			if tablet:
				tablet.send(TabletLink.Op.STRENGTH, 0, -1)
		"plus":
			if tablet:
				tablet.send(TabletLink.Op.STRENGTH, 0, 1)
		"pause":
			pause_pressed.emit()


func _refresh() -> void:
	if tablet == null or not tablet.linked():
		_hero.text = "—"
		_sub.text = "няма връзка с таблета"
		return
	var st := tablet.state
	var applied := int(st.get("applied", -1))
	_hero.text = ("%d%%" % applied) if applied >= 0 else "—"
	var ceiling := int(st.get("ceiling", -1))
	var flags := int(st.get("flags", 0))
	var what := "пауза" if flags & TabletLink.F_PAUSED else ("води" if flags & TabletLink.F_DRIVING else "чака реда")
	_sub.text = ("таван %d · %s" % [ceiling, what]) if ceiling >= 0 else what
