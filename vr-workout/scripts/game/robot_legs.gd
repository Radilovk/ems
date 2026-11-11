## The player's legs as an android's (owner 2026-11-11: "more futuristic legs — a robot, an android; use the android we
## have — the gloves look like a superhero's, the legs are plain"). The XEMS figure's android ("White Android Robot",
## Cedric Ricci, CC BY 4.0; rigged by convert/autorig.py) with its own skin: its thigh, calf, foot bones are put on
## the joints the legs' solve gives — each bone turned from its rest pose onto the segment (the knee's hinge keeps the
## front), stretched to the segment's length, scaled to the player — so the knee bends where the solve bends it, the
## android's own skinning makes the joint. Its pelvis and everything above dissolve (by the skin's weights, in the
## shader): the hands are the gloves, and from the eyes a pelvis would hide the legs (the trunk is not drawn). Its white panels are tinted to the
## gloves' suit (cyan plates, dark joints) and glow with the combo colour.
class_name RobotLegs
extends Node3D

const MODEL := preload("res://assets/robot/android.glb")
const REST_H := 1.7                     # the android's height (m)
var skel: Skeleton3D
var mat: ShaderMaterial
var _b := {}                            # name -> bone index
var _rest := {}                         # name -> rest global Transform3D (skeleton space, the model's own scale)


func _ready() -> void:
	var m := MODEL.instantiate() as Node3D
	add_child(m)
	top_level = true
	skel = m.find_children("*", "Skeleton3D", true, false)[0] as Skeleton3D
	for n in ["pelvis", "spine_01", "thigh_l", "calf_l", "foot_l", "ball_l", "thigh_r", "calf_r", "foot_r", "ball_r"]:
		_b[n] = skel.find_bone(n)
		_rest[n] = skel.get_bone_global_rest(_b[n])
	mat = ShaderMaterial.new()
	mat.shader = preload("res://shaders/robot.gdshader")
	for mi in m.find_children("*", "MeshInstance3D", true, false):
		var src := (mi as MeshInstance3D).mesh.surface_get_material(0) as BaseMaterial3D
		if src:
			mat.set_shader_parameter("albedo_tex", src.albedo_texture)
			mat.set_shader_parameter("normal_tex", src.normal_texture)
			mat.set_shader_parameter("orm_tex", src.metallic_texture)
		(mi as MeshInstance3D).material_override = mat
		var skin := (mi as MeshInstance3D).skin
		var mask := 0
		if skin:
			for i in skin.get_bind_count():
				var bn := String(skin.get_bind_name(i))
				if bn == "":
					bn = skel.get_bone_name(skin.get_bind_bone(i))
				if not (bn.begins_with("thigh") or bn.begins_with("calf") or bn.begins_with("foot") or bn.begins_with("ball")):
					mask |= 1 << i
		mat.set_shader_parameter("hide_mask", mask)
		(mi as MeshInstance3D).cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	visible = false


## Once a frame (world): per side {"hip", "knee", "ankle", "ahead" (where the foot points), "planted"}; size: the
## player's body height (m).
func pose(legs: Dictionary, size: float) -> void:
	visible = legs.has("l") and legs.has("r")
	if not visible:
		return
	global_transform = Transform3D.IDENTITY
	skel.global_transform = Transform3D.IDENTITY
	var s := size / REST_H
	# the pelvis between the hips, narrowed to their width, facing where the legs face (its own vertices dissolve in
	# the shader; this only keeps the thighs' tops, part pelvis, smooth); the trunk above collapses to a point
	var hl: Vector3 = legs.l.hip
	var hr: Vector3 = legs.r.hip
	var mid := (hl + hr) * 0.5
	var fz := Vector3.ZERO
	for sd in ["l", "r"]:
		var a: Vector3 = legs[sd].ahead
		fz += Vector3(a.x, 0.0, a.z)
	var across := hl - hr                             # the android's left is its +x
	fz = (fz - across * fz.dot(across) / maxf(across.length_squared(), 1e-6))
	fz = fz.normalized() if fz.length() > 0.1 else Vector3(0, 0, -1)
	var rest_w: float = ((_rest.thigh_l as Transform3D).origin - (_rest.thigh_r as Transform3D).origin).length()
	var yaw := Basis(Vector3.UP, Vector3(0, 0, 1).signed_angle_to(fz, Vector3.UP))
	var pr: Transform3D = _rest.pelvis
	var wide := clampf(across.length() / maxf(rest_w * s, 0.01), 0.3, 1.5)
	var pb := yaw * Basis.from_scale(Vector3(wide * s, s, s)) * pr.basis
	skel.set_bone_global_pose(_b.pelvis, Transform3D(pb, mid - pb * ((_rest.thigh_l as Transform3D).origin - pr.origin) * Vector3(0, 1, 0)))
	skel.set_bone_global_pose(_b.spine_01, Transform3D(Basis.from_scale(Vector3.ONE * 0.0001), mid))
	for sd in ["l", "r"]:
		var L: Dictionary = legs[sd]
		var hip: Vector3 = L.hip
		var knee: Vector3 = L.knee
		var ankle: Vector3 = L.ankle
		var ahead: Vector3 = L.ahead
		# the shin's frame: down the shin, its front where the foot points; the thigh's: its front from the knee's hinge
		var sdn := (ankle - knee).normalized()
		var sf := ahead - sdn * ahead.dot(sdn)
		if sf.length() < 0.15:
			sf = Vector3.UP - sdn * sdn.y
		sf = sf.normalized()
		var hinge := sdn.cross(sf)                    # the knee's axis (shin: down × front)
		var tdn := (knee - hip).normalized()
		var tf := hinge.cross(tdn)                    # standing: (down × fwd) × down = fwd
		if tf.length() < 0.15:
			tf = sf
		tf = tf.normalized()
		_aim("thigh_" + sd, "calf_" + sd, hip, tdn, tf, hip.distance_to(knee), s)
		_aim("calf_" + sd, "foot_" + sd, knee, sdn, sf, knee.distance_to(ankle), s)
		# the foot: planted → flat, turned to where it points; lifted → as it rests against the shin
		var fr: Transform3D = _rest["foot_" + sd]
		var R: Basis
		if bool(L.planted):
			var fa := Vector3(ahead.x, 0.0, ahead.z)
			fa = fa.normalized() if fa.length() > 0.1 else Vector3(0, 0, -1)
			R = Basis(Vector3.UP, Vector3(0, 0, 1).signed_angle_to(fa, Vector3.UP))   # the android's rest faces +z
		else:
			R = _frame(sdn, sf) * _frame(_down("calf_" + sd, "foot_" + sd), Vector3(0, 0, 1)).inverse()
		skel.set_bone_global_pose(_b["foot_" + sd], Transform3D(R * fr.basis * Basis.from_scale(Vector3.ONE * s), ankle))


## A bone turned from its rest onto a segment (down along it, its front), stretched to the segment's length.
func _aim(bone: String, child: String, at: Vector3, dn: Vector3, front: Vector3, length: float, s: float) -> void:
	var rd := _down(bone, child)
	var rest_len: float = ((_rest[child] as Transform3D).origin - (_rest[bone] as Transform3D).origin).length()
	var R := _frame(dn, front) * _frame(rd, Vector3(0, 0, 1)).inverse()
	var k := length / maxf(rest_len * s, 0.01)        # along the segment, on top of the player's scale
	var M := Basis(Vector3(s, 0, 0), Vector3(0, s, 0), Vector3(0, 0, s))
	for i in 3:                                       # M = s (I + (k − 1) d dᵀ)
		var e := Vector3.ZERO
		e[i] = 1.0
		M[i] = (e + dn * (k - 1.0) * dn[i]) * s
	skel.set_bone_global_pose(_b[bone], Transform3D(M * R * (_rest[bone] as Transform3D).basis, at))


func _down(bone: String, child: String) -> Vector3:
	return ((_rest[child] as Transform3D).origin - (_rest[bone] as Transform3D).origin).normalized()


## An orthonormal frame from a direction (its y = −down) and a front (its z).
static func _frame(down: Vector3, front: Vector3) -> Basis:
	var y := -down.normalized()
	var z := (front - y * front.dot(y)).normalized()
	return Basis(y.cross(z).normalized(), y, z)


## The combo colour on the plates' glow.
func glow(c: Color, energy: float) -> void:
	if mat:
		mat.set_shader_parameter("glow", c)
		mat.set_shader_parameter("glow_energy", energy)
