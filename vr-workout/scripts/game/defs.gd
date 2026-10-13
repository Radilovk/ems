## The rules of the game in one place: what flies at the player, how it must be answered, how hard each level is.
##
##   breakable (plasma spheres)   HAND (cyan) – fist, KNEE (violet) – knee, FOOT (orange) – foot
##   hazards (red striped beams)  DUCK – a bar across the body at head height → squat
##                                LEAN_L / LEAN_R – a pillar a little to the left / right → lean to the other side
## A breakable that is not broken, or a hazard that is not dodged, hits the player where it flies: head → torso/back
## (belly, glutes, back), upper body → arms, legs → legs. Those are the suit zones.
class_name Defs
extends RefCounted

enum Kind { HAND, KNEE, FOOT, DUCK, LEAN_L, LEAN_R }
enum Zone { ARMS, LEGS, TORSO }

const NAMES := {Kind.HAND: "РЪКА", Kind.KNEE: "КОЛЯНО", Kind.FOOT: "КРАК", Kind.DUCK: "КЛЕКНИ", Kind.LEAN_L: "НАКЛОНИ ВДЯСНО",
	Kind.LEAN_R: "НАКЛОНИ ВЛЯВО"}
const COLOR := {Kind.HAND: Color(0.15, 0.85, 1.0), Kind.KNEE: Color(0.72, 0.3, 1.0), Kind.FOOT: Color(1.0, 0.52, 0.08),
	Kind.DUCK: Color(1.0, 0.1, 0.12), Kind.LEAN_L: Color(1.0, 0.1, 0.12), Kind.LEAN_R: Color(1.0, 0.1, 0.12)}

# Where each kind meets the player (frame: floor under the player, −Z ahead). y is a fraction of the standing height
# for the upper body, metres for the legs. x = lateral spread (sign = side).
const CONTACT_Z := -0.5            # the plane a fist / knee / foot is expected to break it at
const MISS_Z := 0.0                # past this plane an unbroken element has hit the player
const HAND_Y := 0.80               # × standing height (≈ 1.35 m: chest)
const KNEE_Y := 0.52               # × standing height (≈ 0.9 m: a knee raised to the hip)
const FOOT_Y := 0.27               # × standing height (≈ 0.45 m: a low kick)
const DUCK_Y := 0.93               # × eye height: the bar's centre, right at the eyes; get the head ≈ 20 % lower to pass
const LEAN_X := 0.10               # the pillar's offset from the middle: lean to the other side by ≥ ~0.2 m

# Suit feel (relative strength 1.0 = what the row is set to; the tablet clamps with its absolute limits).
const BASE_HZ := 7.0
const STRIKE_HZ := 100.0
const STRIKE_SEC := 0.15
const STRIKE_AMP := 1.0
const PUNISH_AMP := 1.5
const PUNISH_SEC := 2.5

# One entry per level. speed m/s · gap = seconds between elements (min, max) · weights per Kind · count per level.
const LEVELS := [
	{"speed": 3.0, "gap": [2.4, 3.0], "count": 10, "w": {Kind.HAND: 1}},
	{"speed": 3.4, "gap": [2.0, 2.6], "count": 14, "w": {Kind.HAND: 3, Kind.FOOT: 1}},
	{"speed": 3.8, "gap": [1.8, 2.3], "count": 16, "w": {Kind.HAND: 3, Kind.FOOT: 2, Kind.KNEE: 1}},
	{"speed": 4.2, "gap": [1.6, 2.1], "count": 18, "w": {Kind.HAND: 3, Kind.FOOT: 2, Kind.KNEE: 2, Kind.DUCK: 1}},
	{"speed": 4.6, "gap": [1.4, 1.9], "count": 20, "w": {Kind.HAND: 3, Kind.FOOT: 2, Kind.KNEE: 2, Kind.DUCK: 1, Kind.LEAN_L: 1, Kind.LEAN_R: 1}},
	{"speed": 5.1, "gap": [1.2, 1.6], "count": 22, "w": {Kind.HAND: 3, Kind.FOOT: 2, Kind.KNEE: 2, Kind.DUCK: 2, Kind.LEAN_L: 2, Kind.LEAN_R: 2}},
	{"speed": 5.7, "gap": [1.0, 1.4], "count": 24, "w": {Kind.HAND: 3, Kind.FOOT: 3, Kind.KNEE: 3, Kind.DUCK: 2, Kind.LEAN_L: 2, Kind.LEAN_R: 2}},
	{"speed": 6.4, "gap": [0.8, 1.2], "count": 28, "w": {Kind.HAND: 3, Kind.FOOT: 3, Kind.KNEE: 3, Kind.DUCK: 3, Kind.LEAN_L: 3, Kind.LEAN_R: 3}},
]
const LEAD_SEC := 2.6              # how long an element is in sight before it reaches the player (slow levels)
const SPAWN_MAX := 7.0             # (a fast level shows things over a shorter way; see Game._spawn_dist)


static func is_hazard(k: int) -> bool:
	return k >= Kind.DUCK


## Which limb breaks which element.
static func limb_of(k: int) -> String:
	match k:
		Kind.HAND:
			return "hand"
		Kind.KNEE:
			return "knee"
		Kind.FOOT:
			return "foot"
	return ""
