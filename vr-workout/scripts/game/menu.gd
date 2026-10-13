## The menu in the headset: one wide glass panel in front of the player (landscape: what you read on the left, what you
## press on the right), drawn by Godot's own UI into a texture. Point a controller at it and pull the trigger — or just
## touch it with a fist or a finger (works with bare hands too). Pages: home · settings · position · suit · pause ·
## summary. "Костюм" (suit) is the impulse dock: what the tablet does with the game's hits, set from inside the game.
## Every choice is one tap; settings are saved at once and applied live (the game listens to `changed`).
class_name Menu
extends Node3D

signal action(id: String)               # start · tutorial · resume · restart · home · finish · recenter
signal changed(key: String)             # a setting changed (already saved)

const FONT_BOLD := preload("res://assets/fonts/Inter-SemiBold.otf")
const FONT := preload("res://assets/fonts/Inter-Regular.otf")
const PX := Vector2i(1280, 720)
const SIZE := Vector2(1.36, 0.765)      # metres
const ACCENT := Color(0.25, 0.85, 1.0)
const INK := Color(0.93, 0.97, 1.0)
const DIM := Color(0.93, 0.97, 1.0, 0.62)
const MUSIC := [{"name": "Без", "db": -80.0}, {"name": "Тихо", "db": -18.0}, {"name": "Средно", "db": -9.0}, {"name": "Силно", "db": -3.0}]
const EFFECTS := [{"name": "Тихо", "db": -10.0}, {"name": "Средно", "db": 0.0}, {"name": "Силно", "db": 4.0}]

var settings: GameSettings
var tablet: TabletLink                   # the line to the XEMS tablet (the suit page)
var _live := {}                          # the suit page's labels that follow the tablet without a rebuild
var _suit_sig := ""
var room_names: Array = []
var status_text := ""                    # e.g. which controllers are found (the game keeps it current)
var last_result := ""
var summary := {}                        # the last session's numbers (summary page)
var page := ""
var tab := 0

var vp: SubViewport
var ui: Control
var quad: MeshInstance3D
var _mat: StandardMaterial3D
var _lasers := {}                        # side -> MeshInstance3D
var _dot: MeshInstance3D
var _trigger := {}                       # side -> was down last frame
var _poke := {}                          # side -> touching last frame
var _cursor := Vector2(-1, -1)
var _status_label: Label
var _theme: Theme


func _ready() -> void:
	vp = SubViewport.new()
	vp.size = PX
	vp.transparent_bg = true
	vp.disable_3d = true
	vp.gui_embed_subwindows = true
	vp.render_target_update_mode = SubViewport.UPDATE_DISABLED
	add_child(vp)
	_theme = _make_theme()
	quad = MeshInstance3D.new()
	var q := QuadMesh.new()
	q.size = SIZE
	quad.mesh = q
	_mat = StandardMaterial3D.new()
	_mat.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	_mat.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	_mat.albedo_texture = vp.get_texture()
	_mat.render_priority = 10
	_mat.no_depth_test = true                     # always readable, even with a sphere or the room behind it
	quad.material_override = _mat
	quad.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(quad)
	_dot = MeshInstance3D.new()
	var s := SphereMesh.new()
	s.radius = 0.008
	s.height = 0.016
	_dot.mesh = s
	var dm := StandardMaterial3D.new()
	dm.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	dm.albedo_color = Color(1, 1, 1)
	dm.no_depth_test = true
	dm.render_priority = 12
	_dot.material_override = dm
	_dot.visible = false
	add_child(_dot)
	visible = false


# ---------------------------------------------------------------- showing

## Show a page in front of the head (`head`: the camera's world transform).
func open(name: String, head: Transform3D) -> void:
	var f := -head.basis.z
	f.y = 0.0
	f = f.normalized() if f.length() > 0.01 else Vector3.FORWARD
	var at := head.origin + f * 1.2
	at.y = clampf(head.origin.y - 0.12, 0.9, 2.0)
	global_position = at
	look_at(at + f, Vector3.UP)                   # the panel faces the player
	show_page(name)
	visible = true
	vp.render_target_update_mode = SubViewport.UPDATE_ALWAYS
	scale = Vector3.ONE * 0.92
	create_tween().tween_property(self, "scale", Vector3.ONE, 0.18).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)


func close() -> void:
	visible = false
	vp.render_target_update_mode = SubViewport.UPDATE_DISABLED
	for l in _lasers.values():
		(l as Node3D).visible = false
	_dot.visible = false


func show_page(name: String) -> void:
	page = name
	if ui:
		ui.queue_free()
	ui = PanelContainer.new()
	ui.theme = _theme
	ui.size = PX
	ui.add_theme_stylebox_override("panel", _box(Color(0.025, 0.07, 0.095, 0.93), 44, ACCENT * Color(1, 1, 1, 0.55), 2))
	vp.add_child(ui)
	var m := MarginContainer.new()
	for k in ["left", "right", "top", "bottom"]:
		m.add_theme_constant_override("margin_" + k, 44)
	ui.add_child(m)
	match name:
		"home":
			_home(m)
		"settings":
			_settings(m)
		"position":
			_position(m)
		"pause":
			_pause(m)
		"suit":
			_suit(m)
		"summary":
			_summary(m)


func set_status(text: String) -> void:
	status_text = text
	if _status_label and is_instance_valid(_status_label):
		_status_label.text = text


# ---------------------------------------------------------------- pages

func _home(m: Control) -> void:
	var row := _cols(m)
	var left := _col(row, 1.25)
	_text(left, "XEMS Studio", 76, INK, true)
	_text(left, "Разбивай в ритъма. Клякай, навеждай се, стъпвай встрани — костюмът работи с теб.", 30, DIM).custom_minimum_size.x = 600
	_gap(left, 26)
	_text(left, "Рекорд  %s" % _num(settings.best_score), 34, Color(1.0, 0.85, 0.4), true)
	if last_result != "":
		_text(left, last_result, 28, DIM)
	_gap(left, 10, true)
	_text(left, _settings_line(), 26, DIM)
	_status_label = _text(left, status_text, 26, ACCENT.lightened(0.3))
	var right := _col(row, 1.0)
	right.alignment = BoxContainer.ALIGNMENT_CENTER
	_button(right, "Започни", func() -> void: action.emit("start"), true)
	_button(right, "Как се играе", func() -> void: action.emit("tutorial"))
	_button(right, "Настройки", func() -> void: show_page("settings"))
	_button(right, "Костюм и импулси", func() -> void: show_page("suit"))
	_button(right, "Позиция и ръст", func() -> void: show_page("position"))


func _settings(m: Control) -> void:
	var v := VBoxContainer.new()
	v.add_theme_constant_override("separation", 14)
	m.add_child(v)
	var top := HBoxContainer.new()
	top.add_theme_constant_override("separation", 14)
	v.add_child(top)
	_small(top, "‹  Назад", func() -> void: show_page(_back_page()))
	_text(top, "Настройки", 46, INK, true).size_flags_horizontal = Control.SIZE_EXPAND_FILL
	for i in 2:
		var b := _small(top, ["Игра", "Звук и вид"][i], func() -> void:
			tab = i
			show_page("settings"))
		_selected(b, tab == i)
	_gap(v, 4)
	if tab == 0:
		_seg(v, "Темпо", GameSettings.PACE.map(func(x): return x.name), settings.pace, func(i: int) -> void: settings.pace = i, "pace")
		_seg(v, "Откъде идват", GameSettings.SPREAD.map(func(x): return x.name), settings.spread, func(i: int) -> void: settings.spread = i, "spread")
		_seg(v, "Крака", GameSettings.LEGS, settings.legs, func(i: int) -> void: settings.legs = i, "legs")
		_seg(v, "Препятствия", ["Да", "Не"], 0 if settings.hazards else 1, func(i: int) -> void: settings.hazards = i == 0, "hazards")
		_seg(v, "Време", GameSettings.MINUTES.map(func(x): return "∞" if x == 0 else "%d мин" % x),
			GameSettings.MINUTES.find(settings.minutes), func(i: int) -> void: settings.minutes = GameSettings.MINUTES[i], "minutes")
	else:
		_seg(v, "Музика", MUSIC.map(func(x): return x.name), _nearest(MUSIC, settings.music_db), func(i: int) -> void: settings.music_db = MUSIC[i].db, "music_db")
		_seg(v, "Ефекти", EFFECTS.map(func(x): return x.name), _nearest(EFFECTS, settings.sfx_db), func(i: int) -> void: settings.sfx_db = EFFECTS[i].db, "sfx_db")
		_seg(v, "Щадящ режим", ["Не", "Да"], 1 if settings.comfort else 0, func(i: int) -> void: settings.comfort = i == 1, "comfort")
		_stepper(v, "Зала", String(room_names[settings.room]) if settings.room < room_names.size() else "",
			func(d: int) -> void: settings.room = posmod(settings.room + d, max(room_names.size(), 1)), "room")
		_text(v, "Щадящ режим: по-меки проблясъци и без червен ръб — за чувствителни очи.", 24, DIM)


func _position(m: Control) -> void:
	var v := VBoxContainer.new()
	v.add_theme_constant_override("separation", 14)
	m.add_child(v)
	var top := HBoxContainer.new()
	v.add_child(top)
	_small(top, "‹  Назад", func() -> void: show_page(_back_page()))
	_text(top, "Позиция и ръст", 46, INK, true)
	var row := _cols(v)
	var left := _col(row, 1.0)
	_text(left, "Застани там, където искаш да играеш, гледай право напред и натисни:", 28, DIM).custom_minimum_size.x = 520
	_button(left, "Центрирай тук", func() -> void: action.emit("recenter"), true)
	_seg(left, "Центрирай при старт", ["Да", "Не"], 0 if settings.auto_center else 1,
		func(i: int) -> void: settings.auto_center = i == 0, "auto_center", 0)
	_gap(left, 6)
	_text(left, "Ръст", 30, INK, true)
	var hr := HBoxContainer.new()
	hr.add_theme_constant_override("separation", 10)
	left.add_child(hr)
	var auto := _small(hr, "Измери сам", func() -> void:
		settings.height_cm = 0
		_commit("height_cm"))
	_selected(auto, settings.height_cm == 0)
	_small(hr, "−", func() -> void:
		settings.height_cm = clampi((settings.height_cm if settings.height_cm > 0 else 175) - 2, 120, 220)
		_commit("height_cm"))
	_text(hr, ("%d см" % settings.height_cm) if settings.height_cm > 0 else "авто", 32, INK, true).custom_minimum_size.x = 130
	_small(hr, "+", func() -> void:
		settings.height_cm = clampi((settings.height_cm if settings.height_cm > 0 else 175) + 2, 120, 220)
		_commit("height_cm"))
	var right := _col(row, 1.0)
	_text(right, "Мястото ти в залата", 30, INK, true)
	_text(right, "Местиш залата около себе си (по 25 см, по 15°). Арената винаги е пред теб.", 24, DIM).custom_minimum_size.x = 480
	var g := GridContainer.new()
	g.columns = 3
	g.add_theme_constant_override("h_separation", 10)
	g.add_theme_constant_override("v_separation", 10)
	right.add_child(g)
	for cell in [["⟲", 0, 0, -15], ["▲ Напред", 0, -0.25, 0], ["⟳", 0, 0, 15],
			["◀ Наляво", -0.25, 0, 0], ["Нулирай", 9, 9, 9], ["Надясно ▶", 0.25, 0, 0],
			["", 0, 0, 0], ["▼ Назад", 0, 0.25, 0], ["", 0, 0, 0]]:
		if cell[0] == "":
			g.add_child(Control.new())
			continue
		var c: Array = cell
		var move := func() -> void:
			if c[1] == 9:
				settings.offset_x = 0.0
				settings.offset_z = 0.0
				settings.turn_deg = 0.0
			else:
				settings.offset_x += c[1]
				settings.offset_z += c[2]
				settings.turn_deg = fposmod(settings.turn_deg + c[3], 360.0)
			_commit("offset")
		_small(g, c[0], move, 170)
	var side := "вдясно" if settings.offset_x > 0.01 else ("вляво" if settings.offset_x < -0.01 else "")
	var ahead := "напред" if settings.offset_z < -0.01 else ("назад" if settings.offset_z > 0.01 else "")
	var moved := PackedStringArray()
	if side != "":
		moved.append("%d см %s" % [roundi(absf(settings.offset_x) * 100), side])
	if ahead != "":
		moved.append("%d см %s" % [roundi(absf(settings.offset_z) * 100), ahead])
	var turn := roundi(wrapf(settings.turn_deg, -180.0, 180.0))
	if turn != 0:
		moved.append("завъртян %d° %s" % [absi(turn), "надясно" if turn > 0 else "наляво"])
	_text(right, ("Ти си " + " · ".join(moved)) if moved.size() > 0 else "Стоиш в средата на залата.", 24, DIM)


## The impulse dock: the suit as the tablet drives it from the game's hits, and every setting of that drive.
func _suit(m: Control) -> void:
	_live.clear()
	var v := VBoxContainer.new()
	v.add_theme_constant_override("separation", 10)
	m.add_child(v)
	var top := HBoxContainer.new()
	top.add_theme_constant_override("separation", 14)
	v.add_child(top)
	_small(top, "‹  Назад", func() -> void: show_page(_back_page()))
	_text(top, "Костюм и импулси", 44, INK, true).size_flags_horizontal = Control.SIZE_EXPAND_FILL
	_live.link = _text(top, "", 24, ACCENT.lightened(0.3), true)
	_small(top, "По подразбиране", func() -> void: _ctl(TabletLink.Op.RESET, 0, 0)).add_theme_font_size_override("font_size", 22)
	var st: Dictionary = tablet.state if tablet else {}
	var linked := tablet != null and tablet.linked()
	var row := _cols(v)
	row.add_theme_constant_override("separation", 30)
	# 1 — what the suit gets now and the trainer's strength: the thing a player looks for first
	var live := _col(row, 0.85)
	live.custom_minimum_size.x = 300
	var hero := HBoxContainer.new()
	hero.add_theme_constant_override("separation", 12)
	live.add_child(hero)
	_live.hero = _text(hero, "—", 96, INK, true)
	_live.hero_unit = _text(hero, "", 26, DIM)
	var bar_bg := Panel.new()
	bar_bg.custom_minimum_size = Vector2(0, 16)
	bar_bg.add_theme_stylebox_override("panel", _box(Color(1, 1, 1, 0.08), 8))
	live.add_child(bar_bg)
	var fill := Panel.new()
	fill.add_theme_stylebox_override("panel", _box(ACCENT, 8))
	fill.size = Vector2(0, 16)
	bar_bg.add_child(fill)
	_live.bar = fill
	_live.counts = _text(live, "", 22, DIM)
	_live.next = _text(live, "", 22, ACCENT.lightened(0.35))
	_gap(live, 4, true)
	_text(live, "Сила на треньора (таван)", 26, INK)
	var sr := HBoxContainer.new()
	sr.add_theme_constant_override("separation", 10)
	live.add_child(sr)
	_small(sr, "−", func() -> void: _ctl(TabletLink.Op.STRENGTH, 0, -1), 86)
	_live.ceiling = _text(sr, "—", 44, INK, true)
	_live.ceiling.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	_live.ceiling.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	_small(sr, "+", func() -> void: _ctl(TabletLink.Op.STRENGTH, 0, 1), 86)
	# 2 — how the game drives the suit
	var drive := _col(row, 1.2)
	var paused := linked and (int(st.get("flags", 0)) & TabletLink.F_PAUSED) != 0
	_seg_v(drive, "Играта управлява силата", ["Да", "Не"], 1 if paused else 0,
		func(i: int) -> void: _ctl(TabletLink.Op.PAUSE, i, 0), "")
	_seg_v(drive, "Импулси от играта", ["Вкл", "Изкл"], 0 if settings.suit else 1, func(i: int) -> void: settings.suit = i == 0, "suit")
	_seg_v(drive, "Пропуснат удар", GameSettings.PUNISH.map(func(x): return x.name), settings.punish,
		func(i: int) -> void: settings.punish = i, "punish")
	_seg_v(drive, "Кои удари минават", ["Силни", "Средни", "Всички"], int(st.get("sens", 1)),
		func(i: int) -> void: _ctl(TabletLink.Op.SENS, i, 0), "")
	# 3 — how each impulse feels and which channels rest
	var feel := _col(row, 1.1)
	var floor_v := int(st.get("floor", 20))
	_text(feel, "Най-слаб удар (от тавана)", 26, INK)
	var fr := HBoxContainer.new()
	fr.add_theme_constant_override("separation", 10)
	feel.add_child(fr)
	_small(fr, "−", func() -> void: _ctl(TabletLink.Op.FLOOR, 0, max(floor_v - 5, 0)), 86)
	var fv := _text(fr, "%d%%" % floor_v, 36, INK, true)
	fv.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	fv.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	_small(fr, "+", func() -> void: _ctl(TabletLink.Op.FLOOR, 0, min(floor_v + 5, 90)), 86)
	_seg_v(feel, "Нарастване", ["Рязко", "Средно", "Меко"], int(st.get("smooth", 1)),
		func(i: int) -> void: _ctl(TabletLink.Op.SMOOTH, i, 0), "")
	_text(feel, "Почиват, докато играта води", 26, INK)
	var g := GridContainer.new()
	g.columns = 2
	g.add_theme_constant_override("h_separation", 8)
	g.add_theme_constant_override("v_separation", 6)
	feel.add_child(g)
	for i in TabletLink.CHANNELS.size():
		var rest := tablet != null and tablet.rests(i)
		var ch: int = TabletLink.CHANNEL_INDEX[i]
		var b := _small(g, ("⊘ " if rest else "") + String(TabletLink.CHANNELS[i]), func() -> void: _ctl(TabletLink.Op.REST, ch, 0 if rest else 1))
		b.add_theme_font_size_override("font_size", 20)
		b.custom_minimum_size = Vector2(0, 46)
		b.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		b.clip_text = true
		if rest:
			b.add_theme_stylebox_override("normal", _box(Color(1.0, 0.7, 0.2, 0.3), 22, Color(1.0, 0.75, 0.3), 2))
	_suit_sig = _signature()
	update_live()


func _ctl(op: int, arg: int, value: int) -> void:
	if tablet:
		tablet.send(op, arg, value)
	show_page("suit")


## What the suit page shows as buttons (a change from the tablet rebuilds it; the live numbers do not).
func _signature() -> String:
	if tablet == null or not tablet.linked():
		return "off"
	var st := tablet.state
	return "%d|%d|%d|%d|%d" % [int(st.flags) & TabletLink.F_PAUSED, st.sens, st.smooth, st.floor, st.rests]


## Once a frame while the suit page is open: the numbers that move.
func update_live() -> void:
	if page != "suit" or _live.is_empty() or not is_instance_valid(_live.hero):
		return
	if _signature() != _suit_sig:
		show_page("suit")
		return
	var linked := tablet != null and tablet.linked()
	var st: Dictionary = tablet.state if linked else {}
	var flags := int(st.get("flags", 0))
	var applied := int(st.get("applied", -1))
	(_live.link as Label).text = ("● таблетът е свързан" if flags & TabletLink.F_LINKED else "● таблетът чака играта") if linked else "○ няма връзка с таблета"
	(_live.hero as Label).text = ("%d%%" % applied) if applied >= 0 else "—"
	(_live.hero_unit as Label).text = "в костюма" if applied >= 0 else ""
	(_live.bar as Panel).size.x = ((_live.bar as Panel).get_parent() as Control).size.x * clampf(int(st.get("level", 0)) / 100.0, 0.0, 1.0)
	(_live.counts as Label).text = ("✓ %d удара минаха   ⊘ %d отрязани" % [st.passed, st.dropped]) if linked else ""
	var ceiling := int(st.get("ceiling", -1))
	(_live.ceiling as Label).text = str(ceiling) if ceiling >= 0 else "—"
	var next := ""
	if not linked:
		next = "Отвори „Тренировка“ на таблета. Играта трябва да е сложена през XEMS VR Launcher (с моста към костюма)."
	elif flags & TabletLink.F_PAUSED:
		next = "Играта не пипа силата, докато не я включиш пак."
	elif flags & TabletLink.F_MUSIC:
		next = "Музиката на таблета води силата — спри плейъра, за да поеме играта."
	elif flags & TabletLink.F_DRIVING:
		next = "Ударите движат силата до тавана на треньора."
	else:
		next = "Пусни реда на таблета — играта ще поеме силата."
	(_live.next as Label).text = next


func _pause(m: Control) -> void:
	var row := _cols(m)
	var left := _col(row, 1.2)
	_text(left, "Пауза", 76, INK, true)
	_text(left, "Играта чака. Нищо не лети, костюмът почива.", 30, DIM).custom_minimum_size.x = 560
	_gap(left, 10, true)
	_status_label = _text(left, status_text, 26, ACCENT.lightened(0.3))
	var right := _col(row, 1.0)
	right.alignment = BoxContainer.ALIGNMENT_CENTER
	_button(right, "Продължи", func() -> void: action.emit("resume"), true)
	_button(right, "Отначало", func() -> void: action.emit("restart"))
	_button(right, "Костюм и импулси", func() -> void: show_page("suit"))
	_button(right, "Настройки", func() -> void: show_page("settings"))
	_button(right, "Позиция и ръст", func() -> void: show_page("position"))
	_button(right, "Край на тренировката", func() -> void: action.emit("finish"))


func _summary(m: Control) -> void:
	var row := _cols(m)
	var left := _col(row, 1.2)
	_text(left, "Нов рекорд!" if summary.get("record", false) else "Браво!", 40, Color(1.0, 0.85, 0.4), true)
	_text(left, _num(summary.get("score", 0)), 110, INK, true)
	_text(left, "точки · %d%% точност · най-дълга серия ×%d" % [summary.get("acc", 0), summary.get("best_combo", 0)], 28, DIM)
	_gap(left, 14)
	var g := GridContainer.new()
	g.columns = 3
	g.add_theme_constant_override("h_separation", 34)
	g.add_theme_constant_override("v_separation", 8)
	left.add_child(g)
	for cell in [["Удари", summary.get("hits", 0)], ["Перфектни", summary.get("perfect", 0)], ["Избегнати", summary.get("dodged", 0)],
			["Клекове", summary.get("squats", 0)], ["Стъпки", summary.get("steps", 0)], ["Минути", summary.get("minutes", 0)]]:
		var c := VBoxContainer.new()
		c.custom_minimum_size.x = 170
		g.add_child(c)
		_text(c, str(cell[1]), 44, ACCENT.lightened(0.25), true)
		_text(c, cell[0], 24, DIM)
	var right := _col(row, 0.8)
	right.alignment = BoxContainer.ALIGNMENT_CENTER
	var rank := String(summary.get("rank", ""))
	if rank != "":
		var gold := rank.begins_with("S")
		var r := _text(right, rank, 150, Color(1.0, 0.82, 0.3) if gold else ACCENT.lightened(0.2), true)
		r.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		_text(right, "ранг", 26, DIM).horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		_gap(right, 10)
	_button(right, "Още веднъж", func() -> void: action.emit("start"), true)
	_button(right, "Начало", func() -> void: show_page("home"))


func _back_page() -> String:
	return "pause" if get_meta("in_game", false) else "home"


func _settings_line() -> String:
	var mins := "без край" if settings.minutes == 0 else "%d мин" % settings.minutes
	return "%s · %s · %s · крака: %s" % [GameSettings.PACE[settings.pace].name, GameSettings.SPREAD[settings.spread].name,
		mins, String(GameSettings.LEGS[settings.legs]).to_lower()]


func _commit(key: String) -> void:
	settings.save()
	changed.emit(key)
	show_page(page)


static func _nearest(list: Array, db: float) -> int:
	var best := 0
	for i in list.size():
		if absf(list[i].db - db) < absf(list[best].db - db):
			best = i
	return best


static func _num(n: int) -> String:
	var s := str(n)
	var out := ""
	while s.length() > 3:
		out = " " + s.substr(s.length() - 3) + out
		s = s.substr(0, s.length() - 3)
	return s + out


# ---------------------------------------------------------------- widgets

func _make_theme() -> Theme:
	var t := Theme.new()
	t.default_font = FONT
	t.default_font_size = 30
	t.set_color("font_color", "Label", INK)
	for st in ["normal", "hover", "pressed", "focus", "disabled", "hover_pressed"]:
		var c := Color(1, 1, 1, 0.07)
		var border := Color(1, 1, 1, 0.14)
		if st == "hover":
			c = ACCENT * Color(1, 1, 1, 0.22)
			border = ACCENT * Color(1, 1, 1, 0.8)
		elif st == "pressed" or st == "hover_pressed":
			c = ACCENT * Color(1, 1, 1, 0.45)
			border = ACCENT
		elif st == "focus":
			t.set_stylebox(st, "Button", StyleBoxEmpty.new())
			continue
		t.set_stylebox(st, "Button", _box(c, 22, border, 2))
	t.set_color("font_color", "Button", INK)
	t.set_color("font_hover_color", "Button", Color.WHITE)
	t.set_color("font_pressed_color", "Button", Color.WHITE)
	t.set_font("font", "Button", FONT_BOLD)
	return t


static func _box(c: Color, r: int, border := Color(0, 0, 0, 0), bw := 0) -> StyleBoxFlat:
	var b := StyleBoxFlat.new()
	b.bg_color = c
	b.set_corner_radius_all(r)
	b.border_color = border
	b.set_border_width_all(bw)
	b.content_margin_left = 16
	b.content_margin_right = 16
	b.content_margin_top = 10
	b.content_margin_bottom = 10
	b.anti_aliasing = true
	return b


func _cols(parent: Control) -> HBoxContainer:
	var h := HBoxContainer.new()
	h.add_theme_constant_override("separation", 40)
	h.size_flags_vertical = Control.SIZE_EXPAND_FILL
	parent.add_child(h)
	return h


func _col(parent: Control, ratio: float) -> VBoxContainer:
	var v := VBoxContainer.new()
	v.add_theme_constant_override("separation", 12)
	v.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	v.size_flags_stretch_ratio = ratio
	parent.add_child(v)
	return v


func _text(parent: Control, text: String, size: int, color := INK, bold := false) -> Label:
	var l := Label.new()
	l.text = text
	l.add_theme_font_size_override("font_size", size)
	l.add_theme_color_override("font_color", color)
	if bold:
		l.add_theme_font_override("font", FONT_BOLD)
	# Wrap only in a column: a label in a row has no width of its own to wrap to and would stand one letter wide.
	if not parent is HBoxContainer:
		l.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	l.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	parent.add_child(l)
	return l


func _gap(parent: Control, h: int, expand := false) -> void:
	var c := Control.new()
	c.custom_minimum_size.y = h
	if expand:
		c.size_flags_vertical = Control.SIZE_EXPAND_FILL
	parent.add_child(c)


func _button(parent: Control, text: String, on: Callable, primary := false) -> Button:
	var b := Button.new()
	b.text = text
	b.custom_minimum_size = Vector2(0, 92 if primary else 76)
	b.add_theme_font_size_override("font_size", 40 if primary else 32)
	if primary:
		b.add_theme_stylebox_override("normal", _box(ACCENT * Color(0.75, 0.75, 0.75, 0.9), 28, ACCENT.lightened(0.4), 2))
		b.add_theme_stylebox_override("hover", _box(ACCENT * Color(1, 1, 1, 1), 28, Color.WHITE, 3))
		b.add_theme_stylebox_override("pressed", _box(ACCENT.lightened(0.3), 28, Color.WHITE, 3))
		b.add_theme_color_override("font_color", Color(0.02, 0.1, 0.13))
		b.add_theme_color_override("font_hover_color", Color(0.02, 0.1, 0.13))
		b.add_theme_color_override("font_pressed_color", Color(0.02, 0.1, 0.13))
	b.pressed.connect(on)
	b.pressed.connect(_pressed_fx.bind(b))
	parent.add_child(b)
	return b


func _small(parent: Control, text: String, on: Callable, w := 0) -> Button:
	var b := Button.new()
	b.text = text
	b.custom_minimum_size = Vector2(w, 64)
	b.add_theme_font_size_override("font_size", 28)
	b.pressed.connect(on)
	b.pressed.connect(_pressed_fx.bind(b))
	parent.add_child(b)
	return b


func _selected(b: Button, on: bool) -> void:
	if not on:
		return
	b.add_theme_stylebox_override("normal", _box(ACCENT * Color(1, 1, 1, 0.38), 22, ACCENT, 2))
	b.add_theme_stylebox_override("hover", _box(ACCENT * Color(1, 1, 1, 0.5), 22, Color.WHITE, 2))


## A row: what it is on the left, the choices as one-tap buttons on the right; the current one lit.
func _seg(parent: Control, label: String, options: Array, current: int, set_to: Callable, key: String, label_w := 240) -> void:
	var h := HBoxContainer.new()
	h.add_theme_constant_override("separation", 10)
	parent.add_child(h)
	var l := _text(h, label, 30, INK)
	l.custom_minimum_size.x = label_w
	if label_w == 0:
		l.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	for i in options.size():
		var b := _small(h, String(options[i]), func() -> void:
			set_to.call(i)
			if key != "":
				_commit(key))
		_selected(b, i == current)


## The same, stacked for a narrow column: the label above, the choices sharing the column's width.
func _seg_v(parent: Control, label: String, options: Array, current: int, set_to: Callable, key: String) -> void:
	_text(parent, label, 26, INK)
	var h := HBoxContainer.new()
	h.add_theme_constant_override("separation", 8)
	parent.add_child(h)
	for i in options.size():
		var b := _small(h, String(options[i]), func() -> void:
			set_to.call(i)
			if key != "":
				_commit(key))
		b.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		b.clip_text = true
		b.add_theme_font_size_override("font_size", 24 if options.size() < 3 else 22)
		_selected(b, i == current)


func _stepper(parent: Control, label: String, value: String, step: Callable, key: String) -> void:
	var h := HBoxContainer.new()
	h.add_theme_constant_override("separation", 10)
	parent.add_child(h)
	_text(h, label, 30, INK).custom_minimum_size.x = 330
	var back := func() -> void:
		step.call(-1)
		_commit(key)
	var fwd := func() -> void:
		step.call(1)
		_commit(key)
	_small(h, "‹", back, 70)
	var v := _text(h, value, 30, INK, true)
	v.custom_minimum_size.x = 380
	v.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	_small(h, "›", fwd, 70)


func _pressed_fx(b: Button) -> void:
	b.pivot_offset = b.size * 0.5
	b.scale = Vector2.ONE * 0.94
	b.create_tween().tween_property(b, "scale", Vector2.ONE, 0.16).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	var s := get_meta("sfx") as Sfx if has_meta("sfx") else null
	if s:
		s.play("blip", null, -8.0, 1.2)


## Desktop tests: press the button with this text on the current page (true if found).
func press(text: String) -> bool:
	for b in ui.find_children("*", "Button", true, false):
		if (b as Button).text == text:
			(b as Button).pressed.emit()
			return true
	return false


# ---------------------------------------------------------------- pointing and touching

## Once a frame while open. pointers: side -> XRController3D (rays + triggers) · touch: side -> world point of a fist /
## fingertip (pressing by touching the panel).
func tick(pointers: Dictionary, touch: Dictionary) -> void:
	if not visible:
		return
	var inv := quad.global_transform.affine_inverse()
	var n := quad.global_transform.basis.z.normalized()
	var o := quad.global_position
	var best_hit := Vector2(-1, -1)
	for side in ["left", "right"]:
		var c = pointers.get(side)
		var laser := _laser(side)
		laser.visible = false
		if not (c is XRController3D) or not (c as XRController3D).get_has_tracking_data():
			continue
		var t := (c as XRController3D).global_transform
		var dir := -t.basis.z
		var denom := dir.dot(n)
		if absf(denom) < 1e-4:
			continue
		var d := (o - t.origin).dot(n) / denom
		if d <= 0.0 or d > 6.0:
			continue
		var hit := t.origin + dir * d
		var px := _to_px(inv * hit)
		var inside := px.x >= 0 and px.y >= 0 and px.x <= PX.x and px.y <= PX.y
		laser.visible = true
		_place_laser(laser, t.origin, hit if inside else t.origin + dir * minf(d, 1.5))
		if not inside:
			continue
		_dot.global_position = hit + n * 0.004
		best_hit = px
		var down: bool = (c as XRController3D).get_float("trigger") > 0.6 or (c as XRController3D).is_button_pressed("trigger_click")
		_move(px)
		if down != _trigger.get(side, false):
			_click(px, down)
		_trigger[side] = down
	for side in touch:
		var p: Vector3 = touch[side]
		var local := inv * p
		var px := _to_px(local)
		var inside := px.x >= 0 and px.y >= 0 and px.x <= PX.x and px.y <= PX.y
		var on := inside and local.z < 0.025 and local.z > -0.08          # touching or a little through
		var was: bool = _poke.get(side, false)
		if inside and local.z < 0.12:
			_move(px)
			best_hit = px
		if on != was and (on or local.z > 0.04 or not inside):
			_click(px, on)
			_poke[side] = on
	_dot.visible = best_hit.x >= 0


func _to_px(local: Vector3) -> Vector2:
	return Vector2((local.x / SIZE.x + 0.5) * PX.x, (0.5 - local.y / SIZE.y) * PX.y)


func _move(px: Vector2) -> void:
	if px.distance_to(_cursor) < 0.5:
		return
	var ev := InputEventMouseMotion.new()
	ev.position = px
	ev.global_position = px
	ev.relative = px - _cursor if _cursor.x >= 0 else Vector2.ZERO
	_cursor = px
	vp.push_input(ev, true)


func _click(px: Vector2, down: bool) -> void:
	var ev := InputEventMouseButton.new()
	ev.button_index = MOUSE_BUTTON_LEFT
	ev.pressed = down
	ev.position = px
	ev.global_position = px
	vp.push_input(ev, true)


func _laser(side: String) -> MeshInstance3D:
	if _lasers.has(side):
		return _lasers[side]
	var l := MeshInstance3D.new()
	var c := CylinderMesh.new()
	c.top_radius = 0.0015
	c.bottom_radius = 0.003
	c.height = 1.0
	c.radial_segments = 6
	c.rings = 1
	l.mesh = c
	var m := StandardMaterial3D.new()
	m.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	m.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	m.albedo_color = Color(ACCENT.r, ACCENT.g, ACCENT.b, 0.55)
	l.material_override = m
	l.top_level = true
	add_child(l)
	_lasers[side] = l
	return l


func _place_laser(l: MeshInstance3D, a: Vector3, b: Vector3) -> void:
	var len := a.distance_to(b)
	if len < 0.01:
		l.visible = false
		return
	var y := (b - a) / len
	var x := y.cross(Vector3.UP if absf(y.y) < 0.95 else Vector3.RIGHT).normalized()
	var z := x.cross(y)
	l.global_transform = Transform3D(Basis(x, y * len, z), (a + b) * 0.5)
