## The loft: an old brick factory hall turned gym, built from code. Tall steel-framed factory windows (a grid of small
## panes) across the front and on the front half of both sides, the landscape of the "Гледка" setting beyond them
## (drawn as the sky, infinitely far), a polished concrete floor, steel trusses under a dark roof and warm pendant
## lamps. The glass spans what a photo view fills from where the player stands (±60°); behind that the walls are brick.
## Every part of a kind is merged into one mesh: a handful of draw calls for the headset.
class_name FactoryLoft
extends Node3D

const BRICK_ALB := preload("res://assets/factory/factory_brick_diff.jpg")
const BRICK_NOR := preload("res://assets/factory/factory_brick_nor_gl.jpg")
const FLOOR_ALB := preload("res://assets/factory/hangar_concrete_floor_diff.jpg")
const FLOOR_NOR := preload("res://assets/factory/hangar_concrete_floor_nor_gl.jpg")

const HALF_W := 6.5                 # the hall: x −6.5 … 6.5
const FRONT := -10.0                # the window wall ahead
const BACK := 2.2                   # the brick wall behind the player
const H := 6.0                      # floor to the trusses
const TOP := H + 0.9                # the walls rise to the roof deck over the trusses
const SILL := 0.85                  # windows: from here …
const HEAD := 5.1                   # … to here
const T := 0.35                     # wall thickness
const PANE := Vector2(0.55, 0.6)    # one small pane of the steel grid (about)

var _st := {}                       # kind -> SurfaceTool


func _ready() -> void:
	# Ahead: three wide windows between brick piers. Sides: two windows each on the front half (to z −4.2: ±60°).
	_wall(Vector3(-HALF_W, 0, FRONT), Vector3(HALF_W, 0, FRONT), [[0.9, 4.4], [4.9, 8.1], [8.6, 12.1]])
	_wall(Vector3(-HALF_W, 0, BACK), Vector3(-HALF_W, 0, FRONT), [[6.4, 9.1], [9.5, 11.6]])
	_wall(Vector3(HALF_W, 0, FRONT), Vector3(HALF_W, 0, BACK), [[0.6, 2.7], [3.1, 5.8]])
	_wall(Vector3(HALF_W, 0, BACK), Vector3(-HALF_W, 0, BACK), [])
	_floor_and_roof()
	_lamps()
	var brick := _textured(BRICK_ALB, BRICK_NOR, 1.3, 0.85)
	var steel := StandardMaterial3D.new()
	steel.albedo_color = Color(0.07, 0.075, 0.08)
	steel.metallic = 0.75
	steel.roughness = 0.4
	var glass := StandardMaterial3D.new()
	glass.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	glass.albedo_color = Color(0.85, 0.95, 1.0, 0.06)
	glass.roughness = 0.05
	glass.rim_enabled = true
	glass.rim = 0.2
	glass.cull_mode = BaseMaterial3D.CULL_DISABLED
	var concrete := StandardMaterial3D.new()
	concrete.albedo_color = Color(0.34, 0.33, 0.32)
	concrete.roughness = 0.9
	var warm := StandardMaterial3D.new()
	warm.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	warm.albedo_color = Color(1.0, 0.78, 0.45) * 1.6
	var neon := StandardMaterial3D.new()
	neon.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	neon.albedo_color = Color(0.25, 0.85, 1.0) * 1.4
	var floor_m := _textured(FLOOR_ALB, FLOOR_NOR, 3.0, 0.55)
	floor_m.albedo_color = Color(1.7, 1.7, 1.75)          # the dark hangar concrete, lifted to a mid grey
	floor_m.normal_scale = 0.4
	var mats := {"brick": brick, "steel": steel, "glass": glass, "concrete": concrete, "warm": warm, "neon": neon,
		"floor": floor_m}
	for k in _st:
		var mi := MeshInstance3D.new()
		mi.mesh = (_st[k] as SurfaceTool).commit()
		mi.material_override = mats[k]
		if k == "glass" or k == "warm" or k == "neon":
			mi.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
		add_child(mi)
	for x in [-3.2, 3.2]:                                    # the lamps' warm light, and a cool one from the windows
		var l := OmniLight3D.new()
		l.light_color = Color(1.0, 0.85, 0.65)
		l.light_energy = 0.9
		l.omni_range = 11.0
		l.position = Vector3(x, 3.6, (FRONT + BACK) * 0.5)
		add_child(l)
	var win := OmniLight3D.new()
	win.light_color = Color(0.85, 0.92, 1.0)
	win.light_energy = 0.8
	win.omni_range = 9.0
	win.position = Vector3(0, 3.0, FRONT + 1.5)
	add_child(win)


func _textured(alb: Texture2D, nor: Texture2D, tile: float, rough: float) -> StandardMaterial3D:
	var m := StandardMaterial3D.new()
	m.albedo_texture = alb
	m.normal_enabled = true
	m.normal_texture = nor
	m.roughness = rough
	m.uv1_triplanar = true                       # world-sized bricks whatever the box
	m.uv1_world_triplanar = true
	m.uv1_scale = Vector3.ONE / tile
	m.texture_filter = BaseMaterial3D.TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC
	return m


## A box into the merged mesh of its kind. basis turns it (local x along a wall).
func _box(kind: String, size: Vector3, pos: Vector3, basis := Basis.IDENTITY) -> void:
	if not _st.has(kind):
		var st := SurfaceTool.new()
		st.begin(Mesh.PRIMITIVE_TRIANGLES)
		_st[kind] = st
	var b := BoxMesh.new()
	b.size = size
	(_st[kind] as SurfaceTool).append_from(b, 0, Transform3D(basis, pos))


## A brick wall from a to b (on the floor, the room on its left looking from a to b), with windows: spans [from, to]
## metres along it, each from SILL to HEAD, framed in steel with a grid of small panes, a concrete sill under it.
func _wall(a: Vector3, b: Vector3, windows: Array) -> void:
	var run := b - a
	var length := run.length()
	var dir := run / length
	var basis := Basis.looking_at(dir.cross(Vector3.UP), Vector3.UP)        # local x along the wall
	var out := -dir.cross(Vector3.UP).normalized() * (T * 0.5)              # the wall's middle, just outside the room
	var at := func(u: float, y: float) -> Vector3: return a + dir * u + out + Vector3(0, y, 0)
	var u := 0.0
	for w in windows + [[length, length]]:
		var u0: float = w[0]
		var u1: float = w[1]
		if u0 - u > 0.01:                                                   # a full pier before the window
			_box("brick", Vector3(u0 - u, TOP, T), at.call((u + u0) * 0.5, TOP * 0.5), basis)
		if u1 - u0 > 0.01:
			var wl := u1 - u0
			var mid := (u0 + u1) * 0.5
			_box("brick", Vector3(wl, SILL, T), at.call(mid, SILL * 0.5), basis)                # under it
			_box("brick", Vector3(wl, TOP - HEAD, T), at.call(mid, (TOP + HEAD) * 0.5), basis)     # over it
			_box("concrete", Vector3(wl + 0.2, 0.08, T + 0.12), at.call(mid, SILL - 0.04), basis)
			_grid(at.call(mid, (SILL + HEAD) * 0.5), wl, HEAD - SILL, basis)
		u = u1
	var top := (a + b) * 0.5 + out * 0.2 + Vector3(0, H - 0.1, 0)          # a steel ledge under the trusses
	_box("steel", Vector3(length, 0.16, T + 0.1), top, basis)


## A steel window: a frame, mullions and transoms on a grid of small panes, and the glass.
func _grid(c: Vector3, w: float, h: float, basis: Basis) -> void:
	var nx := maxi(2, roundi(w / PANE.x))
	var ny := maxi(2, roundi(h / PANE.y))
	var x := basis.x
	var y := Vector3.UP
	_box("steel", Vector3(w, 0.08, 0.12), c + y * (h * 0.5 - 0.04), basis)
	_box("steel", Vector3(w, 0.08, 0.12), c - y * (h * 0.5 - 0.04), basis)
	_box("steel", Vector3(0.08, h, 0.12), c + x * (w * 0.5 - 0.04), basis)
	_box("steel", Vector3(0.08, h, 0.12), c - x * (w * 0.5 - 0.04), basis)
	for i in range(1, nx):
		_box("steel", Vector3(0.03, h, 0.06), c + x * (-w * 0.5 + w * i / float(nx)), basis)
	for j in range(1, ny):
		var bar := 0.07 if j == ny / 2 else 0.03                            # one stronger transom (the opening sash)
		_box("steel", Vector3(w, bar, 0.06 if bar < 0.05 else 0.1), c + y * (-h * 0.5 + h * j / float(ny)), basis)
	_box("glass", Vector3(w, h, 0.01), c, basis)


func _floor_and_roof() -> void:
	var depth := BACK - FRONT
	var mid := (BACK + FRONT) * 0.5
	_box("floor", Vector3(HALF_W * 2.0, 0.1, depth), Vector3(0, -0.05, mid))
	_box("concrete", Vector3(HALF_W * 2.0 + 1.0, 0.25, depth + 1.0), Vector3(0, H + 0.95, mid))   # the roof deck
	for k in 5:                                                             # steel trusses across the hall
		var z := FRONT + 1.2 + k * (depth - 2.4) / 4.0
		_box("steel", Vector3(HALF_W * 2.0, 0.08, 0.22), Vector3(0, H, z))                     # bottom chord
		_box("steel", Vector3(HALF_W * 2.0, 0.08, 0.22), Vector3(0, H + 0.8, z))               # top chord
		for i in 9:                                                         # the web: posts and diagonals
			var x0 := -HALF_W + i * (HALF_W * 2.0) / 8.0
			_box("steel", Vector3(0.06, 0.8, 0.1), Vector3(x0, H + 0.4, z))
			if i < 8:
				var dx := HALF_W * 2.0 / 8.0
				var len := sqrt(dx * dx + 0.64)
				var tilt := Basis(Vector3.BACK, atan2(0.8, dx) * (1.0 if i % 2 == 0 else -1.0))
				_box("steel", Vector3(len, 0.05, 0.08), Vector3(x0 + dx * 0.5, H + 0.4, z), tilt)
	for x in [-HALF_W * 0.5, 0.0, HALF_W * 0.5]:                            # purlins along the hall
		_box("steel", Vector3(0.12, 0.16, depth), Vector3(x, H + 0.88, mid))
	_box("neon", Vector3(HALF_W * 2.0 - 1.0, 0.03, 0.02), Vector3(0, 2.6, BACK - 0.01))   # a light line behind


## Warm pendant lamps in two rows: a cord from the truss, a dark shade, a glowing bulb.
func _lamps() -> void:
	var depth := BACK - FRONT
	for k in 4:
		var z := FRONT + 2.5 + k * (depth - 4.0) / 3.0
		for x in [-3.2, 3.2]:
			var drop := 2.0
			_box("steel", Vector3(0.012, drop, 0.012), Vector3(x, H - drop * 0.5, z))
			_box("steel", Vector3(0.34, 0.16, 0.34), Vector3(x, H - drop - 0.06, z))
			_box("warm", Vector3(0.2, 0.06, 0.2), Vector3(x, H - drop - 0.15, z))
