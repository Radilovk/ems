## XEMS Studio — the room, the coach, your body map and the workout loop.
## Runs in the headset (OpenXR) or on a desktop for previews:
##   godot --path vr-workout -- --shot=out.png --ex=squat --t=2.0 --view=player
extends Node3D

const FONT_BOLD := preload("res://assets/fonts/Inter-SemiBold.otf")
const FONT := preload("res://assets/fonts/Inter-Regular.otf")
const PANO := preload("res://assets/yoga_room.jpg")
const ROOM_SHADER := preload("res://shaders/room.gdshader")
const RING_SHADER := preload("res://shaders/ring.gdshader")
const GLASS_SHADER := preload("res://shaders/glass.gdshader")

const TRAINER_POS := Vector3(0, 0, -2.4)
const TRAINER_TURN := 32.0          # degrees: a 3/4 view shows how deep the movement goes
const ROOM_YAW := -0.135            # the big arched window straight ahead
const ACCENT := Color(0.25, 0.85, 1.0)
const WARM := Color(1.0, 0.6, 0.2)

var xr := false
var args := {}
var program: Array = Exercises.list()
var ex_index := 0
var ex_time := -4.0          # < 0: "next up" preview before the first rep
var paused := false

var trainer: Coach
var coaches: Array = []
var rooms: Array = []
var coach_i := 0
var room_i := 0
var room_shell: MeshInstance3D
var room_mat: ShaderMaterial
var sky_mat: PanoramaSkyMaterial
var sky: Sky
var plain_sky := ProceduralSkyMaterial.new()      # behind 3D scene rooms
var env: Environment
var room_scene: Node3D
var toast: Label3D
var toast_left := 0.0
var coach_rep := -1
var body: Mannequin
var title: Label3D
var cue: Label3D
var counter: Label3D
var body_caption: Label3D
var player_ring: ShaderMaterial
var coach_ring: ShaderMaterial
var hands := {}              # "left"/"right" -> XRController3D (or a stand-in Node3D on desktop)
var hand_prev := {}
var hand_speed := {}
var targets: Array[Node3D] = []
var hits := 0
var last_hold_rep := -1


func _ready() -> void:
	for a in OS.get_cmdline_user_args():
		if a.begins_with("--") and "=" in a:
			args[a.substr(2, a.find("=") - 2)] = a.substr(a.find("=") + 1)
	Library.prepare(args.get("lib", ""))
	coaches = Library.coaches(args.get("lib", ""))
	rooms = Library.rooms(args.get("lib", ""))
	coach_i = _pick(coaches, args.get("coach", "0"))
	room_i = _pick(rooms, args.get("room", "0"))
	_build_world()
	_build_room()
	_apply_room()
	_build_coach()
	_build_body_map()
	_build_texts()
	_setup_view()
	if args.has("ex"):
		for i in program.size():
			if program[i].id == args.ex:
				ex_index = i
		ex_time = float(args.get("t", "1.0"))
	if args.has("shot"):
		_shoot.call_deferred()


# ---------------------------------------------------------------- world

## A coach / room by number or by a part of its name (desktop: --coach=Michelle --room=2).
static func _pick(list: Array, key: String) -> int:
	if key.is_valid_int():
		return clampi(int(key), 0, list.size() - 1)
	for i in list.size():
		if key.to_lower() in String(list[i].name).to_lower() or key.to_lower() in String(list[i].path).to_lower():
			return i
	return 0


func _build_world() -> void:
	sky_mat = PanoramaSkyMaterial.new()
	sky_mat.panorama = PANO
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
	room.position.y = 1.9
	room.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(room)
	room_shell = room

	# Soft contact shadow under the coach (the photographed floor has no real shadows).
	var blob := MeshInstance3D.new()
	var bp := PlaneMesh.new()
	bp.size = Vector2(1.1, 0.8)
	blob.mesh = bp
	var bm := ShaderMaterial.new()
	bm.shader = preload("res://shaders/blob.gdshader")
	blob.material_override = bm
	blob.position = TRAINER_POS + Vector3(0, 0.004, 0)
	add_child(blob)

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
	player_ring = _ring(Vector3(0, 0.015, 0), 1.6)
	coach_ring = _ring(TRAINER_POS + Vector3(0, 0.01, 0), 1.3)


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
	if r.kind == "pano":
		var pano := Library.load_pano(r.path)
		if pano.is_empty():
			_show_toast("Не мога да отворя " + String(r.path).get_file())
			return
		room_mat.set_shader_parameter("pano", pano.tex)
		room_mat.set_shader_parameter("hdr", pano.hdr)
		room_mat.set_shader_parameter("exposure", pano.exposure)
		room_mat.set_shader_parameter("capture", Vector3(0, float(args.get("cam", r.get("cam", 1.5))), 0))
		room_mat.set_shader_parameter("yaw", float(args.get("yaw", r.get("yaw", 0.0))))
		sky_mat.panorama = pano.tex
		sky.sky_material = sky_mat
		env.background_energy_multiplier = pano.exposure if pano.hdr else 1.0
		room_shell.visible = true
		return
	var scene := Library.load_scene(r.path)
	if scene == null:
		_show_toast("Не мога да отворя " + String(r.path).get_file())
		return
	room_scene = Node3D.new()
	room_scene.add_child(scene)
	add_child(room_scene)
	# Fit it: centimetres → metres, the floor at 0, the middle of the room between you and the coach.
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
	room_shell.visible = false
	sky.sky_material = plain_sky
	env.background_energy_multiplier = 1.0


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


func _build_coach() -> void:
	if trainer:
		trainer.queue_free()
	var c: Dictionary = coaches[coach_i]
	var src = null
	if c.path != "":
		src = Library.load_scene(c.path)
		if src == null:
			_show_toast("Не мога да отворя " + String(c.path).get_file())
	trainer = Coach.new(src)
	for w in c.get("wear", []):
		if trainer.wear(Library.load_scene(w)) == 0:
			_show_toast("Не мога да облека " + String(w).get_file())
	trainer.position = TRAINER_POS
	trainer.rotation_degrees.y = TRAINER_TURN
	add_child(trainer)
	coach_rep = -1
	if not trainer.ok:
		_show_toast(String(c.name) + ": няма човешки скелет")


func _next_coach() -> void:
	coach_i = (coach_i + 1) % coaches.size()
	_build_coach()
	_show_toast("Треньор %d/%d · %s" % [coach_i + 1, coaches.size(), coaches[coach_i].name])


func _next_room() -> void:
	room_i = (room_i + 1) % rooms.size()
	_apply_room()
	_show_toast("Зала %d/%d · %s" % [room_i + 1, rooms.size(), rooms[room_i].name])


func _show_toast(text: String) -> void:
	if toast == null:
		toast = _label("", 40, TRAINER_POS + Vector3(0, 2.25, 0.3), FONT_BOLD, Color.WHITE)
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
	# Your body, small, on a glass card right of the coach: the parts the suit works on now glow warm.
	var card := _card(Vector3(1.3, 1.22, -2.05), Vector2(0.62, 1.06), -24)
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
	# The exercise card, left of the coach: name, how to do it, reps.
	var card := _card(Vector3(-1.35, 1.32, -2.05), Vector2(0.9, 0.86), 24)
	title = _label("", 72, Vector3(0, 0.31, 0.01), FONT_BOLD, Color.WHITE, card)
	title.autowrap_mode = TextServer.AUTOWRAP_OFF       # one line; long names get a smaller font in _process
	cue = _label("", 30, Vector3(0, 0.06, 0.01), FONT, Color(1, 1, 1, 0.88), card)
	cue.width = 440
	counter = _label("", 72, Vector3(0, -0.27, 0.01), FONT_BOLD, ACCENT.lightened(0.35), card)
	body_caption.text = "Работят сега"


# ---------------------------------------------------------------- headset or desktop

func _setup_view() -> void:
	var origin := XROrigin3D.new()
	add_child(origin)
	var cam := XRCamera3D.new()
	cam.position = Vector3(0, 1.6, 0)
	cam.fov = 72
	origin.add_child(cam)
	var ifc := XRServer.find_interface("OpenXR")
	xr = ifc != null and ifc.is_initialized()
	if xr:
		get_viewport().use_xr = true
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
	for side in ["left", "right"]:
		var c: Node3D
		if xr:
			var ctl := XRController3D.new()
			ctl.tracker = side + "_hand"
			ctl.button_pressed.connect(_on_button.bind(side))
			c = ctl
		else:
			c = Node3D.new()
			c.position = Vector3(-0.22 if side == "left" else 0.22, 1.15, -0.25)
		origin.add_child(c)
		_glove(c)
		hands[side] = c
	if not xr:
		var view: String = args.get("view", "player")
		if view == "side":
			cam.position = Vector3(2.6, 1.55, -0.6)
			cam.look_at(Vector3(0.3, 1.05, -1.9))
		elif view == "coach":
			cam.position = TRAINER_POS + Vector3(0.4, 1.3, 2.0)
			cam.look_at(TRAINER_POS + Vector3(0, 1.0, 0))
		elif view == "profile":                    # the coach exactly from his left side
			var side_dir := Basis(Vector3.UP, deg_to_rad(TRAINER_TURN)) * Vector3(2.4, 0, 0)
			cam.position = TRAINER_POS + side_dir + Vector3(0, 1.0, 0)
			cam.look_at(TRAINER_POS + Vector3(0, 0.85, 0))
		elif view == "close":                      # the coach's face and chest, from the front
			var fwd := Basis(Vector3.UP, deg_to_rad(TRAINER_TURN)) * Vector3(0, 0, 1.1)
			cam.position = TRAINER_POS + fwd + Vector3(0, 1.5, 0)
			cam.look_at(TRAINER_POS + Vector3(0, 1.35, 0))
		elif view == "back":
			cam.position = TRAINER_POS + Vector3(-0.9, 1.4, -1.9)
			cam.look_at(TRAINER_POS + Vector3(0, 1.0, 0))
		elif view == "wide":
			cam.position = Vector3(0.0, 1.7, 1.6)
			cam.look_at(Vector3(0, 1.1, -2.0))
		else:
			cam.look_at(Vector3(0.0, 1.2, -2.4))


func _glove(parent: Node3D) -> void:
	var m := MeshInstance3D.new()
	var s := SphereMesh.new()
	s.radius = 0.045
	s.height = 0.09
	m.mesh = s
	var mat := StandardMaterial3D.new()
	mat.albedo_color = Color(0.1, 0.5, 0.6)
	mat.emission_enabled = true
	mat.emission = ACCENT
	mat.emission_energy_multiplier = 0.6
	m.material_override = mat
	parent.add_child(m)


func _on_button(name: String, side: String) -> void:
	if name == "by_button":                     # right B: the next coach, left Y: the next room
		if side == "right":
			_next_coach()
		else:
			_next_room()
		return
	if name == "trigger_click" or name == "ax_button":
		if ex_time < -0.5:
			ex_time = -0.5          # skip the preview
		elif name == "ax_button":
			_next_exercise()


# ---------------------------------------------------------------- the workout loop

func _process(delta: float) -> void:
	_track_hands(delta)
	if toast and toast.visible:
		toast_left -= delta
		toast.visible = toast_left > 0.0
	var e: Dictionary = program[ex_index]
	if not paused and not args.has("shot"):
		ex_time += delta
	var preview := ex_time < 0.0
	var t: float = max(ex_time, 0.0) if not preview else fmod(ex_time + 100.0, Exercises.rep_length(e))
	var ph := Exercises.phase(e, t)
	var clips: Array = e.get("clips", [])
	if not clips.is_empty() and not trainer.has_clip(clips[0]):
		clips = []                               # a coach without the clip library does the punches by pose
	if clips.is_empty():
		trainer.set_pose(Exercises.pose_at(e, t))
	elif ph.rep != coach_rep:                    # a ready-made move per rep (jab, cross, jab…)
		coach_rep = ph.rep
		trainer.play(clips[ph.rep % clips.size()], 1.1)

	var impulse: float = 0.0 if preview else ph.impulse
	trainer.set_active(e.muscles, impulse * 0.8)
	body.set_active(e.muscles, 0.35 + impulse * 0.65 if not preview else 0.3)
	player_ring.set_shader_parameter("pulse", impulse)
	coach_ring.set_shader_parameter("pulse", impulse)

	title.text = e.name
	title.font_size = 72 if e.name.length() <= 10 else 56
	if preview:
		cue.text = "Следва · " + e.cue
		counter.text = "%d" % int(ceil(-ex_time))
	else:
		cue.text = e.cue
		var done: int = min(ph.rep + (1 if ph.t > 0.5 or ph.in_hold else 0), e.reps)
		counter.text = "%d / %d" % [done, e.reps]
	if not preview and ph.in_hold and ph.rep != last_hold_rep:
		last_hold_rep = ph.rep
		_impulse_haptics(e)
	if e.get("targets", false) and not preview:
		_run_targets(e, ph)
	elif not targets.is_empty():
		_clear_targets()

	if not preview and ph.rep >= e.reps:
		_next_exercise()


func _next_exercise() -> void:
	_clear_targets()
	ex_index = (ex_index + 1) % program.size()
	ex_time = -4.0
	last_hold_rep = -1
	coach_rep = -1
	trainer.ease_into_next()


## The EMS beat: one pulse per hold. Through the XEMS layer the tablet turns it into the suit's impulse.
func _impulse_haptics(e: Dictionary) -> void:
	if not xr:
		return
	for c in hands.values():
		(c as XRController3D).trigger_haptic_pulse("haptic", 0.0, 0.75, e.hold, 0.0)


func _track_hands(delta: float) -> void:
	for side in hands:
		var p: Vector3 = hands[side].global_position
		if hand_prev.has(side) and delta > 0.0:
			hand_speed[side] = (p - hand_prev[side]).length() / delta
		hand_prev[side] = p


# ---------------------------------------------------------------- punch targets

func _run_targets(e: Dictionary, ph: Dictionary) -> void:
	if targets.is_empty():
		for side in ["left", "right"]:
			targets.append(_target(side))
	var head := Vector3(0, 1.6, 0)
	var active_side := "left" if ph.rep % 2 == 0 else "right"
	for tgt in targets:
		var side: String = tgt.get_meta("side")
		var on := side == active_side
		tgt.position = head + Vector3(-0.17 if side == "left" else 0.17, -0.28, -0.55)
		tgt.scale = Vector3.ONE * (1.0 + (0.15 * sin(ex_time * 9.0) if on else -0.35))
		(tgt.get_child(0) as MeshInstance3D).material_override.emission_energy_multiplier = 2.2 if on else 0.4
		if on and xr and hands.has(side):
			var hand: Node3D = hands[side]
			if hand.global_position.distance_to(tgt.global_position) < 0.14 and hand_speed.get(side, 0.0) > 2.0 \
					and tgt.get_meta("hit_rep", -1) != ph.rep:
				tgt.set_meta("hit_rep", ph.rep)
				hits += 1
				_burst(tgt.global_position)
				(hand as XRController3D).trigger_haptic_pulse("haptic", 0.0, 1.0, 0.12, 0.0)


func _target(side: String) -> Node3D:
	var n := Node3D.new()
	n.set_meta("side", side)
	var m := MeshInstance3D.new()
	var s := SphereMesh.new()
	s.radius = 0.075
	s.height = 0.15
	m.mesh = s
	var mat := StandardMaterial3D.new()
	mat.albedo_color = Color(0.2, 0.8, 1.0, 0.75)
	mat.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	mat.emission_enabled = true
	mat.emission = ACCENT if side == "left" else WARM
	m.material_override = mat
	n.add_child(m)
	add_child(n)
	return n


func _burst(at: Vector3) -> void:
	var p := CPUParticles3D.new()
	p.one_shot = true
	p.amount = 40
	p.lifetime = 0.45
	p.explosiveness = 1.0
	p.direction = Vector3(0, 0, 1)
	p.spread = 70
	p.initial_velocity_min = 1.0
	p.initial_velocity_max = 2.6
	p.gravity = Vector3(0, -2, 0)
	p.scale_amount_min = 0.5
	var mesh := SphereMesh.new()
	mesh.radius = 0.012
	mesh.height = 0.024
	var mat := StandardMaterial3D.new()
	mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	mat.albedo_color = ACCENT.lightened(0.4)
	mesh.material = mat
	p.mesh = mesh
	p.position = at
	add_child(p)
	p.emitting = true
	get_tree().create_timer(1.0).timeout.connect(p.queue_free)


func _clear_targets() -> void:
	for t in targets:
		t.queue_free()
	targets.clear()


# ---------------------------------------------------------------- desktop preview

func _shoot() -> void:
	for i in 6:
		await get_tree().process_frame
	await RenderingServer.frame_post_draw
	get_viewport().get_texture().get_image().save_png(args.shot)
	get_tree().quit()
