## The player's own body as seen: boxing gloves on the hands (controller or bare hand — they follow whatever tracks
## the hand now), shin guards, knee pads and boots on the legs whenever the legs are known (ankle controllers or body
## tracking), light trails behind fists and feet that turn white-hot once fast enough to count, and a soft halo on the
## floor at each foot. The colour follows the combo multiplier: ×1 cyan · ×2 green · ×3 magenta · ×4 gold.
class_name Avatar
extends Node3D

const MULT_COLORS := [Color(0.25, 0.85, 1.0), Color(0.3, 1.0, 0.5), Color(0.95, 0.3, 0.9), Color(1.0, 0.78, 0.25)]
const FOOT_COLOR := Color(1.0, 0.55, 0.15)

var gloves := {}                 # "left"/"right" -> Node3D
var _band_mats: Array[StandardMaterial3D] = []
var _shell_mats: Array[StandardMaterial3D] = []
var _legs := {}                  # "l"/"r" -> {"shin", "knee", "boot", "halo"}
var _leg_mats: Array[StandardMaterial3D] = []
var trails := {}                 # limb -> Fx.Trail
var color: Color = MULT_COLORS[0]
var _target: Color = MULT_COLORS[0]
var _punch := {"left": 0.0, "right": 0.0}       # a short flare on the glove that just landed a hit


func _ready() -> void:
	for side in ["left", "right"]:
		gloves[side] = _glove()
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


## A boxing glove of light: a dark rounded shell, a glowing knuckle band and cuff, a bright core at the knuckles.
func _glove() -> Node3D:
	var g := Node3D.new()
	g.top_level = true
	add_child(g)
	var shell := MeshInstance3D.new()
	var s := SphereMesh.new()
	s.radius = 0.055
	s.height = 0.11
	s.radial_segments = 20
	s.rings = 10
	shell.mesh = s
	shell.scale = Vector3(1.0, 0.92, 1.28)
	var sm := StandardMaterial3D.new()
	sm.albedo_color = Color(0.05, 0.1, 0.13)
	sm.metallic = 0.55
	sm.roughness = 0.3
	sm.rim_enabled = true
	sm.rim = 0.9
	sm.emission_enabled = true
	sm.emission = MULT_COLORS[0]
	sm.emission_energy_multiplier = 0.35
	shell.material_override = sm
	shell.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	g.add_child(shell)
	_shell_mats.append(sm)
	var band := MeshInstance3D.new()                 # across the knuckles
	var t := TorusMesh.new()
	t.inner_radius = 0.05
	t.outer_radius = 0.058
	t.rings = 24
	t.ring_segments = 6
	band.mesh = t
	band.position = Vector3(0, 0, -0.035)
	band.rotation_degrees = Vector3(90, 0, 0)
	band.scale = Vector3(1.0, 1.0, 0.85)
	var bm := _unshaded(MULT_COLORS[0])
	band.material_override = bm
	g.add_child(band)
	_band_mats.append(bm)
	var cuff := MeshInstance3D.new()
	var cy := CylinderMesh.new()
	cy.top_radius = 0.042
	cy.bottom_radius = 0.046
	cy.height = 0.05
	cy.radial_segments = 16
	cuff.mesh = cy
	cuff.position = Vector3(0, -0.005, 0.075)
	cuff.rotation_degrees = Vector3(90, 0, 0)
	cuff.material_override = sm
	g.add_child(cuff)
	var cuff_ring := MeshInstance3D.new()
	var cr := TorusMesh.new()
	cr.inner_radius = 0.044
	cr.outer_radius = 0.05
	cr.rings = 20
	cr.ring_segments = 4
	cuff_ring.mesh = cr
	cuff_ring.position = Vector3(0, -0.005, 0.1)
	cuff_ring.rotation_degrees = Vector3(90, 0, 0)
	cuff_ring.material_override = bm
	g.add_child(cuff_ring)
	var core := MeshInstance3D.new()
	var c := SphereMesh.new()
	c.radius = 0.022
	c.height = 0.044
	core.mesh = c
	core.position = Vector3(0, 0, -0.06)
	core.material_override = _unshaded(Color(0.8, 0.95, 1.0), true)
	g.add_child(core)
	g.visible = false
	return g


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
	for m in _band_mats:
		m.albedo_color = color
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
		g.scale = Vector3.ONE * (1.0 + 0.25 * _punch[side])
		var tr: Fx.Trail = trails[limb]
		tr.color = color
		tr.update(g.global_position, heat, eye, on)
	for i in _shell_mats.size():
		_shell_mats[i].emission = color
		_shell_mats[i].emission_energy_multiplier = 0.35 + 0.15 * mult + 1.2 * _punch["left" if i == 0 else "right"]
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
