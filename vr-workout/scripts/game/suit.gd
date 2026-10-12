## What the suit should feel, as events. The headset only reports; the tablet turns an event into impulses on the
## right channels (phase 2: UDP to the tablet). Here the events are built, logged and shown on the body map.
##
##   strike   a broken sphere: a short burst at STRIKE_HZ in the limb that broke it, normal strength
##   punish   a hit taken: STRIKE_HZ at PUNISH_AMP, falling over PUNISH_SEC to the base programme (BASE_HZ, normal
##            strength) — a sharp start and a smooth fall in both frequency and strength
## Zones: ARMS (upper body hit / hands), LEGS, TORSO (a hit on the head goes to belly, glutes and back).
class_name SuitLink
extends RefCounted

signal fired(ev: Dictionary)

var log: Array = []
var count_strike := 0
var count_punish := 0
var enabled := true


func strike(zone: int, side: int) -> Dictionary:
	count_strike += 1
	return _emit({"kind": "strike", "zone": zone, "side": side, "hz0": Defs.STRIKE_HZ, "hz1": Defs.STRIKE_HZ,
		"amp0": Defs.STRIKE_AMP, "amp1": Defs.STRIKE_AMP, "sec": Defs.STRIKE_SEC})


func punish(zone: int, side: int) -> Dictionary:
	count_punish += 1
	return _emit({"kind": "punish", "zone": zone, "side": side, "hz0": Defs.STRIKE_HZ, "hz1": Defs.BASE_HZ,
		"amp0": Defs.PUNISH_AMP, "amp1": 1.0, "sec": Defs.PUNISH_SEC})


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
