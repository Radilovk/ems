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
var _legs := {}                  # "l"/"r" -> {"shin", "knee", "boot", "halo"} (Node3D each)
var _leg_mats: Array[StandardMaterial3D] = []
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


## The leg armour, in the gloves' own parts and materials, so legs and hands are one suit: the gauntlet (the forearm
## part of the "Sci-fi Glove" model: cyan plates, light tubes, the dark sleeve) becomes the shin guard, the back-of-hand
## plate with its glowing disc the knee pad; the boot is is shaped here in the same kit — a
## dark shell, cyan toe cap and heel plate, a light strip along the sole. Built once: part -> kind -> ArrayMesh, in each
## part's own frame (shin: +y from the ankle up to the knee, −z ahead · knee: its middle, facing −z · boot: the ankle,
## toes −z, the sole 9 cm below). The instep carries the gloves' glowing disc in a cyan ring.
static var _leg_meshes := {}
static var _shin_len := 1.0      # the shin guard's length as built (it is stretched to each leg)


static func _merge_legs() -> Dictionary:
	var model := GLOVE_SCENE.instantiate() as Node3D
	# model: fingers +z, back of the hand +y, the forearm towards −z (wrist at z ≈ 0), thumb −x
	var shin_b := Basis(Vector3(-1, 0, 0), Vector3(0, 0, -1), Vector3(0, -1, 0))   # −z → up, +y → ahead
	var knee_b := Basis(Vector3(1, 0, 0), Vector3(0, 0, -1), Vector3(0, 1, 0))     # +z → up, +y → ahead
	var xf := {
		"shin": Transform3D(shin_b * Basis.from_scale(Vector3(0.04, 0.047, 0.04)), Vector3.ZERO) * Transform3D(Basis.IDENTITY, -Vector3(-0.35, 0.75, 0.3)),
		"knee": Transform3D(knee_b * Basis.from_scale(Vector3(0.045, 0.045, 0.045)), Vector3.ZERO) * Transform3D(Basis.IDENTITY, -Vector3(-0.55, 0.6, 1.3)),
	}
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
			var arr := mi.mesh.surface_get_arrays(i)
			var knee_part := String(mi.name).begins_with("polySurface30") or String(mi.name).begins_with("pSphere1")
			for part in ["shin", "knee", "boot"]:
				if part == "boot" or (part == "knee" and not knee_part):
					continue
				var key: String = part + "/" + kind
				var st: SurfaceTool = tools.get(key)
				var added = _cut(arr, rel, part, xf[part], st)
				if added != null:
					tools[key] = added
	model.free()
	_boot(tools)
	var out := {"shin": {}, "knee": {}, "boot": {}}
	var top := 0.0
	for key in tools:
		var m := (tools[key] as SurfaceTool).commit()
		out[String(key).get_slice("/", 0)][String(key).get_slice("/", 1)] = m
		if String(key).begins_with("shin/"):
			top = maxf(top, m.get_aabb().end.y)
	_shin_len = maxf(top, 0.1)
	return out


## The triangles of one model part that belong to a leg piece, moved into that piece's frame. Returns the SurfaceTool
## (made on the first triangle) or null when nothing belongs.
static func _cut(arrays: Array, rel: Transform3D, part: String, to: Transform3D, st: SurfaceTool):
	var verts: PackedVector3Array = arrays[Mesh.ARRAY_VERTEX]
	var norms: PackedVector3Array = arrays[Mesh.ARRAY_NORMAL]
	var uvs = arrays[Mesh.ARRAY_TEX_UV]
	var idx = arrays[Mesh.ARRAY_INDEX]
	var count: int = idx.size() if idx != null else verts.size()
	var nb := to.basis.inverse().transposed()
	for t in range(0, count, 3):
		var ids := [idx[t], idx[t + 1], idx[t + 2]] if idx != null else [t, t + 1, t + 2]
		var c := Vector3.ZERO
		for k in ids:
			c += rel * verts[k]
		c /= 3.0
		var keep := false
		match part:
			"shin":
				keep = c.z < 0.2
			"knee":
				keep = true
		if not keep:
			continue
		if st == null:
			st = SurfaceTool.new()
			st.begin(Mesh.PRIMITIVE_TRIANGLES)
		for k in ids:
			var p: Vector3 = rel * verts[k]
			var nv: Vector3 = (rel.basis * norms[k]).normalized() if k < norms.size() else Vector3.UP
			st.set_normal((nb * nv).normalized())
			if uvs != null and k < (uvs as PackedVector2Array).size():
				st.set_uv(uvs[k])
			st.add_vertex(to * p)
	return st


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


## A leg: the shin guard from the ankle to the knee, the knee pad, the boot (all in the gloves' materials) and a
## halo on the floor under the foot.
func _leg() -> Dictionary:
	if _leg_meshes.is_empty():
		_leg_meshes = _merge_legs()
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
	var out := {}
	for part in ["shin", "knee", "boot"]:
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
		out[part] = holder
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


## A hit landed with this hand: its glove flares for a moment.
func flare(side: String) -> void:
	_punch[side] = 1.0


## Once a frame. frame: the game node (body positions are in its space) · mult: the combo multiplier 1…4 ·
## min_speed: the speed a limb needs to count · desktop: show the simulated limbs (no headset).
func update(body: PlayerBody, frame: Node3D, mult: int, min_speed: Dictionary, eye: Vector3, delta: float, desktop := false) -> void:
	_target = MULT_COLORS[clampi(mult - 1, 0, 3)]
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
		var hit: Color = GLOVE_GLOW.lerp(GLOVE_HIT, minf(_punch[side] * 1.6, 1.0))
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
	for s in ["l", "r"]:
		var parts: Dictionary = _legs[s]
		var kl: String = "knee_" + s
		var fl: String = "foot_" + s
		var on: bool = body.valid.get(kl, false) and body.valid.get(fl, false)
		for n in parts.values():
			(n as Node3D).visible = on
		var tr: Fx.Trail = trails[fl]
		if not on:
			tr.update(Vector3.ZERO, 0.0, eye, false)
			continue
		var k: Vector3 = frame.to_global(body.pos[kl])
		var f: Vector3 = frame.to_global(body.pos[fl])
		var len := maxf(k.distance_to(f), 0.15)
		var y := (k - f) / len                              # the shin's axis, ankle → knee
		var ahead := -frame.global_basis.z                  # the player's forward: the plates face it
		ahead = (ahead - y * ahead.dot(y))
		if ahead.length() < 0.1:
			ahead = Vector3.FORWARD - y * Vector3.FORWARD.dot(y)
		var z := -ahead.normalized()
		var b := Basis(y.cross(z).normalized(), y, z)
		var shin: Node3D = parts.shin
		shin.global_transform = Transform3D(b * Basis.from_scale(Vector3(1, (len - 0.1) / _shin_len, 1)), f + y * 0.05)
		var knee: Node3D = parts.knee
		knee.global_transform = Transform3D(b, k - z * 0.06 - y * 0.02)
		var boot: Node3D = parts.boot
		boot.global_transform = Transform3D(b, f)
		var halo: Node3D = parts.halo
		halo.global_position = Vector3(f.x, frame.global_position.y + 0.012, f.z)
		halo.scale = Vector3.ONE * clampf(1.2 - (f.y - frame.global_position.y) * 1.5, 0.3, 1.2)
		var sp: float = body.speed.get(fl, 0.0)
		var heat: float = 1.0 if sp >= min_speed.foot else clampf(sp / min_speed.foot, 0.0, 1.0) * 0.4
		tr.update(f, heat, eye, true)
	for m in _leg_mats:
		m.emission = color
		m.emission_energy_multiplier = 0.15 + 0.05 * mult
