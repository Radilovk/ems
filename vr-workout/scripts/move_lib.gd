## The coach's moves, motion-captured (assets/moves/moves.json, built by convert/make_moves.py from CMU mocap and
## Quaternius UAL): per frame, each body role's world rotation relative to its rest pose and the pelvis position, in a
## figure that faces +Z with its left on +X. Coach plays them on any humanoid rig.
##   loops: idle · talk (gestures while explaining) · watch (arms folded) · guard (fighting stance, breathing)
##   moves: jab_l jab_r cross_l cross_r · knee_l knee_r · kick_l kick_r · lean_l lean_r (to his own side) · duck · yes
## marks.hit = the instant of contact (fist fully out, knee highest, foot furthest, head lowest / furthest aside).
class_name MoveLib
extends RefCounted

const PATH := "res://assets/moves/moves.json"

static var roles: Array = []
static var sources := {}               # src -> {pel_h, dir: {role: Vector3}}
static var clips := {}                 # name -> {fps, n, loop, marks, src, pel: PackedFloat32Array, rot: {role: PackedFloat32Array}}
static var _loaded := false


static func load_all() -> bool:
	if _loaded:
		return not clips.is_empty()
	_loaded = true
	var f := FileAccess.open(PATH, FileAccess.READ)
	if f == null:
		push_error("MoveLib: no " + PATH)
		return false
	var d = JSON.parse_string(f.get_as_text())
	if typeof(d) != TYPE_DICTIONARY:
		push_error("MoveLib: bad " + PATH)
		return false
	roles = d.roles
	for s in d.sources:
		var dirs := {}
		for r in d.sources[s].dir:
			var v: Array = d.sources[s].dir[r]
			dirs[r] = Vector3(v[0], v[1], v[2]).normalized()
		sources[s] = {"pel_h": float(d.sources[s].pel_h), "dir": dirs}
	for name in d.clips:
		var c: Dictionary = d.clips[name]
		var rot := {}
		for r in c.rot:
			rot[r] = PackedFloat32Array(c.rot[r])
		clips[name] = {"fps": float(c.fps), "n": int(c.n), "loop": bool(c.loop), "marks": c.marks, "src": c.src,
			"pel": PackedFloat32Array(c.pel), "rot": rot}
	return true


static func has(name: String) -> bool:
	return load_all() and clips.has(name)


static func length(name: String) -> float:
	if not has(name):
		return 0.0
	var c: Dictionary = clips[name]
	return (c.n - 1) / c.fps


## The instant of contact (s from the start), or half the clip.
static func hit(name: String) -> float:
	if not has(name):
		return 0.0
	return float(clips[name].marks.get("hit", length(name) * 0.5))


## {role: Quaternion (world delta from rest), "pel": Vector3 (source metres)} at `t` seconds (loops wrap).
static func sample(name: String, t: float) -> Dictionary:
	var c: Dictionary = clips[name]
	var n: int = c.n
	var x: float = t * c.fps
	x = fposmod(x, n - 1) if c.loop else clampf(x, 0.0, n - 1)
	var a := int(x)
	var b: int = min(a + 1, n - 1)
	var u := x - a
	var out := {}
	for r in roles:
		var q: PackedFloat32Array = c.rot[r]
		var qa := Quaternion(q[a * 4], q[a * 4 + 1], q[a * 4 + 2], q[a * 4 + 3])
		var qb := Quaternion(q[b * 4], q[b * 4 + 1], q[b * 4 + 2], q[b * 4 + 3])
		out[r] = qa.slerp(qb, u).normalized()
	var p: PackedFloat32Array = c.pel
	out["pel"] = Vector3(p[a * 3], p[a * 3 + 1], p[a * 3 + 2]).lerp(Vector3(p[b * 3], p[b * 3 + 1], p[b * 3 + 2]), u)
	return out


## a → b by w (0 = a).
static func mix(a: Dictionary, b: Dictionary, w: float) -> Dictionary:
	if w <= 0.0:
		return a
	if w >= 1.0:
		return b
	var out := {}
	for r in a:
		if r == "pel":
			out[r] = (a[r] as Vector3).lerp(b[r], w)
		else:
			out[r] = (a[r] as Quaternion).slerp(b[r], w)
	return out
