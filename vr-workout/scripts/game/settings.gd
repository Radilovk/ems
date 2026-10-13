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
# The landscapes the photo rooms look out on. A room's "view_yaw" brings the middle of its windows to the middle of
# the photo (u 0.5); a view's "yaw" then brings its best part there (the open sea, the peaks); "lift" lowers its
# horizon in the windows so the photo's near ground (a quay, people) stays out.
const VIEWS := [{"name": "Море", "path": "res://assets/views/sea.jpg", "yaw": 0.02, "lift": 0.02},
	{"name": "Планини", "path": "res://assets/views/mountain.jpg", "yaw": -0.2, "lift": 0.0}]
const PUNISH := [{"name": "Меко", "sec": 1.2}, {"name": "Силно", "sec": 2.5}]

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
var view := 0                   # what the photo rooms' windows look out on: VIEWS, or VIEWS.size() = as shot
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
	return ["pace", "spread", "legs", "hazards", "minutes", "suit", "punish", "music_db", "sfx_db", "comfort",
		"height_cm", "offset_x", "offset_z", "turn_deg", "auto_center", "room", "view", "tutorial_done", "best_score"]


func _clamp() -> void:
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
	view = clampi(view, 0, VIEWS.size())


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
