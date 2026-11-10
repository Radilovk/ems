## The learned leg prior (scripts/vr-legs/legs_prior.py, trained on CMU motion capture — real people, checked on people
## it never saw). What two shins and a headset can't tell by geometry: is a foot on the floor, where is the thigh,
## where are the hips. Input over the last 0.6 s (now, 0.1, 0.2, 0.4, 0.6 s ago): both shins in the body's frame,
## their vertical acceleration (as measured, never integrated: nothing to drift), the headset's height and velocity,
## the hands from the eyes (controllers / hand tracking; trained also without them), the shins' turn speed. One network for both legs (the right mirrored). Weights: legs_prior_weights.gd (generated).
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
# Personal teaching (owner 2026-11-09: sensors on the thighs for one session, then off): the network stays, only its
# last layer's thigh outputs are refitted to this person — ridge regression pulled toward the trained weights, from
# sums gathered every frame (no frames kept). Offline (legs_prior.py teach-last, 4 unseen people, 2–6 min of the
# same moves): knee 17.3 → 14.8 cm on their other moves. Kept on the headset.
const PERSONAL_PATH := "user://legs_personal.json"
const LAM := 3.0
var _last := {}                         # sd -> [h2 + 1 (PackedFloat64Array 65), bf, left, side]
var _tA := PackedFloat64Array()         # 65×65 Σ h hᵀ
var _tB := PackedFloat64Array()         # 65×6  Σ h tᵀ (the thigh 3 + the hips 3)
var teach_n := 0
var personal := PackedFloat64Array()    # 65×6: the thigh and hip outputs' weights + bias (empty: the trained ones)
const NP := 6


func _init() -> void:
	for a in [Wt.W0, Wt.W1, Wt.W2]:
		_w.append(PackedFloat32Array(a))
	for a in [Wt.B0, Wt.B1, Wt.B2]:
		_b.append(PackedFloat32Array(a))
	_mu = PackedFloat32Array(Wt.MU)
	_sd = PackedFloat32Array(Wt.SD)
	if FileAccess.file_exists(PERSONAL_PATH):
		var d = JSON.parse_string(FileAccess.get_file_as_string(PERSONAL_PATH))
		if typeof(d) == TYPE_ARRAY and (d as Array).size() == 65 * NP:
			personal = PackedFloat64Array(d)


func reset() -> void:
	_hist = {"l": [], "r": []}
	_uprev.clear()
	_head_prev = Vector3.INF
	gnd = {"l": true, "r": true}


var _h2 := PackedFloat32Array()         # the last forward's second hidden layer


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
		if k == 1:
			_h2 = o
		h = o
	if personal.size() == 65 * NP:                     # this person's thigh and hip outputs
		for j in NP:
			var s := personal[64 * NP + j]
			for i in 64:
				s += personal[i * NP + j] * _h2[i]
			h[1 + j] = s
	return h


## Once a frame. U/A: shin direction and knee hinge per side (world); acc: vertical acceleration (g, offset removed)
## per side, or {} without it; head: eyes (world); S: eye height above the ankle standing; ankle_floor_y: the ankle's
## height standing (world y). Returns {"ground": {sd: bool}, "thigh": {sd: world dir}, "pc": hip centre (world)}.
func step(t: float, delta: float, U: Dictionary, A: Dictionary, acc: Dictionary, head: Vector3, S: float,
		ankle_floor_y: float, hands := {}) -> Dictionary:
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
	var has_hands := hands.has("l") and hands.has("r")
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
		for hs in [sd, od]:                                # the hands from the eyes (zeros when not tracked)
			var hp: Vector3 = ((hands[hs] as Vector3) - head) / S if has_hands else Vector3.ZERO
			sig.append_array(PackedFloat32Array([hp.dot(bf), side * hp.dot(left), hp.y]))
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
		x.append_array(PackedFloat32Array([float(w[sd]) / 300.0, float(w[od]) / 300.0, 1.0 if has_acc else 0.0,
			1.0 if has_hands else 0.0]))
		var o := _forward(x)
		var hb := PackedFloat64Array()
		hb.resize(65)
		for i in 64:
			hb[i] = _h2[i]
		hb[64] = 1.0
		_last[sd] = [hb, bf, left, side, head, S, o]
		var p := 1.0 / (1.0 + exp(-o[0]))
		gnd[sd] = p > 0.4 if gnd[sd] else p > 0.6
		out.ground[sd] = gnd[sd]
		var th := Vector3(o[1], o[2], o[3]).normalized()
		out.thigh[sd] = (th.x * bf + side * th.y * left + th.z * Vector3.UP).normalized()
		out.pc += (head + (o[4] * bf + side * o[5] * left + o[6] * Vector3.UP) * S) * 0.5
	return out


## Teaching: the thigh as measured (hip → knee, world) and the hip centre if the legs fix it (else Vector3.INF) for
## the side of the last step(); gathers the sums.
func learn(sd: String, thigh: Vector3, pc := Vector3.INF) -> void:
	if not _last.has(sd):
		return
	var L: Array = _last[sd]
	var hb: PackedFloat64Array = L[0]
	var bf: Vector3 = L[1]
	var left: Vector3 = L[2]
	var side: float = L[3]
	var t := thigh.normalized()
	var o: PackedFloat32Array = L[6]
	var tb := [t.dot(bf), side * t.dot(left), t.y, o[4], o[5], o[6]]   # the hips: as now, unless measured
	if pc != Vector3.INF:
		var head: Vector3 = L[4]
		var S: float = L[5]
		var r := (pc - head) / S
		tb[3] = r.dot(bf)
		tb[4] = side * r.dot(left)
		tb[5] = r.y
	if _tA.is_empty():
		_tA.resize(65 * 65)
		_tB.resize(65 * NP)
	for i in 65:
		var hi := hb[i]
		for j in 65:
			_tA[i * 65 + j] += hi * hb[j]
		for j in NP:
			_tB[i * NP + j] += hi * float(tb[j])
	teach_n += 1


## Teaching done: solve (ΣhhᵀA + μI) W = ΣhtᵀB + μ W₀ (W₀ = the trained thigh weights), keep and save it.
func fit() -> bool:
	if teach_n < 1500:                               # ≥ ~10 s of both legs
		return false
	var mu := LAM * float(teach_n) / 1000.0
	var W2: PackedFloat32Array = _w[2]                 # row j = output j: [j * 64 + i]
	var B2: PackedFloat32Array = _b[2]
	var M := PackedFloat64Array()
	var C := 65 + NP
	M.resize(65 * C)                                   # [A | B] augmented, 65 rows × (65 + 6)
	for i in 65:
		for j in 65:
			M[i * C + j] = _tA[i * 65 + j] + (mu if i == j else 0.0)
		for j in NP:
			var w0 := float(B2[1 + j]) if i == 64 else float(W2[(1 + j) * 64 + i])
			M[i * C + 65 + j] = _tB[i * NP + j] + mu * w0
	for c in 65:                                       # Gauss–Jordan with partial pivoting
		var piv := c
		for r in range(c + 1, 65):
			if absf(M[r * C + c]) > absf(M[piv * C + c]):
				piv = r
		if absf(M[piv * C + c]) < 1e-12:
			return false
		if piv != c:
			for k in C:
				var tmp := M[c * C + k]
				M[c * C + k] = M[piv * C + k]
				M[piv * C + k] = tmp
		var d := M[c * C + c]
		for k in C:
			M[c * C + k] /= d
		for r in 65:
			if r != c:
				var f := M[r * C + c]
				if f != 0.0:
					for k in C:
						M[r * C + k] -= f * M[c * C + k]
	personal = PackedFloat64Array()
	personal.resize(65 * NP)
	for i in 65:
		for j in NP:
			personal[i * NP + j] = M[i * C + 65 + j]
	var f := FileAccess.open(PERSONAL_PATH, FileAccess.WRITE)
	if f:
		f.store_string(JSON.stringify(Array(personal)))
	_tA = PackedFloat64Array()
	_tB = PackedFloat64Array()
	teach_n = 0
	return true


func forget() -> void:
	personal = PackedFloat64Array()
	if FileAccess.file_exists(PERSONAL_PATH):
		DirAccess.remove_absolute(PERSONAL_PATH)
