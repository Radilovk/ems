## The sky loft: a training hall high up with glass from floor to ceiling ahead and on the front half of both sides,
## built from code. Real window frames and glass, a terrace outside them with a glass railing, and the landscape (the
## "Гледка" setting, drawn as the sky) infinitely far beyond — so in the headset the view is truly out there, with
## depth, and every pane is crisp. The glass spans what a photo view fills from where the player stands (±60°, the
## photos hang 120° wide); behind that the side walls are solid, warm wood with a light line. The player stands near
## the solid back wall, the open floor and the main window ahead.
class_name SkyLoft
extends Node3D

const FLOOR_ALB := preload("res://assets/loft/laminate_floor_02_diff.jpg")
const FLOOR_NOR := preload("res://assets/loft/laminate_floor_02_nor_gl.jpg")
const DECK_ALB := preload("res://assets/loft/wood_floor_deck_diff.jpg")
const DECK_NOR := preload("res://assets/loft/wood_floor_deck_nor_gl.jpg")

const HALF_W := 7.0                 # the hall: x −7 … 7
const FRONT := -11.0                # the main window, ahead
const BACK := 2.5                   # the solid wall behind the player
const H := 4.4                      # floor to ceiling: tall windows, more of the view
const GLASS_END := -4.0             # the side glass runs from the front to here (±60° from the player); solid behind
const BAY := 2.0                    # a pane between two mullions (about)
const TERRACE := 5.0                # the terrace outside the glass: it hides the photo's near ground
const RAIL := 1.05

var _frame: StandardMaterial3D
var _glass: StandardMaterial3D


func _ready() -> void:
	_frame = StandardMaterial3D.new()
	_frame.albedo_color = Color(0.06, 0.065, 0.07)
	_frame.metallic = 0.7
	_frame.roughness = 0.35
	_glass = StandardMaterial3D.new()
	_glass.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	_glass.albedo_color = Color(0.85, 0.95, 1.0, 0.07)
	_glass.metallic = 0.0
	_glass.roughness = 0.04
	_glass.specular_mode = BaseMaterial3D.SPECULAR_SCHLICK_GGX
	_glass.rim_enabled = true
	_glass.rim = 0.25
	_glass.cull_mode = BaseMaterial3D.CULL_DISABLED
	_build_floor()
	_build_ceiling()
	_build_back_wall()
	_glass_wall(Vector3(-HALF_W, 0, FRONT), Vector3(HALF_W, 0, FRONT))          # ahead
	_glass_wall(Vector3(-HALF_W, 0, GLASS_END), Vector3(-HALF_W, 0, FRONT))     # left
	_glass_wall(Vector3(HALF_W, 0, FRONT), Vector3(HALF_W, 0, GLASS_END))       # right
	for c in [Vector3(-HALF_W, 0, FRONT), Vector3(HALF_W, 0, FRONT), Vector3(-HALF_W, 0, GLASS_END), Vector3(HALF_W, 0, GLASS_END)]:
		_box(Vector3(0.16, H, 0.16), c + Vector3(0, H * 0.5, 0), _frame)          # the corner posts
	_build_side_walls()
	_build_terrace()


func _box(size: Vector3, pos: Vector3, mat: Material) -> MeshInstance3D:
	var n := MeshInstance3D.new()
	var b := BoxMesh.new()
	b.size = size
	n.mesh = b
	n.material_override = mat
	n.position = pos
	add_child(n)
	return n


func _textured(alb: Texture2D, nor: Texture2D, tile: float, rough: float) -> StandardMaterial3D:
	var m := StandardMaterial3D.new()
	m.albedo_texture = alb
	m.normal_enabled = true
	m.normal_texture = nor
	m.roughness = rough
	m.uv1_triplanar = true                       # world-sized boards whatever the box
	m.uv1_world_triplanar = true
	m.uv1_scale = Vector3.ONE / tile
	m.texture_filter = BaseMaterial3D.TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC
	return m


func _build_floor() -> void:
	var m := _textured(FLOOR_ALB, FLOOR_NOR, 2.4, 0.45)
	var depth := BACK - FRONT
	_box(Vector3(HALF_W * 2.0, 0.1, depth), Vector3(0, -0.05, (BACK + FRONT) * 0.5), m)


func _build_ceiling() -> void:
	var depth := BACK - FRONT
	var mid := (BACK + FRONT) * 0.5
	var slab := StandardMaterial3D.new()
	slab.albedo_color = Color(0.42, 0.41, 0.39)      # warm light grey: the light lines read, the hall stays airy
	slab.roughness = 0.9
	_box(Vector3(HALF_W * 2.0 + 0.4, 0.2, depth + 0.4), Vector3(0, H + 0.1, mid), slab)
	var light := StandardMaterial3D.new()          # recessed light lines along the hall
	light.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	light.albedo_color = Color(1.0, 0.97, 0.9) * 1.2
	for x in [-4.5, -1.5, 1.5, 4.5]:
		_box(Vector3(0.07, 0.02, depth - 1.6), Vector3(x, H - 0.005, mid), light)
	for x in [-3.0, 3.0]:                          # and a soft fill from them on the floor
		var l := OmniLight3D.new()
		l.light_color = Color(1.0, 0.95, 0.88)
		l.light_energy = 0.5
		l.omni_range = 9.0
		l.shadow_enabled = false
		l.position = Vector3(x, H - 0.4, mid)
		add_child(l)


func _build_back_wall() -> void:
	var wall := StandardMaterial3D.new()
	wall.albedo_color = Color(0.16, 0.165, 0.17)
	wall.roughness = 0.8
	_box(Vector3(HALF_W * 2.0, H, 0.2), Vector3(0, H * 0.5, BACK + 0.1), wall)
	var line := StandardMaterial3D.new()           # a light line along it: the hall's signature
	line.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	line.albedo_color = Color(0.25, 0.85, 1.0) * 1.4
	_box(Vector3(HALF_W * 2.0 - 0.6, 0.03, 0.02), Vector3(0, 1.2, BACK - 0.01), line)


## The back half of both sides: solid walls clad in warm wooden slats, a cyan light line along them (as on the back
## wall) and a soft wash of light from below.
func _build_side_walls() -> void:
	var wall := StandardMaterial3D.new()
	wall.albedo_color = Color(0.16, 0.165, 0.17)
	wall.roughness = 0.8
	var wood := _textured(DECK_ALB, DECK_NOR, 1.2, 0.6)
	wood.albedo_color = Color(0.8, 0.66, 0.52)
	var line := StandardMaterial3D.new()
	line.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	line.albedo_color = Color(0.25, 0.85, 1.0) * 1.4
	var run := BACK - GLASS_END
	var mid := (BACK + GLASS_END) * 0.5
	for s in [-1.0, 1.0]:
		_box(Vector3(0.2, H, run), Vector3(s * (HALF_W + 0.1), H * 0.5, mid), wall)
		var n := int(run / 0.16)                     # vertical slats with a shadow gap between them (one draw call)
		var slat := BoxMesh.new()
		slat.size = Vector3(0.05, H - 0.5, 0.11)
		var mm := MultiMesh.new()
		mm.transform_format = MultiMesh.TRANSFORM_3D
		mm.mesh = slat
		mm.instance_count = n
		for i in n:
			var z := GLASS_END + 0.08 + i * (run - 0.16) / float(n - 1)
			mm.set_instance_transform(i, Transform3D(Basis.IDENTITY, Vector3(s * (HALF_W - 0.03), 0.25 + (H - 0.5) * 0.5, z)))
		var mmi := MultiMeshInstance3D.new()
		mmi.multimesh = mm
		mmi.material_override = wood
		add_child(mmi)
		_box(Vector3(0.02, 0.03, run - 0.4), Vector3(s * (HALF_W - 0.07), 1.2, mid), line)


## Floor-to-ceiling glass from a to b (on the floor): slim black mullions, a sill and a head, panes between.
func _glass_wall(a: Vector3, b: Vector3) -> void:
	var run := b - a
	var length := run.length()
	var dir := run / length
	var n := maxi(1, roundi(length / BAY))
	var basis := Basis.looking_at(dir.cross(Vector3.UP), Vector3.UP)       # local x along the wall
	var mid := (a + b) * 0.5
	var sill := _box(Vector3(length, 0.08, 0.14), mid + Vector3(0, 0.04, 0), _frame)
	sill.basis = basis
	var head := _box(Vector3(length, 0.12, 0.14), mid + Vector3(0, H - 0.06, 0), _frame)
	head.basis = basis
	for i in range(1, n):
		var p := a + run * (float(i) / n)
		var m := _box(Vector3(0.05, H, 0.12), p + Vector3(0, H * 0.5, 0), _frame)
		m.basis = basis
	var pane := MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = Vector2(length, H - 0.2)
	pane.mesh = q
	pane.material_override = _glass
	pane.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	pane.basis = basis
	pane.position = mid + Vector3(0, 0.08 + (H - 0.2) * 0.5, 0)
	add_child(pane)


## Outside the glass: a wooden terrace round the three glass sides, its edge with a glass railing on slim posts.
func _build_terrace() -> void:
	var deck := _textured(DECK_ALB, DECK_NOR, 2.0, 0.7)
	var w := HALF_W + TERRACE
	var f := FRONT - TERRACE
	_box(Vector3(w * 2.0, 0.1, TERRACE), Vector3(0, -0.06, FRONT - TERRACE * 0.5), deck)          # ahead
	for s in [-1.0, 1.0]:
		_box(Vector3(TERRACE, 0.1, BACK - FRONT), Vector3(s * (HALF_W + TERRACE * 0.5), -0.06, (BACK + FRONT) * 0.5), deck)
	var edge := StandardMaterial3D.new()           # the slab's edge, seen from inside: a clean line, no gap
	edge.albedo_color = Color(0.2, 0.2, 0.21)
	edge.roughness = 0.6
	_box(Vector3(w * 2.0, 0.4, 0.3), Vector3(0, -0.2, f), edge)
	for s in [-1.0, 1.0]:
		_box(Vector3(0.3, 0.4, BACK - f), Vector3(s * w, -0.2, (BACK + f) * 0.5), edge)
	_railing(Vector3(-w, 0, f), Vector3(w, 0, f))
	_railing(Vector3(-w, 0, BACK), Vector3(-w, 0, f))
	_railing(Vector3(w, 0, f), Vector3(w, 0, BACK))


func _railing(a: Vector3, b: Vector3) -> void:
	var run := b - a
	var length := run.length()
	var basis := Basis.looking_at(run.normalized().cross(Vector3.UP), Vector3.UP)
	var mid := (a + b) * 0.5
	var top := _box(Vector3(length, 0.05, 0.07), mid + Vector3(0, RAIL, 0), _frame)
	top.basis = basis
	var n := maxi(1, roundi(length / 2.5))
	for i in n + 1:
		var post := _box(Vector3(0.04, RAIL, 0.04), a + run * (float(i) / n) + Vector3(0, RAIL * 0.5, 0), _frame)
		post.basis = basis
	var pane := MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = Vector2(length, RAIL - 0.08)
	pane.mesh = q
	pane.material_override = _glass
	pane.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	pane.basis = basis
	pane.position = mid + Vector3(0, (RAIL - 0.08) * 0.5 + 0.02, 0)
	add_child(pane)
