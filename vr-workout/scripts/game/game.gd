## The game: things fly at the player on the beat of the music; break the colourful ones with a fist / knee / foot,
## dodge the red ones by squatting or leaning. First the rules (with the real things floating in front of you), then a
## short try-out — one of each, slow — then the levels. Level (speed, gap, mix) rises and falls with how well it goes.
##
## Every event is felt three ways at once: the eyes (shards, a shockwave, light; a red edge when hit), the ears
## (spatial sound on the beat; the music muffled under a hit and opening up again) and the body (SuitLink: the
## controllers' haptics, which the XEMS layer turns into impulses in the suit) — on the same curve.
##
## Frame: this node sits where the player stood at calibration (floor = 0); −Z is ahead. Elements and the body's
## limbs are in that frame.
class_name Game
extends Node3D

enum St { IDLE, TUTORIAL, PRACTICE, COUNTDOWN, PLAY, SUMMARY }

const LIMB_R := {"hand": 0.12, "knee": 0.14, "foot": 0.16}
const MIN_SPEED := {"hand": 1.0, "knee": 0.7, "foot": 0.9}
const FREE_BPM := 120.0              # pacing grid when the track's tempo is unknown
const TRAIL_COLOR := Color(0.25, 0.85, 1.0)
const CH := {
	Defs.Zone.ARMS: ["Ръце"],
	Defs.Zone.LEGS: ["Предно бедро", "Задно бедро", "Прасец"],
	Defs.Zone.TORSO: ["Корем", "Глутеус", "Кръст", "Гръб"],
}

var stage: Node3D                    # main.gd: room, cards, hands, camera
var body := PlayerBody.new()
var sfx: Sfx
var fx: Fx
var suit := SuitLink.new()
var st: int = St.IDLE
var elems: Array[Elem] = []
var legend: Array[Node3D] = []
var args := {}
var trails := {}                     # "hand_l"/"hand_r" -> Fx.Trail

var level := 0                       # index into Defs.LEVELS
var level_total := 0
var level_spawned := 0
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
var legs_live := false               # the legs answered in the try-out (Quest 3 estimates them; they may not follow)

var bt := 0.0                        # the beat clock: seconds, kept in phase with the music
var next_arrival := 0.0              # bt at which the next element reaches the player

var sim_on := false
var sim_skill := 0.8
var _sim_rest := {}
var _glow: Array = []                # {"zone", "t0", "ev"}
var _legs_warned := false
var _selftest_levels := 0
var tracks: Array = []
var track_i := -1


func start(stage_node: Node3D, a: Dictionary) -> void:
	stage = stage_node
	args = a
	sfx = Sfx.new()
	add_child(sfx)
	fx = Fx.new()
	stage.add_child(fx)
	fx.attach_vignette(stage.cam)
	suit.hands = stage.hands
	suit.fired.connect(_on_suit)
	body.setup(stage.cam, stage.origin, stage.hands)
	for l in ["hand_l", "hand_r"]:
		var t := Fx.Trail.new(TRAIL_COLOR, 0.04)
		stage.add_child(t)
		trails[l] = t
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
	if a.get("skiptut", "0") == "1":
		_begin_countdown.call_deferred()
	else:
		_tutorial.call_deferred()


## The owner's tracks (XEMS/music): the next one, wrapping round. The built-in bed plays when there are none.
## A track's tempo: "bpm" in its .json, or in its name ("… 128bpm"); without one the game paces itself.
func next_track(step := 1) -> void:
	if tracks.is_empty():
		return
	track_i = (track_i + step) % tracks.size()
	var t: Dictionary = tracks[track_i]
	var bpm := float(t.get("bpm", 0.0))
	if bpm <= 0.0:
		var m := RegEx.create_from_string("(?i)(\\d{2,3})\\s*bpm").search(String(t.name))
		bpm = float(m.get_string(1)) if m else 0.0
	if sfx.set_track(t.path, bpm):
		stage._show_toast("♪ " + String(t.name))


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
	if sim_on:
		_sim(delta)
	body.update(delta)
	_beat(delta)
	# Logic runs in small steps (≤ 20 ms) with the limbs swept between their two samples: a long frame must not let a
	# fast fist pass through a sphere unnoticed.
	var n := clampi(int(ceil(delta / 0.02)), 1, 200)
	for i in n:
		_step(delta / n, float(i + 1) / n)
	for l in legend:
		if l is Elem:
			(l as Elem).advance(delta)
	suit.tick(delta)
	if stage.arena:
		var lv: Dictionary = Defs.LEVELS[level]
		stage.arena.set_flow(combo)
		stage.arena.tick(delta, bt, beat_len(), sfx.bass(), lv.speed * (1.0 if st == St.PLAY else 0.4))
	_suit_fx()
	_limbs_fx()
	_hud(delta)


func _step(dt: float, u: float) -> void:
	clock += dt
	if st == St.PLAY or st == St.PRACTICE:
		_play_update(dt, u)


## The beat clock runs with the frames and is pulled gently into phase with what is heard.
func _beat(delta: float) -> void:
	bt += delta
	var song := sfx.song_time()
	if song >= 0.0 and sfx.bpm > 0.0:
		var b := 60.0 / sfx.bpm
		bt += wrapf(song - bt, -b * 0.5, b * 0.5) * 0.08


func beat_len() -> float:
	return 60.0 / (sfx.bpm if sfx.bpm > 0.0 else FREE_BPM)


func _play_update(delta: float, u: float) -> void:
	if st == St.PLAY and level_spawned < level_total:
		_schedule()
	for e in elems.duplicate():
		e.advance(delta)
		if e.done:
			if e.position.z > 2.0:
				_remove(e)
			continue
		if e.is_hazard():
			_judge_hazard(e)
		else:
			_judge_orb(e, u)
	if st == St.PLAY and level_spawned >= level_total and elems.is_empty():
		_end_level.call_deferred()


# ---------------------------------------------------------------- spawning, on the beat

## When the next element must leave the far wall to reach the player exactly on its beat, it goes.
func _schedule() -> void:
	var lv: Dictionary = Defs.LEVELS[level]
	var speed: float = lv.speed
	var travel := _spawn_dist(speed) / speed
	if bt < next_arrival - travel:
		return
	_spawn(_pick_kind(lv.w), speed, next_arrival)
	var g: Array = lv.gap
	var b := beat_len()
	var step := 0.5 if level >= 5 else 1.0                       # fast levels may land on the half beat
	next_arrival += max(round(randf_range(g[0], g[1]) / b / step) * step, 1.0) * b


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


## One element of `kind` that reaches the player at beat-clock time `arrival` (spheres: the contact plane; beams:
## the player's own plane).
func _spawn(kind: int, speed: float, arrival: float) -> Elem:
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
	var e := _spawn_at(kind, side, Vector3(x, y, 0), speed, arrival)
	if kind == Defs.Kind.HAND and level >= 1 and randf() < 0.08:
		e.set_bonus()
	return e


func _spawn_at(kind: int, side: int, p: Vector3, speed: float, arrival: float) -> Elem:
	var e := Elem.make(kind, side, speed, body.stand_h)
	var target_z := 0.0 if Defs.is_hazard(kind) else Defs.CONTACT_Z
	e.position = Vector3(p.x, p.y, target_z - speed * maxf(arrival - bt, 0.3))
	add_child(e)
	elems.append(e)
	if st == St.PLAY:
		level_spawned += 1
	last_kind = kind
	if stage.arena:                                    # it is thrown out of the portal
		stage.arena.flare()
		fx.shock(e.global_position, Defs.COLOR[kind], 0.9, 0.5)
	if e.is_hazard():
		sfx.attach(e, "hum", -4.0, true)
		sfx.play("alarm", e.global_position, -6.0)
	else:
		e.make_marker(self)
		var delay: float = max(arrival - bt - 0.75, 0.05)
		get_tree().create_timer(delay, false).timeout.connect(_late_whoosh.bind(e))
	return e


## How far ahead things appear: the lead time, but never beyond the far wall.
func _spawn_dist(speed: float) -> float:
	return clamp(min(speed * Defs.LEAD_SEC, stage.room_depth - 0.9), 2.5, Defs.SPAWN_MAX * 2.0)


func _late_whoosh(e: Elem) -> void:
	if is_instance_valid(e) and not e.done:
		sfx.attach(e, "whoosh", -3.0)


func _remove(e: Elem) -> void:
	elems.erase(e)
	if is_instance_valid(e):
		e.free_marker()
		e.queue_free()


# ---------------------------------------------------------------- judging

func _judge_orb(e: Elem, u: float) -> void:
	var limb := Defs.limb_of(e.kind)
	for s in ["l", "r"]:
		var n: String = limb + "_" + s
		if not body.valid.get(n, false):
			continue
		var p: Vector3 = body.at(n, u)
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
	var pts: int = (100 + 10 * min(combo, 20)) * (3 if e.bonus else 1)
	score += pts
	var kind_name: String = limb.split("_")[0]
	var zone := Defs.Zone.ARMS if kind_name == "hand" else Defs.Zone.LEGS
	var side := -1 if limb.ends_with("_l") else 1
	suit.strike(zone, side)
	var at := e.global_position
	var col: Color = Elem.BONUS_COLOR if e.bonus else Defs.COLOR[e.kind]
	var dir: Vector3 = body.pos[limb] - body.prev.get(limb, body.pos[limb])     # the shards fly on with the strike
	if dir.length() < 0.005:
		dir = Vector3(0, 0, -1)
	sfx.play(kind_name if kind_name != "hand" else "punch", at, 0.0, randf_range(0.94, 1.06) + min(combo, 20) * 0.006)
	sfx.play("shatter", at, -2.0, randf_range(0.92, 1.08))
	fx.shatter(at, col, dir, (1.6 if e.bonus else 1.0) + min(combo, 20) * 0.02)
	fx.popup(at, ("Бонус +%d" if e.bonus else "+%d") % pts, col.lightened(0.45), 60 if e.bonus else 46)
	if e.bonus:
		sfx.play("levelup", at, -6.0, 1.25)
	_say("Точен удар!" if combo < 5 else "Серия ×%d!" % combo, 0.7)
	if combo > 0 and combo % 5 == 0:
		sfx.play("combo", null, -3.0, 1.0 + min(combo / 5, 6) * 0.06)
		fx.popup(at + Vector3(0, 0.18, 0), "×%d" % combo, Color(1.0, 0.85, 0.35), 80)
	_remove(e)


func _take_hit(e: Elem, zone: int, at_local: Vector3) -> void:
	e.done = true
	lv_taken += 1
	combo = 0
	var side := -1 if e.position.x < 0.0 else 1
	suit.punish(zone, side)
	var at := to_global(at_local)
	sfx.play("damage", at, 1.0)
	sfx.muffle(Defs.PUNISH_SEC)
	fx.impact(at if not e.is_hazard() else to_global(at_local + Vector3(0, 0, -0.45)))
	_say("Улучи те!" if not e.is_hazard() else "Не избегна!", 1.2)
	if not e.is_hazard():
		_remove(e)
	else:
		e.flash(1.0)


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
		var pts: int = 60 + 5 * min(combo, 20)
		score += pts
		sfx.play("dodge", to_global(Vector3(e.position.x, e.position.y, -0.3)), -1.0)
		fx.passed(to_global(body.head + Vector3(0, 0, -0.35)))
		fx.popup(to_global(body.head + Vector3(0, 0.05, -0.7)), "+%d" % pts, Color(0.85, 1.0, 0.92))
		_say("Избегнато!", 0.7)


static func _sphere_box(p: Vector3, r: float, c: Vector3, half: Vector3) -> bool:
	var d := Vector3(max(abs(p.x - c.x) - half.x, 0.0), max(abs(p.y - c.y) - half.y, 0.0), max(abs(p.z - c.z) - half.z, 0.0))
	return d.length() < r


# ---------------------------------------------------------------- levels

func _begin_countdown() -> void:
	st = St.COUNTDOWN
	_title("Готови?")
	stage.cue.text = "Застани изправен и гледай напред"
	if sim_on:
		legs_live = body.has_legs
	for i in [3, 2, 1]:
		stage.counter.text = str(i)
		sfx.play("beep")
		await _wait(beat_len() * 2.0)
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
	var b := beat_len()
	next_arrival = ceil((bt + _spawn_dist(lv.speed) / lv.speed + 1.0) / b) * b     # the first one lands on a beat
	if stage.arena:
		stage.arena.set_portal_z(position.z + Defs.CONTACT_Z - _spawn_dist(lv.speed) - 0.4)
	st = St.PLAY
	if not legs_live and not _legs_warned and not sim_on:
		_legs_warned = true
		stage._show_toast("Без колене и ритници: очилата не виждат краката")
	_say("Ниво %d" % (level + 1), 1.5)


func _end_level() -> void:
	if st != St.PLAY:
		return
	st = St.SUMMARY
	var total := lv_hits + lv_dodged + lv_taken
	var acc: float = float(lv_hits + lv_dodged) / float(max(total, 1))
	var next := level
	var verdict := "Същото ниво още веднъж"
	if acc >= 0.75:
		next = min(level + 1, Defs.LEVELS.size() - 1)
		verdict = "Нагоре!" if next != level else "Най-високото ниво"
		sfx.play("levelup")
	elif acc < 0.45:
		next = max(level - 1, 0)
		verdict = "Малко по-бавно"
		sfx.play("fail")
	else:
		sfx.play("combo")
	_title("Ниво %d: %d%%" % [level + 1, int(round(acc * 100))])
	stage.cue.text = "Разбити %d · избегнати %d · улучен %d\nНай-дълга серия ×%d\n%s" % [lv_hits, lv_dodged, lv_taken,
		best_combo, verdict]
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


# ---------------------------------------------------------------- the suit, the beat and the limbs, as seen

func _on_suit(ev: Dictionary) -> void:
	_glow.append({"zone": ev.zone, "t0": clock, "ev": ev})


func _suit_fx() -> void:
	var levels := {}
	var pulse := 0.0
	var red := 0.0
	for g in _glow.duplicate():
		var age: float = clock - g.t0
		var ev: Dictionary = g.ev
		var env := SuitLink.envelope(ev, age)
		var show: float = max(float(ev.sec), 0.35)
		if age > show:
			_glow.erase(g)
			continue
		var amp := float(env.amp) / Defs.PUNISH_AMP if ev.kind == "punish" else 0.85 * (1.0 - age / show)
		if ev.kind == "punish":                          # the red edge follows the suit's curve down to nothing
			red = max(red, (float(env.amp) - 1.0) / (Defs.PUNISH_AMP - 1.0) * 0.75 + 0.25 * (1.0 - age / show))
		pulse = max(pulse, amp)
		for c in CH[g.zone]:
			levels[c] = max(float(levels.get(c, 0.0)), amp)
	stage.body.set_levels(levels)
	# the floor ring beats with the music while you play, and flares with the suit
	var beat := 0.0
	if st == St.PLAY or st == St.PRACTICE or st == St.COUNTDOWN:
		var ph := fposmod(bt, beat_len()) / beat_len()
		beat = exp(-ph * 7.0) * 0.45
	stage.player_ring.set_shader_parameter("pulse", max(pulse, beat))
	fx.vignette(red)


## The fists: light trails that turn white-hot when fast enough to break, gloves that glow brighter as a combo grows.
func _limbs_fx() -> void:
	var eye: Vector3 = stage.cam.global_position
	for l in trails:
		var hand: Node3D = stage.hands["left" if l == "hand_l" else "right"]
		if sim_on and not stage.xr:
			hand.global_position = to_global(body.pos[l])          # desktop: show the simulated fists
		var sp: float = body.speed.get(l, 0.0)
		var heat: float = 1.0 if sp >= MIN_SPEED.hand else clampf(sp / MIN_SPEED.hand, 0.0, 1.0) * 0.45
		(trails[l] as Fx.Trail).update(hand.global_position, heat, eye, hand.visible and body.valid.get(l, false))
	var glow: float = 0.6 + min(combo, 20) * 0.07
	for m in stage.glove_mats:
		(m as StandardMaterial3D).emission_energy_multiplier = glow


# ---------------------------------------------------------------- the tutorial (no coach: the things themselves teach)

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
	await _rules()
	await _practice()
	_begin_countdown()


func _rules() -> void:
	_legend_show(true)
	var pages: Array = [
		["Добре дошъл!", "Нещата летят към теб в ритъма на музиката."],
		["Разбий сферите", "Синя — с юмрук. Лилава — с коляно. Оранжева — с крак. Удряй, когато влезе в своя кръг."],
		["Червеното не се удря", "Лъч на нивото на главата — клекни. Колона до главата — наклони се на другата страна."],
		["Костюмът участва", "Точен удар — кратък импулс. Пропуснеш ли — силен импулс, който бавно затихва."],
	]
	for p in pages:
		_title(p[0])
		stage.cue.text = p[1]
		stage.counter.text = ""
		sfx.play("blip")
		await _wait(6.0)
	_legend_show(false)


## One of each, slow, with a word for each: you learn by doing it. The knee and the kick decide whether the legs
## are in the game (Quest 3 estimates them; a real knee may not show).
func _practice() -> void:
	st = St.PRACTICE
	_title("Пробвай")
	stage.counter.text = ""
	var steps: Array = [
		[Defs.Kind.HAND, Vector3(-0.15, Defs.HAND_Y, 0), "Удари синята сфера с юмрук"],
		[Defs.Kind.HAND, Vector3(0.15, Defs.HAND_Y, 0), "Сега с другата ръка"],
		[Defs.Kind.DUCK, Vector3(0, Defs.DUCK_Y, 0), "Червен лъч — клекни под него"],
		[Defs.Kind.LEAN_R, Vector3(Defs.LEAN_X, 0.97, 0), "Колона отдясно — наклони се наляво"],
		[Defs.Kind.LEAN_L, Vector3(-Defs.LEAN_X, 0.97, 0), "Колона отляво — наклони се надясно"],
	]
	if body.has_legs:
		steps.append([Defs.Kind.KNEE, Vector3(-0.15, Defs.KNEE_Y, 0), "Вдигни коляно в лилавата сфера"])
		steps.append([Defs.Kind.FOOT, Vector3(0.15, Defs.FOOT_Y, 0), "Ритни оранжевата сфера"])
	var legs_ok := false
	var skipped := false
	for s in steps:
		var kind: int = s[0]
		var p: Vector3 = s[1]
		var ok := false
		for attempt in 2:
			stage.cue.text = s[2] if attempt == 0 else "Още веднъж. " + String(s[2])
			var before := lv_hits + lv_dodged
			var b := beat_len()
			var arrival: float = ceil((bt + 3.2) / b) * b
			var e := _spawn_at(kind, int(signf(p.x)), Vector3(p.x, p.y * body.stand_h, 0), 2.4, arrival)
			while is_instance_valid(e) and elems.has(e) and not (e.done and e.position.z > 0.5) and not skip:
				await get_tree().process_frame
			if skip:
				break
			ok = lv_hits + lv_dodged > before
			if ok:
				sfx.play("pass", null, -6.0)
				break
			await _wait(0.6)
		if skip:
			skip = false
			skipped = true
			break
		if kind == Defs.Kind.KNEE or kind == Defs.Kind.FOOT:
			legs_ok = legs_ok or ok
		await _wait(0.5)
	for e in elems.duplicate():
		_remove(e)
	legs_live = body.has_legs and (legs_ok or skipped)
	if body.has_legs and not skipped:
		stage.cue.text = "Колене и ритници са в играта." if legs_live else "Очилата не виждат краката ти добре.\nИграем с ръце, клек и наклони."
		await _wait(2.5)
	score = 0
	combo = 0
	best_combo = 0
	lv_hits = 0
	lv_dodged = 0
	lv_taken = 0


func _legend_show(on: bool) -> void:
	for l in legend:
		l.queue_free()
	legend.clear()
	if not on:
		return
	var kinds := [Defs.Kind.HAND, Defs.Kind.KNEE, Defs.Kind.FOOT, Defs.Kind.DUCK]
	for i in kinds.size():
		var e := Elem.make(kinds[i], 0, 0.0, 1.7)
		e.scale = Vector3.ONE * (0.8 if not e.is_hazard() else 0.32)
		e.position = Vector3(-0.66 + i * 0.44, 1.32, -1.9)
		e.still()
		add_child(e)
		legend.append(e)
		var lb := Label3D.new()                  # a sibling: the sphere spins, its name must not
		lb.text = Defs.NAMES[kinds[i]]
		lb.font = stage.FONT_BOLD
		lb.font_size = 26
		lb.pixel_size = 0.0016
		lb.modulate = Defs.COLOR[kinds[i]].lightened(0.35)
		lb.outline_size = 8
		lb.outline_modulate = Color(0, 0, 0, 0.5)
		lb.position = e.position + Vector3(0, -0.22, 0)
		lb.billboard = BaseMaterial3D.BILLBOARD_ENABLED
		add_child(lb)
		legend.append(lb)


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
						want.head = Vector3(0, 1.25, 0.0)
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
