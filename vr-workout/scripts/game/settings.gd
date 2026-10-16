## The player's settings, kept on the headset between sessions (user://settings.cfg). One place: the menu edits them,
## the game and the stage read them. Every field has a plain default, so a first start needs no menu at all.
class_name GameSettings
extends RefCounted

const PATH := "user://settings.cfg"

# How fast things come (× level speed, × the gap between them): easy · normal · hard.
const PACE := [{"name": "Леко", "speed": 0.8, "gap": 1.3}, {"name": "Нормално", "speed": 1.0, "gap": 1.0},
	{"name": "Трудно", "speed": 1.15, "gap": 0.82}]
# Where things are thrown from: one portal ahead · an arc ahead · wide, from the sides too (half-angle, degrees).
const SPREAD := [{"name": "Отпред", "deg": 0.0}, {"name": "Дъга", "deg": 32.0}, {"name": "Широко", "deg": 62.0}]
# Legs: auto (controllers strapped to the ankles if it finds them, else body tracking if it follows the legs, else
# the moves the headset can see) · ankle controllers · body tracking · squats and steps only · no legs.
const LEGS := ["Авто", "На глезените", "От очилата", "Клек и стъпки", "Без"]
enum Legs { AUTO, ANKLES, TRACKING, MOVES, OFF }
const MINUTES := [0, 5, 10, 15, 20, 30]     # 0 = until you stop
# What the panoramic hall's glass looks out on, drawn as the sky by shaders/view_sky.gdshader. A 360° photo ("yaw"
# brings its best part to the main window ahead), or one of the owner's photos (vr-workout/land → assets/views by
# convert/crop_views.py): kept at full width and hung exactly across the hall's three glass walls ("span" 220° from where
# you stand), only the band of rows the glass can show kept (25° below to 25° above eye level, "horizon" = the row at
# eye level), so it is sharp (32–37 pixels a degree, more than the headset shows) and never stretched.
const VIEWS := [{"name": "Планини", "path": "res://assets/views/mountain.jpg", "yaw": -0.2, "lift": 0.0},
	{"name": "Ливада на хълма", "path": "res://assets/rooms/hill.jpg", "yaw": 0.0, "lift": 0.0},
	{"name": "Нощ в планината", "path": "res://assets/rooms/night_plateau.jpg", "yaw": 0.1, "lift": 0.0},
	{"name": "Алпийско езеро", "path": "res://assets/views/alps_lake.jpg", "span": 220.0, "horizon": 0.5},
	{"name": "Гранд Тетън", "path": "res://assets/views/tetons.jpg", "span": 220.0, "horizon": 0.5},
	{"name": "Доломити", "path": "res://assets/views/dolomites.jpg", "span": 220.0, "horizon": 0.5},
	{"name": "Скалите на Етрета", "path": "res://assets/views/etretat.jpg", "span": 220.0, "horizon": 0.5},
	{"name": "Тропически бряг", "path": "res://assets/views/tropical.jpg", "span": 220.0, "horizon": 0.5},
	{"name": "Сен Мишел", "path": "res://assets/views/saint_michel.jpg", "span": 220.0, "horizon": 0.5},
	{"name": "Зелено поле", "path": "res://assets/views/field.jpg", "span": 220.0, "horizon": 0.5},
	{"name": "Залез над езеро", "path": "res://assets/views/lake_sunset.jpg", "span": 220.0, "horizon": 0.5},
	{"name": "Залез над дюни", "path": "res://assets/views/dunes.jpg", "span": 220.0, "horizon": 0.5},
	{"name": "Мост при залез", "path": "res://assets/views/bridge_sunset.jpg", "span": 220.0, "horizon": 0.5}]
const PUNISH := [{"name": "Меко", "sec": 1.2}, {"name": "Силно", "sec": 2.5}]
# What the session is: the plasma spheres on the beat · the chef throwing food (CHEF_PLACES: where his cart stands).
const SCENES := ["Сфери в ритъма", "Готвачът"]
enum Scene { SPHERES, CHEF }
# Where the chef has his cart (owner, 2026-10): one of two real places, the player picks.
const CHEF_PLACES := [{"name": "Пиаца Болони", "room": "Пиаца Болони (Палермо)"},
	{"name": "Ретро улица", "room": "Ретро улица Претвил"}]

var scene := 0                  # Scene
var chef_place := 0             # CHEF_PLACES
var pace := 1
var spread := 1
var legs := 0
var hazards := true             # red beams / walls (squat, lean, step)
var minutes := 10
var suit := true                # haptics → the XEMS layer → the suit
var punish := 1
var music_db := -9.0
var sfx_db := 0.0
var comfort := false            # softer flashes, no red edge flare (light-sensitive players)
var height_cm := 0              # 0 = measured at the start; else the player's height
var offset_x := 0.0             # where in the room the player stands (m, room frame: +x right, +z back)
var offset_z := 0.0
var turn_deg := 0.0             # which way the room faces the player (degrees)
var auto_center := true         # every session starts centred on where the player stands and looks
var room := 0
var view := 0                   # what the panoramic hall looks out on: VIEWS
var track := "auto"             # the song: "auto" = the first of your own (else the built-in) · "bed" = built-in · a file name
var tutorial_done := false
var best_score := 0


func load_file() -> void:
	var c := ConfigFile.new()
	if c.load(PATH) != OK:
		return
	for p in _fields():
		set(p, c.get_value("xems", p, get(p)))
	_clamp()


func save() -> void:
	var c := ConfigFile.new()
	for p in _fields():
		c.set_value("xems", p, get(p))
	c.save(PATH)


func _fields() -> Array:
	return ["scene", "chef_place", "pace", "spread", "legs", "hazards", "minutes", "suit", "punish", "music_db", "sfx_db", "comfort",
		"height_cm", "offset_x", "offset_z", "turn_deg", "auto_center", "room", "view", "track", "tutorial_done", "best_score"]


func _clamp() -> void:
	scene = clampi(scene, 0, SCENES.size() - 1)
	chef_place = clampi(chef_place, 0, CHEF_PLACES.size() - 1)
	pace = clampi(pace, 0, PACE.size() - 1)
	spread = clampi(spread, 0, SPREAD.size() - 1)
	legs = clampi(legs, 0, LEGS.size() - 1)
	punish = clampi(punish, 0, PUNISH.size() - 1)
	if not minutes in MINUTES:
		minutes = 10
	music_db = clampf(music_db, -40.0, 0.0)
	sfx_db = clampf(sfx_db, -30.0, 6.0)
	height_cm = 0 if height_cm < 120 else clampi(height_cm, 120, 220)
	offset_x = clampf(offset_x, -2.0, 2.0)
	offset_z = clampf(offset_z, -3.0, 2.0)
	turn_deg = fposmod(turn_deg, 360.0)
	view = clampi(view, 0, VIEWS.size() - 1)


func chef() -> bool:
	return scene == Scene.CHEF


func chef_room() -> String:
	return String(CHEF_PLACES[chef_place].room)


func speed_k() -> float:
	return PACE[pace].speed


func gap_k() -> float:
	return PACE[pace].gap


func spread_deg() -> float:
	return SPREAD[spread].deg


func punish_sec() -> float:
	return PUNISH[punish].sec


## Eye height of the player when it is set by hand (height ≈ eyes + 11 cm); 0 = measure.
func eye_height() -> float:
	return 0.0 if height_cm == 0 else height_cm / 100.0 - 0.11
