## The game: things fly at the player; break the colourful ones with a fist / knee / foot, dodge the red ones by
## squatting or leaning. A coach first explains the rules, shows the basic moves, then plays a round himself, then it is
## the player's turn. Level (speed, gap, mix) rises and falls with how well the player does.
##
## Frame: this node sits where the player stood at calibration (floor = 0); −Z is ahead. Elements and the body's
## limbs are in that frame. The suit gets SuitLink events (see suit.gd).
class_name Game
extends Node3D

enum St { IDLE, TUTORIAL, COUNTDOWN, PLAY, SUMMARY }

const COACH_PLAY_POS := Vector3(-2.3, 0, -3.1)
const COACH_PLAY_YAW := 36.0
const COACH_TEACH_POS := Vector3(0, 0, -2.4)
const COACH_TEACH_YAW := 32.0
const DEMO_Z := -3.9
const DEMO_YAW := 152.0
const LIMB_R := {"hand": 0.12, "knee": 0.14, "foot": 0.16}
const MIN_SPEED := {"hand": 1.0, "knee": 0.7, "foot": 0.9}
const MOVE_LABEL := {"jab_l": "Удар с юмрук", "cross_r": "Удар с другия юмрук", "knee_l": "Коляно", "knee_r": "Другото коляно",
	"kick_l": "Ритник", "kick_r": "Ритник с другия крак", "lean_r": "Наклон встрани", "lean_l": "Наклон на другата страна",
	"duck": "Клек"}
const MOVE_ROLE := {"jab_l": "hand_l", "cross_r": "hand_r", "knee_l": "calf_l", "knee_r": "calf_r", "kick_l": "ball_l",
	"kick_r": "ball_r", "lean_l": "head", "lean_r": "head", "duck": "head"}
const CH := {
	Defs.Zone.ARMS: ["Ръце"],
	Defs.Zone.LEGS: ["Предно бедро", "Задно бедро", "Прасец"],
	Defs.Zone.TORSO: ["Корем", "Глутеус", "Кръст", "Гръб"],
}

var stage: Node3D                    # main.gd: room, coach, cards, hands
var body := PlayerBody.new()
var sfx: Sfx
var suit := SuitLink.new()
var st: int = St.IDLE
var elems: Array[Elem] = []
var legend: Array[Node3D] = []
var args := {}

var level := 0                       # index into Defs.LEVELS
var level_total := 0
var level_spawned := 0
var next_gap := 1.0
var score := 0
var combo := 0
var best_combo := 0
var lv_hits := 0
var lv_dodged := 0
var lv_taken := 0
var message := ""
var message_t := 0.0
var clock := 0.0
var skip := false
var last_kind := -1

var legs_live := false               # the legs answered the knee test (Quest 3 estimates them; they may not follow)
var demo_on := false
var demo_clock := 0.0
var demo_events: Array = []
var demo_pts := {}

var sim_on := false
var sim_skill := 0.8
var _sim_rest := {}
var _glow: Array = []                # {"zone", "t0", "kind", "ev"}
var _legs_warned := false
var _selftest_levels := 0
var tracks: Array = []
var track_i := -1


func start(stage_node: Node3D, a: Dictionary) -> void:
	stage = stage_node
	args = a
	sfx = Sfx.new()
	add_child(sfx)
	suit.fired.connect(_on_suit)
	body.setup(stage.cam, stage.origin, stage.hands)
	level = clampi(int(a.get("level", "1")) - 1, 0, Defs.LEVELS.size() - 1)
	sim_on = a.get("sim", "0") == "1"
	sim_skill = float(a.get("skill", "0.8"))
	_selftest_levels = int(a.get("levels", "0"))
	if a.has("timescale"):
		Engine.time_scale = float(a.timescale)
	if sim_on:
		_sim_init()
	tracks = Library.tracks(a.get("lib", ""))
	if a.get("mute", "0") == "1":
		sfx.muted = true
	else:
		if not tracks.is_empty():
			next_track(0)
		sfx.start_music()
	if a.has("move"):                                   # desktop preview: a move frozen at --mt (default: the hit)
		_coach().position = COACH_TEACH_POS
		_coach().rotation_degrees.y = COACH_TEACH_YAW
		_coach().freeze(a.move, float(a.get("mt", str(MoveLib.hit(a.move)))))
		return
	if a.get("skiptut", "0") == "1":
		_begin_countdown.call_deferred()
	else:
		_tutorial.call_deferred()


## The owner's tracks (XEMS/music): the next one, wrapping round. The built-in bed plays when there are none.
func next_track(step := 1) -> void:
	if tracks.is_empty():
		return
	track_i = (track_i + step) % tracks.size()
	if sfx.set_track(tracks[track_i].path):
		stage._show_toast("♪ " + String(tracks[track_i].name))


func skip_stage() -> void:
	skip = true


func recalibrate() -> void:
	body.calibrate()
	position = Vector3(body.center.x, 0, body.center.z)
	sfx.play("tick")
	stage._show_toast("Центрирано")


# ---------------------------------------------------------------- the loop

func _process(delta: float) -> void:
	if stage == null:
		return
	# Logic runs in small fixed steps (≤ 20 ms): a frame that takes long (a slow device, a hitch) must not let a fast
	# fist pass through a sphere between two samples.
	var n := clampi(int(ceil(delta / 0.02)), 1, 200)
	for i in n:
		_step(delta / n)
	for l in legend:
		if l is Elem:
			(l as Elem).advance(delta)
	_suit_fx()
	_hud(delta)


func _step(dt: float) -> void:
	clock += dt
	body.update(dt)
	if sim_on:
		_sim(dt)
	if demo_on:
		_demo_update(dt)
	if st == St.PLAY:
		_play_update(dt)


func _play_update(delta: float) -> void:
	var lv: Dictionary = Defs.LEVELS[level]
	if level_spawned < level_total:
		next_gap -= delta
		if next_gap <= 0.0:
			_spawn(_pick_kind(lv.w))
			var g: Array = lv.gap
			next_gap = randf_range(g[0], g[1])
	for e in elems.duplicate():
		e.advance(delta)
		if e.done:
			if e.position.z > 2.0:
				_remove(e)
			continue
		if e.is_hazard():
			_judge_hazard(e)
		else:
			_judge_orb(e)
	if level_spawned >= level_total and elems.is_empty() and st == St.PLAY:
		_end_level.call_deferred()


# ---------------------------------------------------------------- spawning

func _pick_kind(w: Dictionary) -> int:
	var total := 0.0
	var pool := {}
	for k in w:
		if (k == Defs.Kind.KNEE or k == Defs.Kind.FOOT) and not (body.has_legs and legs_live):
			continue
		pool[k] = float(w[k])
		total += float(w[k])
	if pool.is_empty():
		return Defs.Kind.HAND
	var r := randf() * total
	for k in pool:
		r -= pool[k]
		if r <= 0.0:
			if k == last_kind and Defs.is_hazard(k) and randf() < 0.5:
				continue                      # not the same hazard twice in a row too often
			return k
	return pool.keys()[0]


func _spawn(kind: int) -> void:
	var lv: Dictionary = Defs.LEVELS[level]
	var h := body.stand_h
	var x := 0.0
	var y := 0.0
	var side := 0
	match kind:
		Defs.Kind.HAND:
			x = randf_range(-0.28, 0.28)
			y = h * Defs.HAND_Y + randf_range(-0.1, 0.12)
		Defs.Kind.KNEE:
			side = 1 if randf() < 0.5 else -1
			x = side * randf_range(0.1, 0.2)
			y = h * Defs.KNEE_Y
		Defs.Kind.FOOT:
			side = 1 if randf() < 0.5 else -1
			x = side * randf_range(0.1, 0.2)
			y = h * Defs.FOOT_Y
		Defs.Kind.DUCK:
			y = h * Defs.DUCK_Y
		Defs.Kind.LEAN_L:
			side = -1
			x = -Defs.LEAN_X
			y = h * 0.97
		Defs.Kind.LEAN_R:
			side = 1
			x = Defs.LEAN_X
			y = h * 0.97
	var e := Elem.make(kind, side, lv.speed, h)
	e.position = Vector3(x, y, Defs.CONTACT_Z - _spawn_dist(lv.speed))
	add_child(e)
	elems.append(e)
	level_spawned += 1
	last_kind = kind
	if e.is_hazard():
		sfx.attach(e, "hum", -4.0, true)
		sfx.play("alarm", e.global_position, -6.0)
	else:
		var delay: float = max(_spawn_dist(lv.speed) / lv.speed - 0.75, 0.05)
		get_tree().create_timer(delay).timeout.connect(_late_whoosh.bind(e))


## How far ahead things appear: the lead time, but never beyond the far wall.
func _spawn_dist(speed: float) -> float:
	return clamp(min(speed * Defs.LEAD_SEC, stage.room_depth - 0.9), 2.5, Defs.SPAWN_MAX * 2.0)


func _late_whoosh(e: Elem) -> void:
	if is_instance_valid(e) and not e.done:
		sfx.attach(e, "whoosh", -3.0)


func _remove(e: Elem) -> void:
	elems.erase(e)
	if is_instance_valid(e):
		e.queue_free()


# ---------------------------------------------------------------- judging

func _judge_orb(e: Elem) -> void:
	var limb := Defs.limb_of(e.kind)
	if args.has("dbg") and e.position.z > -1.6 and e.position.z < 0.1:
		print("DBG kind=%d z=%.2f e=%s hand_l=%s v=%.1f hand_r=%s v=%.1f valid=%s" % [e.kind, e.position.z, e.position.snapped(Vector3.ONE*0.01), body.pos["hand_l"].snapped(Vector3.ONE*0.01), body.speed["hand_l"], body.pos["hand_r"].snapped(Vector3.ONE*0.01), body.speed["hand_r"], body.valid["hand_l"]])
	for s in ["l", "r"]:
		var n: String = limb + "_" + s
		if not body.valid.get(n, false):
			continue
		var p: Vector3 = body.pos[n]
		if p.distance_to(e.position) < e.radius + LIMB_R[limb] and body.speed[n] >= MIN_SPEED[limb]:
			_break(e, n)
			return
	if e.position.z >= Defs.MISS_Z:
		var zone := Defs.Zone.ARMS if e.kind == Defs.Kind.HAND else Defs.Zone.LEGS
		_take_hit(e, zone, e.position)


func _break(e: Elem, limb: String) -> void:
	e.done = true
	lv_hits += 1
	combo += 1
	best_combo = max(best_combo, combo)
	score += 100 + 10 * min(combo, 20)
	var kind_name: String = limb.split("_")[0]
	var zone := Defs.Zone.ARMS if kind_name == "hand" else Defs.Zone.LEGS
	var side := -1 if limb.ends_with("_l") else 1
	suit.strike(zone, side)
	var at := e.global_position
	sfx.play(kind_name if kind_name != "hand" else "punch", at, 0.0, randf_range(0.94, 1.06))
	sfx.play("shatter", at, -2.0, randf_range(0.92, 1.08))
	_burst(at, Defs.COLOR[e.kind], 46)
	_say("Точен удар!" if combo < 5 else "Серия ×%d!" % combo, 0.7)
	if combo > 0 and combo % 5 == 0:
		sfx.play("combo", null, -3.0, 1.0 + min(combo / 5, 6) * 0.06)
	_remove(e)


func _take_hit(e: Elem, zone: int, at_local: Vector3) -> void:
	e.done = true
	lv_taken += 1
	combo = 0
	var side := -1 if e.position.x < 0.0 else 1
	suit.punish(zone, side)
	var at := to_global(at_local)
	sfx.play("damage", at, 1.0)
	sfx.duck_music(-6.0, 0.5)
	_burst(at, Color(1.0, 0.2, 0.15), 60)
	_say("Улучи те!" if not e.is_hazard() else "Не избегна!", 1.2)
	if not e.is_hazard():
		_remove(e)


func _judge_hazard(e: Elem) -> void:
	var z := e.position.z
	if z > -0.4 and z < 0.4:
		var c := e.position
		var head_hit := _sphere_box(body.head, 0.13, c, e.half)
		var shoulder_hit := _sphere_box(body.head - Vector3(0, 0.27, 0), 0.2, c, e.half)
		if head_hit or shoulder_hit:
			_take_hit(e, Defs.Zone.TORSO if head_hit else Defs.Zone.ARMS, body.head)
			return
	if z >= 0.4:
		e.done = true
		lv_dodged += 1
		combo += 1
		best_combo = max(best_combo, combo)
		score += 60 + 5 * min(combo, 20)
		sfx.play("dodge", to_global(Vector3(e.position.x, e.position.y, 0.0)), -1.0)
		_say("Избегнато!", 0.7)


static func _sphere_box(p: Vector3, r: float, c: Vector3, half: Vector3) -> bool:
	var d := Vector3(max(abs(p.x - c.x) - half.x, 0.0), max(abs(p.y - c.y) - half.y, 0.0), max(abs(p.z - c.z) - half.z, 0.0))
	return d.length() < r


# ---------------------------------------------------------------- levels

func _begin_countdown() -> void:
	st = St.COUNTDOWN
	_title("Готови?")
	stage.cue.text = "Застани изправен и гледай напред"
	_coach_to(COACH_PLAY_POS, COACH_PLAY_YAW, 1.0)
	_coach_base("guard")
	legs_live = legs_live or (body.has_legs and sim_on)
	for i in [3, 2, 1]:
		stage.counter.text = str(i)
		sfx.play("beep")
		await _wait(1.0)
	body.calibrate()
	position = Vector3(body.center.x, 0, body.center.z)
	sfx.play("go")
	_start_level()


func _start_level() -> void:
	var lv: Dictionary = Defs.LEVELS[level]
	level_total = lv.count
	level_spawned = 0
	lv_hits = 0
	lv_dodged = 0
	lv_taken = 0
	next_gap = 1.5
	st = St.PLAY
	_coach_base("guard")
	if not legs_live and not _legs_warned and not sim_on:
		_legs_warned = true
		stage._show_toast("Няма данни за краката: без колене и ритници")
	_say("Ниво %d" % (level + 1), 1.5)


func _end_level() -> void:
	if st != St.PLAY:
		return
	st = St.SUMMARY
	_coach_base("watch")
	var total := lv_hits + lv_dodged + lv_taken
	var acc: float = float(lv_hits + lv_dodged) / float(max(total, 1))
	var next := level
	var verdict := "Същото ниво още веднъж"
	if acc >= 0.75:
		next = min(level + 1, Defs.LEVELS.size() - 1)
		verdict = "Нагоре!" if next != level else "Най-високото ниво"
		sfx.play("levelup")
		_play_move("yes")
	elif acc < 0.45:
		next = max(level - 1, 0)
		verdict = "Малко по-бавно"
		sfx.play("fail")
	else:
		sfx.play("combo")
	_title("Ниво %d: %d%%" % [level + 1, int(round(acc * 100))])
	stage.cue.text = "Разбити %d · избегнати %d · улучен %d\n%s" % [lv_hits, lv_dodged, lv_taken, verdict]
	print("LEVEL %d done: hits=%d dodged=%d taken=%d acc=%.2f score=%d best_combo=%d -> %d" % [level + 1, lv_hits, lv_dodged, lv_taken, acc, score, best_combo, next + 1])
	_selftest_levels -= 1 if _selftest_levels > 0 else 0
	if args.has("levels") and _selftest_levels <= 0:
		get_tree().quit()
		return
	level = next
	await _wait(5.0)
	if st == St.SUMMARY:
		_start_level()


func _title(t: String) -> void:
	stage.title.text = t
	stage.title.font_size = 72 if t.length() <= 10 else (56 if t.length() <= 14 else 42)


func _say(text: String, seconds: float) -> void:
	message = text
	message_t = seconds


func _hud(delta: float) -> void:
	if st != St.PLAY:
		return
	message_t -= delta
	_title("Ниво %d" % (level + 1))
	stage.cue.text = message if message_t > 0.0 else "Ръка · коляно · крак\nПази се от червеното"
	stage.counter.text = "%d" % score + ("  ×%d" % combo if combo > 1 else "")


# ---------------------------------------------------------------- the suit, as seen in the room

func _on_suit(ev: Dictionary) -> void:
	_glow.append({"zone": ev.zone, "t0": clock, "ev": ev})


func _suit_fx() -> void:
	var levels := {}
	var pulse := 0.0
	for g in _glow.duplicate():
		var age: float = clock - g.t0
		var ev: Dictionary = g.ev
		var env := SuitLink.envelope(ev, age)
		var show: float = max(float(ev.sec), 0.35)
		if age > show:
			_glow.erase(g)
			continue
		var amp := float(env.amp) / Defs.PUNISH_AMP if ev.kind == "punish" else 0.85 * (1.0 - age / show)
		pulse = max(pulse, amp)
		for c in CH[g.zone]:
			levels[c] = max(float(levels.get(c, 0.0)), amp)
	stage.body.set_levels(levels)
	stage.player_ring.set_shader_parameter("pulse", pulse)


func _burst(at: Vector3, color: Color, amount: int) -> void:
	var p := CPUParticles3D.new()
	p.one_shot = true
	p.amount = amount
	p.lifetime = 0.55
	p.explosiveness = 1.0
	p.direction = Vector3(0, 0, 1)
	p.spread = 180
	p.initial_velocity_min = 1.0
	p.initial_velocity_max = 3.4
	p.gravity = Vector3(0, -1.5, 0)
	p.scale_amount_min = 0.5
	p.scale_amount_max = 1.4
	var mesh := SphereMesh.new()
	mesh.radius = 0.014
	mesh.height = 0.028
	mesh.radial_segments = 6
	mesh.rings = 3
	var mat := StandardMaterial3D.new()
	mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	mat.blend_mode = BaseMaterial3D.BLEND_MODE_ADD
	mat.albedo_color = color.lightened(0.35)
	mesh.material = mat
	p.mesh = mesh
	stage.add_child(p)
	p.global_position = at
	p.emitting = true
	get_tree().create_timer(1.2).timeout.connect(p.queue_free)


# ---------------------------------------------------------------- the coach

func _coach() -> Coach:
	return stage.trainer


func _coach_to(pos: Vector3, yaw: float, seconds: float) -> void:
	var c := _coach()
	var tw := create_tween().set_parallel(true).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tw.tween_property(c, "position", pos, seconds)
	tw.tween_property(c, "rotation_degrees:y", yaw, seconds)


func _coach_base(name: String) -> void:
	if _coach() != null and _coach().ok:
		_coach().set_base(name)


func _play_move(id: String) -> void:
	if _coach() != null:
		_coach().play(id)


# ---------------------------------------------------------------- the tutorial

## True when the player skipped (the flag is consumed).
func _wait(seconds: float) -> bool:
	var t := 0.0
	while t < seconds:
		await get_tree().process_frame
		t += get_process_delta_time()
		if skip:
			skip = false
			return true
	return false


func _tutorial() -> void:
	st = St.TUTORIAL
	position = Vector3.ZERO
	var c := _coach()
	c.position = COACH_TEACH_POS
	c.rotation_degrees.y = COACH_TEACH_YAW
	if not args.has("demo"):                      # --demo=1: straight to the coach's round (previews)
		await _rules()
		await _basic_moves()
		await _leg_test()
	await _demo()
	_begin_countdown()


func _rules() -> void:
	_coach_base("talk")
	_legend_show(true)
	var pages: Array = [
		["Добре дошъл!", "Ще ти обясня как се играе."],
		["Сферите се разбиват", "Циан — с ръка. Лилав — с коляно. Оранжев — с крак."],
		["Червеното не се удря", "Лъч на височината на главата — клекни. Лъч отстрани — наклони се на другата страна."],
		["Импулсите", "Точен удар — кратък импулс. Пропуснеш ли или те удари — силен импулс, който бавно затихва."],
	]
	for p in pages:
		_title(p[0])
		stage.cue.text = p[1]
		stage.counter.text = ""
		sfx.play("blip")
		if await _wait(5.5):
			continue
	_legend_show(false)


func _basic_moves() -> void:
	_coach_base("guard")
	_title("Основни движения")
	stage.counter.text = ""
	if await _wait(0.8):
		return
	for id in ["jab_l", "cross_r", "knee_l", "knee_r", "kick_l", "kick_r", "lean_r", "lean_l", "duck"]:
		stage.cue.text = MOVE_LABEL[id]
		sfx.play("pass", null, -4.0)
		_play_move(id)
		if await _wait(MoveLib.length(id) + 0.35):
			return


## Quest 3 estimates the legs from the upper body: a real knee may not show. One honest test decides whether knees and
## feet are in the game: raise a knee within a few seconds.
func _leg_test() -> void:
	legs_live = false
	if not body.has_legs:
		return
	_coach_base("guard")
	_title("Пробвай коляно")
	stage.cue.text = "Вдигни едно коляно високо"
	stage.counter.text = ""
	sfx.play("blip")
	var rest := {"knee_l": float(body.pos.knee_l.y), "knee_r": float(body.pos.knee_r.y)}
	var t := 0.0
	while t < 6.0:
		await get_tree().process_frame
		t += get_process_delta_time()
		for k in rest:
			if body.valid[k] and body.pos[k].y - rest[k] > 0.22:
				legs_live = true
		if legs_live or skip:
			skip = false
			break
	if legs_live:
		sfx.play("levelup", null, -6.0)
		stage.cue.text = "Виждам го. Колене и ритници са в играта."
		_play_move("yes")
	else:
		sfx.play("fail", null, -6.0)
		stage.cue.text = "Очилата не виждат краката ти добре.\nИграем с ръце, клек и наклони."
	await _wait(2.6)


func _legend_show(on: bool) -> void:
	for l in legend:
		l.queue_free()
	legend.clear()
	if not on:
		return
	var kinds := [Defs.Kind.HAND, Defs.Kind.KNEE, Defs.Kind.FOOT, Defs.Kind.DUCK]
	for i in kinds.size():
		var e := Elem.make(kinds[i], 0, 0.0, 1.7)
		e.scale = Vector3.ONE * (0.55 if not e.is_hazard() else 0.28)
		e.position = Vector3(-1.95 + i * 0.3, 0.62, -1.95)
		add_child(e)
		legend.append(e)
		var lb := Label3D.new()
		lb.text = Defs.NAMES[kinds[i]]
		lb.font = stage.FONT
		lb.font_size = 22
		lb.pixel_size = 0.0016
		lb.modulate = Defs.COLOR[kinds[i]].lightened(0.3)
		lb.position = Vector3(0, -0.22, 0.0)
		lb.billboard = BaseMaterial3D.BILLBOARD_ENABLED
		lb.scale = Vector3.ONE * (1.0 / e.scale.x)
		e.add_child(lb)


# ---- the coach plays a round himself

func _demo() -> void:
	var c := _coach()
	_title("Гледай!")
	stage.cue.text = "Ето как се играе."
	stage.counter.text = ""
	_coach_base("guard")
	_coach_to(Vector3(-0.5, 0, max(DEMO_Z, -(stage.room_depth - 1.2))), DEMO_YAW, 1.4)
	if await _wait(1.6):
		pass
	# where his fist / knee / foot / head are at the moment of contact (read from his own skeleton)
	demo_pts.clear()
	for id in MOVE_ROLE:
		c.freeze(id, MoveLib.hit(id))
		demo_pts[id] = c.joint_world(MOVE_ROLE[id])
	c.freeze("guard", 0.0)
	var guard_head := c.joint_world("head")
	c.play("guard", 0.0)
	var seq := [
		[Defs.Kind.HAND, "jab_l"], [Defs.Kind.HAND, "cross_r"], [Defs.Kind.FOOT, "kick_l"], [Defs.Kind.KNEE, "knee_r"],
		[Defs.Kind.DUCK, "duck"], [Defs.Kind.LEAN_L, "lean_r"], [Defs.Kind.LEAN_R, "lean_l"], [Defs.Kind.FOOT, "kick_r"],
		[Defs.Kind.KNEE, "knee_l"], [Defs.Kind.HAND, "cross_r"], [Defs.Kind.DUCK, "duck"],
	]
	var speed := 3.0
	var lead := 2.2
	var gap := 2.15
	demo_events.clear()
	for i in seq.size():
		var kind: int = seq[i][0]
		var id: String = seq[i][1]
		var aim: Vector3 = demo_pts[id]
		if kind == Defs.Kind.DUCK:
			aim = guard_head + Vector3(0, 0.02, 0)
		elif kind == Defs.Kind.LEAN_L:
			aim = guard_head + Vector3(-Defs.LEAN_X, -0.15, 0)
		elif kind == Defs.Kind.LEAN_R:
			aim = guard_head + Vector3(Defs.LEAN_X, -0.15, 0)
		var t_spawn := 0.4 + i * gap
		var start: float = t_spawn + lead - MoveLib.hit(id)
		demo_events.append({"t": t_spawn, "kind": kind, "id": id, "aim": aim, "speed": speed, "lead": lead,
			"move_at": start, "spawned": false, "moved": false, "elem": null})
	demo_clock = 0.0
	demo_on = true
	var total: float = demo_events.back().t + lead + 2.2
	var skipped := await _wait(total)
	demo_on = false
	for ev in demo_events:
		if is_instance_valid(ev.elem):
			ev.elem.queue_free()
	demo_events.clear()
	_coach_base("guard")
	_title("Твой ред!")
	stage.cue.text = "Заставам встрани. Ти си на ход."
	_coach_to(COACH_PLAY_POS, COACH_PLAY_YAW, 1.2)
	sfx.play("go", null, -4.0)
	await _wait(2.4)


func _demo_update(delta: float) -> void:
	if args.has("dbg") and int(demo_clock * 4) != int((demo_clock + delta) * 4):
		print("DEMO clock=%.2f events=%d" % [demo_clock, demo_events.size()])
	demo_clock += delta
	var c := _coach()
	for ev in demo_events:
		if not ev.spawned and demo_clock >= ev.t:
			ev.spawned = true
			var kind: int = ev.kind
			var e := Elem.make(kind, 0, ev.speed, 1.7)
			add_child(e)
			e.global_position = ev.aim + Vector3(0, 0, -ev.speed * ev.lead)
			ev.elem = e
			if e.is_hazard():
				sfx.attach(e, "hum", -4.0, true)
				sfx.play("alarm", e.global_position, -6.0)
			else:
				get_tree().create_timer(max(ev.lead - 0.75, 0.05)).timeout.connect(_late_whoosh_demo.bind(e))
		if not ev.moved and demo_clock >= ev.move_at:
			ev.moved = true
			_play_move(ev.id)
		var e2 = ev.elem if is_instance_valid(ev.elem) else null
		if e2 != null and not e2.done:
			e2.advance(delta)
			if e2.is_hazard():
				if e2.global_position.z >= ev.aim.z + 0.4:
					e2.done = true
					sfx.play("dodge", e2.global_position, -2.0)
			elif e2.global_position.z >= ev.aim.z:
				e2.done = true
				var at: Vector3 = e2.global_position
				var kn: String = Defs.limb_of(e2.kind)
				sfx.play("punch" if kn == "hand" else kn, at, 0.0, randf_range(0.95, 1.05))
				sfx.play("shatter", at, -2.0)
				_burst(at, Defs.COLOR[e2.kind], 46)
				e2.queue_free()
		elif e2 != null and e2.done:
			e2.advance(delta)
			if e2.global_position.z > ev.aim.z + 3.0:
				e2.queue_free()


func _late_whoosh_demo(e: Elem) -> void:
	if is_instance_valid(e) and not e.done:
		sfx.attach(e, "whoosh", -3.0)


# ---------------------------------------------------------------- a simulated player (desktop tests, no headset)

func _sim_init() -> void:
	body.stand_h = 1.7
	_sim_rest = {
		"head": Vector3(0, 1.7, 0),
		"hand_l": Vector3(-0.22, 1.15, -0.2), "hand_r": Vector3(0.22, 1.15, -0.2),
		"knee_l": Vector3(-0.12, 0.5, 0.0), "knee_r": Vector3(0.12, 0.5, 0.0),
		"foot_l": Vector3(-0.12, 0.1, 0.0), "foot_r": Vector3(0.12, 0.1, 0.0),
	}
	body.sim = _sim_rest.duplicate()


func _sim(delta: float) -> void:
	var s: Dictionary = body.sim
	var want: Dictionary = _sim_rest.duplicate()
	var target: Elem = null
	var best := 99.0
	for e in elems:
		if e.done:
			continue
		var d := Defs.CONTACT_Z - e.position.z
		if d > (-1.3 if e.is_hazard() else -0.2) and d < best:
			best = d
			target = e
	if target != null:
		var seed_ := int(target.get_instance_id()) % 1000 / 1000.0
		var will := seed_ < sim_skill
		if target.is_hazard():
			if will and target.position.z > -3.2:
				match target.kind:
					Defs.Kind.DUCK:
						want.head = Vector3(0, 1.1, 0.0)
					Defs.Kind.LEAN_L:
						want.head = Vector3(0.42, 1.62, 0)
					Defs.Kind.LEAN_R:
						want.head = Vector3(-0.42, 1.62, 0)
		elif will and best < 1.3:
			var limb := Defs.limb_of(target.kind) + ("_l" if target.position.x < 0.0 or (target.kind != Defs.Kind.HAND and target.side < 0) else "_r")
			want[limb] = target.position
	for k in s:
		var rate := 11.0 if k.begins_with("hand") or k.begins_with("foot") or k.begins_with("knee") else 3.5
		if k == "head":
			rate = 4.0
		s[k] = (s[k] as Vector3).move_toward(want[k], rate * delta)
