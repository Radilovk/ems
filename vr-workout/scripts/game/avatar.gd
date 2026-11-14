## The player's own body as seen: sci-fi gloves on the hands (controller or bare hand — they follow whatever tracks
## the hand now), shin guards, knee pads and boots cut from the same glove model on the legs whenever the legs are
## known (ankle controllers or body tracking), light trails behind fists and feet that turn white-hot once fast enough to count, and a soft halo on the
## floor at each foot. The gloves glow cyan and flash magenta on a hit; the trails follow the combo multiplier: ×1 cyan ·
## ×2 green · ×3 magenta · ×4 gold.
class_name Avatar
extends Node3D

const MULT_COLORS := [Color(0.25, 0.85, 1.0), Color(0.3, 1.0, 0.5), Color(0.95, 0.3, 0.9), Color(1.0, 0.78, 0.25)]
const FOOT_COLOR := Color(1.0, 0.55, 0.15)

const GLOVE_SCENE := preload("res://assets/gloves/sci_fi_glove.gltf")
const GLOVE_GLOW := Color(0.25, 0.85, 1.0)      # cyan …
const GLOVE_HIT := Color(1.0, 0.22, 0.85)       # … magenta for a moment when the hand lands a hit
# The player's look (owner 2026-11-11: "cyan as now; white and black like the android; pink when women train"):
# gloves, plates, lights, the android's legs and the drawn ones. ×1 of the combo takes the look's glow.
const LOOKS := [
	{"name": "Циан", "plate": Color(0.12, 0.62, 0.78), "metal": 0.65, "rough": 0.28, "glow": Color(0.25, 0.85, 1.0),
		"hit": Color(1.0, 0.22, 0.85), "body": Color(0.07, 0.075, 0.09), "mech": Color(0.11, 0.12, 0.14), "tint": 1.0},
	{"name": "Бяло", "plate": Color(0.9, 0.91, 0.93), "metal": 0.15, "rough": 0.3, "glow": Color(0.72, 0.88, 1.0),
		"hit": Color(0.25, 0.85, 1.0), "body": Color(0.03, 0.03, 0.035), "mech": Color(0.08, 0.08, 0.09), "tint": 0.0},
	{"name": "Розово", "plate": Color(0.93, 0.4, 0.64), "metal": 0.55, "rough": 0.3, "glow": Color(1.0, 0.52, 0.84),
		"hit": Color(1.0, 0.84, 0.4), "body": Color(0.1, 0.05, 0.085), "mech": Color(0.15, 0.09, 0.13), "tint": 1.0},
]
var look: Dictionary = LOOKS[0]
var _leg_glows: Array[StandardMaterial3D] = []
const GLOVE_SCALE := 0.034                      # model units → metres (a hand about 19 cm wrist to fingertip)
const GLOVE_PALM := Vector3(-0.2, 0.06, 3.7)    # inside the fist, in model units: it sits on the grip
const KNUCKLE := Vector2(0.62, 3.9)             # the knuckle line in the model's (y, z): the fingers bend from here
const JOINTS := [Vector3(0.0, 1.62, -0.3),      # a punching fist, joint by joint: (where along the finger 0…1, bend in
		Vector3(0.43, 1.75, -0.22),              # radians, hinge height under the finger's middle): the knuckle 93°,
		Vector3(0.72, 1.2, -0.2)]                # the middle joint 100°, the last 69° — tight, the knuckles flat ahead
const THUMB_BASE := Vector3(-1.75, 0.3, 1.0)    # the thumb's root and its tip as modelled (pointing out to the side)
const THUMB_TIP := Vector3(-2.75, -0.5, 3.3)
const THUMB_IP := 1.5                           # its middle joint, along it from the root
const THUMB_KNEE := Vector3(-1.85, -1.35, 3.35) # where that joint goes: under the index finger's middle joint …
const THUMB_DOWN := Vector3(0.25, -0.75, 0.6)   # … the near half reaching there forward and down,
const THUMB_ACROSS := Vector3(1.0, -0.05, 0.15) # the far half lying across the index and middle fingers (a boxer's fist)

static var _glove_meshes := {}   # "plate"/"glow"/"body"/"mech" -> ArrayMesh, built once (blend shape 0 = "point")
static var _tip := Vector3.ZERO  # the pointing index fingertip in the left glove's frame (metres)
var gloves := {}                 # "left"/"right" -> Node3D
var _plate_mats := {}            # side -> StandardMaterial3D
var _glow_mats := {}             # side -> StandardMaterial3D
var _auras := {}                 # side -> {"mat": ShaderMaterial, "nodes": [aura meshes, halo], "light": OmniLight3D}
var _glove_body: StandardMaterial3D
var _glove_mech: StandardMaterial3D
var _legs := {}                  # "l"/"r" -> {"thigh", "joint", "pad", "shin", "boot", "halo"} (Node3D each)
var _leg_mats: Array[StandardMaterial3D] = []
var robot: RobotLegs             # the android's legs (the hips known: the sensors); the drawn suit legs otherwise
var robot_on := true
var trails := {}                 # limb -> Fx.Trail
var color: Color = MULT_COLORS[0]
var _target: Color = MULT_COLORS[0]
var _punch := {"left": 0.0, "right": 0.0}       # a short flare on the glove that just landed a hit
var _point := {"left": 0.0, "right": 0.0}       # 0 fist … 1 index finger out (pressing buttons), eased
var _point_want := {"left": false, "right": false}
var _glove_mis := {"left": [], "right": []}     # the glove's mesh instances (they carry the "point" blend shape)


func _ready() -> void:
	for side in ["left", "right"]:
		gloves[side] = _glove(side)
	for s in ["l", "r"]:
		_legs[s] = _leg()
	robot = RobotLegs.new()
	add_child(robot)
	for l in ["hand_l", "hand_r"]:
		trails[l] = _trail(MULT_COLORS[0], 0.04)
	for l in ["foot_l", "foot_r"]:
		trails[l] = _trail(FOOT_COLOR, 0.05)


func _trail(c: Color, w: float) -> Fx.Trail:
	var t := Fx.Trail.new(c, w)
	add_child(t)
	return t


func _unshaded(c: Color, add := false) -> StandardMaterial3D:
	var m := StandardMaterial3D.new()
	m.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	m.albedo_color = c
	if add:
		m.blend_mode = BaseMaterial3D.BLEND_MODE_ADD
	return m


## A sci-fi glove ("Sci-fi Glove" by Hirosin, CC BY): cyan armour plates on a dark glove with a long gauntlet, its light
## tubes and the disc on the back of the hand glow cyan, and on a hit the whole glove blooms magenta (a glow shell in its
## own shape, a halo and a light on what is near). The model's 35 parts are merged once into four meshes (plates · glow ·
## glove · wires), turned into the hand's grip frame (fingers ahead, thumb up, palm inward) with the palm on the grip;
## the right hand is the left one mirrored.
func _glove(side: String) -> Node3D:
	var g := Node3D.new()
	g.top_level = true
	add_child(g)
	if _glove_meshes.is_empty():
		_glove_meshes = _merge_glove()
	var plate := StandardMaterial3D.new()
	plate.albedo_color = Color(0.12, 0.62, 0.78)
	plate.metallic = 0.65
	plate.roughness = 0.28
	plate.rim_enabled = true
	plate.rim = 0.6
	plate.emission_enabled = true
	plate.emission = GLOVE_GLOW
	plate.emission_energy_multiplier = 0.15
	var glow := _unshaded(GLOVE_GLOW)
	_plate_mats[side] = plate
	_glow_mats[side] = glow
	if _glove_body == null:
		_glove_body = StandardMaterial3D.new()
		_glove_body.albedo_color = Color(0.07, 0.075, 0.09)
		_glove_body.metallic = 0.3
		_glove_body.roughness = 0.5
		_glove_body.rim_enabled = true
		_glove_body.rim = 0.4
		_glove_mech = StandardMaterial3D.new()
		_glove_mech.albedo_color = Color(0.11, 0.12, 0.14)
		_glove_mech.metallic = 0.8
		_glove_mech.roughness = 0.35
	var mats := {"plate": plate, "glow": glow, "body": _glove_body, "mech": _glove_mech}
	for k in _glove_meshes:
		var mi := MeshInstance3D.new()
		mi.mesh = _glove_meshes[k]
		mi.material_override = mats[k]
		mi.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
		if side == "right":
			mi.scale = Vector3(-1, 1, 1)                  # mirrored: Godot flips the faces itself
		g.add_child(mi)
		_glove_mis[side].append(mi)
	var aura := ShaderMaterial.new()                      # the glow on a hit: the glove's shape blooming
	aura.shader = preload("res://shaders/glove_aura.gdshader")
	aura.set_shader_parameter("color", GLOVE_HIT)
	var nodes: Array[Node3D] = []
	for k in ["plate", "body", "glow"]:
		var am := MeshInstance3D.new()
		am.mesh = _glove_meshes[k]
		am.material_override = aura
		am.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
		if side == "right":
			am.scale = Vector3(-1, 1, 1)
		g.add_child(am)
		nodes.append(am)
		_glove_mis[side].append(am)
	var halo := MeshInstance3D.new()                      # and a soft light round the fist, facing the eye
	var hq := QuadMesh.new()
	hq.size = Vector2(0.5, 0.5)
	halo.mesh = hq
	var hm := ShaderMaterial.new()
	hm.shader = preload("res://shaders/halo.gdshader")
	hm.set_shader_parameter("color", GLOVE_HIT)
	halo.material_override = hm
	halo.position = Vector3(0, 0, -0.04)
	g.add_child(halo)
	nodes.append(halo)
	var light := OmniLight3D.new()                        # that lights what is near: the arm, the floor, the target
	light.light_color = GLOVE_HIT
	light.omni_range = 1.4
	light.shadow_enabled = false
	light.position = Vector3(0, 0, -0.05)
	g.add_child(light)
	_auras[side] = {"mat": aura, "halo": hm, "nodes": nodes, "light": light}
	for n in nodes:
		n.visible = false
	light.visible = false
	g.visible = false
	return g


## The model's open hand closed into a fist (in model units, after rel puts the part in the model's space). Past the
## knuckle line each finger rolls down into the palm along an arc, about 250° whatever its length; the thumb bends at its
## two joints and lies across the curled index and middle fingers, outside them, as in a boxer's fist. Normals turn with the surface.
## point: the index finger stays out straight (pressing a button), the others curl as in the fist.
static func _fist(arrays: Array, rel: Transform3D, point := false) -> ArrayMesh:
	var verts: PackedVector3Array = arrays[Mesh.ARRAY_VERTEX]
	var norms: PackedVector3Array = arrays[Mesh.ARRAY_NORMAL]
	var d := Vector2(-0.33, 0.94).normalized()                # the fingers' axis in (y, z): they slope down a little
	var nrm := Vector2(d.y, -d.x)                             # up out of the back of the fingers
	var ta := (THUMB_TIP - THUMB_BASE).normalized()          # the thumb: root joint, then the middle joint
	var td := THUMB_DOWN.normalized()
	var tq1 := Quaternion(ta, td)
	var tq2 := Quaternion(ta, tq1.inverse() * THUMB_ACROSS.normalized())
	var tshift := THUMB_KNEE - td * THUMB_IP - THUMB_BASE
	for i in verts.size():
		var p: Vector3 = rel * verts[i]
		var nv: Vector3 = (rel.basis * norms[i]).normalized() if i < norms.size() else Vector3.UP
		var q := Vector2(p.y - KNUCKLE.x, p.z - KNUCKLE.y)
		var t := q.dot(d)
		var fg := _finger(p.x)                           # (root along, root up, slope, length) of this finger
		if point and t > fg.x and p.x < -0.75 and p.x > -1.68 and p.z > 3.3:   # the index finger, pointing: straight out,
			p.x += _finger_close(p.x) * smoothstep(-0.05, 0.5, t)       # only closed up to the middle finger
		elif t > fg.x and p.z > 3.3 and p.x > -1.68:         # (the thumb tip reaches past the knuckles too)
			var len: float = fg.w
			var h := q.dot(nrm)
			var root := Vector2(fg.x, fg.y)
			var at := (Vector2(t, h) - root).rotated(-fg.z)   # the finger's own (along, up) plane, from its root
			var along := at.x
			var turn := 0.0
			for j in range(JOINTS.size() - 1, -1, -1):    # the far joints first, then the near ones carry them
				var jt: float = JOINTS[j].x * len
				var k := smoothstep(jt - 0.1, jt + 0.1, along)
				if k <= 0.0:
					continue
				var ang: float = -JOINTS[j].y * k         # down, towards the palm
				var hinge := Vector2(jt, JOINTS[j].z)
				at = hinge + (at - hinge).rotated(ang)
				turn += ang
			at = root + at.rotated(fg.z)
			var w := KNUCKLE + d * at.x + nrm * at.y
			p = Vector3(p.x + _finger_close(p.x) * smoothstep(-0.05, 0.5, t), w.x, w.y)
			var n2 := Vector2(nv.y, nv.z)
			var nl := Vector2(n2.dot(d), n2.dot(nrm)).rotated(turn)
			var m := d * nl.x + nrm * nl.y
			nv = Vector3(nv.x, m.x, m.y)
		elif p.x < -1.5 and p.z > 0.8:
			var s := (p - THUMB_BASE).dot(ta)
			var kx := 1.0 - smoothstep(-1.9, -1.5, p.x)
			var k1 := smoothstep(0.2, 0.8, s) * kx
			var k2 := smoothstep(THUMB_IP - 0.15, THUMB_IP + 0.15, s) * kx
			if k1 > 0.0:
				var q2 := Quaternion.IDENTITY.slerp(tq2, k2)
				var q1 := Quaternion.IDENTITY.slerp(tq1, k1)
				var mid := THUMB_BASE + ta * THUMB_IP
				p = THUMB_BASE + tshift * k1 + q1 * (mid + q2 * (p - mid) - THUMB_BASE)
				nv = q1 * q2 * nv
		verts[i] = p
		if i < norms.size():
			norms[i] = nv
	var out := []
	out.resize(Mesh.ARRAY_MAX)
	out[Mesh.ARRAY_VERTEX] = verts
	out[Mesh.ARRAY_NORMAL] = norms
	out[Mesh.ARRAY_TEX_UV] = arrays[Mesh.ARRAY_TEX_UV]
	out[Mesh.ARRAY_INDEX] = arrays[Mesh.ARRAY_INDEX]
	var mesh := ArrayMesh.new()
	mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, out)
	return mesh


## Each finger by the model's x (index · middle · ring · little): where its root knuckle sits from the common
## knuckle line (along, up), how much steeper it points (radians) and root to tip. The little finger starts further
## back and lower and points down more, so it curls about its own root, not the others'.
static func _finger(x: float) -> Vector4:
	if x < -0.75:
		return Vector4(0.0, 0.0, 0.0, 2.4)
	if x < 0.25:
		return Vector4(0.0, 0.0, 0.0, 2.6)
	if x < 1.16:
		return Vector4(0.0, 0.0, 0.0, 2.2)
	return Vector4(-0.2, -0.15, -0.19, 1.58)


## How far each finger moves sideways to close the gaps of the open hand (index · middle · ring · little), so the
## fist's fingers lie side by side.
static func _finger_close(x: float) -> float:
	if x < -0.75:
		return 0.27
	if x < 0.25:
		return 0.0
	if x < 1.16:
		return -0.42
	return -0.56


## The glove model's parts, merged by kind into the left hand's grip frame. In the model the fingers point +z, the back
## of the hand +y and the thumb −x (a left hand); in the grip the fingers point −z, the palm +x and the thumb +y.
static func _merge_glove() -> Dictionary:
	var model := GLOVE_SCENE.instantiate() as Node3D
	var to_grip := Transform3D(Basis(Vector3(0, -1, 0), Vector3(-1, 0, 0), Vector3(0, 0, -1)).scaled(Vector3.ONE * GLOVE_SCALE), Vector3.ZERO) \
			* Transform3D(Basis.IDENTITY, -GLOVE_PALM)
	var tools := {}
	var stack: Array[Node] = [model]
	while not stack.is_empty():
		var n: Node = stack.pop_back()
		stack.append_array(n.get_children())
		if not n is MeshInstance3D:
			continue
		var mi := n as MeshInstance3D
		var rel := Transform3D.IDENTITY
		var up: Node = mi
		while up != model:
			rel = (up as Node3D).transform * rel
			up = up.get_parent()
		for i in mi.mesh.get_surface_count():
			var mat := mi.mesh.surface_get_material(i)
			var mname := mat.resource_name if mat else ""
			var kind := "mech"
			if mname.ends_with("PLate"):
				kind = "plate"
			elif mname.begins_with("Glow"):
				kind = "glow"
			elif mname.begins_with("Glove"):
				kind = "body"
			for v in ["fist", "point"]:
				var key: String = kind + "/" + v
				if not tools.has(key):
					var st := SurfaceTool.new()
					st.begin(Mesh.PRIMITIVE_TRIANGLES)
					tools[key] = st
				(tools[key] as SurfaceTool).append_from(_fist(mi.mesh.surface_get_arrays(i), rel, v == "point"), 0, to_grip)
	model.free()
	var out := {}
	var tip := Vector3(0, 0, INF)
	for key in tools:
		if not String(key).ends_with("/fist"):
			continue
		var kind: String = String(key).get_slice("/", 0)
		var a: Array = (tools[key] as SurfaceTool).commit_to_arrays()
		var b: Array = (tools[kind + "/point"] as SurfaceTool).commit_to_arrays()
		for p in (b[Mesh.ARRAY_VERTEX] as PackedVector3Array):         # the fingertip: the point furthest ahead
			if p.z < tip.z:
				tip = p
		var shape := []                                     # the same vertices, index finger out: a blend shape,
		shape.resize(Mesh.ARRAY_MAX)                        # so the finger lifts smoothly instead of popping
		shape[Mesh.ARRAY_VERTEX] = b[Mesh.ARRAY_VERTEX]
		shape[Mesh.ARRAY_NORMAL] = b[Mesh.ARRAY_NORMAL]
		if a[Mesh.ARRAY_TANGENT] != null:
			shape[Mesh.ARRAY_TANGENT] = b[Mesh.ARRAY_TANGENT]
		var m := ArrayMesh.new()
		m.blend_shape_mode = Mesh.BLEND_SHAPE_MODE_NORMALIZED
		m.add_blend_shape("point")
		m.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, a, [shape])
		out[kind] = m
	_tip = tip
	return out


## The legs (owner 2026-11-11: "the legs are drawn far too thin, the boots are big; think through how the thigh is
## drawn and where the knee bends"). A real leg's shape in the suit: the dark under-suit along the leg's own
## cross-sections (thigh 17 cm at the top, 10 at the knee; calf 11 cm bulging behind; ankle 6.5 cm), a ball joint
## exactly at the knee point the legs' solve gives (the thigh ends and the shin starts there: no gap, no kink at
## any bend), the cyan plates of the gloves on the shin bone and the thigh's front, a kneecap that rides round the
## joint as the knee bends, light lines down both sides, each thigh rounded off at the hip, the boot on the ankle.
## Built once for a 1.75 m body (part -> kind -> ArrayMesh), each limb along +y from 0 (lower joint) to 1 (upper),
## −z ahead; drawn stretched to the leg's length and scaled to the player's height.
static var _leg_meshes := {}
const REF_H := 1.75
# cross-sections (t along the segment, width, depth, back offset), metres for a 1.75 m body
const THIGH := [Vector4(-0.03, 0.098, 0.098, 0.0), Vector4(0.06, 0.106, 0.104, 0.0), Vector4(0.18, 0.118, 0.12, -0.004),
	Vector4(0.35, 0.136, 0.14, 0.0), Vector4(0.55, 0.150, 0.154, 0.004), Vector4(0.75, 0.160, 0.164, 0.008),
	Vector4(0.92, 0.168, 0.172, 0.012), Vector4(1.0, 0.166, 0.17, 0.014), Vector4(1.06, 0.15, 0.154, 0.014),
	Vector4(1.1, 0.115, 0.12, 0.012), Vector4(1.125, 0.06, 0.064, 0.01), Vector4(1.13, 0.0, 0.0, 0.01)]   # a low rounded top
const SHIN := [Vector4(-0.06, 0.064, 0.064, 0.004), Vector4(0.1, 0.07, 0.072, 0.006), Vector4(0.3, 0.082, 0.09, 0.016),
	Vector4(0.5, 0.098, 0.11, 0.024), Vector4(0.66, 0.108, 0.12, 0.026), Vector4(0.8, 0.106, 0.112, 0.02),
	Vector4(0.92, 0.1, 0.1, 0.01), Vector4(1.03, 0.096, 0.094, 0.004)]
const JOINT_R := 0.05                   # the knee's ball (the segments end in it)
const PAD_OUT := 0.046                  # the kneecap: this far in front of the joint


static func _build_legs() -> Dictionary:
	var tools := {}
	_boot(tools)
	for part in [["thigh", THIGH, 0.2, 0.97], ["shin", SHIN, 0.12, 0.86]]:
		var secs: Array = part[1]
		_limb(tools, part[0] + "/body", secs, -PI, PI, 0.0, 0.0)                       # the under-suit
		_limb(tools, part[0] + "/plate", _cut_secs(secs, part[2], part[3]), deg_to_rad(-150.0), deg_to_rad(-30.0), 0.007, 0.006)
		_limb(tools, part[0] + "/glow", _cut_secs(secs, 0.08, 0.94), deg_to_rad(-6.0), deg_to_rad(6.0), 0.004, 0.003, 1.0)   # outer line (+x)
		_limb(tools, part[0] + "/glow", _cut_secs(secs, 0.08, 0.94), deg_to_rad(174.0), deg_to_rad(186.0), 0.004, 0.003, 1.0) # inner line
	_limb(tools, "shin/plate", [Vector4(0.0, 0.07, 0.072, 0.006), Vector4(0.085, 0.072, 0.075, 0.008)], -PI, PI, 0.009, 0.0)   # the boot's cuff
	var ball := SphereMesh.new()
	ball.radius = JOINT_R
	ball.height = JOINT_R * 2.0
	_add(tools, "joint/body", ball, Transform3D.IDENTITY)
	var pad := SphereMesh.new()                       # the kneecap: a flattened shell, facing −z
	pad.radius = 0.04
	pad.height = 0.1
	_add(tools, "pad/plate", pad, Transform3D(Basis.from_scale(Vector3(1.0, 0.95, 0.42)), Vector3.ZERO))
	var disc := CylinderMesh.new()
	disc.top_radius = 0.014
	disc.bottom_radius = 0.014
	disc.height = 0.004
	_add(tools, "pad/glow", disc, Transform3D(Basis(Vector3.RIGHT, PI * 0.5), Vector3(0, 0.004, -0.017)))
	var ring := TorusMesh.new()
	ring.inner_radius = 0.019
	ring.outer_radius = 0.024
	_add(tools, "pad/glow", ring, Transform3D(Basis(Vector3.RIGHT, PI * 0.5), Vector3(0, 0.004, -0.0165)))
	var out := {}
	for key in tools:
		var kind := String(key).get_slice("/", 1)
		var part := String(key).get_slice("/", 0)
		if not out.has(part):
			out[part] = {}
		out[part][kind] = (tools[key] as SurfaceTool).commit()
	return out


static func _add(tools: Dictionary, key: String, mesh: Mesh, xf: Transform3D) -> void:
	var st: SurfaceTool = tools.get(key)
	if st == null:
		st = SurfaceTool.new()
		st.begin(Mesh.PRIMITIVE_TRIANGLES)
		tools[key] = st
	st.append_from(mesh, 0, xf)


## The sections between t0 and t1 (the ends interpolated).
static func _cut_secs(secs: Array, t0: float, t1: float) -> Array:
	var out := [_sec_at(secs, t0)]
	for c in secs:
		if (c as Vector4).x > t0 and (c as Vector4).x < t1:
			out.append(c)
	out.append(_sec_at(secs, t1))
	return out


static func _sec_at(secs: Array, t: float) -> Vector4:
	for i in secs.size() - 1:
		var a: Vector4 = secs[i]
		var b: Vector4 = secs[i + 1]
		if t <= b.x:
			return a.lerp(b, clampf((t - a.x) / maxf(b.x - a.x, 1e-6), 0.0, 1.0))
	return secs[-1]


## A limb's surface along +y through cross-sections (t, width, depth, back offset): rounded (super-ellipse) rings.
## Full (a0 = −π … π): a closed tube. Partial: a curved slab (a plate) of thickness th, grown g off the surface;
## angle −90° is the front (−z), 0 the outer side (+x).
static func _limb(tools: Dictionary, key: String, secs: Array, a0: float, a1: float, g: float, th: float, e := 0.8) -> void:
	var full := a1 - a0 > 6.0
	var n := 40 if full else 14
	var st := SurfaceTool.new()
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	var layers := [g] if full else [g, g - th]
	var R := []                                       # R[layer][section][i]
	for gg in layers:
		var rows := []
		for c in secs:
			var sec: Vector4 = c
			var row := []
			for i in (n if full else n + 1):
				var a := a0 + (a1 - a0) * i / float(n)
				var ca := cos(a)
				var sa := sin(a)
				var x := signf(ca) * pow(absf(ca), e) * (sec.y * 0.5 + float(gg))
				var z := signf(sa) * pow(absf(sa), e) * (sec.z * 0.5 + float(gg)) + sec.w
				row.append(Vector3(x, sec.x, z))
			rows.append(row)
		R.append(rows)
	var m: int = n if full else n + 1
	var quad := func(p: Vector3, q: Vector3, r: Vector3, s2: Vector3) -> void:
		for v in [p, r, q, q, r, s2]:
			st.add_vertex(v)
	for L in R.size():
		var rows: Array = R[L]
		for j in rows.size() - 1:
			for i in (n if full else n):
				var i2 := (i + 1) % m
				var a: Vector3 = rows[j][i]
				var b: Vector3 = rows[j][i2]
				var c: Vector3 = rows[j + 1][i]
				var d: Vector3 = rows[j + 1][i2]
				if L == 0:
					quad.call(a, b, c, d)
				else:
					quad.call(b, a, d, c)                 # the inner face of a plate looks inwards
	if not full:                                      # a plate's edges: its two long sides and its two ends
		var o: Array = R[0]
		var inn: Array = R[1]
		for j in o.size() - 1:
			quad.call(inn[j][0], o[j][0], inn[j + 1][0], o[j + 1][0])
			quad.call(o[j][n], inn[j][n], o[j + 1][n], inn[j + 1][n])
		for i in n:
			quad.call(o[0][i], inn[0][i], o[0][i + 1], inn[0][i + 1])
			var last := o.size() - 1
			quad.call(inn[last][i], o[last][i], inn[last][i + 1], o[last][i + 1])
	st.index()
	st.generate_normals()
	_add(tools, key, st.commit(), Transform3D.IDENTITY)


## The boot's own shape (metres, the ankle at the origin, toes −z): (z, width, height) of its cross-sections from
## the heel to the toe, rounded-box profiles standing on the sole.
const SOLE := -0.09
const BOOT := [Vector3(0.075, 0.07, 0.10), Vector3(0.045, 0.086, 0.118), Vector3(0.0, 0.092, 0.112),
	Vector3(-0.05, 0.096, 0.094), Vector3(-0.1, 0.1, 0.074), Vector3(-0.145, 0.097, 0.06), Vector3(-0.18, 0.084, 0.05),
	Vector3(-0.2, 0.06, 0.04), Vector3(-0.208, 0.03, 0.026)]


static func _boot(tools: Dictionary) -> void:
	_loft(tools, "boot/body", BOOT, Vector3(1, 1, 1), SOLE)                                 # the dark shell
	var sole := []
	for c in BOOT:
		sole.append(Vector3(c.x, c.y * 1.08 + 0.006, 0.018))
	_loft(tools, "boot/mech", sole, Vector3.ONE, SOLE - 0.018)                           # the sole
	var toe := []
	for c in BOOT:
		if c.x <= -0.095:
			toe.append(c)
	_loft(tools, "boot/plate", toe, Vector3(1.06, 1.07, 1), SOLE + 0.004)                 # the toe cap
	var heel := []
	for c in BOOT:
		if c.x >= 0.0:
			heel.append(c)
	_loft(tools, "boot/plate", heel, Vector3(1.06, 0.8, 1), SOLE + 0.004)                 # the heel plate
	var mid := []
	for c in BOOT:
		if c.x <= 0.01 and c.x >= -0.105:
			mid.append(Vector3(c.x, c.y * 0.8, c.z))
	_loft(tools, "boot/plate", mid, Vector3(1.0, 1.03, 1), SOLE + 0.004)                  # the instep plate (narrower)
	var glow := SurfaceTool.new()
	glow.begin(Mesh.PRIMITIVE_TRIANGLES)
	tools["boot/glow"] = glow
	for sx in [-1.0, 1.0]:                                                               # a light strip on each side
		var b := BoxMesh.new()
		b.size = Vector3(0.004, 0.006, 0.17)
		glow.append_from(b, 0, Transform3D(Basis.IDENTITY, Vector3(sx * 0.0575, SOLE - 0.009, -0.045)))
	var tilt := Basis(Vector3.RIGHT, 0.42)                                              # the instep's slope
	var at := Vector3(0, SOLE + 0.1, -0.045)
	var disc := CylinderMesh.new()                                                      # the glowing disc …
	disc.top_radius = 0.017
	disc.bottom_radius = 0.017
	disc.height = 0.006
	disc.radial_segments = 20
	glow.append_from(disc, 0, Transform3D(tilt, at))
	var ring := TorusMesh.new()                                                         # … in a cyan ring
	ring.inner_radius = 0.019
	ring.outer_radius = 0.027
	ring.rings = 20
	ring.ring_segments = 8
	var into: SurfaceTool = tools["boot/plate"]
	into.append_from(ring, 0, Transform3D(tilt.scaled(Vector3(1, 0.35, 1)), at - tilt.y * 0.001))


## A closed shell through cross-sections (z, width, height) standing on y = base: rounded-box profiles, end caps.
static func _loft(tools: Dictionary, key: String, sections: Array, k: Vector3, base: float) -> void:
	const N := 24
	var st := SurfaceTool.new()
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	var rings := []
	for c in sections:
		var ring := []
		for i in N:
			var a := TAU * i / N
			var cx := cos(a)
			var sy := sin(a)
			var x: float = signf(cx) * pow(absf(cx), 0.5) * c.y * 0.5 * k.x
			var y: float = signf(sy) * pow(absf(sy), 0.5) * c.z * 0.5 * k.y
			ring.append(Vector3(x, base + c.z * 0.5 * k.y + y, c.x))
		rings.append(ring)
	for r in range(rings.size() - 1):
		for i in N:
			var a: Vector3 = rings[r][i]
			var b: Vector3 = rings[r][(i + 1) % N]
			var c: Vector3 = rings[r + 1][i]
			var d: Vector3 = rings[r + 1][(i + 1) % N]
			for p in [a, b, c, b, d, c]:
				st.add_vertex(p)
	for e in [0, rings.size() - 1]:                     # the end caps
		var ctr := Vector3.ZERO
		for p in rings[e]:
			ctr += p
		ctr /= N
		for i in N:
			var a: Vector3 = rings[e][i]
			var b: Vector3 = rings[e][(i + 1) % N]
			for p in ([ctr, b, a] if e == 0 else [ctr, a, b]):
				st.add_vertex(p)
	st.index()                                          # shared corners → smooth normals over the shell
	st.generate_normals()
	var mesh := st.commit()
	var into: SurfaceTool = tools.get(key)
	if into == null:
		into = SurfaceTool.new()
		into.begin(Mesh.PRIMITIVE_TRIANGLES)
		tools[key] = into
	into.append_from(mesh, 0, Transform3D.IDENTITY)


## A leg: the thigh, the knee's ball and kneecap, the shin, the boot (the suit's materials) and a halo on the floor
## under the foot.
func _leg() -> Dictionary:
	if _leg_meshes.is_empty():
		_leg_meshes = _build_legs()
	var plate := StandardMaterial3D.new()
	plate.albedo_color = Color(0.12, 0.62, 0.78)
	plate.metallic = 0.65
	plate.roughness = 0.28
	plate.rim_enabled = true
	plate.rim = 0.6
	plate.emission_enabled = true
	plate.emission = GLOVE_GLOW
	plate.emission_energy_multiplier = 0.15
	_leg_mats.append(plate)
	var glow := _unshaded(GLOVE_GLOW)
	_leg_glows.append(glow)
	var out := {}
	for part in ["thigh", "joint", "pad", "shin", "boot"]:
		out[part] = _part(part, plate, glow)
	var halo := MeshInstance3D.new()
	var hq := QuadMesh.new()
	hq.size = Vector2(0.36, 0.36)
	halo.mesh = hq
	halo.rotation_degrees = Vector3(-90, 0, 0)
	var hm := ShaderMaterial.new()
	hm.shader = preload("res://shaders/halo.gdshader")
	hm.set_shader_parameter("color", FOOT_COLOR)
	hm.set_shader_parameter("energy", 0.5)
	halo.material_override = hm
	halo.top_level = true
	add_child(halo)
	out["halo"] = halo
	for n in out.values():
		(n as Node3D).visible = false
	return out


func _part(part: String, plate: Material, glow: Material) -> Node3D:
	var holder := Node3D.new()
	holder.top_level = true
	add_child(holder)
	var meshes: Dictionary = _leg_meshes[part]
	for k in meshes:
		var mi := MeshInstance3D.new()
		mi.mesh = meshes[k]
		mi.material_override = {"plate": plate, "glow": glow, "body": _glove_body, "mech": _glove_mech}[k]
		mi.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
		holder.add_child(mi)
	return holder


## The index finger out (true) while the hand is at a button (the wrist dock, the menu), back into the fist after.
func set_point(side: String, on: bool) -> void:
	_point_want[side] = on


## Where the hand presses: the index fingertip while pointing, else the fist (world).
func press_point(side: String) -> Vector3:
	var g: Node3D = gloves[side]
	if _point[side] < 0.5:
		return g.global_position
	var t := _tip
	if side == "right":
		t.x = -t.x
	return g.global_transform * t


## A hit landed with this hand: its glove flares for a moment (amount: 0.6 a weak hit … 1.6 a mighty one).
func flare(side: String, amount := 1.0) -> void:
	_punch[side] = amount


## Once a frame. frame: the game node (body positions are in its space) · mult: the combo multiplier 1…4 ·
## min_speed: the speed a limb needs to count · desktop: show the simulated limbs (no headset).
## The look (LOOKS index): every material of the player's body at once.
func set_look(i: int) -> void:
	look = LOOKS[clampi(i, 0, LOOKS.size() - 1)]
	var mats: Array = _plate_mats.values() + _leg_mats
	for m in mats:
		var pm := m as StandardMaterial3D
		pm.albedo_color = look.plate
		pm.metallic = look.metal
		pm.roughness = look.rough
	for m in _glow_mats.values() + _leg_glows:
		(m as StandardMaterial3D).albedo_color = look.glow
	if _glove_body:
		_glove_body.albedo_color = look.body
		_glove_mech.albedo_color = look.mech
	for side in _auras:
		var au: Dictionary = _auras[side]
		(au.mat as ShaderMaterial).set_shader_parameter("color", look.hit)
		(au.halo as ShaderMaterial).set_shader_parameter("color", look.hit)
		(au.light as OmniLight3D).light_color = look.hit
	if robot and robot.mat:
		robot.mat.set_shader_parameter("tint", look.tint)
		robot.mat.set_shader_parameter("plate", look.plate)
		robot.mat.set_shader_parameter("dark", look.body)
	color = look.glow
	_target = look.glow


## A limb's frame: y along it, −z its front (where the foot points, else the body's forward).
static func _seg_basis(y: Vector3, ahead: Vector3, fwd: Vector3) -> Basis:
	var a := ahead - y * ahead.dot(y)
	if a.length() < 0.15:
		a = fwd - y * fwd.dot(y)
	if a.length() < 0.15:
		a = Vector3.UP - y * y.y
	var z := -a.normalized()
	return Basis(y.cross(z).normalized(), y, z)


func update(body: PlayerBody, frame: Node3D, mult: int, min_speed: Dictionary, eye: Vector3, delta: float, desktop := false) -> void:
	_target = look.glow if mult <= 1 else MULT_COLORS[clampi(mult - 1, 0, 3)]
	color = color.lerp(_target, clampf(delta * 4.0, 0.0, 1.0))
	for side in ["left", "right"]:
		var g: Node3D = gloves[side]
		var limb := "hand_l" if side == "left" else "hand_r"
		var on: bool = body.valid.get(limb, false)
		if desktop and on:
			g.global_transform = Transform3D(Basis.IDENTITY, frame.to_global(body.pos[limb]))
		elif on:
			var t: Transform3D = body.hand_xform[side]
			g.global_transform = Transform3D(t.basis.orthonormalized(), t.origin)
		g.visible = on
		_punch[side] = maxf(_punch[side] - delta * 3.2, 0.0)
		var pw: float = move_toward(_point[side], 1.0 if _point_want[side] else 0.0, delta * 7.0)   # ~0.15 s
		if pw != _point[side]:
			_point[side] = pw
			var e := pw * pw * (3.0 - 2.0 * pw)
			for mi in _glove_mis[side]:
				(mi as MeshInstance3D).set_blend_shape_value(0, e)
		var sp: float = body.speed.get(limb, 0.0)
		var heat: float = 1.0 if sp >= min_speed.hand else clampf(sp / min_speed.hand, 0.0, 1.0) * 0.45
		g.scale = Vector3.ONE * (1.0 + 0.12 * _punch[side])
		var hit: Color = (look.glow as Color).lerp(look.hit, minf(_punch[side] * 1.6, 1.0))
		(_glow_mats[side] as StandardMaterial3D).albedo_color = hit * (1.0 + 0.6 * _punch[side])
		var plate: StandardMaterial3D = _plate_mats[side]
		plate.emission = hit
		plate.emission_energy_multiplier = 0.15 + 0.05 * mult + 0.5 * _punch[side]
		var au: Dictionary = _auras[side]
		var p: float = _punch[side]
		var lit: bool = p > 0.01
		for n in au.nodes:
			(n as Node3D).visible = lit
		(au.light as OmniLight3D).visible = lit
		if lit:
			var e: float = p * p * (3.0 - 2.0 * p)          # eased: a bright burst that fades soft
			(au.mat as ShaderMaterial).set_shader_parameter("energy", e)
			(au.halo as ShaderMaterial).set_shader_parameter("energy", 1.4 * e)
			(au.light as OmniLight3D).light_energy = 2.5 * e
		var tr: Fx.Trail = trails[limb]
		tr.color = color
		tr.update(g.global_position, heat, eye, on)
	var fwd_body := -frame.global_basis.z
	var kz := float(body.leg_size.get("H", body.stand_h / 0.936)) / REF_H     # the player's size against the model's
	var rl := {}
	if robot_on and body.hip_pos.size() == 2:
		for s in ["l", "r"]:
			if not (body.valid.get("knee_" + s, false) and body.valid.get("foot_" + s, false)):
				continue
			var f: Vector3 = frame.to_global(body.pos["foot_" + s])
			rl[s] = {"hip": frame.to_global(body.hip_pos[s]), "knee": frame.to_global(body.pos["knee_" + s]),
				"ankle": frame.to_global(body.ankle_pos[s]) if body.ankle_pos.has(s) else f,
				"ahead": body.foot_dir.get(s, fwd_body), "planted": body.foot_ground.get(s, not body.foot_dir.has(s))}
	robot.pose(rl, kz * REF_H)
	robot.glow(color, 0.15 + 0.05 * mult)
	for s in ["l", "r"]:
		var parts: Dictionary = _legs[s]
		var kl: String = "knee_" + s
		var fl: String = "foot_" + s
		var on: bool = body.valid.get(kl, false) and body.valid.get(fl, false)
		for n in parts.values():
			(n as Node3D).visible = on and not robot.visible
		(parts.halo as Node3D).visible = on
		var tr: Fx.Trail = trails[fl]
		if not on:
			tr.update(Vector3.ZERO, 0.0, eye, false)
			continue
		var k: Vector3 = frame.to_global(body.pos[kl])
		var f: Vector3 = frame.to_global(body.pos[fl])
		var an: Vector3 = frame.to_global(body.ankle_pos[s]) if body.ankle_pos.has(s) else f
		var ahead := fwd_body                               # the player's forward: the plates face it …
		if body.foot_dir.has(s):
			ahead = body.foot_dir[s]                        # … or, with the sensors, where this foot really points
		# the shin: ankle → knee, its front where the foot points
		var sl := maxf(k.distance_to(an), 0.15)
		var sy := (k - an) / sl
		var sb := _seg_basis(sy, ahead, fwd_body)
		(parts.shin as Node3D).global_transform = Transform3D(sb * Basis.from_scale(Vector3(kz, sl, kz)), an)
		var jb := sb
		# the thigh (the hip known: the sensors): knee → hip, facing the same way
		var thigh: Node3D = parts.thigh
		var pad: Node3D = parts.pad
		thigh.visible = body.hip_pos.has(s)
		var front := -sb.z
		if thigh.visible:
			var h: Vector3 = frame.to_global(body.hip_pos[s])
			var tl := maxf(h.distance_to(k), 0.15)
			var ty := (h - k) / tl
			var tz := sb.x.cross(ty)                       # the thigh's front from the knee's hinge (the shin's): a raised
			if tz.length() < 0.2:                          # knee's thigh faces up, whatever the foot does
				tz = sb.z - ty * sb.z.dot(ty)
			tz = tz.normalized()
			var tb := Basis(ty.cross(tz).normalized(), ty, tz)
			thigh.global_transform = Transform3D(tb * Basis.from_scale(Vector3(kz, tl, kz)), k)
			front = (-tb.z - sb.z).normalized() if (-tb.z - sb.z).length() > 0.2 else -tb.z
			var py := (ty + sy).normalized() if (ty + sy).length() > 0.2 else ty
			jb = Basis(py.cross(-front).normalized(), py, -front).orthonormalized()
		else:
			jb = Basis(sb.x, sb.y, sb.z)
		(parts.joint as Node3D).global_transform = Transform3D(Basis.from_scale(Vector3.ONE * kz), k)
		# the kneecap rides on the joint's front, halfway between the thigh's front and the shin's
		pad.global_transform = Transform3D(Basis(jb.x, jb.y, jb.z) * Basis.from_scale(Vector3.ONE * kz), k + front * PAD_OUT * kz)
		var boot: Node3D = parts.boot
		var bb := sb
		if body.foot_ground.get(s, false) or not body.foot_dir.has(s):   # planted: the boot stands flat
			var fa := Vector3(ahead.x, 0.0, ahead.z)
			if fa.length() < 0.1:
				fa = Vector3(fwd_body.x, 0.0, fwd_body.z)
			var fz := -fa.normalized()
			bb = Basis(Vector3.UP.cross(fz).normalized(), Vector3.UP, fz)
		else:                                               # lifted: the foot at a right angle to the shin, toes ahead
			var fz := -(ahead - sy * ahead.dot(sy)).normalized()
			bb = Basis(sy.cross(fz).normalized(), sy, fz)
		var toe := float((body.leg_size.get("toe", {}) as Dictionary).get(s, 0.0))
		var bl := clampf(toe / 0.21, 0.85, 1.15) if toe > 0.0 else 1.0
		boot.global_transform = Transform3D(bb * Basis.from_scale(Vector3(kz, kz, kz * bl)), an)
		if robot.visible:                                   # the android's legs drawn: only the halo and the trail stay
			for n in ["thigh", "joint", "pad", "shin", "boot"]:
				(parts[n] as Node3D).visible = false
		var halo: Node3D = parts.halo
		halo.global_position = Vector3(f.x, frame.global_position.y + 0.012, f.z)
		halo.scale = Vector3.ONE * clampf(1.2 - (f.y - frame.global_position.y) * 1.5, 0.3, 1.2)
		var sp: float = body.speed.get(fl, 0.0)
		var heat: float = 1.0 if sp >= min_speed.foot else clampf(sp / min_speed.foot, 0.0, 1.0) * 0.4
		tr.update(f, heat, eye, true)
	for m in _leg_mats:
		m.emission = color
		m.emission_energy_multiplier = 0.15 + 0.05 * mult
