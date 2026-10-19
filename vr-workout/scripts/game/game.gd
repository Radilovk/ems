## The game: things fly at the player on the beat of the music, thrown from gates spread over an arc ahead (one portal,
## an arc, or wide — the settings). Break the colourful ones with a fist (some with an arrow: straight, hook or
## uppercut), a knee, a kick, or a fist down low (a squat); hold a guard up against the pink shields; dodge the red
## ones by squatting, leaning or stepping aside. Single things and combinations (pairs, 1-2s, runs, squat-and-punch,
## step-and-punch, kick pairs) — more combinations as the levels rise. Points by timing on the beat (perfect / great /
## good) × the combo multiplier (×1…×4). A session runs for the minutes set in the menu, then shows its numbers.
##
## Flow: menu → (the first time: rules and a try-out) → countdown → levels until the time is up → summary. The menu
## button pauses (the things stop where they are, the suit rests); losing both hands (controllers asleep, out of view)
## pauses by itself and the game goes on when a hand is found again.
##
## The chef (settings: Сценарий → Готвачът, in Piazza Bologni or Pretville Street): a cook at his cart throws food on the beat; smashed
## food burns a little, food that gets through is eaten — its calories go on, shown heads-up in kcal and kilos.
## Every hit, in both scenarios, has a power (Power: weak · medium · mighty) from the fist's speed and run-up.
##
## Every event is felt three ways at once: the eyes (shards, a shockwave, light; a red edge when hit), the ears
## (spatial sound on the beat; the music muffled under a hit and opening up again) and the body (SuitLink: the
## controllers' haptics, which the XEMS layer turns into impulses in the suit) — on the same curve.
##
## Frame: this node sits where the player stood at calibration (floor = 0); −Z is ahead. Elements and the body's
## limbs are in that frame.
class_name Game
extends Node3D

enum St { IDLE, MENU, TUTORIAL, PRACTICE, COUNTDOWN, PLAY, SUMMARY }

const LIMB_R := {"hand": 0.12, "knee": 0.15, "foot": 0.17}
const MIN_SPEED := {"hand": 1.0, "knee": 0.6, "foot": 0.8}
const FREE_BPM := 120.0              # pacing grid when the track's tempo is unknown
const GATE_SLOTS := [0.0, -1.0, 1.0, -0.5, 0.5]    # × the spread angle; slot 0 = the portal straight ahead
const CH := {
	Defs.Zone.ARMS: ["Ръце"],
	Defs.Zone.LEGS: ["Предно бедро", "Задно бедро", "Прасец"],
	Defs.Zone.TORSO: ["Корем", "Глутеус", "Кръст", "Гръб"],
}

var stage: Node3D                    # main.gd: room, cards, hands, camera
var settings: GameSettings
var body := PlayerBody.new()
var sfx: Sfx
var fx: Fx
var avatar: Avatar
var menu: Menu
var tablet: TabletLink               # the line to the XEMS tablet: the impulse dock and the "Костюм" page
var dock: WristDock
var music_import: MusicImport      # the player adds own songs from the menu
var food_fx: FoodFx                  # the chef: what food does when it is hit or eaten …
var kcal: KcalHud                    # … the calories, heads-up …
var chef: Chef                       # … and the chef himself (null in the spheres scenario)
var _last_throw := -INF              # bt of the chef's last planned throw (his one arm needs a moment between throws)
var _mighty_run := 0                 # mighty hits in a row (at 4 the chef is impressed)
var _eaten_run := 0                  # portions eaten in a row (at 3 the chef shows off)
var _chef_told := false              # the chef's rules were shown in this run of the app
var suit := SuitLink.new()
var st: int = St.IDLE
var elems: Array[Elem] = []
var legend: Array[Node3D] = []
var args := {}

var level := 0                       # index into Defs.LEVELS (the chef: Defs.CHEF_LEVELS)
var level_total := 0
var level_planned := 0
var level_spawned := 0
var score := 0
var combo := 0
var best_combo := 0
var lv_hits := 0
var lv_dodged := 0
var lv_taken := 0
var tot := {}                        # the session's numbers (summary)
var session_t := 0.0                 # seconds played in this session
var session_over := false
var message := ""
var message_t := 0.0
var clock := 0.0
var skip := false
var last_kind := -1
var legs_live := false               # the tracked legs answered in the try-out (Quest 3 estimates them)
var paused := false
var pause_reason := ""               # menu · hands
var _pause_bt := 0.0
var _no_hands_t := 0.0
var _found_t := 0.0                  # seconds since a hand came back (resume after a moment)

var bt := 0.0                        # the beat clock: seconds, kept in phase with the music
var next_arrival := 0.0              # bt at which the next planned moment reaches the player
var pending: Array = []              # planned, not yet thrown: {kind, side, target, from, arrival, travel, gate, punch, bonus}
var gates: Array = []                # Vector3 per GATE_SLOTS (frame space): where things are thrown from this level

var sim_on := false
var sim_skill := 0.8
var _sim_rest := {}
var _sim_rate := {}                  # limb -> m/s the simulated player moves it at (the food: a weak, medium or mighty punch)
var _glow: Array = []                # {"zone", "t0", "ev"}
var _legs_warned := false
var _selftest_levels := 0
var _warmed := false
var tracks: Array = []
var track_i := -1
var _lib := ""
var _force_point := false            # desktop: --point=1 shows the pointing hands
var _mix := {}                       # desktop tests: what was thrown this level (kind name / punch -> count)


func start(stage_node: Node3D, a: Dictionary) -> void:
	stage = stage_node
	settings = stage.settings
	args = a
	sfx = Sfx.new()
	add_child(sfx)
	fx = Fx.new()
	stage.add_child(fx)
	fx.attach_vignette(stage.cam)
	food_fx = FoodFx.new()
	stage.add_child(food_fx)
	kcal = KcalHud.new()
	kcal.visible = false
	stage.add_child(kcal)
	avatar = Avatar.new()
	stage.add_child(avatar)
	tablet = TabletLink.new()
	add_child(tablet)
	dock = WristDock.new()
	dock.tablet = tablet
	stage.add_child(dock)
	dock.pause_pressed.connect(toggle_menu)
	menu = Menu.new()
	menu.settings = settings
	menu.tablet = tablet
	menu.room_names = stage.rooms.map(func(r): return r.name)
	menu.set_meta("sfx", sfx)
	stage.add_child(menu)
	menu.action.connect(_on_menu)
	music_import = MusicImport.new()
	add_child(music_import)
	music_import.imported.connect(_on_music_imported)
	music_import.failed.connect(func(why: String) -> void: stage._show_toast(why))
	menu.changed.connect(_on_setting)
	suit.hands = stage.hands
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
	_apply_settings()
	if a.has("scene"):                                 # desktop: --scene=chef|spheres
		settings.scene = GameSettings.Scene.CHEF if a.scene == "chef" else GameSettings.Scene.SPHERES
		if settings.chef() and not a.has("room"):
			_on_setting.call_deferred("scene")
	_lib = a.get("lib", "")
	_rescan_tracks()
	if a.get("mute", "0") == "1":
		sfx.muted = true
	else:
		_play_saved_track()
		sfx.start_music()
	_force_point = a.get("point", "0") == "1"
	if a.get("dock", "0") == "1":                       # desktop preview of the wrist dock
		dock.forced = true
		dock.global_transform = stage.cam.global_transform * Transform3D(Basis.IDENTITY, Vector3(0, -0.02, -0.3))
	if a.get("skiptut", "0") == "1":
		_reset_session()
		_begin_countdown.call_deferred()
	elif a.has("menu"):
		if a.menu == "summary":                 # desktop preview: a made-up session
			menu.summary = {"score": 48210, "acc": 91, "best_combo": 37, "hits": 212, "perfect": 118, "dodged": 41,
				"squats": 26, "steps": 19, "minutes": 10, "record": true, "rank": _rank(91), "mighty": 34, "best_kmh": 31}
			if a.get("scene", "") == "chef":
				menu.summary.merge({"chef": true, "burned": 1840, "eaten_kcal": 2470, "balance": 630.0, "eaten": 4,
					"smashed": 61, "returned": 9, "apples": 6})
		menu.tab = int(a.get("tab", "0"))         # desktop: --tab=<n> the settings page's tab
		_show_menu.call_deferred(String(a.menu))
	else:
		_show_menu.call_deferred("home")


## The owner's tracks (XEMS/music, or added from the menu): the next one, wrapping round. The built-in bed plays
## when there are none. A track's tempo: "bpm" in its .json, or in its name ("… 128bpm"); without one the game paces itself.
func next_track(step := 1) -> void:
	if tracks.is_empty():
		return
	_play_track(posmod(track_i + step, tracks.size()))


func _play_track(i: int) -> void:
	if i < 0 or i >= tracks.size():
		track_i = -1
		sfx.set_bed()
		settings.track = "bed"
	else:
		track_i = i
		var t: Dictionary = tracks[i]
		var bpm := float(t.get("bpm", 0.0))
		if bpm <= 0.0:
			var m := RegEx.create_from_string("(?i)(\\d{2,3})\\s*bpm").search(String(t.name))
			bpm = float(m.get_string(1)) if m else 0.0
		if not sfx.set_track(t.path, bpm):
			stage._show_toast("Не мога да пусна " + String(t.path).get_file())
			return
		settings.track = String(t.path).get_file()
		stage._show_toast("♪ " + String(t.name))
	settings.save()
	menu.track_now = track_i


func _rescan_tracks() -> void:
	tracks = Library.tracks(_lib)
	menu.track_names = tracks.map(func(t): return String(t.name))
	track_i = -1
	for i in tracks.size():
		if String(tracks[i].path).get_file() == settings.track:
			track_i = i
	menu.track_now = track_i


## At the start: the song chosen last time ("auto": the first of the player's own, else the built-in bed).
func _play_saved_track() -> void:
	if settings.track == "bed" or tracks.is_empty():
		return
	if track_i < 0:
		track_i = 0
	_play_track(track_i)


func _on_music_imported(names: Array) -> void:
	if names.is_empty():
		return
	_rescan_tracks()
	for i in tracks.size():
		if String(tracks[i].path).get_file() == names[0]:
			_play_track(i)
			sfx.start_music()
	stage._show_toast("Добавени: %d ♪" % names.size())
	if stage.vr_status:
		stage.vr_status.text = "Добавени песни: %d — свирят в играта (лява „grip“ = следваща)" % names.size()
	if menu.visible:
		menu.show_page(menu.page)


func skip_stage() -> void:
	if menu.visible:
		return
	skip = true


func recalibrate() -> void:
	stage.recenter()
	body.update(0.0)
	body.calibrate()
	position = Vector3(body.center.x, 0, body.center.z)
	sfx.play("tick")
	stage._show_toast("Центрирано: тук е средата")


# ---------------------------------------------------------------- settings and the menu

func _apply_settings() -> void:
	suit.enabled = settings.suit
	suit.punish_sec = settings.punish_sec()
	sfx.set_volumes(settings.music_db, settings.sfx_db)
	fx.comfort = settings.comfort
	food_fx.comfort = settings.comfort
	body.fixed_h = settings.eye_height()
	body.feet_allowed = settings.legs == GameSettings.Legs.AUTO or settings.legs == GameSettings.Legs.ANKLES
	if body.fixed_h > 0.0:
		body.stand_h = body.fixed_h


func _on_setting(key: String) -> void:
	_apply_settings()
	match key:
		"room":
			stage.set_room(settings.room)
			_warmed = false                     # the new room has not been lit by a flash yet
		"view":
			stage.apply_view()
		"track":
			_play_track(menu.track_pick)
		"offset":
			stage.apply_room_offset()
		"height_cm":
			if body.fixed_h <= 0.0:
				body.calibrate()
		"scene", "chef_place":
			if key == "scene":
				level = 0
			if settings.chef():                   # the chef has his cart in the place picked for him
				var at: int = stage.rooms.map(func(r): return r.name).find(settings.chef_room())
				if at >= 0 and settings.room != at:
					settings.room = at
					settings.save()
					stage.set_room(at)
					_warmed = false
			_ensure_chef()


func _show_menu(page: String) -> void:
	menu.set_meta("in_game", paused)
	menu.set_status(_hands_status())
	menu.open(page, stage.cam.global_transform)
	if not paused:
		st = St.MENU
		_title("XEMS Studio")
		stage.cue.text = "Насочи дръжката към менюто и натисни спусъка — или го докосни с юмрук."
		stage.counter.text = ""


## The menu button (left ☰ or right B): pause and open the menu; again: back to the game.
func toggle_menu() -> void:
	if menu.visible:
		if paused and pause_reason == "menu":
			_resume()
		elif st == St.MENU and menu.page != "home":
			menu.show_page("home")
		return
	if st in [St.PLAY, St.PRACTICE, St.COUNTDOWN, St.TUTORIAL]:
		_pause("menu")
		_show_menu("pause")
	else:
		_show_menu("home")


func _on_menu(id: String) -> void:
	match id:
		"start":
			menu.close()
			paused = false
			_clear()
			_reset_session()
			if not settings.tutorial_done and not sim_on and not settings.chef():
				_tutorial(true)
			else:
				_begin_countdown()
		"tutorial":
			menu.close()
			paused = false
			_clear()
			_reset_session()
			_tutorial(true)
		"resume":
			_resume()
		"restart":
			menu.close()
			paused = false
			_clear()
			_reset_session()
			_begin_countdown()
		"finish":
			menu.close()
			paused = false
			_finish_session()
		"recenter":
			recalibrate()
		"add_music":
			music_import.pick()


func _pause(reason: String) -> void:
	if paused:
		return
	paused = true
	pause_reason = reason
	_pause_bt = bt
	if chef:
		chef.process_mode = Node.PROCESS_MODE_DISABLED     # his throw stops mid-air, as the food does
	suit.stop_all()
	sfx.hold_music(-8.0)
	if reason == "hands":
		_title("Пауза")
		stage.cue.text = "Не виждам дръжките.\nВдигни ги пред очилата — продължаваме сами."
		stage._show_toast("Не виждам дръжките — чакам те")


func _resume() -> void:
	if not paused:
		return
	var shift := bt - _pause_bt
	next_arrival += shift
	for p in pending:
		p.arrival += shift
		if p.has("wind"):
			p.wind += shift
	_last_throw += shift
	if chef:
		chef.process_mode = Node.PROCESS_MODE_INHERIT
	for e in elems:
		e.arrival += shift
	paused = false
	pause_reason = ""
	_no_hands_t = 0.0
	menu.close()
	sfx.hold_music(0.0)
	_say("Продължаваме!", 1.0)


func _hands_status() -> String:
	var name := {"left": "лява", "right": "дясна"}
	var parts: Array = []
	for side in ["left", "right"]:
		var s: String = body.src[side]
		if body.on_foot[side]:
			parts.append("%s дръжка: на крака ✓" % name[side])
		elif s == "controller":
			parts.append("%s дръжка ✓" % name[side])
		elif s == "hand":
			parts.append("%s ръка (камери) ✓" % name[side])
		else:
			parts.append("%s: няма" % name[side])
	return "  ·  ".join(parts)


## Controllers found / lost / moved to a foot — said out loud, once each.
func _hands_events(delta: float) -> void:
	for ch in body.changes:
		var side: String = ch[0]
		var to: String = ch[2]
		var nm: String = "Лявата" if side == "left" else "Дясната"
		if clock < 1.0 and to != "foot":
			continue                                   # the first frames: everything appears at once
		match to:
			"controller":
				stage._show_toast("%s дръжка е намерена" % nm if ch[1] != "foot" else "%s дръжка е пак в ръката" % nm)
				sfx.play("tick", null, -6.0)
			"hand":
				stage._show_toast("%s ръка: следя я с камерите" % nm)
			"foot":
				stage._show_toast("%s дръжка е на крака: ритници и колене с истинско движение" % nm)
				sfx.play("pass", null, -4.0)
			"none":
				if not (st in [St.MENU, St.IDLE, St.SUMMARY]):
					stage._show_toast("%s дръжка се изгуби — вдигни я пред очилата" % nm)
	if not body.changes.is_empty():
		menu.set_status(_hands_status())
	# both hands gone in play → wait; found again → go on after a moment
	if st in [St.PLAY, St.PRACTICE] and not sim_on:
		if body.no_hands():
			_no_hands_t += delta
			_found_t = 0.0
			if _no_hands_t > 1.2 and not paused:
				_pause("hands")
		else:
			_no_hands_t = 0.0
			if paused and pause_reason == "hands":
				_found_t += delta
				if _found_t > 0.8:
					stage._show_toast("Дръжките са тук — продължаваме")
					_resume()


# ---------------------------------------------------------------- the loop

func _process(delta: float) -> void:
	if stage == null:
		return
	if sim_on and not paused:
		_sim(delta)
	body.update(delta)
	_hands_events(delta)
	_beat(delta)
	Elem.beat = exp(-fposmod(bt, beat_len()) / beat_len() * 6.0)
	if not paused:
		# Logic runs in small steps (≤ 20 ms) with the limbs swept between their two samples: a long frame must not
		# let a fast fist pass through a sphere unnoticed.
		var n := clampi(int(ceil(delta / 0.02)), 1, 200)
		for i in n:
			_step(delta / n, float(i + 1) / n)
		if st == St.PLAY:
			session_t += delta
	for l in legend:
		if l is Elem:
			(l as Elem).advance(delta)
	suit.tick(delta)
	if chef:
		chef.tick(delta, body.head)
	kcal.tick(delta, stage.cam)
	if stage.arena:
		stage.arena.set_flow(combo)
		stage.arena.tick(delta, bt, beat_len(), sfx.bass(), _speed() * (1.0 if st == St.PLAY and not paused else 0.4))
	if stage.dressing:
		stage.dressing.set_flow(combo)
		stage.dressing.tick(delta, bt, beat_len(), sfx.bass())
	_suit_fx()
	_pointing()
	avatar.update(body, self, Defs.multiplier(combo), MIN_SPEED, stage.cam.global_position, delta, sim_on and not stage.xr)
	if menu.visible:
		var touch := {}
		for side in ["left", "right"]:
			if body.src[side] != "none":
				touch[side] = avatar.press_point(side)
		var pointers := {}
		for side in ["left", "right"]:
			if not body.on_foot[side]:
				pointers[side] = stage.hands[side]
		menu.tick(pointers, touch)
		menu.update_live()
	_dock(delta)
	tablet.fast = (menu.visible and menu.page == "suit") or dock.visible
	_hud(delta)


## A hand at a button lifts its index finger, as if to click with it: the right one at the wrist dock, either one
## near the menu panel. Away from them it closes back into the fist.
func _pointing() -> void:
	for side in ["left", "right"]:
		var on := _force_point
		if body.src[side] != "none" and not body.on_foot[side]:
			var g: Vector3 = (avatar.gloves[side] as Node3D).global_position
			if menu.visible and menu.near(g):
				on = true
			elif side == "right" and dock.visible:           # the trigger is let go: the index finger is out
				on = true
		avatar.set_point(side, on)


## The wrist dock (owner, 2026-10): only in one pose, so it never shows in play by chance — the left forearm held out
## level in front of the body (the elbow bent at about 90°), the wrist turned open, palm up, and the right trigger let
## go (the right index finger out, to press with). Then the impulse card appears over the open palm.
func _dock(delta: float) -> void:
	var src: String = body.src.left
	var t: Transform3D = body.hand_xform.left
	var eye: Vector3 = stage.cam.global_position
	var finger = null
	if body.src.right != "none":
		finger = avatar.press_point("right")
	var allowed: bool = src != "none" and not menu.visible and not body.on_foot.left and stage.xr
	dock.tick(delta, t, eye, finger, allowed and _dock_pose(src, t, eye) and _right_trigger_free())


## Left palm up · forearm level and ahead (elbow ≈ 90°) · wrist at the belly-to-chest height in front of the body.
func _dock_pose(src: String, t: Transform3D, eye: Vector3) -> bool:
	var palm := t.basis.x.normalized() if src == "controller" else -t.basis.y.normalized()   # (the palm's side)
	var fore := -t.basis.z.normalized()                       # out of the hand, along the forearm
	var to := t.origin - eye
	var flat := Vector3(to.x, 0.0, to.z)
	var look: Vector3 = -stage.cam.global_basis.z
	look.y = 0.0
	return palm.dot(Vector3.UP) > WristDock.PALM_UP and absf(fore.y) < WristDock.FOREARM_LEVEL \
		and -to.y > 0.28 and -to.y < 0.85 and flat.length() > 0.12 and flat.length() < 0.62 \
		and (look.length() < 0.01 or flat.normalized().dot(look.normalized()) > 0.2)


## The right trigger is let go (a bare right hand has no trigger: it counts as let go).
func _right_trigger_free() -> bool:
	var c = stage.hands.get("right")
	if body.src.right == "controller" and c is XRController3D:
		return (c as XRController3D).get_float("trigger") < 0.3
	return true


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


func _speed() -> float:
	return float(_lv().speed) * settings.speed_k()


## The levels of the scenario being played, and the one being played now.
func _levels() -> Array:
	return Defs.CHEF_LEVELS if settings.chef() else Defs.LEVELS


func _lv() -> Dictionary:
	return _levels()[clampi(level, 0, _levels().size() - 1)]


func _play_update(delta: float, u: float) -> void:
	if st == St.PLAY:
		if settings.minutes > 0 and session_t >= settings.minutes * 60.0 and not session_over:
			session_over = true
			pending.clear()
			_say("Последните!", 2.0)
		if not session_over:
			_schedule()
	for e in elems.duplicate():
		e.advance(delta)
		if not e.has_meta("whoosh") and not e.is_hazard() and e.travel - e.age < 0.75:
			e.set_meta("whoosh", true)
			sfx.attach(e, "whoosh", -3.0)
		if e.done:
			if e.position.z > 2.0:
				_remove(e)
			continue
		if e.is_hazard():
			_judge_hazard(e)
		elif e.food != "":
			_judge_food(e, u)
		elif e.kind == Defs.Kind.BLOCK:
			_judge_block(e)
		else:
			_judge_orb(e, u)
	if st == St.PLAY and elems.is_empty() and pending.is_empty():
		if session_over:
			_finish_session.call_deferred()
		elif level_planned >= level_total:
			_end_level.call_deferred()


# ---------------------------------------------------------------- planning and throwing, on the beat

## Plans the next moment (one thing or a combination) as soon as its farthest gate must throw, and throws what is due.
func _schedule() -> void:
	if settings.chef():
		_schedule_chef()
		return
	var lv: Dictionary = _lv()
	var speed := _speed()
	var lead := _spawn_dist(speed) / speed
	while level_planned < level_total and bt >= next_arrival - lead - 0.3:
		_plan_moment(lv, speed)
	for p in pending.duplicate():
		if bt >= p.arrival - p.travel:
			pending.erase(p)
			_throw(p, speed)


func _plan_moment(lv: Dictionary, speed: float) -> void:
	var b := beat_len()
	var at := next_arrival
	var last := at
	var pats := _patterns()
	if not pats.is_empty() and randf() < float(lv.get("pat", 0.0)):
		last = _plan_pattern(pats[randi() % pats.size()], at, b, speed)
	else:
		var k := _pick_kind(lv.w)
		var punch := ""
		if k == Defs.Kind.HAND and level >= 3 and randf() < 0.35:
			punch = ["jab", "jab", "hook_l", "hook_r", "upper"][randi() % 5]
		_plan(k, at, speed, _gate_for(k), {"punch": punch})
	var g: Array = lv.gap
	var step := 0.5 if level >= 5 else 1.0                       # fast levels may land on the half beat
	var gap: float = randf_range(g[0], g[1]) * settings.gap_k()
	next_arrival = last + max(round(gap / b / step) * step, 1.0) * b


## The combinations this level and these settings allow.
func _patterns() -> Array:
	var out: Array = []
	if level >= 1:
		out.append_array(["pair", "one_two"])
	if level >= 2:
		out.append("run")
		if settings.hazards and _moves_allowed():
			out.append("duck_low")
	if level >= 3:
		out.append("hook_combo")
		if _legs_allowed():
			out.append_array(["kick_pair", "knee_kick"])
	if level >= 4:
		out.append("block_counter")
		if settings.hazards and _moves_allowed():
			out.append("wall_punch")
	return out


## Plans one combination from `at`; returns the arrival of its last element.
func _plan_pattern(name: String, at: float, b: float, speed: float) -> float:
	var half := b * (0.5 if level >= 4 else 1.0)
	var gate := _gate_for(Defs.Kind.HAND)
	var h := body.stand_h
	match name:
		"pair":                                   # both fists at once, left and right
			_plan(Defs.Kind.HAND, at, speed, _mirror(gate, -1), {"x": -0.26})
			_plan(Defs.Kind.HAND, at, speed, _mirror(gate, 1), {"x": 0.26})
			return at
		"one_two":                                # left, then right
			_plan(Defs.Kind.HAND, at, speed, gate, {"x": -0.2, "punch": "jab" if level >= 3 else ""})
			_plan(Defs.Kind.HAND, at + half, speed, gate, {"x": 0.2, "punch": "jab" if level >= 3 else ""})
			return at + half
		"run":                                    # three in a row from one gate, sweeping across
			var s := 1.0 if randf() < 0.5 else -1.0
			for i in 3:
				_plan(Defs.Kind.HAND, at + i * half, speed, gate, {"x": s * (-0.26 + 0.26 * i), "y": h * (Defs.HAND_Y + 0.06 * (i - 1))})
			return at + 2.0 * half
		"duck_low":                               # under the bar, and punch the low one while down there
			_plan(Defs.Kind.DUCK, at, speed, 0, {})
			_plan(Defs.Kind.LOW, at + b, speed, gate, {"x": randf_range(-0.15, 0.15)})
			return at + b
		"hook_combo":                             # jab, jab, hook
			var s2 := 1.0 if randf() < 0.5 else -1.0
			_plan(Defs.Kind.HAND, at, speed, gate, {"x": -0.18 * s2, "punch": "jab"})
			_plan(Defs.Kind.HAND, at + half, speed, gate, {"x": 0.18 * s2, "punch": "jab"})
			_plan(Defs.Kind.HAND, at + 2.0 * half, speed, _mirror(gate, -s2), {"x": -0.32 * s2, "punch": "hook_l" if s2 > 0 else "hook_r"})
			return at + 2.0 * half
		"kick_pair":                              # left kick, right kick
			_plan(Defs.Kind.FOOT, at, speed, _gate_for(Defs.Kind.FOOT), {"side": -1})
			_plan(Defs.Kind.FOOT, at + b, speed, _gate_for(Defs.Kind.FOOT), {"side": 1})
			return at + b
		"knee_kick":                              # a knee, then a kick with the other leg
			var s3 := 1 if randf() < 0.5 else -1
			_plan(Defs.Kind.KNEE, at, speed, _gate_for(Defs.Kind.KNEE), {"side": s3})
			_plan(Defs.Kind.FOOT, at + b, speed, _gate_for(Defs.Kind.FOOT), {"side": -s3})
			return at + b
		"block_counter":                          # guard up, then both fists
			_plan(Defs.Kind.BLOCK, at, speed, 0, {})
			_plan(Defs.Kind.HAND, at + b, speed, _mirror(gate, -1), {"x": -0.24})
			_plan(Defs.Kind.HAND, at + b, speed, _mirror(gate, 1), {"x": 0.24})
			return at + b
		"wall_punch":                             # step aside from the wall, punch where you landed
			var right := randf() < 0.5
			_plan(Defs.Kind.WALL_L if right else Defs.Kind.WALL_R, at, speed, 0, {})
			_plan(Defs.Kind.HAND, at + b, speed, gate, {"x": 0.42 if right else -0.42})
			return at + b
	return at


## The gate on the other side (a pair comes from both sides at once).
func _mirror(gate: int, sign_: float) -> int:
	if gate == 0:
		return 0
	var slot: float = absf(GATE_SLOTS[gate]) * sign_
	return GATE_SLOTS.find(slot)


func _legs_allowed() -> bool:
	match settings.legs:
		GameSettings.Legs.AUTO:
			return body.feet_on() or (body.has_legs and legs_live)
		GameSettings.Legs.ANKLES:
			return body.feet_on()
		GameSettings.Legs.TRACKING:
			return body.has_legs
	return false


func _moves_allowed() -> bool:
	return settings.legs != GameSettings.Legs.OFF


func _pick_kind(w: Dictionary) -> int:
	var total := 0.0
	var pool := {}
	var legs := _legs_allowed()
	for k in w:
		var wk := float(w[k])
		if k == Defs.Kind.KNEE or k == Defs.Kind.FOOT:
			if not legs:
				if _moves_allowed():                           # the legs still work: down low with a squat
					pool[Defs.Kind.LOW] = float(pool.get(Defs.Kind.LOW, 0.0)) + wk * 0.5
					total += wk * 0.5
				continue
		if k == Defs.Kind.LOW and not _moves_allowed():
			continue
		if (k == Defs.Kind.WALL_L or k == Defs.Kind.WALL_R) and not _moves_allowed():
			continue
		if Defs.is_hazard(k) and not settings.hazards:
			continue
		pool[k] = float(pool.get(k, 0.0)) + wk
		total += wk
	if pool.is_empty():
		return Defs.Kind.HAND
	for attempt in 3:
		var r := randf() * total
		for k in pool:
			r -= pool[k]
			if r <= 0.0:
				if k == last_kind and Defs.is_hazard(k) and attempt < 2:
					break                                       # not the same hazard twice in a row too often
				return k
	return pool.keys()[0]


## Which gate a kind is thrown from: hazards always from the portal ahead (they must be read straight on), the rest
## from any gate of the arc.
func _gate_for(kind: int) -> int:
	if Defs.is_hazard(kind) or kind == Defs.Kind.BLOCK or settings.spread_deg() <= 0.0:
		return 0
	return randi() % GATE_SLOTS.size()


## Where the gates are this level (frame space): the portal straight ahead at the spawn distance, the others on an
## arc, a little nearer the further out they are (a fan, not a circle: they stay inside a room).
func _make_gates(speed: float) -> void:
	gates.clear()
	var d := _spawn_dist(speed)
	var half := deg_to_rad(settings.spread_deg())
	for s in GATE_SLOTS:
		var a: float = half * float(s)
		var dd := d * (1.0 - 0.35 * absf(sin(a)))
		gates.append(Vector3(sin(a) * dd, body.stand_h * 0.82, Defs.CONTACT_Z - cos(a) * dd))
	if stage.arena:
		var world: Array = []
		for g in gates:
			world.append(to_global(g))
		stage.arena.set_gates(world, settings.spread_deg() > 0.0)
		stage.arena.set_portal_z(position.z + Defs.CONTACT_Z - d - 0.4)


## Plans one element: what, when it lands, from which gate, and options {x, y, side, punch}.
func _plan(kind: int, arrival: float, speed: float, gate: int, o: Dictionary) -> void:
	var h := body.stand_h
	var side: int = o.get("side", 0)
	var x := 0.0
	var y := 0.0
	match kind:
		Defs.Kind.HAND:
			x = randf_range(-0.28, 0.28)
			y = h * Defs.HAND_Y + randf_range(-0.1, 0.12)
		Defs.Kind.LOW:
			x = randf_range(-0.2, 0.2)
			y = h * Defs.LOW_Y
		Defs.Kind.KNEE:
			side = side if side != 0 else (1 if randf() < 0.5 else -1)
			x = side * randf_range(0.1, 0.2)
			y = h * Defs.KNEE_Y
		Defs.Kind.FOOT:
			side = side if side != 0 else (1 if randf() < 0.5 else -1)
			x = side * randf_range(0.1, 0.2)
			y = h * Defs.FOOT_Y
		Defs.Kind.BLOCK:
			y = h * 0.93
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
		Defs.Kind.WALL_L:
			side = -1
			x = Defs.WALL_IN - Defs.WALL_W * 0.5
			y = h * 0.62
		Defs.Kind.WALL_R:
			side = 1
			x = -Defs.WALL_IN + Defs.WALL_W * 0.5
			y = h * 0.62
	x = float(o.get("x", x))
	y = float(o.get("y", y))
	var tz := 0.0 if Defs.is_hazard(kind) else (Defs.BLOCK_Z if kind == Defs.Kind.BLOCK else Defs.CONTACT_Z)
	var target := Vector3(x, y, tz)
	var from: Vector3
	if gate <= 0 or gates.is_empty():
		from = Vector3(x, y, tz - _spawn_dist(speed))
	else:
		var g: Vector3 = gates[gate]
		from = g + Vector3(randf_range(-0.25, 0.25), randf_range(-0.2, 0.5), 0)
	var travel := maxf((target.z - from.z) / speed, 0.6)
	pending.append({"kind": kind, "side": side, "target": target, "from": from, "arrival": arrival, "travel": travel,
		"gate": gate, "punch": String(o.get("punch", "")),
		"bonus": kind == Defs.Kind.HAND and level >= 1 and o.get("punch", "") == "" and randf() < 0.08})
	level_planned += 1


func _throw(p: Dictionary, speed: float) -> Elem:
	var e := Elem.make(p.kind, p.side, speed, body.stand_h)
	add_child(e)
	e.fly(p.from, p.target, p.arrival, bt)
	if p.punch != "":
		e.set_punch(p.punch)
	var key: String = Defs.Kind.keys()[p.kind] + ("/" + String(p.punch) if p.punch != "" else "") + ("@g%d" % p.gate if p.gate > 0 else "")
	_mix[key] = int(_mix.get(key, 0)) + 1
	if p.bonus:
		e.set_bonus()
	_launched(e, p.gate)
	return e


## One element thrown straight from the portal (the try-out): reaches `p` at beat-clock `arrival`.
func _spawn_at(kind: int, side: int, p: Vector3, speed: float, arrival: float) -> Elem:
	var tz := 0.0 if Defs.is_hazard(kind) else (Defs.BLOCK_Z if kind == Defs.Kind.BLOCK else Defs.CONTACT_Z)
	var target := Vector3(p.x, p.y, tz)
	var e := Elem.make(kind, side, speed, body.stand_h)
	add_child(e)
	var travel := maxf(arrival - bt, 0.3)
	e.fly(target - Vector3(0, 0, speed * travel), target, arrival, bt)
	_launched(e, 0)
	return e


func _launched(e: Elem, gate: int) -> void:
	elems.append(e)
	if st == St.PLAY:
		level_spawned += 1
	last_kind = e.kind
	if stage.arena:                                    # it is thrown out of its gate
		if gate <= 0:
			stage.arena.flare()
		else:
			stage.arena.flare_gate(gate)
	fx.shock(e.global_position, Elem.BONUS_COLOR if e.bonus else Defs.COLOR[e.kind], 0.9, 0.5)
	if e.is_hazard():
		sfx.attach(e, "hum", -4.0, true)
		sfx.play("alarm", e.global_position, -6.0)
	elif e.kind != Defs.Kind.BLOCK:
		e.make_marker(self)


## How far ahead things appear: the lead time, but never beyond the far wall.
func _spawn_dist(speed: float) -> float:
	return clamp(min(speed * Defs.LEAD_SEC, stage.room_depth - 0.9), 2.5, Defs.SPAWN_MAX * 2.0)


func _remove(e: Elem) -> void:
	elems.erase(e)
	if is_instance_valid(e):
		e.free_marker()
		e.queue_free()


func _clear() -> void:
	for e in elems.duplicate():
		_remove(e)
	pending.clear()
	_last_throw = -INF
	if chef:
		chef.release()


# ---------------------------------------------------------------- judging

func _judge_orb(e: Elem, u: float) -> void:
	var limb := Defs.limb_of(e.kind)
	for s in ["l", "r"]:
		var n: String = limb + "_" + s
		if not body.valid.get(n, false):
			continue
		var p: Vector3 = body.at(n, u)
		if p.distance_to(e.position) < e.radius + LIMB_R[limb] and body.speed[n] >= MIN_SPEED[limb]:
			if e.kind == Defs.Kind.LOW and body.squat() > Defs.LOW_SQUAT:
				if not e.has_meta("hint"):                    # a low one needs a squat: tell once, let it fly on
					e.set_meta("hint", true)
					fx.popup(to_global(e.position), "Клекни!", Defs.COLOR[e.kind].lightened(0.4), 54)
				continue
			if e.dir != Vector3.ZERO:
				var v: Vector3 = body.pos[n] - body.prev.get(n, body.pos[n])
				if v.length() > 0.002 and v.normalized().dot(e.dir) < Defs.PUNCH_DOT:
					if not e.has_meta("hint"):
						e.set_meta("hint", true)
						fx.popup(to_global(e.position), {"jab": "Прав удар!", "upper": "Отдолу!", "hook_l": "Кроше!",
							"hook_r": "Кроше!"}.get(e.punch, "Посоката!"), Color(1, 1, 1), 50)
					continue
			_break(e, n)
			return
	if e.position.z >= Defs.MISS_Z:
		_take_hit(e, Defs.zone_of(e.kind), e.position)


func _break(e: Elem, limb: String) -> void:
	e.done = true
	lv_hits += 1
	combo += 1
	best_combo = max(best_combo, combo)
	var t := Defs.timing(bt - e.arrival)
	var mult := Defs.multiplier(combo)
	var pw := _power(limb)
	var tier: int = pw.tier
	var pts: int = int(round(100.0 * float(t[2]) * mult * (3 if e.bonus else 1) * float(Power.POINTS[tier])))
	score += pts
	tot.hits += 1
	if t[1] == "Перфектно":
		tot.perfect += 1
	if e.kind == Defs.Kind.LOW:
		tot.squats += 1
	if e.kind == Defs.Kind.FOOT or e.kind == Defs.Kind.KNEE:
		tot.kicks += 1
	var kind_name: String = limb.split("_")[0]
	var side := -1 if limb.ends_with("_l") else 1
	suit.strike(Defs.zone_of(e.kind), side, tier)
	if kind_name == "hand":
		avatar.flare("left" if side < 0 else "right", [0.6, 1.0, 1.6][tier])
	var at := e.global_position
	var col: Color = Elem.BONUS_COLOR if e.bonus else Defs.COLOR[e.kind]
	var dir: Vector3 = body.pos[limb] - body.prev.get(limb, body.pos[limb])     # the shards fly on with the strike
	if dir.length() < 0.005:
		dir = Vector3(0, 0, -1)
	if tier == Power.Tier.WEAK:                        # a tap: a dull knock, the sphere just pops
		sfx.play("weak", at, 0.0, randf_range(0.95, 1.05))
	else:
		sfx.play(kind_name if kind_name != "hand" else "punch", at, 0.0, randf_range(0.94, 1.06) + min(combo, 20) * 0.006)
	sfx.play("shatter", at, -2.0 if tier > 0 else -7.0, randf_range(0.92, 1.08))
	fx.shatter(at, col, dir, ((1.6 if e.bonus else 1.0) + min(combo, 20) * 0.02 + (0.3 if t[1] == "Перфектно" else 0.0))
		* float(Power.BURST[tier]))
	if tier == Power.Tier.MIGHTY:                      # a boom, a gold shock ring, the shards fly much further
		sfx.play("boom", at, -3.0, randf_range(0.95, 1.05))
		fx.shock(at, Power.COLORS[tier], 1.3, 0.45)
	fx.popup(at, "%s +%d" % [t[1], pts], (t[3] as Color) if not e.bonus else col.lightened(0.45), 60 if e.bonus else 46)
	_power_popup(at, pw)
	if e.bonus:
		sfx.play("levelup", at, -6.0, 1.25)
	_say(String(t[1]) + "!" if combo < 5 else "Серия ×%d!" % combo, 0.7)
	if combo > 0 and combo % 8 == 0 and mult <= 4:
		sfx.play("combo", null, -2.0, 1.0 + mult * 0.08)
		fx.popup(at + Vector3(0, 0.22, 0), "×%d множител" % mult, Avatar.MULT_COLORS[clampi(mult - 1, 0, 3)].lightened(0.3), 72)
	elif combo > 0 and combo % 5 == 0:
		sfx.play("combo", null, -5.0, 1.0 + min(combo / 5, 6) * 0.06)
	_remove(e)


func _take_hit(e: Elem, zone: int, at_local: Vector3) -> void:
	e.done = true
	lv_taken += 1
	tot.taken += 1
	combo = 0
	var side := -1 if e.position.x < 0.0 else 1
	suit.punish(zone, side)
	var at := to_global(at_local)
	sfx.play("damage", at, 1.0)
	sfx.muffle(suit.punish_sec)
	fx.impact(at if not e.is_hazard() else to_global(at_local + Vector3(0, 0, -0.45)))
	var words := {Defs.Kind.BLOCK: "Гардът!", Defs.Kind.WALL_L: "Стъпи встрани!", Defs.Kind.WALL_R: "Стъпи встрани!",
		Defs.Kind.DUCK: "Клекни!", Defs.Kind.LOW: "Клекни и удари!"}
	_say(words.get(e.kind, "Улучи те!" if not e.is_hazard() else "Не избегна!"), 1.2)
	if not e.is_hazard():
		_remove(e)
	else:
		e.flash(1.0)


## A shield: both fists up together in front of the chin when it arrives.
func _judge_block(e: Elem) -> void:
	if e.position.z < Defs.BLOCK_Z:
		return
	var guard := body.head + Vector3(0, -0.1, -0.25)
	var ok := true
	for l in ["hand_l", "hand_r"]:
		if not body.valid.get(l, false) or (body.pos[l] as Vector3).distance_to(guard) > Defs.BLOCK_R:
			ok = false
	if not ok:
		_take_hit(e, Defs.Zone.TORSO, e.position)
		return
	e.done = true
	lv_hits += 1
	combo += 1
	best_combo = max(best_combo, combo)
	tot.hits += 1
	tot.blocks += 1
	var pts: int = 120 * Defs.multiplier(combo)
	score += pts
	suit.strike(Defs.Zone.ARMS, -1)
	suit.strike(Defs.Zone.ARMS, 1)
	avatar.flare("left")
	avatar.flare("right")
	var at := e.global_position
	sfx.play("punch", at, -1.0, 0.8)
	sfx.play("shatter", at, -3.0, 0.75)
	fx.shatter(at, Defs.COLOR[e.kind], Vector3(0, 0, -1), 1.4)
	fx.popup(at, "Блок +%d" % pts, Defs.COLOR[e.kind].lightened(0.5), 56)
	_say("Блок!", 0.7)
	_remove(e)


func _judge_hazard(e: Elem) -> void:
	var z := e.position.z
	if z > -0.4 and z < 0.4:
		var c := e.position
		var head_hit := _sphere_box(body.head, 0.13, c, e.half)
		var shoulder_hit := _sphere_box(body.head - Vector3(0, 0.27, 0), 0.2, c, e.half)
		var torso_hit := (e.kind == Defs.Kind.WALL_L or e.kind == Defs.Kind.WALL_R) and \
			_sphere_box(body.head - Vector3(0, 0.6, 0), 0.17, c, e.half)
		if head_hit or shoulder_hit or torso_hit:
			_take_hit(e, Defs.Zone.ARMS if shoulder_hit and not head_hit else Defs.Zone.TORSO, body.head)
			return
	if z >= 0.4:
		e.done = true
		lv_dodged += 1
		tot.dodged += 1
		if e.kind == Defs.Kind.DUCK:
			tot.squats += 1
		elif e.kind == Defs.Kind.WALL_L or e.kind == Defs.Kind.WALL_R:
			tot.steps += 1
		combo += 1
		best_combo = max(best_combo, combo)
		var pts: int = (60 + 5 * min(combo, 20)) * Defs.multiplier(combo)
		score += pts
		sfx.play("dodge", to_global(Vector3(e.position.x, e.position.y, -0.3)), -1.0)
		fx.passed(to_global(body.head + Vector3(0, 0, -0.35)))
		fx.popup(to_global(body.head + Vector3(0, 0.05, -0.7)), "+%d" % pts, Color(0.85, 1.0, 0.92))
		_say("Избегнато!", 0.7)


static func _sphere_box(p: Vector3, r: float, c: Vector3, half: Vector3) -> bool:
	var d := Vector3(max(abs(p.x - c.x) - half.x, 0.0), max(abs(p.y - c.y) - half.y, 0.0), max(abs(p.z - c.z) - half.z, 0.0))
	return d.length() < r


# ---------------------------------------------------------------- power (every scenario)

## How hard this limb hit just now (Power): its peak speed and run-up at contact. Counted in the session's numbers.
func _power(limb: String) -> Dictionary:
	var pw := Power.of(limb.split("_")[0], float(body.vpeak.get(limb, body.speed.get(limb, 0.0))), float(body.runup.get(limb, 0.0)))
	tot.best_kmh = maxf(float(tot.best_kmh), float(pw.kmh))
	if pw.tier == Power.Tier.MIGHTY:
		tot.mighty += 1
		_mighty_run += 1
	else:
		_mighty_run = 0
	return pw


## The power word and the speed, over the points: small and grey for a tap, gold and big for a mighty one.
func _power_popup(at: Vector3, pw: Dictionary) -> void:
	var tier: int = pw.tier
	var text: String = Power.NAMES[tier] + ("!" if tier == Power.Tier.MIGHTY else "")
	if tier > Power.Tier.WEAK:
		text += " · %d км/ч" % int(round(float(pw.kmh)))
	fx.popup(at + Vector3(0, 0.2, 0), text, Power.COLORS[tier], [34, 42, 60][tier])


# ---------------------------------------------------------------- the chef

## The chef is there in his scenario (a few metres ahead, at his cart), and nowhere else.
func _ensure_chef() -> void:
	if not settings.chef():
		if chef:
			chef.queue_free()
			chef = null
		kcal.visible = false
		return
	if chef == null:
		chef = Chef.new()
		chef.sfx = sfx
		add_child(chef)
	chef.position = Vector3(0, 0, -_chef_dist())
	kcal.visible = st in [St.COUNTDOWN, St.PLAY, St.SUMMARY] or paused


## How far ahead he stands: near enough to read his face and his throw, as far as the room lets him: 4.5 … 6.5 m.
func _chef_dist() -> float:
	return clampf(stage.room_depth - 2.0, 4.5, 6.5)


## Plans the next moments as soon as his wind-up for them must start; winds him up; throws what is due.
func _schedule_chef() -> void:
	var lv := _lv()
	var speed := _speed()
	var lead := _chef_dist() / speed + Chef.RELEASE + Chef.REACH_MAX + 0.6
	while level_planned < level_total and bt >= next_arrival - lead:
		_plan_chef_moment(lv, speed)
	for p in pending.duplicate():
		var throw_at: float = p.arrival - p.travel
		if not p.wound and bt >= p.wind:
			p.wound = true
			if not p.follow:
				chef.wind_up(p.food, throw_at - bt)
		if bt >= throw_at:
			pending.erase(p)
			_throw_food(p)


func _plan_chef_moment(lv: Dictionary, speed: float) -> void:
	var b := beat_len()
	var at := next_arrival
	var last := at
	var h := body.stand_h
	if bool(lv.mega) and level_planned >= level_total - 1:
		var boss: String = Defs.BOSSES[randi() % Defs.BOSSES.size()]                  # the level's last: a big one
		last = _plan_food(boss, at + b, speed, {"x": 0.0, "y": h * 0.82})
	elif level >= 1 and level_planned < level_total - 4 and randf() < float(lv.pat):
		match ["double", "rapid"][randi() % 2]:
			"double":                                 # two portions in one throw, left and right
				last = _plan_food(_junk(), at, speed, {"x": -0.26, "dx": -0.12})
				_plan_food(_junk(), last, speed, {"x": 0.26, "dx": 0.12, "follow": true})
			"rapid":                                  # three doughnuts, one per beat (he hurries)
				for i in 3:
					last = _plan_food("donut", last + (b if i > 0 else 0.0), speed, {"x": (i - 1) * 0.24})
	else:
		_plan_food("apple" if randf() < float(lv.apple) else _junk(), at, speed, {})
	var g: Array = lv.gap
	var step := 0.5 if level >= 4 else 1.0
	var gap: float = randf_range(g[0], g[1]) * settings.gap_k()
	next_arrival = last + max(round(gap / b / step) * step, 1.0) * b


func _junk() -> String:
	return Defs.JUNK[randi() % Defs.JUNK.size()]


## Plans one portion to reach the contact plane at `arrival` (later if his arm needs a moment); returns its arrival.
## o: x, y (where it comes), dx (offset from his hand: a second portion of the same throw), follow (rides along).
func _plan_food(id: String, arrival: float, speed: float, o: Dictionary) -> float:
	var h := body.stand_h
	var wide := 0.45 if level >= 3 else 0.3
	var x: float = float(o.get("x", randf_range(-wide, wide)))
	var y: float = float(o.get("y", h * randf_range(0.74, 0.9)))
	if level >= 3 and not Defs.boss(id) and not o.has("y") and randf() < 0.2:
		y = h * 0.6                                       # low: bend your knees to reach it
	var target := Vector3(x, y, Defs.CONTACT_Z)
	var hand := Vector3(-0.05, 1.55, -_chef_dist() + 0.55)   # where his hand lets go (the game frame; measured)
	var sp := speed * (0.72 if Defs.boss(id) else 1.0)
	var travel := maxf(hand.distance_to(target) / sp, 0.7)
	var throw_at := arrival - travel
	var follow: bool = o.get("follow", false)
	var prev := _last_throw
	if not follow:
		var room := _last_throw + 0.42 - throw_at          # one arm: ≥ 0.42 s between throws
		if room > 0.0:
			var b := beat_len() * 0.5
			var shift: float = ceil(room / b) * b              # (stays on the half beat)
			arrival += shift
			throw_at += shift
		_last_throw = throw_at
	pending.append({"food": id, "target": target, "arrival": arrival, "travel": travel, "speed": sp,
		"dx": float(o.get("dx", 0.0)), "follow": follow, "wound": false,
		"wind": throw_at if follow else maxf(throw_at - Chef.RELEASE - Chef.REACH_MAX, prev + 0.02)})   # (after his last throw left)
	level_planned += 1
	return arrival


func _throw_food(p: Dictionary) -> void:
	var from: Vector3 = to_local(chef.hand_world()) + Vector3(float(p.dx), 0, 0)
	if not p.follow:
		chef.release()
	var e := Elem.make_food(p.food, p.speed)
	add_child(e)
	var d: float = from.distance_to(p.target)
	e.arc = clampf(0.09 * d, 0.25, 0.8) * (1.4 if Defs.boss(p.food) else 1.0) * (1.15 - 0.06 * level)
	e.fly(from, p.target, p.arrival, bt)
	elems.append(e)
	if st == St.PLAY:
		level_spawned += 1
	last_kind = e.kind
	e.make_marker(self)
	sfx.play("whoosh", to_global(from), -8.0, 0.8)
	_mix[String(p.food)] = int(_mix.get(String(p.food), 0)) + 1


## A portion in flight: a fist in reach smashes it; past the player's plane it is eaten.
func _judge_food(e: Elem, u: float) -> void:
	for s in ["l", "r"]:
		var n: String = "hand_" + s
		if not body.valid.get(n, false):
			continue
		var p: Vector3 = body.at(n, u)
		if p.distance_to(e.position) < e.radius + LIMB_R.hand and body.speed[n] >= MIN_SPEED.hand:
			if e.has_meta("cool") and clock < float(e.get_meta("cool")):
				continue                                  # a cracked MEGA burger: one hit at a time
			_hit_food(e, n)
			return
	if e.position.z >= Defs.MISS_Z:
		_eat(e)


func _hit_food(e: Elem, limb: String) -> void:
	var pw := _power(limb)
	var tier: int = pw.tier
	var side := -1 if limb.ends_with("_l") else 1
	var hand := "left" if side < 0 else "right"
	var at := e.global_position
	var dir: Vector3 = body.pos[limb] - body.prev.get(limb, body.pos[limb])
	var wdir: Vector3 = (global_basis * dir).normalized() if dir.length() > 0.004 else -global_basis.z
	if e.kind == Defs.Kind.APPLE:                        # the healthy one: a waste to smash it
		e.done = true
		lv_taken += 1
		tot.apples_hit += 1
		combo = 0
		suit.strike(Defs.Zone.ARMS, side, Power.Tier.WEAK)
		food_fx.burst(at, "apple", wdir, 1)
		sfx.play("splat", at, -3.0, 1.25)
		fx.popup(at, "Ябълката беше полезна!", Defs.COLOR[Defs.Kind.APPLE], 50)
		_say("Ябълката не я удряй — изяж я!", 1.6)
		chef.react("apple_hit")
		_remove(e)
		return
	var f: Dictionary = Defs.FOODS[e.food]
	if e.hp > tier + 1:                                   # not enough for this one (the MEGA burger): it flies on
		e.crack(e.hp - tier - 1)
		e.set_meta("cool", clock + 0.25)
		suit.strike(Defs.Zone.ARMS, side, tier)
		avatar.flare(hand, 0.8)
		sfx.play("weak" if tier == Power.Tier.WEAK else "punch", at, 0.0, 0.8)
		fx.shock(at, Color(1.0, 0.5, 0.2), 0.7, 0.3)
		fx.popup(at, "Още по-силно!", Power.COLORS[Power.Tier.MIGHTY], 58)
		_power_popup(at, pw)
		_say("%s иска МОЩЕН удар!" % String(f.name), 1.4)
		return
	e.done = true
	lv_hits += 1
	combo += 1
	best_combo = max(best_combo, combo)
	tot.hits += 1
	tot.smashed += 1
	var t := Defs.timing(bt - e.arrival)
	if t[1] == "Перфектно":
		tot.perfect += 1
	var mult := Defs.multiplier(combo)
	var ahead: Vector3 = -global_basis.z
	var back := tier == Power.Tier.MIGHTY and wdir.dot(ahead) > 0.5      # a mighty straight one: back at the chef
	var burn: float = float(f.kcal) * (float(Defs.BURN[tier]) + (Defs.RETURN_BONUS if back else 0.0))
	var pts := int(round(100.0 * float(t[2]) * mult * float(Power.POINTS[tier]) * (3.0 if Defs.boss(e.food) else 1.0)))
	score += pts
	kcal.add(burn, 0.0)
	suit.strike(Defs.Zone.ARMS, side, tier)
	avatar.flare(hand, [0.6, 1.0, 1.6][tier])
	match tier:
		Power.Tier.WEAK:                                  # knocked out of the air: it tumbles to the ground
			food_fx.drop(at, e.food, wdir * 1.4 + Vector3(0, 0.6, 0))
			sfx.play("weak", at, 0.0)
			sfx.play("splat", at, -9.0, 1.1)
			if chef and randf() < 0.3 and not chef.speaking():
				chef.say("weak")                          # ("That is what we call some weak sauce!")
		Power.Tier.MEDIUM:                                # it bursts along the punch
			food_fx.burst(at, e.food, wdir, 1)
			sfx.play("punch", at, -2.0, randf_range(0.95, 1.05))
			sfx.play("splat", at, -1.0, randf_range(0.95, 1.1))
		Power.Tier.MIGHTY:                                # a boom; straight ahead it flies back into the chef
			sfx.play("boom", at, 0.0, randf_range(0.95, 1.05))
			fx.shock(at, Power.COLORS[tier], 1.4, 0.45)
			if back and chef:
				food_fx.send_back(at, chef.chest_world(), e.food, 0.45, _on_returned.bind(int(round(float(f.kcal) * Defs.RETURN_BONUS))))
			else:
				food_fx.burst(at, e.food, wdir, 2)
				sfx.play("splat", at, 1.0, 0.85)
			if _mighty_run >= 4 and chef:
				_mighty_run = 0
				chef.react("wow")
			elif not back and chef and randf() < 0.5:
				chef.react("angry")
	fx.popup(at, "−%d ккал" % int(round(burn)), KcalHud.GREEN, [46, 54, 66][tier])
	_power_popup(at, pw)
	_eaten_run = 0
	if Defs.boss(e.food):
		if chef and not back:
			chef.react("boss_down")
		sfx.play("levelup", at, -4.0, 1.1)
		_say("%s — на парчета!" % String(f.name), 1.6)
	else:
		_say(String(t[1]) + "!" if combo < 5 else "Серия ×%d!" % combo, 0.7)
	if combo > 0 and combo % 8 == 0 and mult <= 4:
		sfx.play("combo", null, -2.0, 1.0 + mult * 0.08)
	_remove(e)


## A portion sent back landed on the chef.
func _on_returned(bonus_kcal: int) -> void:
	tot.returned += 1
	if chef == null:
		return
	chef.react("splat")
	var at := chef.chest_world()
	sfx.play("splat", at, 3.0, 0.8)
	fx.popup(at + Vector3(0, 0.6, 0), "Обратно при готвача!  −%d ккал" % bonus_kcal, Power.COLORS[Power.Tier.MIGHTY], 90)


## Not smashed: eaten. Junk food puts all its calories on (a splat over the eyes, the suit's punishment, the chef
## laughs); an apple is the right thing to eat (points, the combo goes on).
func _eat(e: Elem) -> void:
	e.done = true
	var f: Dictionary = Defs.FOODS[e.food]
	var face := to_global(body.head + Vector3(0, -0.12, -0.3))
	kcal.add(0.0, float(f.kcal))
	if e.kind == Defs.Kind.APPLE:
		tot.apples += 1
		lv_dodged += 1
		combo += 1
		best_combo = max(best_combo, combo)
		var pts: int = Defs.APPLE_POINTS * Defs.multiplier(combo)
		score += pts
		sfx.play("chomp", face, -3.0, 1.25)
		fx.popup(face + Vector3(0, 0.1, -0.2), "Витамини! +%d" % pts, Defs.COLOR[Defs.Kind.APPLE], 50)
		chef.react("apple")
		_remove(e)
		return
	lv_taken += 1
	tot.taken += 1
	tot.eaten += 1
	combo = 0
	_mighty_run = 0
	suit.punish(Defs.Zone.TORSO, 0)                      # (the belly)
	sfx.play("chomp", face, 2.0)
	sfx.muffle(suit.punish_sec * 0.6)
	food_fx.visor(stage.cam, f.splash)
	fx.popup(face + Vector3(0, 0.12, -0.25), "+%d ккал" % int(f.kcal), KcalHud.RED, 80)
	_say("Изяде %s: +%d ккал (%s)" % [String(f.name).to_lower() if not Defs.boss(e.food) else String(f.name), int(f.kcal),
		KcalHud.kg_text(float(f.kcal))], 1.8)
	_eaten_run += 1
	chef.react("gloat" if _eaten_run >= 3 else "laugh", sfx)
	if _eaten_run >= 3:
		_eaten_run = 0
	_remove(e)


## The chef's rules, the first time in a run of the app: four short cards (A skips).
func _chef_rules() -> void:
	var pages: Array = [
		["Готвачът", "Той иска да те нахрани. Разбий храната с юмрук, преди да стигне до теб."],
		["Калориите", "Пропуснеш ли — изяждаш я: всичките ѝ калории отиват отгоре. Разбитата сваля само малко."],
		["Силата", "Засилка + скорост = МОЩЕН удар: гори повече. Мощен прав удар я връща право в готвача!"],
		["Ябълката", "Рядко идва и ябълка — нея не я удряй, остави я да дойде и я изяж. МЕГА бургерът и тортата искат мощен удар."],
	]
	for p in pages:
		_title(p[0])
		stage.cue.text = p[1]
		stage.counter.text = ""
		sfx.play("blip")
		if chef:
			chef.say(p[0])
		await _wait(4.5)
		if st != St.COUNTDOWN:
			return


# ---------------------------------------------------------------- levels and the session

func _reset_session() -> void:
	tot = {"hits": 0, "perfect": 0, "dodged": 0, "taken": 0, "squats": 0, "steps": 0, "kicks": 0, "blocks": 0,
		"mighty": 0, "best_kmh": 0.0, "eaten": 0, "smashed": 0, "returned": 0, "apples": 0, "apples_hit": 0}
	kcal.reset()
	_mighty_run = 0
	_last_throw = -INF
	session_t = 0.0
	session_over = false
	score = 0
	combo = 0
	best_combo = 0


func _begin_countdown() -> void:
	_ensure_chef()
	if settings.chef() and not _chef_told and not sim_on:
		_chef_told = true
		st = St.COUNTDOWN
		await _chef_rules()
		if st != St.COUNTDOWN:
			return
	st = St.COUNTDOWN
	_title("Готови?")
	stage.cue.text = "Застани изправен и гледай напред"
	_prewarm()
	for i in [3, 2, 1]:
		stage.counter.text = str(i)
		sfx.play("beep")
		await _wait(beat_len() * 2.0)
		if st != St.COUNTDOWN:
			return
	if settings.auto_center and stage.xr:
		stage.recenter()
		body.update(0.0)
	body.calibrate()
	position = Vector3(body.center.x, 0, body.center.z)
	if sim_on:
		legs_live = body.has_legs
	sfx.play("go")
	_start_level()


## The headset compiles a shader the first time it draws it, and a lit pass the first time a light touches a
## surface: done mid-game, the first spheres stutter in flight and on the hit. So once per session, on "Ready?",
## a small row of every kind of element shows up ahead of you for a few frames and bursts: everything the play
## will draw (spheres, halos, trails, rings, shields, beams, shards, sparks, shock rings, flashes, points) is
## compiled before the first real one flies.
func _prewarm() -> void:
	if _warmed or stage.cam == null:
		return
	_warmed = true
	var f: Vector3 = -stage.cam.global_basis.z
	f.y = 0.0
	f = f.normalized() if f.length() > 0.01 else Vector3.FORWARD
	var right: Vector3 = f.cross(Vector3.UP)
	var base: Vector3 = stage.cam.global_position + f * 1.8 + Vector3(0, -0.35, 0)
	var kinds := [Defs.Kind.HAND, Defs.Kind.KNEE, Defs.Kind.FOOT, Defs.Kind.LOW, Defs.Kind.BLOCK, Defs.Kind.DUCK,
			Defs.Kind.WALL_L]
	var made: Array[Elem] = []
	for i in kinds.size():
		var e := Elem.make(kinds[i], 0, 0.0, body.stand_h)
		e.scale = Vector3.ONE * 0.22
		add_child(e)
		e.global_position = base + right * ((i - 3) * 0.2)
		if not e.is_hazard() and e.kind != Defs.Kind.BLOCK:
			e.make_marker(self)
			e.marker.global_position = e.global_position
			e.marker.scale = Vector3.ONE * 0.3
			e.marker.visible = true
		made.append(e)
	made[0].set_bonus()
	if settings.chef():                                # the chef's food and its splats
		var i := 0
		for id in Defs.FOODS:
			var e := Elem.make_food(id, 0.0)
			add_child(e)
			e.global_position = base + right * ((i - 2.5) * 0.25) + Vector3(0, 0.25, 0)
			made.append(e)
			i += 1
	for _i in 4:
		await get_tree().process_frame
	for e in made:
		if e.food != "":
			food_fx.burst(e.global_position, e.food, -f, 1)
			food_fx.visor(stage.cam, Defs.FOODS[e.food].splash)
			e.queue_free()
			continue
		fx.shatter(e.global_position, Defs.COLOR[e.kind], -f, 0.35)
		if e.marker:
			e.marker.queue_free()
		e.queue_free()
	fx.impact(base)
	fx.popup(base, "Давай!", Color(1, 1, 1), 34)


func _start_level() -> void:
	var lv: Dictionary = _lv()
	_ensure_chef()
	level_total = lv.count
	level_planned = 0
	level_spawned = 0
	lv_hits = 0
	lv_dodged = 0
	lv_taken = 0
	pending.clear()
	var b := beat_len()
	var speed := _speed()
	next_arrival = ceil((bt + _spawn_dist(speed) / speed + 1.0) / b) * b     # the first one lands on a beat
	_make_gates(speed)
	st = St.PLAY
	if not _legs_allowed() and not _legs_warned and not sim_on and _moves_allowed():
		_legs_warned = true
		stage._show_toast("Краката работят с клек и стъпки.\nЗа ритници: закрепи дръжките на глезените.")
	_say("Ниво %d" % (level + 1), 1.5)
	if chef:
		chef.say("start")


func _end_level() -> void:
	if st != St.PLAY:
		return
	st = St.SUMMARY
	var total := lv_hits + lv_dodged + lv_taken
	var acc: float = float(lv_hits + lv_dodged) / float(max(total, 1))
	var next := level
	var verdict := "Същото ниво още веднъж"
	if acc >= 0.75:
		next = min(level + 1, _levels().size() - 1)
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
	if settings.chef() and chef:
		chef.react("lost" if kcal.balance() <= 0.0 else "won", sfx)
	if settings.chef():
		stage.cue.text = "Разбита храна %d · изядена %d\nБаланс %s (%s)\n%s" % [lv_hits, lv_taken,
			KcalHud.kcal_text(kcal.balance()), KcalHud.kg_text(kcal.balance()), verdict]
	print("LEVEL %d done: hits=%d dodged=%d taken=%d acc=%.2f score=%d best_combo=%d -> %d" % [level + 1, lv_hits, lv_dodged, lv_taken, acc, score, best_combo, next + 1])
	if sim_on:
		print("  thrown: ", _mix)
	_mix.clear()
	_selftest_levels -= 1 if _selftest_levels > 0 else 0
	if args.has("levels") and _selftest_levels <= 0:
		get_tree().quit()
		return
	level = next
	await _wait(4.0)
	if st == St.SUMMARY:
		_start_level()


## The session is over (time up, or "Край" in the pause menu): the numbers, the record, the menu.
func _finish_session() -> void:
	if st == St.MENU and menu.visible:
		return
	_clear()
	st = St.MENU
	var total: int = tot.hits + tot.dodged + tot.taken
	var acc := int(round(100.0 * float(tot.hits + tot.dodged) / float(max(total, 1))))
	var record := score > settings.best_score
	if record:
		settings.best_score = score
		settings.save()
	menu.summary = {"score": score, "acc": acc, "best_combo": best_combo, "hits": tot.hits, "perfect": tot.perfect,
		"dodged": tot.dodged, "squats": tot.squats, "steps": tot.steps, "kicks": tot.kicks, "blocks": tot.blocks,
		"minutes": int(round(session_t / 60.0)), "record": record, "rank": _rank(acc),
		"mighty": tot.mighty, "best_kmh": int(round(tot.best_kmh))}
	if settings.chef():
		menu.summary.merge({"chef": true, "burned": int(round(kcal.burned)), "eaten_kcal": int(round(kcal.eaten)),
			"balance": kcal.balance(), "eaten": tot.eaten, "smashed": tot.smashed, "returned": tot.returned,
			"apples": tot.apples})
	menu.last_result = "Последно: %s точки · %d%% · ранг %s" % [Menu._num(score), acc, _rank(acc)]
	print("SESSION done: score=%d acc=%d best_combo=%d hits=%d perfect=%d dodged=%d squats=%d steps=%d kicks=%d blocks=%d mighty=%d best_kmh=%d" % [
		score, acc, best_combo, tot.hits, tot.perfect, tot.dodged, tot.squats, tot.steps, tot.kicks, tot.blocks, tot.mighty, int(tot.best_kmh)])
	if settings.chef():
		print("  CHEF: burned=%d eaten=%d balance=%d (%s) smashed=%d eaten_n=%d returned=%d apples=%d apples_hit=%d" % [
			kcal.burned, kcal.eaten, kcal.balance(), KcalHud.kg_text(kcal.balance()), tot.smashed, tot.eaten, tot.returned,
			tot.apples, tot.apples_hit])
	sfx.play("levelup")
	paused = false
	menu.set_meta("in_game", false)
	menu.open("summary", stage.cam.global_transform)
	_title("Браво!")
	stage.cue.text = "Тренировката свърши."
	stage.counter.text = Menu._num(score)


## The rank on the summary (Beat Saber style): from the accuracy.
static func _rank(acc: int) -> String:
	if acc >= 95:
		return "SS"
	if acc >= 88:
		return "S"
	if acc >= 78:
		return "A"
	if acc >= 65:
		return "B"
	if acc >= 50:
		return "C"
	return "D"


func _title(t: String) -> void:
	stage.title.text = t
	stage.title.font_size = 72 if t.length() <= 10 else (56 if t.length() <= 14 else 42)


func _say(text: String, seconds: float) -> void:
	message = text
	message_t = seconds


func _hud(delta: float) -> void:
	if st != St.PLAY or paused:
		return
	message_t -= delta
	var left := ""
	if settings.minutes > 0:
		var r: int = max(int(settings.minutes * 60.0 - session_t), 0)
		left = "  ·  %d:%02d" % [r / 60, r % 60]
	_title(("Готвачът · ниво %d%s" if settings.chef() else "Ниво %d%s") % [level + 1, left])
	stage.cue.text = message if message_t > 0.0 else _hint()
	var mult := Defs.multiplier(combo)
	stage.counter.text = Menu._num(score) + ("   ×%d" % mult if mult > 1 else "") + ("   серия %d" % combo if combo > 2 else "")


func _hint() -> String:
	if settings.chef():
		return "Разбий храната, преди да я изядеш!\nЗасилка + скорост = мощен удар · ябълката я изяж"
	var legs := "ритник · коляно" if _legs_allowed() else "зелената — клекни и удари"
	return "Юмрук в ритъма · %s\nЧервеното: клек, наклон, стъпка" % legs


# ---------------------------------------------------------------- the suit, the beat, as seen

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
	fx.vignette(red * (0.35 if settings.comfort else 1.0))


# ---------------------------------------------------------------- the tutorial (no coach: the things themselves teach)

## True when the player skipped (the flag is consumed). Paused time does not count.
func _wait(seconds: float) -> bool:
	var t := 0.0
	while t < seconds:
		await get_tree().process_frame
		if not paused:
			t += get_process_delta_time()
		if skip:
			skip = false
			return true
	return false


func _tutorial(then_play := true) -> void:
	st = St.TUTORIAL
	position = Vector3.ZERO
	await _rules()
	if st != St.TUTORIAL:
		return
	await _practice()
	if st != St.PRACTICE:
		return
	settings.tutorial_done = true
	settings.save()
	if then_play:
		_begin_countdown()


func _rules() -> void:
	_legend_show(true)
	var pages: Array = [
		["Добре дошъл!", "Нещата летят към теб в ритъма на музиката — от портала и от портите около него."],
		["Разбий сферите", "Синя — с юмрук. Лилава — с коляно. Оранжева — с ритник. Зелена — ниско: клекни и удари. Удряй, когато влезе в кръга си."],
		["Посока и гард", "Стрелка на сферата — удари натам: прав, кроше или отдолу. Розов щит — вдигни двата юмрука пред брадичката."],
		["Червеното не се удря", "Лъч — клекни. Колона — наклони се. Стена — стъпи встрани, натам, накъдето сочат стрелките."],
		["Костюмът участва", "Точен удар — кратък импулс. Пропуснеш ли — силен импулс, който бавно затихва. ☰ или B — пауза и настройки."],
	]
	for p in pages:
		_title(p[0])
		stage.cue.text = p[1]
		stage.counter.text = ""
		sfx.play("blip")
		await _wait(6.0)
		if st != St.TUTORIAL:
			break
	_legend_show(false)


## One of each, slow, with a word for each: you learn by doing it. With tracked legs, the knee and the kick decide
## whether they are in the game (Quest 3 estimates them; a real knee may not show).
func _practice() -> void:
	st = St.PRACTICE
	_title("Пробвай")
	stage.counter.text = ""
	var steps: Array = [
		[Defs.Kind.HAND, Vector3(-0.15, Defs.HAND_Y, 0), "Удари синята сфера с юмрук"],
		[Defs.Kind.HAND, Vector3(0.15, Defs.HAND_Y, 0), "Сега с другата ръка"],
		[Defs.Kind.BLOCK, Vector3(0, 0.93, 0), "Розов щит — двата юмрука пред брадичката"],
	]
	if _moves_allowed():
		steps.append([Defs.Kind.LOW, Vector3(0.0, Defs.LOW_Y, 0), "Зелената е ниско — клекни и я удари"])
	if settings.hazards:
		steps.append([Defs.Kind.DUCK, Vector3(0, Defs.DUCK_Y, 0), "Червен лъч — клекни под него"])
		steps.append([Defs.Kind.LEAN_R, Vector3(Defs.LEAN_X, 0.97, 0), "Колона отдясно — наклони се наляво"])
		if _moves_allowed():
			steps.append([Defs.Kind.WALL_L, Vector3(Defs.WALL_IN - Defs.WALL_W * 0.5, 0.62, 0), "Стена отляво — стъпи надясно"])
	var legs_try := body.has_legs and settings.legs in [GameSettings.Legs.AUTO, GameSettings.Legs.TRACKING, GameSettings.Legs.ANKLES]
	if legs_try:
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
			while is_instance_valid(e) and elems.has(e) and not (e.done and e.position.z > 0.5) and not skip and st == St.PRACTICE:
				await get_tree().process_frame
			if skip or st != St.PRACTICE:
				break
			ok = lv_hits + lv_dodged > before
			if ok:
				sfx.play("pass", null, -6.0)
				break
			await _wait(0.6)
		if st != St.PRACTICE:
			return
		if skip:
			skip = false
			skipped = true
			break
		if kind == Defs.Kind.KNEE or kind == Defs.Kind.FOOT:
			legs_ok = legs_ok or ok
		await _wait(0.5)
	_clear()
	legs_live = body.has_legs and (legs_ok or skipped)
	if legs_try and not skipped:
		stage.cue.text = "Колене и ритници са в играта." if legs_live else "Очилата не виждат краката ти добре.\nКраката ще работят с клек и стъпки.\nЗа истински ритници: дръжките на глезените."
		await _wait(3.0)
	_reset_session()
	lv_hits = 0
	lv_dodged = 0
	lv_taken = 0


func _legend_show(on: bool) -> void:
	for l in legend:
		l.queue_free()
	legend.clear()
	if not on:
		return
	var kinds := [Defs.Kind.HAND, Defs.Kind.KNEE, Defs.Kind.FOOT, Defs.Kind.LOW, Defs.Kind.BLOCK, Defs.Kind.DUCK, Defs.Kind.WALL_L]
	for i in kinds.size():
		var e := Elem.make(kinds[i], 0, 0.0, 1.7)
		var sc := 0.8
		if kinds[i] == Defs.Kind.DUCK:
			sc = 0.32
		elif kinds[i] == Defs.Kind.WALL_L:
			sc = 0.16
		elif kinds[i] == Defs.Kind.BLOCK:
			sc = 0.6
		e.scale = Vector3.ONE * sc
		e.position = Vector3(-1.05 + i * 0.35, 1.32, -1.9)
		e.still()
		add_child(e)
		legend.append(e)
		var lb := Label3D.new()                  # a sibling: the sphere spins, its name must not
		lb.text = Defs.NAMES[kinds[i]]
		lb.font = stage.FONT_BOLD
		lb.font_size = 22
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
					Defs.Kind.WALL_L:
						want.head = Vector3(0.5, 1.62, 0)
					Defs.Kind.WALL_R:
						want.head = Vector3(-0.5, 1.62, 0)
		elif target.food != "":
			if target.kind == Defs.Kind.FOOD and will and best < 1.6:        # apples are let through (eaten)
				var lf := "hand_l" if target.position.x < 0.0 else "hand_r"
				var aim := target.position + (Vector3(0, 0, 0.3) if best > 0.35 else Vector3(0, 0, -0.4))   # wind up, punch through
				want[lf] = aim
				_sim_rate[lf] = [3.0, 6.5, 13.0][int(seed_ * 997.0) % 3]    # weak · medium · mighty
		elif target.kind == Defs.Kind.BLOCK:
			if will and best < 1.6:
				want.hand_l = Vector3(-0.07, 1.58, -0.26)
				want.hand_r = Vector3(0.07, 1.58, -0.26)
		elif will and best < 1.3:
			var limb := Defs.limb_of(target.kind) + ("_l" if target.position.x < 0.0 or (target.kind != Defs.Kind.HAND and target.kind != Defs.Kind.LOW and target.side < 0) else "_r")
			var aim := target.position
			if target.dir != Vector3.ZERO and best > 0.15:
				aim -= target.dir * 0.35                    # wind up against the arrow, then strike along it
			want[limb] = aim
			if target.kind == Defs.Kind.LOW:
				want.head = Vector3(0, 1.3, 0)
	for k in s:
		var rate: float = _sim_rate.get(k, 11.0) if k.begins_with("hand") or k.begins_with("foot") or k.begins_with("knee") else 3.5
		if k == "head":
			rate = 4.0
		s[k] = (s[k] as Vector3).move_toward(want[k], rate * delta)
