## The player's body as the game needs it: head, two hands, two knees, two feet, in the frame of the spot where they
## stand (floor = 0, −Z ahead). Head = the headset. Hands = whatever sees them now, picked again every frame: the
## controller while it is tracked, else the hand itself (hand tracking: put the controllers down and play with bare
## fists), else nothing — so a controller that wakes up, comes back into view or is picked up again is found on its own.
## Knees and feet, best first:
##   1. a controller strapped to an ankle — found on its own: a controller that stays low (< 55 cm) while the head is
##      up is a foot; lifted back to the hands it is a hand again. Real kicks and knees, measured. The hands then come
##      from hand tracking (the cameras), at the same time as the controllers (Meta multimodal).
##   2. Meta body tracking (XRBodyTracker "/user/body_tracker"; on Quest 3 the legs are estimated from the upper body,
##      so a real kick may not show).
## Without either (browser, desktop) the game trains the legs through what the headset always sees: squats (head
## height) and steps (head position).
class_name PlayerBody
extends RefCounted

const LIMBS := ["hand_l", "hand_r", "knee_l", "knee_r", "foot_l", "foot_r"]
const SIDES := {"hand_l": "left", "hand_r": "right"}

var cam: Node3D
var origin: Node3D
var hands: Dictionary = {}              # "left"/"right" -> XRController3D (desktop: a stand-in Node3D)
var head := Vector3(0, 1.7, 0)          # frame space
var head_prev := Vector3(0, 1.7, 0)
var pos := {}                           # limb -> Vector3 (frame space)
var speed := {}                         # limb -> m/s
var valid := {}                         # limb -> bool
var has_legs := false
var center := Vector3.ZERO              # where the player stood at calibration (x, z)
var stand_h := 1.7                      # head height standing
var fixed_h := 0.0                      # > 0: set by hand in the settings (eye height), not measured
var sim: Dictionary = {}                # desktop tests: limb/head -> Vector3 overrides (frame space)
var prev := {}                          # limb -> where it was the frame before (the game sweeps between the two)
var vpeak := {}                         # limb -> its peak speed in the last moment, m/s, unsmoothed (the power of a hit)
var runup := {}                         # limb -> metres of the current fast, unbroken motion (the swing's run-up)
var src := {"left": "none", "right": "none"}       # what tracks each hand now: controller · hand · none
var hand_xform := {"left": Transform3D(), "right": Transform3D()}   # world pose of each hand now (gloves follow it)
var changes: Array = []                 # [side, from, to] since the last frame: the game says it out loud
var feet_allowed := true                # the settings let a low controller become a foot
var on_foot := {"left": false, "right": false}    # this controller is strapped to a foot
var foot_xform := {"left": Transform3D(), "right": Transform3D()}  # world pose of a foot controller
var _low := {"left": 0.0, "right": 0.0}
var _high := {"left": 0.0, "right": 0.0}
const FOOT_LOW := 0.55                  # m above the floor: a controller held this low for FOOT_SEC is on a foot …
const FOOT_SEC := 1.5
const HAND_HIGH := 1.0                  # … and back in a hand once held above this for HAND_SEC
const HAND_SEC := 1.0
const KNEE_ABOVE_ANKLE := Vector3(0, 0.42, 0.04)
const RUN_V := 0.9                      # m/s: above this a limb is swinging (its run-up grows) …
const RUN_MAX := 1.2                    # … up to this; below RUN_V it starts again from nothing

const JOINT := {"knee_l": XRBodyTracker.JOINT_LEFT_LOWER_LEG, "knee_r": XRBodyTracker.JOINT_RIGHT_LOWER_LEG,
	"foot_l": XRBodyTracker.JOINT_LEFT_TOES, "foot_r": XRBodyTracker.JOINT_RIGHT_TOES}
# A fist from hand tracking: the middle knuckle, a little in front of the palm (where a glove's knuckles would be).
const KNUCKLE := XRHandTracker.HAND_JOINT_MIDDLE_FINGER_PHALANX_PROXIMAL


func setup(camera: Node3D, xr_origin: Node3D, hand_nodes: Dictionary) -> void:
	cam = camera
	origin = xr_origin
	hands = hand_nodes
	for l in LIMBS:
		pos[l] = Vector3.ZERO
		speed[l] = 0.0
		valid[l] = false


## Stand still, look ahead: this is "the middle" and "standing tall".
func calibrate() -> void:
	center = Vector3(head.x, 0.0, head.z)
	stand_h = fixed_h if fixed_h > 0.0 else clamp(head.y, 1.2, 2.1)


func lean() -> float:
	return head.x - center.x


func squat() -> float:                  # 1 = standing tall, 0.6 = deep squat
	return head.y / stand_h


var _seen := {}


func valid_before(l: String) -> bool:
	return _seen.get(l, false)


## Where a limb was a fraction `u` of the way through the last frame (0 = the frame before, 1 = now).
func at(l: String, u: float) -> Vector3:
	return (prev.get(l, pos[l]) as Vector3).lerp(pos[l], u)


## Both hands lost (controllers asleep / put down, hands out of view).
func no_hands() -> bool:
	return src.left == "none" and src.right == "none" and not sim.has("hand_l")


## A controller is strapped to a foot (real kicks).
func feet_on() -> bool:
	return on_foot.left or on_foot.right


## Watches the controllers: one that stays low while the head is up has been strapped to a foot.
func _watch_feet(side: String, delta: float) -> void:
	var c = hands.get(side)
	if not (c is XRController3D) or not (c as XRController3D).get_has_tracking_data():
		_low[side] = 0.0
		_high[side] = 0.0
		return
	var y: float = (c as XRController3D).global_position.y - (origin.global_position.y if origin else 0.0)
	var standing := head.y > 0.78 * stand_h
	if not on_foot[side]:
		_low[side] = _low[side] + delta if (feet_allowed and y < FOOT_LOW and standing) else 0.0
		if _low[side] >= FOOT_SEC:
			on_foot[side] = true
			_high[side] = 0.0
			changes.append([side, src[side], "foot"])
	else:
		_high[side] = _high[side] + delta if (y > HAND_HIGH or not feet_allowed) else 0.0
		if _high[side] >= HAND_SEC:
			on_foot[side] = false
			_low[side] = 0.0
			changes.append([side, "foot", "controller"])
	if on_foot[side]:
		foot_xform[side] = (c as XRController3D).global_transform


## The best source for one hand now: the controller while it is tracked, else the bare hand, else none.
func _hand_source(side: String) -> Array:
	var h: Node3D = hands.get(side)
	if h == null:
		return ["none", Transform3D()]
	if not (h is XRController3D):                     # desktop stand-in
		return ["controller" if h.visible else "none", h.global_transform]
	var c := h as XRController3D
	if c.get_has_tracking_data() and c.get_is_active() and not on_foot[side]:
		return ["controller", c.global_transform]
	var ht := XRServer.get_tracker("/user/hand_tracker/" + side) as XRHandTracker
	if ht and ht.has_tracking_data:
		var fl := ht.get_hand_joint_flags(KNUCKLE)
		if fl & XRHandTracker.HAND_JOINT_FLAG_POSITION_VALID:
			var palm := ht.get_hand_joint_transform(XRHandTracker.HAND_JOINT_PALM)
			var k := ht.get_hand_joint_transform(KNUCKLE)
			return ["hand", origin.global_transform * Transform3D(palm.basis, k.origin)]
	return ["none", Transform3D()]


## Once a frame (the samples come once a frame; the game sweeps between them in small steps).
func update(delta: float) -> void:
	head_prev = head
	changes.clear()
	var to_frame := Transform3D(Basis.IDENTITY, center).affine_inverse()
	var world_head: Vector3 = cam.global_position if cam else Vector3(0, 1.7, 0)
	head = world_head if not sim.has("head") else sim.head
	for side in ["left", "right"]:
		_watch_feet(side, delta)
		var hs := _hand_source(side)
		if hs[0] != src[side]:
			changes.append([side, src[side], hs[0]])
			src[side] = hs[0]
			_seen["hand_l" if side == "left" else "hand_r"] = false     # a jump between sources is not a punch
		hand_xform[side] = hs[1]
	var tracker := XRServer.get_tracker("/user/body_tracker") as XRBodyTracker
	var legs_ok := tracker != null and tracker.has_tracking_data and (tracker.body_flags & XRBodyTracker.BODY_FLAG_LOWER_BODY_SUPPORTED) != 0
	has_legs = legs_ok or sim.has("knee_l") or feet_on()
	var feet := _foot_map()
	for l in LIMBS:
		var p := Vector3.ZERO
		var ok := false
		if sim.has(l):
			p = sim[l]
			ok = true
		elif not l.begins_with("hand") and feet.has(l.substr(l.length() - 1)):
			var ankle: Vector3 = feet[l.substr(l.length() - 1)]
			p = ankle if l.begins_with("foot") else ankle + KNEE_ABOVE_ANKLE
			ok = true
		elif l.begins_with("hand"):
			var side: String = SIDES[l]
			if src[side] != "none":
				p = (hand_xform[side] as Transform3D).origin
				ok = true
		elif legs_ok:
			var j: int = JOINT[l]
			var fl := tracker.get_joint_flags(j)
			if fl & XRBodyTracker.JOINT_FLAG_POSITION_VALID:
				p = origin.global_transform * tracker.get_joint_transform(j).origin if origin else tracker.get_joint_transform(j).origin
				ok = true
		valid[l] = ok
		if not ok:
			_seen[l] = false
		if ok:
			var f := p if sim.has(l) else to_frame * p
			prev[l] = pos[l] if valid_before(l) else f
			if delta > 0.0:
				var step: float = f.distance_to(prev[l])
				var raw := step / delta
				speed[l] = lerpf(speed[l], raw, 0.6)    # a little smoothing: the legs are estimates
				if l.begins_with("hand") and src[SIDES[l]] == "controller":
					var c = hands.get(SIDES[l])
					if c is XRController3D and (c as XRController3D).get_pose() != null:
						raw = maxf(raw, (c as XRController3D).get_pose().linear_velocity.length())   # the controller's own
				vpeak[l] = maxf(raw, float(vpeak.get(l, 0.0)) - 40.0 * delta)                 # holds ~0.1 s
				runup[l] = minf(float(runup.get(l, 0.0)) + step, RUN_MAX) if raw >= RUN_V else 0.0
			pos[l] = f
			_seen[l] = true
	if not sim.has("head"):
		head = to_frame * world_head


## Which foot each strapped controller is on ("l"/"r" -> world ankle position): by where it is, not by its name.
func _foot_map() -> Dictionary:
	var out := {}
	var on: Array = []
	for side in ["left", "right"]:
		if on_foot[side]:
			on.append((foot_xform[side] as Transform3D).origin)
	if on.size() == 2:
		var a: Vector3 = on[0]
		var b: Vector3 = on[1]
		if a.x <= b.x:
			out = {"l": a, "r": b}
		else:
			out = {"l": b, "r": a}
	elif on.size() == 1:
		var p: Vector3 = on[0]
		out[("l" if p.x < head.x else "r")] = p                # (head is still in world space here)
	return out
