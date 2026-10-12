## The player's body as the game needs it: head, two hands, two knees, two feet, in the frame of the spot where they
## stand (floor = 0, −Z ahead). Hands = controllers; head = the headset; knees and feet = the Meta body tracking
## (XRBodyTracker "/user/body_tracker": on Quest 3 the legs are estimated from the upper body and the cameras).
## Without leg data (browser, desktop) the legs are simply missing and the game leaves out knees and feet.
class_name PlayerBody
extends RefCounted

const LIMBS := ["hand_l", "hand_r", "knee_l", "knee_r", "foot_l", "foot_r"]

var cam: Node3D
var origin: Node3D
var hands: Dictionary = {}              # "left"/"right" -> Node3D
var head := Vector3(0, 1.7, 0)          # frame space
var head_prev := Vector3(0, 1.7, 0)
var pos := {}                           # limb -> Vector3 (frame space)
var speed := {}                         # limb -> m/s
var valid := {}                         # limb -> bool
var has_legs := false
var center := Vector3.ZERO              # where the player stood at calibration (x, z)
var stand_h := 1.7                      # head height standing
var sim: Dictionary = {}                # desktop tests: limb/head -> Vector3 overrides (frame space)
var _prev := {}

const JOINT := {"knee_l": XRBodyTracker.JOINT_LEFT_LOWER_LEG, "knee_r": XRBodyTracker.JOINT_RIGHT_LOWER_LEG,
	"foot_l": XRBodyTracker.JOINT_LEFT_TOES, "foot_r": XRBodyTracker.JOINT_RIGHT_TOES}


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
	stand_h = clamp(head.y, 1.2, 2.1)


func lean() -> float:
	return head.x - center.x


func squat() -> float:                  # 1 = standing tall, 0.6 = deep squat
	return head.y / stand_h


func update(delta: float) -> void:
	head_prev = head
	var to_frame := Transform3D(Basis.IDENTITY, center).affine_inverse()
	var world_head: Vector3 = cam.global_position if cam else Vector3(0, 1.7, 0)
	head = world_head if not sim.has("head") else sim.head
	var tracker := XRServer.get_tracker("/user/body_tracker") as XRBodyTracker
	var legs_ok := tracker != null and tracker.has_tracking_data and (tracker.body_flags & XRBodyTracker.BODY_FLAG_LOWER_BODY_SUPPORTED) != 0
	has_legs = legs_ok or sim.has("knee_l")
	for l in LIMBS:
		var p := Vector3.ZERO
		var ok := false
		if sim.has(l):
			p = sim[l]
			ok = true
		elif l.begins_with("hand"):
			var h: Node3D = hands.get("left" if l.ends_with("_l") else "right")
			if h and h.visible:
				p = h.global_position
				ok = true
		elif legs_ok:
			var j: int = JOINT[l]
			var fl := tracker.get_joint_flags(j)
			if fl & XRBodyTracker.JOINT_FLAG_POSITION_VALID:
				p = origin.global_transform * tracker.get_joint_transform(j).origin if origin else tracker.get_joint_transform(j).origin
				ok = true
		valid[l] = ok
		if ok:
			var f := p if sim.has(l) else to_frame * p
			if _prev.has(l) and delta > 0.0:
				speed[l] = lerpf(speed[l], f.distance_to(_prev[l]) / delta, 0.6)    # a little smoothing: the legs are estimates
			pos[l] = f
			_prev[l] = f
	if not sim.has("head"):
		head = to_frame * world_head
