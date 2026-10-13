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
const GLOVE_PALM := Vector3(-0.3, 0.3, 2.8)     # the palm's middle, in model units: it sits on the grip

static var _glove_meshes := {}   # "plate"/"glow"/"body"/"mech" -> ArrayMesh, built once
var gloves := {}                 # "left"/"right" -> Node3D
var _plate_mats := {}            # side -> StandardMaterial3D
var _glow_mats := {}             # side -> StandardMaterial3D
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
## tubes and the disc on the back of the hand glow cyan and flash magenta when the hand lands a hit. The model's 35 parts
## are merged once into four meshes (plates · glow · glove · wires), turned into the hand's grip frame (fingers ahead,
## thumb up, palm inward) with the palm on the grip; the right hand is the left one mirrored.
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
	g.visible = false
	return g


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
			(tools[kind] as SurfaceTool).append_from(mi.mesh, i, to_grip * rel)
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
		_punch[side] = maxf(_punch[side] - delta * 5.0, 0.0)
		var sp: float = body.speed.get(limb, 0.0)
		var heat: float = 1.0 if sp >= min_speed.hand else clampf(sp / min_speed.hand, 0.0, 1.0) * 0.45
		g.scale = Vector3.ONE * (1.0 + 0.12 * _punch[side])
		var hit: Color = GLOVE_GLOW.lerp(GLOVE_HIT, minf(_punch[side] * 1.6, 1.0))
		(_glow_mats[side] as StandardMaterial3D).albedo_color = hit * (1.0 + 0.6 * _punch[side])
		var plate: StandardMaterial3D = _plate_mats[side]
		plate.emission = hit
		plate.emission_energy_multiplier = 0.15 + 0.05 * mult + 0.5 * _punch[side]
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
