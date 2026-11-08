## The learned leg prior (scripts/vr-legs/legs_prior.py, trained on CMU motion capture — real people, checked on people
## it never saw). What two shins and a headset can't tell by geometry: is a foot on the floor, where is the thigh,
## where are the hips. Input over the last 0.6 s (now, 0.1, 0.2, 0.4, 0.6 s ago): both shins in the body's frame,
## their vertical acceleration (as measured, never integrated: nothing to drift), the headset's height and velocity,
## the shins' turn speed. One network for both legs (the right mirrored). Weights: legs_prior_weights.gd (generated).
class_name LegsPrior
extends RefCounted

const Wt := preload("res://scripts/game/legs_prior_weights.gd")

var _w := []                            # PackedFloat32Array per layer (row = one output)
var _b := []
var _mu := PackedFloat32Array()
var _sd := PackedFloat32Array()
var _hist := {"l": [], "r": []}         # [time s, PackedFloat32Array(12)] newest last
var _uprev := {}
var _head_prev := Vector3.INF
var gnd := {"l": true, "r": true}


func _init() -> void:
	var c: Dictionary = Wt.get_script_constant_map()
	for k in 3:
		_w.append(PackedFloat32Array(c["W%d" % k]))
		_b.append(PackedFloat32Array(c["B%d" % k]))
	_mu = PackedFloat32Array(Wt.MU)
	_sd = PackedFloat32Array(Wt.SD)


func reset() -> void:
	_hist = {"l": [], "r": []}
	_uprev.clear()
	_head_prev = Vector3.INF
	gnd = {"l": true, "r": true}


func _forward(x: PackedFloat32Array) -> PackedFloat32Array:
	var h := PackedFloat32Array()
	h.resize(x.size())
	for i in x.size():
		h[i] = (x[i] - _mu[i]) / _sd[i]
	for k in 3:
		var shp: Array = Wt.SHAPE[k]
		var n_in: int = shp[0]
		var n_out: int = shp[1]
		var W: PackedFloat32Array = _w[k]
		var B: PackedFloat32Array = _b[k]
		var o := PackedFloat32Array()
		o.resize(n_out)
		for j in n_out:
			var s := B[j]
			var base := j * n_in
			for i in n_in:
				s += W[base + i] * h[i]
			o[j] = tanh(s) if k < 2 else s
		h = o
	return h


## Once a frame. U/A: shin direction and knee hinge per side (world); acc: vertical acceleration (g, offset removed)
## per side, or {} without it; head: eyes (world); S: eye height above the ankle standing; ankle_floor_y: the ankle's
## height standing (world y). Returns {"ground": {sd: bool}, "thigh": {sd: world dir}, "pc": hip centre (world)}.
func step(t: float, delta: float, U: Dictionary, A: Dictionary, acc: Dictionary, head: Vector3, S: float,
		ankle_floor_y: float) -> Dictionary:
	var bf := Vector3.ZERO
	for sd in ["l", "r"]:
		var f: Vector3 = (A[sd] as Vector3).cross(Vector3.UP)
		f.y = 0.0
		bf += f
	bf = bf.normalized() if bf.length() > 1e-6 else Vector3.FORWARD
	var left := Vector3.UP.cross(bf)
	var hv := Vector3.ZERO if _head_prev == Vector3.INF or delta <= 0.0 else (head - _head_prev) / delta
	_head_prev = head
	var w := {}
	for sd in ["l", "r"]:
		var u: Vector3 = U[sd]
		w[sd] = rad_to_deg(u.angle_to(_uprev[sd])) / delta if _uprev.has(sd) and delta > 0.0 else 0.0
		_uprev[sd] = u
	var has_acc := not acc.is_empty()
	var out := {"ground": {}, "thigh": {}, "pc": Vector3.ZERO}
	for pair in [["l", "r", 1.0], ["r", "l", -1.0]]:
		var sd: String = pair[0]
		var od: String = pair[1]
		var side: float = pair[2]
		var ut: Vector3 = U[sd]
		var uo: Vector3 = U[od]
		var sig := PackedFloat32Array([ut.dot(bf), side * ut.dot(left), ut.y, uo.dot(bf), side * uo.dot(left), uo.y,
			clampf(float(acc.get(sd, 0.0)), -4.0, 4.0), clampf(float(acc.get(od, 0.0)), -4.0, 4.0),
			(head.y - ankle_floor_y) / S - 1.0, hv.dot(bf) / 2.0, side * hv.dot(left) / 2.0, hv.y / 2.0])
		var h: Array = _hist[sd]
		h.append([t, sig])
		while h.size() > 2 and float(h[1][0]) < t - 0.7:
			h.pop_front()
		var x := PackedFloat32Array()
		for L in Wt.LAGS:                                  # the sample nearest to L/60 s ago
			var tt := t - float(L) / 60.0
			var best: Array = h[h.size() - 1]
			for e in h:
				if absf(float(e[0]) - tt) < absf(float(best[0]) - tt):
					best = e
			x.append_array(best[1])
		x.append_array(PackedFloat32Array([float(w[sd]) / 300.0, float(w[od]) / 300.0, 1.0 if has_acc else 0.0]))
		var o := _forward(x)
		var p := 1.0 / (1.0 + exp(-o[0]))
		gnd[sd] = p > 0.4 if gnd[sd] else p > 0.6
		out.ground[sd] = gnd[sd]
		var th := Vector3(o[1], o[2], o[3]).normalized()
		out.thigh[sd] = (th.x * bf + side * th.y * left + th.z * Vector3.UP).normalized()
		out.pc += (head + (o[4] * bf + side * o[5] * left + o[6] * Vector3.UP) * S) * 0.5
	return out
