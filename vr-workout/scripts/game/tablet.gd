## The game's own line to the XEMS tablet (vr-bridge protocol, UDP 47800): the impulse controls of the "Костюм" menu
## page and the wrist dock — whether the game drives the strength, the trainer's strength (the ceiling), the weakest
## hit, which hits pass, how fast the strength rises, which channels rest — and the tablet's answer: the strength in
## the suit now, the game's level, hits passed / dropped. The haptics themselves still go the bridge's way (the XEMS
## OpenXR layer); this only carries the settings. The tablet answers a game on the same headset (the same address as
## the layer it is paired with) and nobody else.
##   game → tablet  CTRL  (32 B): header, op u8, arg u8, reserved u16, value i32      — broadcast until the tablet answers
##   tablet → game  STATE (48 B): header, flags u8, sens u8, smooth u8, floor u8, rests u16, level u8, applied i8,
##                                ceiling i32, passed u32, dropped u32, reserved u32
## Mirror: vr-bridge/quest-layer/src/xems_wire.h, branding/…/wearable/vr/VrWire.java + VrControl.java.
class_name TabletLink
extends Node

signal state_changed

const PORT := 47800
const MAGIC := 0x48525658
const T_CTRL := 0x05
const T_STATE := 0x83
enum Op { QUERY, PAUSE, STRENGTH, FLOOR, SENS, SMOOTH, REST, RESET }
const F_LINKED := 1                    # the haptic layer is paired: the suit link works
const F_DRIVING := 2                   # the game drives the strength of a running row now
const F_PAUSED := 4                    # "the game drives the strength" switched off
const F_MUSIC := 8                     # the music player owns the strength; the game waits
const CHANNELS := ["Прасец", "Предно бедро", "Задно бедро", "Седалище", "Корем", "Кръст", "Гръб", "Трапец", "Гърди", "Ръце"]
const CHANNEL_INDEX := [3, 2, 9, 8, 1, 7, 6, 5, 0, 4]   # partsDisabled index per name above (the tablet's VrPanel order)

var enabled := false                   # UDP works here (not in the browser)
var tablet := ""                       # the tablet's address once it answered
var state := {}                        # the tablet's last answer (see STATE)
var _udp := PacketPeerUDP.new()
var _session := 0
var _seq := 0
var _next := 0.0
var _last_rx := -1000.0
var fast := false                      # the menu / dock is open: ask 4× a second, else every 2 s


func _ready() -> void:
	if OS.has_feature("web"):
		return
	_session = randi()
	_udp.set_broadcast_enabled(true)
	enabled = _udp.bind(0) == OK


func linked() -> bool:
	return enabled and _now() - _last_rx < 3.0


func flag(f: int) -> bool:
	return linked() and (int(state.get("flags", 0)) & f) != 0


func _now() -> float:
	return Time.get_ticks_msec() / 1000.0


func _process(delta: float) -> void:
	if not enabled:
		return
	while _udp.get_available_packet_count() > 0:
		var pkt := _udp.get_packet()
		_parse(pkt, _udp.get_packet_ip())
	_next -= delta
	if _next <= 0.0:
		_next = 0.25 if fast else 2.0
		send(Op.QUERY)


## One control to the tablet. The answer comes back as a STATE; until then the change is shown as done.
func send(op: int, arg := 0, value := 0) -> void:
	if not enabled:
		return
	var b := PackedByteArray()
	b.resize(32)
	b.encode_u32(0, MAGIC)
	b[4] = 1
	b[5] = T_CTRL
	b.encode_u16(6, 0)
	b.encode_u32(8, _session)
	b.encode_u32(12, _seq)
	_seq += 1
	b.encode_u64(16, Time.get_ticks_usec() * 1000)
	b[24] = op
	b[25] = arg
	b.encode_s32(28, value)
	_udp.set_dest_address(tablet if linked() else "255.255.255.255", PORT)
	_udp.put_packet(b)
	_optimistic(op, arg, value)


func _optimistic(op: int, arg: int, value: int) -> void:
	if state.is_empty():
		return
	match op:
		Op.PAUSE:
			state.flags = (int(state.flags) | F_PAUSED) if arg != 0 else (int(state.flags) & ~F_PAUSED)
		Op.STRENGTH:
			if int(state.ceiling) >= 0:
				state.ceiling = clampi(int(state.ceiling) + value, 1, 100)
		Op.FLOOR:
			state.floor = clampi(value, 0, 90)
		Op.SENS:
			state.sens = arg
		Op.SMOOTH:
			state.smooth = arg
		Op.REST:
			state.rests = (int(state.rests) | (1 << arg)) if value != 0 else (int(state.rests) & ~(1 << arg))
	state_changed.emit()


func _parse(p: PackedByteArray, ip: String) -> void:
	if p.size() < 48 or p.decode_u32(0) != MAGIC or p[4] != 1 or p[5] != T_STATE:
		return
	tablet = ip
	_last_rx = _now()
	var s := {"flags": p[24], "sens": p[25], "smooth": p[26], "floor": p[27], "rests": p.decode_u16(28),
		"level": p[30], "applied": p.decode_s8(31), "ceiling": p.decode_s32(32), "passed": p.decode_u32(36),
		"dropped": p.decode_u32(40)}
	var changed := s != state
	state = s
	if changed:
		state_changed.emit()


## Channel `i` of CHANNELS rests while VR drives.
func rests(i: int) -> bool:
	return (int(state.get("rests", 0)) & (1 << CHANNEL_INDEX[i])) != 0
