## The rules of the game in one place: what flies at the player, how it must be answered, how hard each level is.
##
##   breakable (plasma spheres)   HAND (cyan) – fist, KNEE (violet) – knee, FOOT (orange) – foot,
##                                LOW (green) – a fist, but low: only a squat brings the fist down to it
##   shield (pink hexagon)        BLOCK – flies at the face: both fists up together in front of it (a guard)
## Fists may carry an arrow (from level 4): the punch must travel that way — straight, a hook from either side or an
## uppercut (FitXR / Les Mills style punch types).
##   hazards (red striped beams)  DUCK – a bar across the body at head height → squat
##                                LEAN_L / LEAN_R – a pillar a little to the left / right → lean to the other side
##                                WALL_L / WALL_R – a wall over one half of the body → step to the other side
## KNEE / FOOT need the legs tracked (Meta body tracking); LOW and the walls are the legs' work the headset always sees
## (head height and head position), so the legs train in the browser too.
## A breakable that is not broken, or a hazard that is not dodged, hits the player where it flies: head → torso/back
## (belly, glutes, back), upper body → arms, legs → legs. Those are the suit zones.
class_name Defs
extends RefCounted

enum Kind { HAND, KNEE, FOOT, LOW, BLOCK, DUCK, LEAN_L, LEAN_R, WALL_L, WALL_R }
enum Zone { ARMS, LEGS, TORSO }

const NAMES := {Kind.HAND: "РЪКА", Kind.KNEE: "КОЛЯНО", Kind.FOOT: "КРАК", Kind.LOW: "КЛЕК + УДАР", Kind.BLOCK: "БЛОК", Kind.DUCK: "КЛЕКНИ",
	Kind.LEAN_L: "НАКЛОНИ ВДЯСНО", Kind.LEAN_R: "НАКЛОНИ ВЛЯВО", Kind.WALL_L: "СТЪПИ ВДЯСНО", Kind.WALL_R: "СТЪПИ ВЛЯВО"}
const RED := Color(1.0, 0.1, 0.12)
const COLOR := {Kind.HAND: Color(0.15, 0.85, 1.0), Kind.KNEE: Color(0.72, 0.3, 1.0), Kind.FOOT: Color(1.0, 0.52, 0.08),
	Kind.LOW: Color(0.25, 1.0, 0.45), Kind.BLOCK: Color(1.0, 0.4, 0.75), Kind.DUCK: RED, Kind.LEAN_L: RED, Kind.LEAN_R: RED, Kind.WALL_L: RED, Kind.WALL_R: RED}

# Where each kind meets the player (frame: floor under the player, −Z ahead). y is a fraction of the standing height
# for the upper body, metres for the legs. x = lateral spread (sign = side).
const CONTACT_Z := -0.5            # the plane a fist / knee / foot is expected to break it at
const MISS_Z := 0.0                # past this plane an unbroken element has hit the player
const HAND_Y := 0.80               # × standing height (≈ 1.35 m: chest)
const KNEE_Y := 0.52               # × standing height (≈ 0.9 m: a knee raised to the hip)
const FOOT_Y := 0.27               # × standing height (≈ 0.45 m: a low kick)
const DUCK_Y := 0.93               # × eye height: the bar's centre, right at the eyes; get the head ≈ 20 % lower to pass
const LEAN_X := 0.10               # the pillar's offset from the middle: lean to the other side by ≥ ~0.2 m
const LOW_Y := 0.55                # × standing height (≈ 0.93 m): a fist down there needs a squat …
const LOW_SQUAT := 0.86            # … the head at ≤ 86 % of its standing height when the fist lands, or it does not break
const WALL_W := 1.5                # a wall's width; its inner edge is WALL_IN past the middle: one step (≈ 0.3 m) clears it
const WALL_IN := 0.08
const BLOCK_Z := -0.35             # a shield is judged when it reaches this plane, in front of the face
const BLOCK_R := 0.3               # both fists within this of the guard spot (in front of the chin)
const PUNCH := {"jab": Vector3(0, 0, -1), "hook_l": Vector3(1, 0, 0), "hook_r": Vector3(-1, 0, 0), "upper": Vector3(0, 1, 0)}
const PUNCH_DOT := 0.4             # the fist's motion must point this much along the arrow

# Suit feel (relative strength 1.0 = what the row is set to; the tablet clamps with its absolute limits).
const BASE_HZ := 7.0
const STRIKE_HZ := 100.0
const STRIKE_SEC := 0.15
const STRIKE_AMP := 1.0
const PUNISH_AMP := 1.5
const PUNISH_SEC := 2.5

# One entry per level. speed m/s · gap = seconds between elements (min, max) · weights per Kind · count per level ·
# pat = the share of moments that are a combination (a pair, a 1-2, a run, squat-and-punch …) instead of one thing.
# KNEE / FOOT weights go to LOW when the legs are not tracked (the legs still work, the way the headset can see).
const LEVELS := [
	{"speed": 3.0, "gap": [2.4, 3.0], "count": 10, "pat": 0.0, "w": {Kind.HAND: 1}},
	{"speed": 3.4, "gap": [2.0, 2.6], "count": 14, "pat": 0.1, "w": {Kind.HAND: 3, Kind.LOW: 1, Kind.FOOT: 1}},
	{"speed": 3.8, "gap": [1.8, 2.3], "count": 16, "pat": 0.2, "w": {Kind.HAND: 3, Kind.FOOT: 2, Kind.KNEE: 1, Kind.LOW: 1, Kind.DUCK: 1}},
	{"speed": 4.2, "gap": [1.6, 2.1], "count": 18, "pat": 0.25, "w": {Kind.HAND: 3, Kind.FOOT: 2, Kind.KNEE: 2, Kind.LOW: 1, Kind.DUCK: 1, Kind.LEAN_L: 1, Kind.LEAN_R: 1}},
	{"speed": 4.6, "gap": [1.4, 1.9], "count": 20, "pat": 0.3, "w": {Kind.HAND: 3, Kind.FOOT: 2, Kind.KNEE: 2, Kind.LOW: 2, Kind.DUCK: 1, Kind.LEAN_L: 1, Kind.LEAN_R: 1, Kind.WALL_L: 1, Kind.WALL_R: 1}},
	{"speed": 5.1, "gap": [1.2, 1.6], "count": 22, "pat": 0.35, "w": {Kind.HAND: 3, Kind.FOOT: 2, Kind.KNEE: 2, Kind.LOW: 2, Kind.DUCK: 2, Kind.LEAN_L: 2, Kind.LEAN_R: 2, Kind.WALL_L: 1, Kind.WALL_R: 1}},
	{"speed": 5.7, "gap": [1.0, 1.4], "count": 24, "pat": 0.4, "w": {Kind.HAND: 3, Kind.FOOT: 3, Kind.KNEE: 3, Kind.LOW: 2, Kind.DUCK: 2, Kind.LEAN_L: 2, Kind.LEAN_R: 2, Kind.WALL_L: 2, Kind.WALL_R: 2}},
	{"speed": 6.4, "gap": [0.8, 1.2], "count": 28, "pat": 0.45, "w": {Kind.HAND: 3, Kind.FOOT: 3, Kind.KNEE: 3, Kind.LOW: 3, Kind.DUCK: 3, Kind.LEAN_L: 3, Kind.LEAN_R: 3, Kind.WALL_L: 2, Kind.WALL_R: 2}},
]
const LEAD_SEC := 2.6              # how long an element is in sight before it reaches the player (slow levels)
const SPAWN_MAX := 7.0             # (a fast level shows things over a shorter way; see Game._spawn_dist)


static func is_hazard(k: int) -> bool:
	return k >= Kind.DUCK


## Which limb breaks which element.
static func limb_of(k: int) -> String:
	match k:
		Kind.HAND, Kind.LOW:
			return "hand"
		Kind.KNEE:
			return "knee"
		Kind.FOOT:
			return "foot"
	return ""


## The suit zone a kind works (and is punished on).
static func zone_of(k: int) -> int:
	match k:
		Kind.HAND:
			return Zone.ARMS
		Kind.KNEE, Kind.FOOT, Kind.LOW, Kind.WALL_L, Kind.WALL_R:
			return Zone.LEGS
		Kind.BLOCK:
			return Zone.ARMS
	return Zone.TORSO


## Timing on the beat: how far from its beat a sphere was broken (s) → the word and the points factor.
const TIMING := [[0.07, "Перфектно", 1.5, Color(1.0, 0.86, 0.3)], [0.15, "Чудесно", 1.2, Color(0.4, 0.95, 1.0)],
	[INF, "Добре", 1.0, Color(0.9, 0.95, 1.0)]]


static func timing(err: float) -> Array:
	for t in TIMING:
		if absf(err) <= t[0]:
			return t
	return TIMING[-1]


## The combo multiplier: ×1 … ×4, one step every 8 in a row.
static func multiplier(combo: int) -> int:
	return clampi(1 + combo / 8, 1, 4)
