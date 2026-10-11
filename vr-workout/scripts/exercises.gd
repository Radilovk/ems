## The workout: what the coach shows, in what tempo, and which suit channels work.
## One rep = down (ease in) → hold (the EMS impulse: the suit contracts the muscles as you hold) → up → rest.
class_name Exercises
extends RefCounted



# A natural stance the exercises start from: soft knees, arms hanging relaxed, palms to the thighs.
const STAND := {"sh_l": Vector2(3, 7), "sh_r": Vector2(3, 7), "el_l": 12, "el_r": 12}

## Each exercise is a path of key poses from the start (key 0) to the bottom (last key), `at` = where each key falls
## in the way down (0..1). A key lists only what changes; the rest carries over from the key before. The way up runs
## the same path back unless `up_keys` says otherwise. `lag` delays a body part behind the pelvis (fraction of the
## move): arms and head follow the trunk, as they do in a person.
static func list() -> Array:
	return [
		{
			"id": "squat", "name": "Клек", "reps": 10,
			"cue": "Ханш назад, колене над пръстите, гърбът прав. Задръж долу, докато тече импулсът.",
			"muscles": [Mannequin.QUAD, Mannequin.HAM, Mannequin.GLUTE, Mannequin.ABS, Mannequin.LOWBACK],
			"down": 1.8, "hold": 1.6, "up": 1.4, "rest": 0.7,
			"lag": {"arms": 0.12, "head": 0.06},
			"at": [0.0, 0.3, 0.65, 1.0],
			"keys": [
				# Feet a little wider than the hips, toes out; knees follow the toes.
				STAND.merged({"foot_l": Vector3(0.05, 0, 0), "foot_r": Vector3(-0.05, 0, 0), "toe_l": 13, "toe_r": 13}),
				# The hips start it: back and a little down, the trunk hinges, the arms begin to rise.
				{"hips": Vector3(0, -0.07, -0.09), "tilt": 16, "head": 6, "sh_l": Vector2(40, 8), "sh_r": Vector2(40, 8),
					"el_l": 10, "el_r": 10},
				{"hips": Vector3(0, -0.27, -0.19), "tilt": 33, "head": 10, "sh_l": Vector2(100, 8), "sh_r": Vector2(100, 8),
					"el_l": 6, "el_r": 6},
				# Thighs parallel, shins forward over the toes, chest proud, arms level as a counterweight.
				{"hips": Vector3(0, -0.44, -0.23), "tilt": 42, "spine": -4, "head": 12, "sh_l": Vector2(126, 6),
					"sh_r": Vector2(126, 6), "el_l": 4, "el_r": 4},
			],
		},
		{
			"id": "lunge", "name": "Напад", "reps": 8, "alternate": true,
			"cue": "Голяма крачка напред, задното коляно към пода, тежестта на предния крак.",
			"muscles": [Mannequin.QUAD, Mannequin.GLUTE, Mannequin.HAM, Mannequin.CALF, Mannequin.ABS],
			"down": 1.9, "hold": 1.4, "up": 1.6, "rest": 0.7,
			"lag": {"arms": 0.08, "head": 0.04},
			"at": [0.0, 0.18, 0.42, 0.54, 0.64, 1.0],
			"keys": [
				STAND.merged({"sh_l": Vector2(3, 7), "sh_r": Vector2(3, 7)}),
				# Weight onto the back foot, the front foot peels off.
				{"hips": Vector3(-0.025, -0.01, 0.03), "foot_l": Vector3(0, 0.06, 0.08), "ft_l": 0},
				# Swing: the foot travels low, the pelvis follows it forward, the opposite arm swings.
				{"hips": Vector3(-0.01, -0.03, 0.16), "foot_l": Vector3(0.01, 0.07, 0.42), "ft_r": 12,
					"sh_l": Vector2(-10, 8), "sh_r": Vector2(18, 8), "el_r": 20},
				# Reach: the foot is out in front before it comes down (no skid on landing).
				{"hips": Vector3(0, -0.06, 0.26), "foot_l": Vector3(0.02, 0.03, 0.69), "ft_r": 28, "tilt": 3},
				# Plant: the heel lands first, the back heel rises, the pelvis is between the feet.
				{"hips": Vector3(0, -0.1, 0.32), "foot_l": Vector3(0.02, 0, 0.72), "ft_r": 38, "tilt": 4,
					"sh_l": Vector2(-4, 8), "sh_r": Vector2(10, 8), "el_r": 15},
				# Straight down: front shin about vertical, back knee a hand above the floor, trunk upright.
				{"hips": Vector3(0, -0.4, 0.33), "ft_r": 62, "tilt": 3, "head": 4, "sh_l": Vector2(0, 9),
					"sh_r": Vector2(4, 9), "el_l": 14, "el_r": 14},
			],
		},
		{
			"id": "curl", "name": "Бицепс сгъване", "reps": 10,
			"cue": "Лактите до тялото, вдигни дланите до раменете бавно. Задръж горе.",
			"muscles": [Mannequin.ARMS, Mannequin.CHEST, Mannequin.ABS],
			"down": 1.4, "hold": 1.4, "up": 1.8, "rest": 0.5,
			"lag": {"head": 0.0},
			"at": [0.0, 0.5, 1.0],
			"keys": [
				# Braced stance: soft knees, palms forward, elbows at the sides.
				{"hips": Vector3(0, -0.02, 0), "sh_l": Vector2(2, 9), "sh_r": Vector2(2, 9), "el_l": 8, "el_r": 8,
					"sup_l": 70, "sup_r": 70},
				{"el_l": 78, "el_r": 78, "sh_l": Vector2(5, 9), "sh_r": Vector2(5, 9)},
				# At the top the elbows drift a little forward; the trunk does not swing.
				{"el_l": 138, "el_r": 138, "sh_l": Vector2(16, 10), "sh_r": Vector2(16, 10), "tilt": -2},
			],
		},
		{
			"id": "punch", "name": "Прави удари", "reps": 24, "alternate": true, "mirror": "arms", "targets": true,
			"clips": ["Punch_Jab", "Punch_Cross"],
			"cue": "Удряй светлите цели с бърз прав удар и връщай ръката в гард.",
			"muscles": [Mannequin.ARMS, Mannequin.CHEST, Mannequin.TRAPS, Mannequin.ABS, Mannequin.BACK],
			"down": 0.22, "hold": 0.18, "up": 0.3, "rest": 0.25,
			"lag": {"arms": 0.15},
			"at": [0.0, 1.0],
			"keys": [
				# Guard (used only without the ready-made clips): staggered stance, fists by the chin.
				{"foot_l": Vector3(0.02, 0, 0.12), "foot_r": Vector3(-0.03, 0, -0.12), "toe_r": 25, "hips": Vector3(0, -0.04, 0),
					"sh_l": Vector2(40, 18), "sh_r": Vector2(40, 18), "el_l": 125, "el_r": 125},
				# The punch starts in the back foot: heel turns, hips and chest rotate, then the arm extends.
				{"ft_r": 16, "yaw": -12, "twist": -10, "sh_l": Vector2(88, 2), "el_l": 4},
			],
		},
	]


## Mirror a pose left ↔ right (alternating exercises). only = "arms": swap the arms and the turn, keep the stance
## (jab and cross from the same guard).
static func mirror(p: Dictionary, only := "") -> Dictionary:
	var out := {}
	for k in p.keys():
		var v = p[k]
		if only == "arms" and _group(k) != "arms" and not k in ["twist", "yaw"]:
			out[k] = v
			continue
		if v is Vector3:
			v = Vector3(-v.x, v.y, v.z)
		if k.ends_with("_l"):
			out[k.left(-2) + "_r"] = v
		elif k.ends_with("_r"):
			out[k.left(-2) + "_l"] = v
		elif k in ["twist", "yaw", "roll"]:
			out[k] = -v
		else:
			out[k] = v
	return out


static func rep_length(e: Dictionary) -> float:
	return e.down + e.hold + e.up + e.rest


## Where in a rep we are: x = progress of the current move (down: 0→1, up: 1→0), t = the same eased,
## impulse = 0..1 (the EMS hold), rep index, and whether we are on the way up.
static func phase(e: Dictionary, time: float) -> Dictionary:
	var L := rep_length(e)
	var rep := int(floor(time / L))
	var x := fmod(time, L)
	var u := 0.0
	var up := false
	var impulse := 0.0
	if x < e.down:
		u = x / e.down
		impulse = clamp((x - e.down * 0.7) / (e.down * 0.3), 0.0, 1.0)
	elif x < e.down + e.hold:
		u = 1.0
		impulse = 1.0
	elif x < e.down + e.hold + e.up:
		u = (x - e.down - e.hold) / e.up
		up = true
		impulse = clamp(1.0 - (x - e.down - e.hold) / (e.up * 0.3), 0.0, 1.0)
	var t := (1.0 - smooth(u)) if up else smooth(u)
	return {"t": t, "u": u, "up": up, "impulse": impulse, "rep": rep, "in_hold": x >= e.down and x < e.down + e.hold}


## Minimum-jerk profile: how a person moves a limb from rest to rest (zero speed and acceleration at both ends).
static func smooth(x: float) -> float:
	x = clamp(x, 0.0, 1.0)
	return x * x * x * (10.0 - 15.0 * x + 6.0 * x * x)


static func _group(k: String) -> String:
	if k.begins_with("sh_") or k.begins_with("el_") or k.begins_with("sup_"):
		return "arms"
	if k == "head":
		return "head"
	return ""


## Full key poses (each key carries the previous one forward).
static func _keys(e: Dictionary, name := "keys") -> Array:
	var cache := "_" + name
	if e.has(cache):
		return e[cache]
	var out := []
	var cur := {}
	for k in e[name]:
		cur = cur.merged(k, true)
		out.append(cur.duplicate())
	var all := {}
	for k in out:
		for n in k.keys():
			all[n] = k[n]
	for k in out:                       # a value missing from the first keys is the standing zero
		for n in all.keys():
			if not k.has(n):
				var z = all[n]
				k[n] = Vector3.ZERO if z is Vector3 else (Vector2.ZERO if z is Vector2 else 0.0)
	e[cache] = out
	return out


## Monotone cubic through the keys (no overshoot: a planted foot stays planted, a peak stays the peak).
static func _curve(at: Array, vals: Array, x: float) -> float:
	var n := at.size()
	if x <= at[0]:
		return vals[0]
	if x >= at[n - 1]:
		return vals[n - 1]
	var i := 0
	while i < n - 2 and x > at[i + 1]:
		i += 1
	var m := []
	for j in n:
		var dl: float = 0.0 if j == 0 else (vals[j] - vals[j - 1]) / (at[j] - at[j - 1])
		var dr: float = 0.0 if j == n - 1 else (vals[j + 1] - vals[j]) / (at[j + 1] - at[j])
		m.append(0.0 if dl * dr <= 0.0 else 2.0 * dl * dr / (dl + dr))
	var h: float = at[i + 1] - at[i]
	var s: float = (x - at[i]) / h
	var s2 := s * s
	var s3 := s2 * s
	return (2 * s3 - 3 * s2 + 1) * vals[i] + (s3 - 2 * s2 + s) * h * m[i] \
		+ (-2 * s3 + 3 * s2) * vals[i + 1] + (s3 - s2) * h * m[i + 1]


static func _sample(at: Array, keys: Array, k: String, x: float):
	var v0 = keys[0][k]
	if v0 is Vector3 or v0 is Vector2:
		var comps := 3 if v0 is Vector3 else 2
		var r := []
		for c in comps:
			var vals := []
			for kk in keys:
				vals.append(kk[k][c])
			r.append(_curve(at, vals, x))
		return Vector3(r[0], r[1], r[2]) if comps == 3 else Vector2(r[0], r[1])
	var vals := []
	for kk in keys:
		vals.append(float(kk[k]))
	return _curve(at, vals, x)


## The pose at `time` (alternating exercises switch sides every rep). Down runs the key path forward, up runs it
## back; a lagging body part starts its share of the move later in both directions.
static func pose_at(e: Dictionary, time: float) -> Dictionary:
	var ph := phase(e, time)
	var keys := _keys(e)
	var at: Array = e.get("at", [])
	if at.size() != keys.size():
		at = []
		for i in keys.size():
			at.append(float(i) / max(keys.size() - 1, 1))
	var lag: Dictionary = e.get("lag", {})
	var p := {}
	for k in keys[0].keys():
		var l: float = lag.get(_group(k), 0.0)
		var x := smooth(clamp((ph.u - l) / (1.0 - l), 0.0, 1.0))
		p[k] = _sample(at, keys, k, 1.0 - x if ph.up else x)
	return _side(e, ph, p)


static func _side(e: Dictionary, ph: Dictionary, p: Dictionary) -> Dictionary:
	if e.get("alternate", false) and ph.rep % 2 == 1:
		return mirror(p, e.get("mirror", ""))
	return p
