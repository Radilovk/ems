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

var trainer: Mannequin
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
	_build_world()
	_build_room()
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

func _build_world() -> void:
	var sky_mat := PanoramaSkyMaterial.new()
	sky_mat.panorama = PANO
	var sky := Sky.new()
	sky.sky_material = sky_mat
	var env := Environment.new()
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
	mat.set_shader_parameter("pano", PANO)
	mat.set_shader_parameter("capture", Vector3(0, float(args.get("cam", "1.45")), 0))
	mat.set_shader_parameter("yaw", float(args.get("yaw", str(ROOM_YAW))))
	var room := MeshInstance3D.new()
	room.mesh = shell
	room.material_override = mat
	room.position.y = 1.9
	room.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(room)

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


func _build_coach() -> void:
	trainer = Mannequin.new()
	trainer.position = TRAINER_POS
	trainer.rotation_degrees.y = TRAINER_TURN
	add_child(trainer)


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


func _on_button(name: String, _side: String) -> void:
	if name == "trigger_click" or name == "ax_button":
		if ex_time < -0.5:
			ex_time = -0.5          # skip the preview
		elif name == "ax_button":
			_next_exercise()


# ---------------------------------------------------------------- the workout loop

func _process(delta: float) -> void:
	_track_hands(delta)
	var e: Dictionary = program[ex_index]
	if not paused and not args.has("shot"):
		ex_time += delta
	var preview := ex_time < 0.0
	var t: float = max(ex_time, 0.0) if not preview else fmod(ex_time + 100.0, Exercises.rep_length(e))
	var ph := Exercises.phase(e, t)
	trainer.set_pose(Exercises.pose_at(e, t))

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
