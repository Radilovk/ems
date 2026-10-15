## How hard a hit was: weak · medium · mighty, for every scenario (spheres, food). From two things the headset
## measures (owner, 2026-10: "the run-up's length and the speed"):
##   speed  – the fist's (knee's, foot's) peak speed at contact, m/s: the controller's own tracked velocity while it
##            is held (Quest reports it per frame), else from the positions;
##   run-up – how far it travelled in one fast, unbroken motion before contact (a long swing from the shoulder or
##            the hip vs a flick from the wrist), m.
## The energy of a punch grows with the square of its speed, so speed weighs most; a long run-up lifts a fast one into
## "mighty", a flick stays "weak" however quick. Typical fists in VR: a tap 1–2 m/s, a real jab 3–5, a full cross 6–9.
class_name Power
extends RefCounted

enum Tier { WEAK, MEDIUM, MIGHTY }

const NAMES := ["Слаб", "Среден", "МОЩЕН"]
const COLORS := [Color(0.75, 0.8, 0.85), Color(0.45, 0.95, 1.0), Color(1.0, 0.78, 0.25)]
# per limb: [speed that counts as 0, speed that counts as 1] (m/s) · [run-up 0, run-up 1] (m)
const SPEED := {"hand": [1.6, 6.5], "knee": [0.8, 3.5], "foot": [1.2, 5.5]}
const RUNUP := {"hand": [0.08, 0.45], "knee": [0.05, 0.3], "foot": [0.08, 0.5]}
const W_SPEED := 0.7
const MEDIUM_AT := 0.34
const MIGHTY_AT := 0.68
# What each tier does: points ×, burst size ×, the suit's strike (amplitude share, seconds — the tablet still clamps
# with its absolute limits; amplitude never below the tablet's gate, SuitLink.GATE).
const POINTS := [0.7, 1.0, 1.4]
const BURST := [0.55, 1.0, 1.75]
const STRIKE_AMP := [0.6, 0.85, 1.0]
const STRIKE_SEC := [0.1, 0.15, 0.24]


## limb: "hand" · "knee" · "foot" · v: peak speed m/s · runup: m. → {"tier", "k" 0…1, "kmh"}
static func of(limb: String, v: float, runup: float) -> Dictionary:
	var sp: Array = SPEED.get(limb, SPEED.hand)
	var ru: Array = RUNUP.get(limb, RUNUP.hand)
	var ks := clampf(inverse_lerp(sp[0], sp[1], v), 0.0, 1.0)
	var kr := clampf(inverse_lerp(ru[0], ru[1], runup), 0.0, 1.0)
	var k := W_SPEED * ks + (1.0 - W_SPEED) * kr
	var tier := Tier.WEAK
	if k >= MIGHTY_AT:
		tier = Tier.MIGHTY
	elif k >= MEDIUM_AT:
		tier = Tier.MEDIUM
	return {"tier": tier, "k": k, "kmh": v * 3.6}
