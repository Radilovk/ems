## The player's own body as seen: sci-fi gloves on the hands (controller or bare hand — they follow whatever tracks
## the hand now), shin guards, knee pads and boots on the legs whenever the legs are known (ankle controllers or body
## tracking), light trails behind fists and feet that turn white-hot once fast enough to count, and a soft halo on the
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

static var _glove_meshes := {}   # "plate"/"glow"/"body"/"mech" -> ArrayMesh, built once
var gloves := {}                 # "left"/"right" -> Node3D
var _plate_mats := {}            # side -> StandardMaterial3D
var _glow_mats := {}             # side -> StandardMaterial3D
var _auras := {}                 # side -> {"mat": ShaderMaterial, "nodes": [aura meshes, halo], "light": OmniLight3D}
var _glove_body: StandardMaterial3D
var _glove_mech: StandardMaterial3D
var _legs := {}                  # "l"/"r" -> {"shin", "knee", "boot", "halo"}
var _leg_mats: Array[StandardMaterial3D] = []
var trails := {}                 # limb -> Fx.Trail
var color: Color = MULT_COLORS[0]
var _target: Color = MULT_COLORS[0]
var _punch := {"left": 0.0, "right": 0.0}       # a short flare on the glove that just landed a hit


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
static func _fist(arrays: Array, rel: Transform3D) -> ArrayMesh:
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
		if t > 0.0 and p.z > 3.4 and p.x > -1.68:          # (the thumb tip reaches past the knuckles too)
			var len := _finger_len(p.x)
			var h := q.dot(nrm)
			var at := Vector2(t, h)                       # the finger's own (along, up) plane
			var turn := 0.0
			for j in range(JOINTS.size() - 1, -1, -1):    # the far joints first, then the near ones carry them
				var jt: float = JOINTS[j].x * len
				var k := smoothstep(jt - 0.1, jt + 0.1, t)
				if k <= 0.0:
					continue
				var ang: float = -JOINTS[j].y * k         # down, towards the palm
				var hinge := Vector2(jt, JOINTS[j].z)
				at = hinge + (at - hinge).rotated(ang)
				turn += ang
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


## Knuckle to fingertip, by the finger (the model's x): index · middle · ring · little.
static func _finger_len(x: float) -> float:
	if x < -0.75:
		return 2.4
	if x < 0.25:
		return 2.6
	if x < 1.16:
		return 2.2
	return 1.35


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
			if not tools.has(kind):
				var st := SurfaceTool.new()
				st.begin(Mesh.PRIMITIVE_TRIANGLES)
				tools[kind] = st
			(tools[kind] as SurfaceTool).append_from(_fist(mi.mesh.surface_get_arrays(i), rel), 0, to_grip)
	model.free()
	var out := {}
	for k in tools:
		out[k] = (tools[k] as SurfaceTool).commit()
	return out


## A leg: a glass shin guard from the knee to the ankle, a knee pad, a boot and a halo on the floor under the foot.
func _leg() -> Dictionary:
	var glass := StandardMaterial3D.new()
	glass.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	glass.albedo_color = Color(0.1, 0.2, 0.25, 0.35)
	glass.metallic = 0.3
	glass.roughness = 0.15
	glass.rim_enabled = true
	glass.rim = 1.0
	glass.emission_enabled = true
	glass.emission = FOOT_COLOR
	glass.emission_energy_multiplier = 0.45
	_leg_mats.append(glass)
	var shin := MeshInstance3D.new()
	var cap := CapsuleMesh.new()
	cap.radius = 0.052
	cap.height = 0.4
	cap.radial_segments = 14
	cap.rings = 4
	shin.mesh = cap
	shin.material_override = glass
	shin.top_level = true
	shin.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	add_child(shin)
	var knee := MeshInstance3D.new()
	var ks := SphereMesh.new()
	ks.radius = 0.055
	ks.height = 0.11
	knee.mesh = ks
	knee.scale = Vector3(1.0, 0.8, 0.7)
	knee.material_override = _unshaded(FOOT_COLOR.lightened(0.2))
	knee.top_level = true
	add_child(knee)
	var boot := MeshInstance3D.new()
	var bs := SphereMesh.new()
	bs.radius = 0.06
	bs.height = 0.12
	boot.mesh = bs
	boot.scale = Vector3(0.95, 0.65, 1.7)
	boot.material_override = glass
	boot.top_level = true
	add_child(boot)
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
	for n in [shin, knee, boot, halo]:
		(n as Node3D).visible = false
	return {"shin": shin, "knee": knee, "boot": boot, "halo": halo}


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
		var shin: MeshInstance3D = parts.shin
		var len := maxf(k.distance_to(f), 0.15)
		(shin.mesh as CapsuleMesh).height = len + 0.06
		var y := (k - f) / len
		var x := y.cross(Vector3.FORWARD if absf(y.z) < 0.9 else Vector3.RIGHT).normalized()
		shin.global_transform = Transform3D(Basis(x, y, x.cross(y)), (k + f) * 0.5)
		(parts.knee as Node3D).global_position = k
		var boot: MeshInstance3D = parts.boot
		boot.global_position = f + Vector3(0, -0.02, -0.04)
		var halo: Node3D = parts.halo
		halo.global_position = Vector3(f.x, frame.global_position.y + 0.012, f.z)
		halo.scale = Vector3.ONE * clampf(1.2 - (f.y - frame.global_position.y) * 1.5, 0.3, 1.2)
		var sp: float = body.speed.get(fl, 0.0)
		var heat: float = 1.0 if sp >= min_speed.foot else clampf(sp / min_speed.foot, 0.0, 1.0) * 0.4
		tr.update(f, heat, eye, true)
	for m in _leg_mats:
		m.emission_energy_multiplier = 0.4 + 0.12 * mult
