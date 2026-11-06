## The legs from the XEMS Motion sensors (docs/xems-motion.md "VR legs"): the phone app "XEMS Движение" solves the
## pose from the sensors on the shins (and wrists, back) and sends knees and feet — relative to the head, in the body's
## own frame (forward, left, up) — with their speeds, ~50 times a second over the Wi-Fi.
## Finding each other: once a second this headset asks the whole Wi-Fi "XEMS-LEGS? <port>" (UDP broadcast to 47811);
## the phone answers by sending straight to this port. No pairing screen.
## Placing them: under the headset's own head (exact), turned with the head's heading (smoothed: a turn of the head
## alone does not swing the legs), scaled to the player's height, and moved forward by their speed × their age —
## like the controllers, predicted to "now" (capped at 60 ms).
class_name MotionLink
extends RefCounted

const ASK_PORT := 47811
const KEYS := {"kl": "knee_l", "kr": "knee_r", "fl": "foot_l", "fr": "foot_r"}
const MAX_AGE := 0.3                    # s: older than this = no legs from here
const PREDICT_MAX := 0.06               # s

var udp := PacketPeerUDP.new()
var port := 0
var last: Dictionary = {}
var recv_ms := 0
var off_min := INF                      # phone clock − this clock, the smallest seen (the fastest packet)
var _ask_t := 0.0
var on := true                          # the settings may switch it off


func _bind() -> void:
	if OS.has_feature("web"):
		on = false                      # the browser has no UDP (the Quest app has)
		return
	for p in range(47812, 47820):
		if udp.bind(p) == OK:
			port = p
			udp.set_broadcast_enabled(true)
			return
	on = false


## Once a frame.
func poll(delta: float) -> void:
	if not on:
		return
	if port == 0:
		_bind()
		if not on:
			return
	_ask_t -= delta
	if _ask_t <= 0.0:
		_ask_t = 1.0
		udp.set_dest_address("255.255.255.255", ASK_PORT)
		udp.put_packet(("XEMS-LEGS? %d" % port).to_utf8_buffer())
	while udp.get_available_packet_count() > 0:
		var txt := udp.get_packet().get_string_from_utf8()
		var d = JSON.parse_string(txt)
		if typeof(d) != TYPE_DICTIONARY or int(d.get("v", 0)) != 1:
			continue
		var now := Time.get_ticks_msec()
		var off: float = float(d.get("t", 0)) - now
		off_min = minf(off_min + 0.02, off) if off_min != INF else off     # drifts up slowly, snaps to faster packets
		last = d
		last["_extra"] = maxf(0.0, (off - off_min)) / 1000.0              # this packet came that much later than the best
		recv_ms = now


func fresh() -> bool:
	return on and not last.is_empty() and (Time.get_ticks_msec() - recv_ms) / 1000.0 < MAX_AGE


## World positions of the knees and feet ({"knee_l": Vector3, …}) and their speeds (m/s), or {} without fresh data.
## head: the headset's world position; fwd: the body's heading (horizontal unit vector, world); stand_h: the player's
## head height standing (the game's calibration).
func limbs(head: Vector3, fwd: Vector3, stand_h: float) -> Dictionary:
	if not fresh():
		return {}
	var body_h: float = float(last.get("H", 1.75))
	var s: float = stand_h / maxf(0.5, 0.956 * body_h)                  # the phone's body → this player
	var left := Vector3.UP.cross(fwd).normalized()
	var age: float = clampf((Time.get_ticks_msec() - recv_ms) / 1000.0 + float(last.get("_extra", 0.0)) + 0.02, 0.0, PREDICT_MAX)
	var L: Dictionary = last.get("L", {})
	var V: Dictionary = last.get("V", {})
	var out := {"pos": {}, "speed": {}}
	for k in KEYS:
		if not L.has(k):
			continue
		var a: Array = L[k]
		var v: Array = V.get(k, [0, 0, 0])
		var p := fwd * float(a[0]) + left * float(a[1]) + Vector3.UP * float(a[2])
		var vv := fwd * float(v[0]) + left * float(v[1]) + Vector3.UP * float(v[2])
		out.pos[KEYS[k]] = head + (p + vv * age) * s
		out.speed[KEYS[k]] = vv.length() * s
	return out
