## What the suit should feel. The way to the suit today is the controllers' haptics: the XEMS OpenXR layer (vr-bridge)
## catches every xrApplyHapticFeedback and sends it to the tablet, which turns it into impulses on the row (manual
## mode, the owner's absolute limits always on top). So every suit event here is also a controller pulse — and the
## hands feel the same rhythm as the muscles.
##
##   strike   a broken sphere: one short burst in the hand on that side, strong enough for the tablet's gate
##            (amplitude ≥ 0.7 passes even when short; 150 ms)
##   punish   a hit taken: both hands, a continuous pulse that starts at full amplitude and falls over PUNISH_SEC to
##            the base level — a sharp start and a smooth fall (the frequency on the tablet follows the amplitude)
## Zones (ARMS / LEGS / TORSO) and the 100 Hz → 7 Hz curve are carried in the event for the body map and for the
## richer link to the tablet (phase 2: UDP with zone and frequency).
class_name SuitLink
extends RefCounted

signal fired(ev: Dictionary)

const STEP := 0.1                     # s between the pulses of a punishment (each lasts a little longer: no gaps)
const GATE := 0.45                    # the lowest amplitude sent (the tablet's noise gate drops < 0.4)

var log: Array = []
var count_strike := 0
var count_punish := 0
var enabled := true
var punish_sec := Defs.PUNISH_SEC       # the settings: soft (shorter) or strong
var hands := {}                       # "left"/"right" -> XRController3D (others are ignored: desktop, sim)
var _active: Array = []               # running punishments {ev, age, next}


func strike(zone: int, side: int) -> Dictionary:
	count_strike += 1
	var ev := _emit({"kind": "strike", "zone": zone, "side": side, "hz0": Defs.STRIKE_HZ, "hz1": Defs.STRIKE_HZ,
		"amp0": Defs.STRIKE_AMP, "amp1": Defs.STRIKE_AMP, "sec": Defs.STRIKE_SEC})
	_pulse("left" if side < 0 else "right", 0.85, Defs.STRIKE_SEC)
	return ev


func punish(zone: int, side: int) -> Dictionary:
	count_punish += 1
	var ev := _emit({"kind": "punish", "zone": zone, "side": side, "hz0": Defs.STRIKE_HZ, "hz1": Defs.BASE_HZ,
		"amp0": Defs.PUNISH_AMP, "amp1": 1.0, "sec": punish_sec})
	_active.append({"ev": ev, "age": 0.0, "next": 0.0})
	return ev


## Pause: every running punishment stops now, the controllers (and the suit) go quiet.
func stop_all() -> void:
	_active.clear()
	for side in ["left", "right"]:
		var c = hands.get(side)
		if c is XRController3D:
			(c as XRController3D).trigger_haptic_pulse("haptic", 0.0, 0.0, 0.01, 0.0)


## Once a frame: the running punishments send their next pulse.
func tick(delta: float) -> void:
	for a in _active.duplicate():
		a.age += delta
		if a.age >= a.ev.sec:
			_active.erase(a)
			continue
		if a.age >= a.next:
			a.next += STEP
			var env := envelope(a.ev, a.age)
			var amp: float = lerpf(1.0, GATE, (float(a.ev.amp0) - float(env.amp)) / (float(a.ev.amp0) - float(a.ev.amp1)))
			_pulse("left", amp, STEP * 1.4)
			_pulse("right", amp, STEP * 1.4)


func _pulse(side: String, amp: float, sec: float) -> void:
	if not enabled:
		return
	var c = hands.get(side)
	if c is XRController3D:
		(c as XRController3D).trigger_haptic_pulse("haptic", 0.0, clampf(amp, 0.0, 1.0), sec, 0.0)


func _emit(ev: Dictionary) -> Dictionary:
	ev["t"] = Time.get_ticks_msec() / 1000.0
	log.append(ev)
	if log.size() > 200:
		log.pop_front()
	if enabled:
		fired.emit(ev)
	return ev


## Frequency / strength of an event `age` seconds after it started (what the tablet plays back).
static func envelope(ev: Dictionary, age: float) -> Dictionary:
	var k: float = clamp(age / max(float(ev.sec), 0.001), 0.0, 1.0)
	var fall := 1.0 - pow(1.0 - k, 2.2) if ev.kind == "punish" else 0.0     # quick at first, then slow: ease-out
	return {"hz": lerpf(ev.hz0, ev.hz1, fall), "amp": lerpf(ev.amp0, ev.amp1, fall), "done": age >= ev.sec}
