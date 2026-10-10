## The workout: what the coach shows, in what tempo, and which suit channels work.
## One rep = down (ease in) → hold (the EMS impulse: the suit contracts the muscles as you hold) → up → rest.
class_name Exercises
extends RefCounted



const STAND := {}

static func list() -> Array:
	return [
		{
			"id": "squat", "name": "Клек", "reps": 10,
			"cue": "Ханш назад, колене над пръстите, гърбът прав. Задръж долу, докато тече импулсът.",
			"muscles": [Mannequin.QUAD, Mannequin.HAM, Mannequin.GLUTE, Mannequin.ABS, Mannequin.LOWBACK],
			"down": 1.6, "hold": 1.6, "up": 1.4, "rest": 0.6,
			"a": {"sh_l": Vector2(10, 4), "sh_r": Vector2(10, 4), "el_l": 20, "el_r": 20},
			"b": {"lean": 28, "head": 8, "hip_l": Vector2(88, 10), "hip_r": Vector2(88, 10), "kn_l": 92, "kn_r": 92,
				"sh_l": Vector2(85, 6), "sh_r": Vector2(85, 6), "el_l": 8, "el_r": 8},
		},
		{
			"id": "lunge", "name": "Напад", "reps": 8, "alternate": true,
			"cue": "Голяма крачка напред, задното коляно към пода, тежестта на предния крак.",
			"muscles": [Mannequin.QUAD, Mannequin.GLUTE, Mannequin.HAM, Mannequin.CALF, Mannequin.ABS],
			"down": 1.5, "hold": 1.4, "up": 1.3, "rest": 0.7,
			"a": {"sh_l": Vector2(0, 8), "sh_r": Vector2(0, 8), "el_l": 15, "el_r": 15},
			"b": {"lean": 4, "hip_l": Vector2(88, 0), "kn_l": 92, "hip_r": Vector2(-8, 0), "kn_r": 100, "ft_r": 45,
				"sh_l": Vector2(0, 14), "sh_r": Vector2(0, 14), "el_l": 20, "el_r": 20},
		},
		{
			"id": "curl", "name": "Бицепс сгъване", "reps": 10,
			"cue": "Лактите до тялото, вдигни дланите до раменете бавно. Задръж горе.",
			"muscles": [Mannequin.ARMS, Mannequin.CHEST, Mannequin.ABS],
			"down": 1.4, "hold": 1.4, "up": 1.6, "rest": 0.5,
			"a": {"sh_l": Vector2(4, 6), "sh_r": Vector2(4, 6), "el_l": 8, "el_r": 8, "hip_l": Vector2(0, 6), "hip_r": Vector2(0, 6)},
			"b": {"sh_l": Vector2(12, 6), "sh_r": Vector2(12, 6), "el_l": 128, "el_r": 128, "hip_l": Vector2(0, 6), "hip_r": Vector2(0, 6),
				"kn_l": 8, "kn_r": 8},
		},
		{
			"id": "punch", "name": "Прави удари", "reps": 24, "alternate": true, "targets": true,
			"clips": ["Punch_Jab", "Punch_Cross"],
			"cue": "Удряй светлите цели с бърз прав удар и връщай ръката в гард.",
			"muscles": [Mannequin.ARMS, Mannequin.CHEST, Mannequin.TRAPS, Mannequin.ABS, Mannequin.BACK],
			"down": 0.22, "hold": 0.18, "up": 0.3, "rest": 0.25,
			"a": {"sh_l": Vector2(40, 18), "sh_r": Vector2(40, 18), "el_l": 125, "el_r": 125, "hip_l": Vector2(6, 8),
				"hip_r": Vector2(-4, 8), "kn_l": 14, "kn_r": 14, "twist": 0},
			"b": {"sh_l": Vector2(88, 2), "sh_r": Vector2(40, 18), "el_l": 4, "el_r": 125, "hip_l": Vector2(6, 8),
				"hip_r": Vector2(-4, 8), "kn_l": 14, "kn_r": 14, "twist": -16},
		},
	]


## Mirror a pose left ↔ right (alternating exercises).
static func mirror(p: Dictionary) -> Dictionary:
	var out := {}
	for k in p.keys():
		var v = p[k]
		if k.ends_with("_l"):
			out[k.left(-2) + "_r"] = v
		elif k.ends_with("_r"):
			out[k.left(-2) + "_l"] = v
		elif k == "twist":
			out[k] = -v
		else:
			out[k] = v
	return out


static func rep_length(e: Dictionary) -> float:
	return e.down + e.hold + e.up + e.rest


## Where in a rep we are: t = 0..1 towards pose b, impulse = 0..1 (the EMS hold), rep index.
static func phase(e: Dictionary, time: float) -> Dictionary:
	var L := rep_length(e)
	var rep := int(floor(time / L))
	var x := fmod(time, L)
	var t := 0.0
	var impulse := 0.0
	if x < e.down:
		t = ease_in_out(x / e.down)
		impulse = clamp((x - e.down * 0.7) / (e.down * 0.3), 0.0, 1.0)
	elif x < e.down + e.hold:
		t = 1.0
		impulse = 1.0
	elif x < e.down + e.hold + e.up:
		t = 1.0 - ease_in_out((x - e.down - e.hold) / e.up)
		impulse = clamp(1.0 - (x - e.down - e.hold) / (e.up * 0.3), 0.0, 1.0)
	return {"t": t, "impulse": impulse, "rep": rep, "in_hold": x >= e.down and x < e.down + e.hold}


static func ease_in_out(x: float) -> float:
	x = clamp(x, 0.0, 1.0)
	return x * x * (3.0 - 2.0 * x)


## The pose at `time` (alternating exercises switch sides every rep).
static func pose_at(e: Dictionary, time: float) -> Dictionary:
	var ph := phase(e, time)
	var a: Dictionary = e.a
	var b: Dictionary = e.b
	if e.get("alternate", false) and ph.rep % 2 == 1:
		a = mirror(a)
		b = mirror(b)
	return Mannequin.blend(a, b, ph.t)
