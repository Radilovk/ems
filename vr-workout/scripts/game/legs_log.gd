## The legs' flight recorder (owner 2026-11-10: "in the game the legs are bad, the app does far better — find why"):
## the last 60 s of what the game's own leg solve got and gave — each sensor gamepad's raw axes 0..5 and name, the
## headset (position, forward, up), the hands, the floor, the standing height, PadLegs' status / sides / layout, and
## the solved hips, knees, feet. Sent on request to the XEMS server (gzip, in parts) under a random 10-character
## code the game shows; scripts/vr-legs/pad_replay.py fetches it by the code and replays it through the same solve.
class_name LegsLog
extends RefCounted

const KEEP_S := 60.0
const URL := "https://license.biocode-bg.com/v1/vrlog"
const PART := 400 * 1024
const ALPHABET := "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"

var lines: Array[String] = []
var _t: Array[float] = []
var clock := 0.0
var code := ""                          # the code of the last upload ("" = none yet)
var sending := false
var _parts: Array = []
var _http: HTTPRequest
var _done: Callable


func _r(v: float) -> float:
	return snappedf(v, 0.0001)


func _v(v: Vector3) -> Array:
	return [_r(v.x), _r(v.y), _r(v.z)]


## Once a frame while the shin gamepads are there. xl: PadLegs.limbs() of this frame ({} if none).
func record(delta: float, pads: PadLegs, head: Transform3D, hands: Dictionary, floor_y: float, stand_h: float,
		xl: Dictionary) -> void:
	clock += delta
	var p := {}
	for id in pads.pads:
		var ax := []
		for i in 6:
			ax.append(_r(pads._axis(id, i)))
		p[str(id)] = {"a": ax, "n": Input.get_joy_name(id) if pads.sim.is_empty() else "sim", "lay": pads._layout(id),
			"side": pads.side.get(id, ""), "role": pads.role.get(id, "")}
	var o := {}
	if not xl.is_empty():
		for k in xl.pos:
			o[k] = _v(xl.pos[k])
		o["g"] = xl.get("ground", {})
	var line := {"t": _r(clock), "dt": _r(delta), "h": _v(head.origin), "hf": _v(-head.basis.z), "hu": _v(head.basis.y),
		"f": _r(floor_y), "sh": _r(stand_h), "st": pads.status, "p": p, "o": o}
	for sd in hands:
		line["hand_" + str(sd)] = _v(hands[sd])
	lines.append(JSON.stringify(line))
	_t.append(clock)
	while not _t.is_empty() and _t[0] < clock - KEEP_S:
		_t.pop_front()
		lines.pop_front()


func ready_to_send() -> bool:
	return lines.size() > 200 and not sending


## Send what is kept: gzip, parts of ≤ 400 KB, one after another. done(ok: bool, code: String) when finished.
func send(parent: Node, done: Callable) -> void:
	if not ready_to_send():
		return
	var rng := RandomNumberGenerator.new()
	rng.randomize()
	var c := ""
	for i in 10:
		c += ALPHABET[rng.randi_range(0, ALPHABET.length() - 1)]
	code = c
	var raw := ("\n".join(lines) + "\n").to_utf8_buffer()
	var gz := raw.compress(FileAccess.COMPRESSION_GZIP)
	_parts.clear()
	var i := 0
	while i < gz.size():
		_parts.append(gz.slice(i, mini(i + PART, gz.size())))
		i += PART
	if _http == null:
		_http = HTTPRequest.new()
		parent.add_child(_http)
		_http.request_completed.connect(_on_done)
	_done = done
	sending = true
	_next(0)


func _next(k: int) -> void:
	if k >= _parts.size():
		sending = false
		_done.call(true, code)
		return
	_http.set_meta("k", k)
	var url := "%s?id=%s&part=%d&parts=%d" % [URL, code, k, _parts.size()]
	var err := _http.request_raw(url, PackedStringArray(["Content-Type: application/gzip"]), HTTPClient.METHOD_POST, _parts[k])
	if err != OK:
		sending = false
		_done.call(false, code)


func _on_done(result: int, status: int, _headers: PackedStringArray, _body: PackedByteArray) -> void:
	if result != HTTPRequest.RESULT_SUCCESS or status != 200:
		sending = false
		_done.call(false, code)
		return
	_next(int(_http.get_meta("k")) + 1)
