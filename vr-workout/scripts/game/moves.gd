## What the coach does with his body in the game: a fighting guard and the moves out of it and back.
## Every move starts and ends in GUARD so they chain without a jump. Built on the Exercises key-pose machinery
## (monotone curves, minimum-jerk timing, arms trailing the pelvis), but with the timing of a strike: the end of `down`
## is the instant of contact.
class_name Moves
extends RefCounted

const GUARD := {
	"hips": Vector3(0, -0.05, 0), "tilt": 6, "yaw": 0, "twist": -6, "bend": 0, "roll": 0, "head": 4,
	"foot_l": Vector3(0.07, 0, 0.15), "foot_r": Vector3(-0.07, 0, -0.14), "toe_l": 8, "toe_r": 28,
	"ft_l": 0, "ft_r": 0, "knee_l": 0, "knee_r": 0,
	"sh_l": Vector2(55, 14), "sh_r": Vector2(52, 12), "el_l": 118, "el_r": 124,
}

static var _cache := {}


## id → {def (Exercises-style dict), label, role (the joint that makes contact), contact (s from the start)}
static func get_move(id: String) -> Dictionary:
	if _cache.has(id):
		return _cache[id]
	var m := _build(id)
	_cache[id] = m
	return m


static func ids() -> Array:
	return ["jab_l", "cross_r", "knee_l", "knee_r", "kick_l", "kick_r", "lean_l", "lean_r", "duck"]


static func length(id: String) -> float:
	var d: Dictionary = get_move(id).def
	return d.down + d.hold + d.up


## The pose `t` seconds into the move (before 0 / after the end: the guard).
static func pose(id: String, t: float) -> Dictionary:
	if t <= 0.0 or t >= length(id):
		return GUARD
	return Exercises.pose_at(get_move(id).def, t)


## Dictionary.merged() keeps the old value unless told to overwrite: a pose must take the new one.
static func _m(a: Dictionary, b: Dictionary) -> Dictionary:
	return a.merged(b, true)


static func _mk(label: String, role: String, down: float, hold: float, up: float, keys: Array, at: Array, lag := {}) -> Dictionary:
	return {"label": label, "role": role, "contact": down,
		"def": {"down": down, "hold": hold, "up": up, "rest": 0.0, "keys": keys, "at": at, "lag": lag}}


static func _build(id: String) -> Dictionary:
	var g := GUARD
	match id:
		"jab_l":
			return _mk("Прав удар", "hand_l", 0.26, 0.10, 0.30, [g,
				_m(g, {"twist": -2, "hips": Vector3(0, -0.06, -0.02), "sh_l": Vector2(48, 12)}),
				_m(g, {"sh_l": Vector2(92, 2), "el_l": 3, "twist": -18, "yaw": -8, "tilt": 9, "hips": Vector3(0, -0.07, 0.07),
					"head": 8})], [0.0, 0.3, 1.0])
		"cross_r":
			return _mk("Кроше", "hand_r", 0.30, 0.10, 0.34, [g,
				_m(g, {"twist": 12, "yaw": 6, "hips": Vector3(0, -0.07, -0.03), "ft_r": 10}),
				_m(g, {"sh_r": Vector2(92, 2), "el_r": 3, "twist": 24, "yaw": 16, "tilt": 9, "hips": Vector3(0, -0.07, 0.09),
					"ft_r": 38, "head": 8})], [0.0, 0.35, 1.0])
		"knee_l", "knee_r":
			var s := 1.0 if id == "knee_l" else -1.0
			var lf := "foot_l" if s > 0 else "foot_r"
			var ft := "ft_l" if s > 0 else "ft_r"
			var rest_x := 0.07 if s > 0 else -0.07
			var back := {"hips": Vector3(-s * 0.04, -0.03, -0.03), "tilt": 2}
			var up_ := {lf: Vector3(rest_x * 0.5, 0.52, 0.30), "hips": Vector3(-s * 0.05, 0.0, 0.05), "tilt": -4, "head": 2,
				"sh_l": Vector2(70, 8), "sh_r": Vector2(70, 8), "el_l": 95, "el_r": 95}
			return _mk("Коляно", "calf_l" if s > 0 else "calf_r", 0.30, 0.12, 0.36, [g, _m(g, back), _m(g, up_)], [0.0, 0.35, 1.0])
		"kick_l", "kick_r":
			var s2 := 1.0 if id == "kick_l" else -1.0
			var lf2 := "foot_l" if s2 > 0 else "foot_r"
			var windup := {"hips": Vector3(-s2 * 0.04, -0.03, -0.05), "tilt": -3, lf2: Vector3(s2 * 0.06, 0.28, -0.05)}
			var strike := {lf2: Vector3(s2 * 0.04, 0.44, 0.80), "hips": Vector3(-s2 * 0.05, 0.0, -0.06), "tilt": -12, "head": 0,
				"sh_l": Vector2(40, 22), "sh_r": Vector2(40, 22), "el_l": 100, "el_r": 100}
			return _mk("Ритник", "ball_l" if s2 > 0 else "ball_r", 0.34, 0.12, 0.40, [g, _m(g, windup), _m(g, strike)], [0.0, 0.4, 1.0])
		"lean_l", "lean_r":
			var s3 := 1.0 if id == "lean_l" else -1.0         # + = to his left
			var half := {"bend": s3 * 8, "hips": Vector3(s3 * 0.08, -0.05, 0), "roll": s3 * 4}
			var full := {"bend": s3 * 20, "hips": Vector3(s3 * 0.22, -0.07, 0), "roll": s3 * 8, "head": 0, "twist": -2,
				"sh_l": Vector2(45, 16), "sh_r": Vector2(45, 16)}
			return _mk("Наклон встрани", "head", 0.34, 0.60, 0.42, [g, _m(g, half), _m(g, full)], [0.0, 0.4, 1.0])
		"duck":
			var half2 := {"hips": Vector3(0, -0.2, -0.06), "tilt": 16}
			var full2 := {"hips": Vector3(0, -0.40, -0.13), "tilt": 30, "head": 10,
				"foot_l": Vector3(0.09, 0, 0.12), "foot_r": Vector3(-0.09, 0, -0.10),
				"sh_l": Vector2(70, 14), "sh_r": Vector2(70, 14), "el_l": 105, "el_r": 105}
			return _mk("Клек", "head", 0.36, 0.62, 0.44, [g, _m(g, half2), _m(g, full2)], [0.0, 0.45, 1.0])
	push_error("Moves: unknown move " + id)
	return {}
