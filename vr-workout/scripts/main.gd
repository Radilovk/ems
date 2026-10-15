## XEMS Studio — the stage (room, cards, the headset / browser plumbing) and the game on it (scripts/game/).
## Runs in the headset (OpenXR / WebXR) or on a desktop for previews and tests:
##   godot --path vr-workout -- --shot=out.png --wait=20 --view=player --sim=1 --skiptut=1 --level=3
##   godot --path vr-workout -- --sim=1 --skiptut=1 --levels=2 --timescale=4      (plays itself, prints the result)
extends Node3D

const FONT_BOLD := preload("res://assets/fonts/Inter-SemiBold.otf")
const FONT := preload("res://assets/fonts/Inter-Regular.otf")
const ROOM_SHADER := preload("res://shaders/room.gdshader")
const RING_SHADER := preload("res://shaders/ring.gdshader")
const GLASS_SHADER := preload("res://shaders/glass.gdshader")
const VIEW_SKY := preload("res://shaders/view_sky.gdshader")

const STAGE_POS := Vector3(0, 0, -2.4)  # the middle of what is shown ahead (cards left and right of it, toasts above)
const BACK_WALL := 1.6              # the player stands this far from the back wall: the rest of the room is play space
const ACCENT := Color(0.25, 0.85, 1.0)
const WARM := Color(1.0, 0.6, 0.2)

var xr := false              # in a headset now (OpenXR app, or a WebXR session in the Quest browser)
var web := OS.has_feature("web")
var webxr: XRInterface
var vr_overlay: CanvasLayer
var vr_status: Label
var args := {}
var cam: XRCamera3D
var origin: XROrigin3D
var game: Game
var settings := GameSettings.new()

var rooms: Array = []
var room_i := 0
var room_shell: MeshInstance3D
var room_mat: ShaderMaterial
var sky_mat: PanoramaSkyMaterial
var view_sky: ShaderMaterial        # the panoramic hall's landscape (shaders/view_sky.gdshader)
var sky: Sky
var plain_sky := ProceduralSkyMaterial.new()      # behind 3D scene rooms
var env: Environment
var room_scene: Node3D
var arena: Arena             # the game's own space (the default room), null in the other rooms
var dressing: HallDressing   # what the brutalist hall is dressed with (LED wall, neon, kit), null elsewhere
var train_mat: MeshInstance3D
var room_depth := 7.0        # metres of free room straight ahead of the player (the game flies things over it)
var _room_depth0 := 7.0      # … before the player's own place in the room (settings offset) is taken into account
var room_root: Node3D        # the photo shell / 3D scene: moved and turned around the player by the settings
var toast: Label3D
var toast_left := 0.0
var body: Mannequin
var title: Label3D
var cue: Label3D
var counter: Label3D
var body_caption: Label3D
var player_ring: ShaderMaterial
var hands := {}              # "left"/"right" -> XRController3D (or a stand-in Node3D on desktop); gloves: Avatar


func _ready() -> void:
	for a in OS.get_cmdline_user_args():
		if a.begins_with("--") and "=" in a:
			args[a.substr(2, a.find("=") - 2)] = a.substr(a.find("=") + 1)
	Library.prepare(args.get("lib", ""))
	settings.load_file()
	if args.has("land"):                      # desktop: --land=<n> the window view (settings "Гледка")
		settings.view = clampi(int(args.land), 0, GameSettings.VIEWS.size() - 1)
	rooms = Library.rooms(args.get("lib", ""))
	room_i = _pick(rooms, args.get("room", str(settings.room)))
	_build_world()
	_build_room()
	_apply_room()
	_build_body_map()
	_build_texts()
	_setup_view()
	game = Game.new()
	add_child(game)
	game.start(self, args)
	if args.has("shot"):
		_shoot.call_deferred()


# ---------------------------------------------------------------- world

## A room by number or by a part of its name (desktop: --room=2).
static func _pick(list: Array, key: String) -> int:
	if key.is_valid_int():
		return clampi(int(key), 0, list.size() - 1)
	for i in list.size():
		if key.to_lower() in String(list[i].name).to_lower() or key.to_lower() in String(list[i].path).to_lower():
			return i
	return 0


func _build_world() -> void:
	sky_mat = PanoramaSkyMaterial.new()
	sky = Sky.new()
	sky.sky_material = sky_mat
	env = Environment.new()
	env.background_mode = Environment.BG_SKY
	env.sky = sky
	env.ambient_light_source = Environment.AMBIENT_SOURCE_SKY
	env.ambient_light_energy = 0.9
	env.reflected_light_source = Environment.REFLECTION_SOURCE_SKY
	env.tonemap_mode = Environment.TONE_MAPPER_FILMIC
	env.tonemap_exposure = 1.0
	var we := WorldEnvironment.new()
	we.environment = env
	add_child(we)

	var sun := DirectionalLight3D.new()       # soft daylight from the big window (front-left in the photo)
	sun.light_energy = 0.7
	sun.light_color = Color(1.0, 0.97, 0.92)
	sun.rotation_degrees = Vector3(-38, -150, 0)
	add_child(sun)


func _build_room() -> void:
	room_root = Node3D.new()
	add_child(room_root)
	# The photo, projected onto a room-sized shell from where it was shot: a real floor under your feet.
	var shell := CylinderMesh.new()
	shell.top_radius = 4.6
	shell.bottom_radius = 4.6
	shell.height = 3.8
	shell.radial_segments = 96
	shell.rings = 1
	var mat := ShaderMaterial.new()
	mat.shader = ROOM_SHADER
	room_mat = mat
	var room := MeshInstance3D.new()
	room.mesh = shell
	room.material_override = mat
	room.position = Vector3(0, 1.9, -3.0)
	room.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	room_root.add_child(room)
	room_shell = room

	# A training mat under you and a soft ring on your spot.
	var mat_mesh := MeshInstance3D.new()
	var box := BoxMesh.new()
	box.size = Vector3(0.9, 0.012, 1.85)
	mat_mesh.mesh = box
	var mat_m := StandardMaterial3D.new()
	mat_m.albedo_color = Color(0.16, 0.42, 0.46)
	mat_m.roughness = 0.85
	mat_mesh.material_override = mat_m
	mat_mesh.position = Vector3(0, 0.006, 0.1)
	add_child(mat_mesh)
	train_mat = mat_mesh
	player_ring = _ring(Vector3(0, 0.015, 0), 1.6)


func _ring(pos: Vector3, size: float) -> ShaderMaterial:
	var q := MeshInstance3D.new()
	var p := PlaneMesh.new()
	p.size = Vector2(size, size)
	q.mesh = p
	var m := ShaderMaterial.new()
	m.shader = RING_SHADER
	m.set_shader_parameter("color", ACCENT)
	q.material_override = m
	q.position = pos
	q.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(q)
	return m


## The room: a 360° photo on the shell (and as the sky), or a 3D scene in place of the shell.
func _apply_room() -> void:
	var r: Dictionary = rooms[room_i]
	if room_scene:
		room_scene.queue_free()
		room_scene = null
	dressing = null
	if arena:
		arena.queue_free()
		arena = null
	train_mat.visible = r.kind != "arena"
	if r.kind == "arena":
		arena = Arena.new()
		add_child(arena)
		room_shell.visible = false
		sky.sky_material = arena.sky_mat
		env.background_energy_multiplier = 1.0
		env.ambient_light_source = Environment.AMBIENT_SOURCE_COLOR       # the night sky lights nothing: a cool fill
		env.ambient_light_color = Color(0.55, 0.62, 0.75)
		env.ambient_light_energy = 0.8
		_room_depth0 = 16.0
		apply_room_offset()
		return
	env.ambient_light_source = Environment.AMBIENT_SOURCE_SKY
	env.ambient_light_energy = 0.9
	env.ambient_light_sky_contribution = 1.0
	if r.kind == "loft":
		env.ambient_light_color = Color(0.78, 0.77, 0.75)    # most of the fill neutral: a sunset or a meadow outside
		env.ambient_light_sky_contribution = 0.35             # tints the hall, it does not paint the ceiling
		room_scene = SkyLoft.new()
		room_root.add_child(room_scene)
		room_shell.visible = false
		env.background_energy_multiplier = 1.0
		_room_depth0 = -SkyLoft.FRONT - 0.6
		apply_view()
		apply_room_offset()
		return
	if r.kind == "pano":
		var pano := Library.load_pano(r.path)
		if pano.is_empty():
			_show_toast("Не мога да отворя " + String(r.path).get_file())
			return
		# The player stands where the camera stood: the only spot from which a photo is undistorted. The shell is a
		# cylinder of the real room's size round that spot (it only sets the depth of walls and floor in stereo).
		# A measured room ("box") gets a box of its real size with the camera where it stood in it: floor and walls
		# meet where they really meet. Else a cylinder of the given radius round the camera.
		var H: float = float(r.get("height", 3.6))
		var centre := Vector3(0, H * 0.5, 0)
		var bx: Array = r.get("box", [])
		if bx.size() == 4:
			var b := BoxMesh.new()
			b.size = Vector3(bx[1] - bx[0], H, bx[3] - bx[2])
			room_shell.mesh = b
			centre = Vector3((bx[0] + bx[1]) * 0.5, H * 0.5, (bx[2] + bx[3]) * 0.5)
			_room_depth0 = -float(bx[2]) - 0.4
		else:
			var R: float = float(r.get("radius", 6.0))
			var cyl := CylinderMesh.new()
			cyl.top_radius = R
			cyl.bottom_radius = R
			cyl.height = H
			cyl.radial_segments = 96
			cyl.rings = 1
			room_shell.mesh = cyl
			_room_depth0 = R - 0.4
		room_shell.position = centre
		room_mat.set_shader_parameter("pano", pano.tex)
		room_mat.set_shader_parameter("hdr", pano.hdr)
		room_mat.set_shader_parameter("exposure", pano.exposure)
		room_mat.set_shader_parameter("capture", Vector3(0, float(args.get("cam", r.get("cam", 1.6))), 0) - centre)
		room_mat.set_shader_parameter("yaw", float(args.get("yaw", r.get("yaw", 0.0))))
		sky_mat.panorama = pano.tex
		sky.sky_material = sky_mat
		env.background_energy_multiplier = pano.exposure if pano.hdr else 1.0
		room_shell.visible = true
		apply_room_offset()
		return
	var scene := Library.load_scene(r.path)
	if scene == null:
		_show_toast("Не мога да отворя " + String(r.path).get_file())
		return
	room_scene = Node3D.new()
	room_scene.add_child(scene)
	room_root.add_child(room_scene)
	# Fit it: centimetres → metres, the floor at 0, the middle of the room ahead of you.
	var box := _bounds(scene)
	var sc: float = r.get("scale", 0.01 if box.size.length() > 400.0 else 1.0)
	scene.scale = Vector3.ONE * sc
	scene.rotation_degrees.y = float(r.get("turn", 0.0))
	box = _bounds(scene)
	var off: Array = r.get("offset", [])
	if off.size() == 3:
		scene.position = Vector3(off[0], off[1], off[2])
	else:
		scene.position = Vector3(-box.get_center().x, 0.0, -1.2 - box.get_center().z)
		scene.position.y = -_floor_under(scene, Vector2(0, -1.2), box.position.y)
	_room_depth0 = clamp(-(box.position.z + scene.position.z) - 0.3, 3.0, 14.0)
	if r.get("dress", "") == "hall":
		dressing = HallDressing.new()
		room_scene.add_child(dressing)
	room_shell.visible = false
	sky.sky_material = plain_sky
	env.background_energy_multiplier = 1.0
	apply_room_offset()


## What the panoramic hall looks out on (settings "Гледка"): a 360° photo or one of the owner's photos hung across
## its glass (shaders/view_sky.gdshader), infinitely far beyond it.
func apply_view() -> void:
	if rooms[room_i].kind != "loft":
		return
	var v: Dictionary = GameSettings.VIEWS[clampi(settings.view, 0, GameSettings.VIEWS.size() - 1)]
	if view_sky == null:
		view_sky = ShaderMaterial.new()
		view_sky.shader = VIEW_SKY
	var tex: Texture2D = load(v.path)
	var photo := v.has("span")
	view_sky.set_shader_parameter("view", tex)
	view_sky.set_shader_parameter("is_photo", photo)
	view_sky.set_shader_parameter("yaw", float(v.get("yaw", 0.0)))
	view_sky.set_shader_parameter("lift", float(v.get("lift", 0.0)))
	if photo:
		view_sky.set_shader_parameter("span", deg_to_rad(float(v.span)))
		view_sky.set_shader_parameter("aspect", float(tex.get_width()) / tex.get_height())
		view_sky.set_shader_parameter("horizon", float(v.horizon))
	sky.sky_material = view_sky


## The player's place in the room (settings): the room moves and turns around the player, who stays where the game
## is. The arena is the game's own space and always stays straight ahead.
func apply_room_offset() -> void:
	var t := Transform3D(Basis(Vector3.UP, deg_to_rad(settings.turn_deg)), Vector3.ZERO)
	room_root.transform = t * Transform3D(Basis.IDENTITY, -Vector3(settings.offset_x, 0, settings.offset_z))
	if env:
		env.sky_rotation = Vector3(0, deg_to_rad(settings.turn_deg), 0)
	var turned := absf(wrapf(settings.turn_deg, -180.0, 180.0)) > 1.0
	room_depth = _room_depth0 if arena else clampf(_room_depth0 + settings.offset_z * (0.0 if turned else 1.0), 3.0, 16.0)


func set_room(i: int) -> void:
	room_i = clampi(i, 0, rooms.size() - 1)
	_apply_room()
	_show_toast("Зала: %s" % rooms[room_i].name)


## "This is the middle": the spot where the player stands and the way they look become the game's centre and
## forward — the play space follows the player, wherever they stand in the real room.
func recenter() -> void:
	if not xr:
		return
	var t := cam.transform                          # head in the origin's space
	var f := -t.basis.z
	f.y = 0.0
	var yaw := atan2(-f.x, -f.z) if f.length() > 0.01 else 0.0
	var b := Basis(Vector3.UP, -yaw)
	origin.transform = Transform3D(b, -(b * Vector3(t.origin.x, 0.0, t.origin.z)))


## Height of the floor of a scene under a point: the lowest upward-facing surface there (a table or a step above
## it does not count). Falls back to the bottom of the scene.
func _floor_under(scene: Node3D, xz: Vector2, fallback: float) -> float:
	var best := INF
	for mi in scene.find_children("*", "MeshInstance3D", true, false):
		var m: Mesh = (mi as MeshInstance3D).mesh
		if m == null:
			continue
		var t := _global_to(mi, scene.get_parent())
		var faces := m.get_faces()
		for i in range(0, faces.size(), 3):
			var a: Vector3 = t * faces[i]
			var b: Vector3 = t * faces[i + 1]
			var c: Vector3 = t * faces[i + 2]
			var nrm := (b - a).cross(c - a)
			if absf(nrm.normalized().y) < 0.8:
				continue
			var hit = Geometry3D.ray_intersects_triangle(Vector3(xz.x, 1e4, xz.y), Vector3.DOWN, a, b, c)
			if hit != null and hit.y < best:
				best = hit.y
	return best if best < INF else fallback


func _bounds(n: Node) -> AABB:
	var box := AABB()
	var first := true
	for mi in n.find_children("*", "MeshInstance3D", true, false):
		var b: AABB = _global_to(mi, n) * (mi as MeshInstance3D).get_aabb()
		box = b if first else box.merge(b)
		first = false
	return box


static func _global_to(node: Node3D, top: Node) -> Transform3D:
	var t := node.transform
	var p := node.get_parent()
	while p != null and p != top.get_parent() and p is Node3D:
		t = (p as Node3D).transform * t
		p = p.get_parent()
	return t


func _next_room() -> void:
	room_i = (room_i + 1) % rooms.size()
	settings.room = room_i
	settings.save()
	_apply_room()
	_show_toast("Зала %d/%d · %s" % [room_i + 1, rooms.size(), rooms[room_i].name])


func _show_toast(text: String) -> void:
	if toast == null:
		toast = _label("", 40, STAGE_POS + Vector3(0, 2.25, 0.3), FONT_BOLD, Color.WHITE)
		toast.billboard = BaseMaterial3D.BILLBOARD_ENABLED
		toast.outline_size = 12
	toast.text = text
	toast.visible = true
	toast_left = 3.0


func _card(pos: Vector3, size: Vector2, turn: float) -> Node3D:
	var card := Node3D.new()
	card.position = pos
	card.rotation_degrees.y = turn
	add_child(card)
	var q := MeshInstance3D.new()
	var mesh := QuadMesh.new()
	mesh.size = size
	q.mesh = mesh
	var m := ShaderMaterial.new()
	m.shader = GLASS_SHADER
	m.set_shader_parameter("size", size)
	m.render_priority = -1
	q.material_override = m
	card.add_child(q)
	return card


func _build_body_map() -> void:
	# Your body, small, on a glass card right of the middle: the parts the suit works on now glow warm.
	var card := _card(Vector3(1.75, 2.25, -2.55), Vector2(0.62, 1.06), -30)
	body = Mannequin.new(Color(0.88, 0.93, 0.97, 0.6))
	body.scale = Vector3.ONE * 0.4
	body.position = Vector3(0, -0.47, 0.06)
	card.add_child(body)
	body_caption = _label("Работят сега", 30, Vector3(0, 0.45, 0.01), FONT, Color(1, 1, 1, 0.92), card)


func _label(text: String, size: int, pos: Vector3, font: Font, color := Color.WHITE, parent: Node3D = null) -> Label3D:
	var l := Label3D.new()
	l.text = text
	l.font = font
	l.font_size = size
	l.pixel_size = 0.0018
	l.modulate = color
	l.outline_size = 10
	l.outline_modulate = Color(0.02, 0.08, 0.1, 0.55)
	l.position = pos
	l.billboard = BaseMaterial3D.BILLBOARD_DISABLED
	l.double_sided = false
	l.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	l.outline_size = 0 if parent else 10
	l.render_priority = 2               # always over its glass card
	(parent if parent else self).add_child(l)
	return l


func _build_texts() -> void:
	# The exercise card, left of the middle: name, how to do it, reps.
	var card := _card(Vector3(-1.8, 2.45, -2.6), Vector2(0.9, 0.86), 30)
	title = _label("", 72, Vector3(0, 0.31, 0.01), FONT_BOLD, Color.WHITE, card)
	title.autowrap_mode = TextServer.AUTOWRAP_OFF       # one line; long names get a smaller font in _process
	cue = _label("", 30, Vector3(0, 0.06, 0.01), FONT, Color(1, 1, 1, 0.88), card)
	cue.width = 440
	counter = _label("", 72, Vector3(0, -0.27, 0.01), FONT_BOLD, ACCENT.lightened(0.35), card)
	body_caption.text = "Работят сега"


# ---------------------------------------------------------------- headset or desktop

func _setup_view() -> void:
	origin = XROrigin3D.new()
	add_child(origin)
	cam = XRCamera3D.new()
	cam.position = Vector3(0, 1.6, 0)
	cam.fov = 72
	cam.doppler_tracking = Camera3D.DOPPLER_TRACKING_IDLE_STEP
	origin.add_child(cam)
	var ifc := XRServer.find_interface("OpenXR")
	xr = ifc != null and ifc.is_initialized()
	if xr:
		if "render_target_size_multiplier" in ifc:    # the runtime's suggestion is below the Quest 3 panel: render
			ifc.set("render_target_size_multiplier", 1.25)   # at the panel's own sharpness (rooms, views, text)
		get_viewport().use_xr = true
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		if ifc.has_signal("session_begun"):
			ifc.connect("session_begun", _on_xr_session)
		if ifc.has_signal("pose_recentered"):               # the headset's own recentre (hold the Meta button)
			ifc.connect("pose_recentered", _on_pose_recentered)
	var tracked := xr or web                     # the browser gets real controllers once its VR session starts
	for side in ["left", "right"]:
		var c: Node3D
		if tracked:
			var ctl := XRController3D.new()
			ctl.tracker = side + "_hand"
			ctl.button_pressed.connect(_on_button.bind(side))
			c = ctl
		else:
			c = Node3D.new()
			c.position = Vector3(-0.22 if side == "left" else 0.22, 1.15, -0.25)
		origin.add_child(c)
		c.visible = xr or not web                # in the browser the hands show with the headset
		hands[side] = c
	if web:
		_setup_webxr()
	if not xr:
		var view: String = args.get("view", "player")
		if view == "side":
			cam.position = Vector3(2.6, 1.55, -0.6)
			cam.look_at(Vector3(0.3, 1.05, -1.9))
		elif view == "wide":
			cam.position = Vector3(0.0, 1.7, 1.6)
			cam.look_at(Vector3(0, 1.1, -2.0))
		elif view == "chef":                     # the chef up close, from the side (his throw, his reactions)
			cam.position = Vector3(1.6, 1.5, -3.2)
			cam.look_at(Vector3(-0.3, 1.1, -6.5))
		else:
			cam.look_at(Vector3(0.0, 1.2, -2.4))
		if args.has("look"):                      # --look=<deg left> [--pitch=<deg up>]: look round a room
			cam.rotation_degrees = Vector3(float(args.get("pitch", "0")), float(args.look), 0)


# ---------------------------------------------------------------- the Quest browser (WebXR)

## In the Quest browser the game starts as a page; one tap on "Влез във VR" opens the headset session (browsers
## only allow that from a click).
func _setup_webxr() -> void:
	vr_overlay = CanvasLayer.new()
	add_child(vr_overlay)
	var box := VBoxContainer.new()
	box.set_anchors_preset(Control.PRESET_CENTER_BOTTOM)
	box.offset_left = -260
	box.offset_right = 260
	box.offset_top = -320
	box.offset_bottom = -40
	box.alignment = BoxContainer.ALIGNMENT_END
	vr_overlay.add_child(box)
	var btn := Button.new()
	btn.text = "Влез във VR"
	btn.custom_minimum_size = Vector2(520, 110)
	btn.add_theme_font_override("font", FONT_BOLD)
	btn.add_theme_font_size_override("font_size", 46)
	var sb := StyleBoxFlat.new()
	sb.bg_color = Color(0.1, 0.55, 0.65)
	sb.set_corner_radius_all(55)
	btn.add_theme_stylebox_override("normal", sb)
	var sbh := sb.duplicate() as StyleBoxFlat
	sbh.bg_color = Color(0.14, 0.68, 0.8)
	btn.add_theme_stylebox_override("hover", sbh)
	btn.add_theme_stylebox_override("pressed", sbh)
	btn.pressed.connect(_enter_vr)
	box.add_child(btn)
	var add := Button.new()                  # your own songs: picked here, kept by the browser for this site
	add.text = "♪  Добави своя музика (mp3)"
	add.custom_minimum_size = Vector2(520, 72)
	add.add_theme_font_override("font", FONT)
	add.add_theme_font_size_override("font_size", 30)
	var sa := sb.duplicate() as StyleBoxFlat
	sa.bg_color = Color(0.1, 0.16, 0.2, 0.85)
	sa.set_corner_radius_all(36)
	add.add_theme_stylebox_override("normal", sa)
	var sah := sa.duplicate() as StyleBoxFlat
	sah.bg_color = Color(0.14, 0.24, 0.3, 0.95)
	add.add_theme_stylebox_override("hover", sah)
	add.add_theme_stylebox_override("pressed", sah)
	add.pressed.connect(func() -> void:
		if game:
			game.music_import.pick())
	box.add_child(add)
	vr_status = Label.new()
	vr_status.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	vr_status.add_theme_font_override("font", FONT)
	vr_status.add_theme_font_size_override("font_size", 24)
	vr_status.add_theme_color_override("font_outline_color", Color(0, 0, 0, 0.7))
	vr_status.add_theme_constant_override("outline_size", 8)
	vr_status.text = "Отвори тази страница в браузъра на Meta Quest"
	box.add_child(vr_status)
	webxr = XRServer.find_interface("WebXR")
	if webxr == null:
		vr_status.text = "Този браузър няма WebXR"
		btn.disabled = true
		return
	webxr.session_supported.connect(func(mode: String, ok: bool) -> void:
		if mode == "immersive-vr":
			btn.disabled = not ok
			vr_status.text = "Сложи очилата и натисни бутона" if ok else "Отвори тази страница в браузъра на Meta Quest")
	webxr.session_started.connect(_on_webxr_started)
	webxr.session_ended.connect(_on_webxr_ended)
	webxr.session_failed.connect(func(msg: String) -> void: vr_status.text = "VR не тръгна: " + msg)
	webxr.is_session_supported("immersive-vr")


func _enter_vr() -> void:
	webxr.session_mode = "immersive-vr"
	webxr.requested_reference_space_types = "local-floor, local"
	webxr.required_features = "local-floor"
	webxr.optional_features = "bounded-floor, hand-tracking"
	if not webxr.initialize():
		vr_status.text = "VR не тръгна"


func _on_webxr_started() -> void:
	get_viewport().use_xr = true
	xr = true
	vr_overlay.visible = false
	for c in hands.values():
		c.visible = true


func _on_webxr_ended() -> void:
	get_viewport().use_xr = false
	xr = false
	vr_overlay.visible = true
	for c in hands.values():
		c.visible = false


func _on_pose_recentered() -> void:
	if game:
		game.recalibrate()


## The headset session runs: ask for the best body tracking (Quest 3: the cameras follow the upper body, the legs are
## estimated) and for hands and controllers at the same time (controllers strapped to the ankles, the hands on the
## cameras). Both are optional: a headset or a runtime without them simply keeps what it has.
func _on_xr_session() -> void:
	var bt := "OpenXRFbBodyTrackingExtensionWrapper"
	if Engine.has_singleton(bt):
		var w := Engine.get_singleton(bt)
		if w.has_method("is_body_tracking_fidelity_supported") and w.call("is_body_tracking_fidelity_supported"):
			w.call("request_body_tracking_fidelity", ClassDB.class_get_integer_constant(bt, "BODY_TRACKING_FIDELITY_HIGH"))
	var mm := "OpenXRMetaSimultaneousHandsAndControllersExtensionWrapper"
	if Engine.has_singleton(mm):
		var w2 := Engine.get_singleton(mm)
		if w2.call("is_simultaneous_hands_and_controllers_supported"):
			w2.call("resume_simultaneous_hands_and_controllers_tracking")


func _on_button(name: String, side: String) -> void:
	if name == "menu_button" or (name == "by_button" and side == "right"):   # ☰ / right B: pause and the menu
		game.toggle_menu()
		return
	if name == "by_button" and side == "left":  # left Y: the next room
		_next_room()
		return
	if name == "grip_click" and side == "left":
		game.next_track()
		return
	if name == "ax_button":                     # right A: skip the explanation · left X: stand here, this is the middle
		if side == "right":
			game.skip_stage()
		else:
			game.recalibrate()


func _process(_delta: float) -> void:
	if toast and toast.visible:
		toast_left -= _delta
		toast.visible = toast_left > 0.0


# ---------------------------------------------------------------- desktop preview

func _slow_particles(k: float) -> void:
	for ch in game.fx.get_children():
		if ch is CPUParticles3D:
			(ch as CPUParticles3D).speed_scale = k


func _shoot() -> void:
	await get_tree().create_timer(float(args.get("wait", "0.2"))).timeout
	if args.has("burst"):                       # --burst=0..2 (HAND/KNEE/FOOT) or hit: an effect frozen --bt s in
		Engine.time_scale = 0.03                # the software renderer is slow: run the moment in slow motion
		var at := Vector3(0.05, 1.35, -1.1)
		if args.burst == "hit":
			game.fx.impact(at)
			game.suit.punish(Defs.Zone.TORSO, 0)       # drives the red edge and the body map as in play
		else:
			game.fx.shatter(at, Defs.COLOR[int(args.burst)], Vector3(0.1, 0.1, -1.0))
			game.fx.popup(at, "+150", Defs.COLOR[int(args.burst)].lightened(0.45))
		_slow_particles(0.03)
		await get_tree().create_timer(float(args.get("bt", "0.08"))).timeout
		Engine.time_scale = 0.0001
		_slow_particles(0.0)
	if args.has("glove"):                       # --glove=left|right: a close-up of that glove (pose checks)
		var g: Node3D = game.avatar.gloves[args.glove]
		Engine.time_scale = 0.0001
		await get_tree().create_timer(float(args.get("gt", "0.3")) * 0.0001).timeout
		cam.global_position = g.global_position + g.global_basis.x * float(args.get("gx", "0.3")) + Vector3(0, 0.08, 0)
		cam.look_at(g.global_position + g.global_basis * Vector3(0, 0, -0.05))
	if args.has("leg"):                         # --leg=l|r: a close-up of that leg's armour from the side
		Engine.time_scale = 0.0001
		var sh: Node3D = game.avatar._legs[args.leg].shin
		var at := sh.global_position + Vector3(0, float(args.get("ly", "0.15")), 0)
		cam.global_position = at + Vector3(float(args.get("lx", "0.9")), 0.25, float(args.get("lz", "-0.6")))
		cam.look_at(at)
	for i in 6:
		await get_tree().process_frame
	await RenderingServer.frame_post_draw
	get_viewport().get_texture().get_image().save_png(args.shot)
	get_tree().quit()
