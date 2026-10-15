## The chef (scenario "Готвачът"): a cook in an apron and cap at his street-food cart, a few metres ahead on the square,
## who throws food at the player on the beat — and takes it personally.
##
## He is the owner's Mixamo "Man Chef" with one motion, an overarm throw (assets/chef/chef.scn, convert/chef2scn.gd).
## The food leaves his right hand at RELEASE seconds into the throw: the game asks him to wind up so that moment
## falls exactly when the food must leave to land on its beat (faster wind-ups on fast levels). Before that the
## portion is in his hand, so the player sees what is coming.
## Everything else is his face for the game: he laughs when the player eats, gets cross at a mighty smash, staggers
## back when a mighty hit sends the food back into him, announces the MEGA burger, sulks at an eaten apple. His words
## are a bubble over his head.
class_name Chef
extends Node3D

const SCENE := preload("res://assets/chef/chef.scn")
const CART := preload("res://assets/chef/food_cart.glb")
const FONT := preload("res://assets/fonts/Inter-SemiBold.otf")
const RELEASE := 0.84                       # s into the throw: the hand is fastest and ahead of the head (measured)
const HAND := "CC_Base_R_Hand"
const CHEST := Vector3(0, 1.25, 0)          # where a returned portion lands on him (his own space)

const LINES := {
	"laugh": ["Ха-ха! Още едно?", "Мммм, вкусно ли беше?", "Яж, яж!", "Браво, още калории!", "Това ще остане по корема!",
		"Сготвено с любов!"],
	"angry": ["Ей! Храната ми!", "Не така!", "Толкова труд…", "Ах ти!", "Що за маниери!"],
	"splat": ["Ох! Право в мен!", "Ауу!", "Не е честно!", "Престилката ми!"],
	"apple": ["Пфу, ябълка…", "Скучно и полезно.", "Добре де, витамини."],
	"apple_hit": ["Ха! Ябълката удари?!", "Тя беше полезната!"],
	"mega": ["МЕГА БУРГЕР!", "Специалитетът на заведението!", "1650 калории — опитай!"],
	"taunt": ["Хапни си!", "Гладен ли си?", "Поръчка!", "Топло, топло!", "Още една порция!"],
	"wow": ["Леле, каква сила!", "Не мога да те нахраня!", "Ти си машина!"],
}

var model: Node3D
var _rig := Node3D.new()                    # the model's parent: his reactions move it, the throw moves the bones
var _anim: AnimationPlayer
var _skel: Skeleton3D
var _hand_bone := -1
var _held: Node3D                           # the portion in his hand during the wind-up
var _held_id := ""
var _release_at := -1.0                     # s until the food leaves his hand (counts down; < 0: not throwing)
var _bubble: Label3D
var _bubble_t := 0.0
var _react := ""
var _react_t := 0.0
var _stain: MeshInstance3D


func _ready() -> void:
	add_child(_rig)
	model = SCENE.instantiate()
	_rig.add_child(model)
	_skin(model)
	_anim = model.find_child("AnimationPlayer") as AnimationPlayer
	_skel = model.find_child("Skeleton3D") as Skeleton3D
	_hand_bone = _skel.find_bone(HAND) if _skel else -1
	if _anim:
		_anim.play("throw")
		_anim.seek(0.0, true)
		_anim.pause()
	var cart: Node3D = CART.instantiate()
	var low := INF                                   # (the converter centred it: stand it on the ground)
	for mi in cart.find_children("*", "MeshInstance3D", true, false):
		var m := mi as MeshInstance3D
		m.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
		low = minf(low, (m.transform * m.get_aabb()).position.y)
	cart.position = Vector3(-2.3, -low if low < INF else 0.0, -0.7)   # his left, a step behind: he works from its corner
	cart.rotation_degrees.y = 18.0
	add_child(cart)
	_bubble = Label3D.new()
	_bubble.font = FONT
	_bubble.font_size = 64
	_bubble.pixel_size = 0.0035
	_bubble.outline_size = 14
	_bubble.outline_modulate = Color(0.08, 0.04, 0.02, 0.85)
	_bubble.modulate = Color(1.0, 0.95, 0.8)
	_bubble.billboard = BaseMaterial3D.BILLBOARD_ENABLED
	_bubble.no_depth_test = true
	_bubble.render_priority = 6
	_bubble.position = Vector3(0, 2.25, 0)
	_bubble.visible = false
	add_child(_bubble)


## The textures go back on from the files beside the scene (the converter keeps them out of the scene file).
func _skin(n: Node) -> void:
	var albedo := load("res://assets/chef/chef_albedo.png") as Texture2D
	var normal := load("res://assets/chef/chef_normal.jpg") as Texture2D
	for mi in n.find_children("*", "MeshInstance3D", true, false):
		var m := mi as MeshInstance3D
		m.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
		for s in m.mesh.get_surface_count():
			var mat := m.mesh.surface_get_material(s) as StandardMaterial3D
			if mat == null:
				continue
			mat = mat.duplicate() as StandardMaterial3D
			mat.albedo_texture = albedo
			mat.albedo_color = Color.WHITE
			mat.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA_SCISSOR
			mat.alpha_scissor_threshold = 0.5
			if normal:
				mat.normal_enabled = true
				mat.normal_texture = normal
			mat.roughness = 0.75
			mat.metallic = 0.0
			m.set_surface_override_material(s, mat)


## Wind up for `id`, letting go in `in_sec` seconds (the throw's own pace is RELEASE; he hurries on fast levels).
func wind_up(id: String, in_sec: float) -> void:
	if _anim == null:
		return
	var k := clampf(RELEASE / maxf(in_sec, 0.05), 0.8, 2.6)
	var start := maxf(RELEASE - in_sec * k, 0.0)      # too little time even at his fastest: start part-way through
	_anim.speed_scale = k
	_anim.play("throw", 0.12)
	_anim.seek(start, true)
	_release_at = in_sec
	if _held:
		_held.queue_free()
	_held_id = id
	_held = Elem.food_model(id, float(Defs.FOODS[id].size) * (0.8 if id == "mega" else 1.0))
	add_child(_held)
	_place_held()
	if id == "mega":
		say("mega")
	elif randf() < 0.12:
		say("taunt")


## Where his throwing hand is now (world).
func hand_world() -> Vector3:
	if _skel and _hand_bone >= 0:
		return _skel.global_transform * _skel.get_bone_global_pose(_hand_bone).origin
	return global_transform * Vector3(-0.1, 1.55, 0.5)


## Where a portion sent back lands on him (world).
func chest_world() -> Vector3:
	return _rig.global_transform * CHEST


## He lets go: the portion leaves his hand (the game throws the real one from hand_world()).
func release() -> void:
	_release_at = -1.0
	if _held:
		_held.queue_free()
		_held = null


func say(what: String, extra := "") -> void:
	var lines: Array = LINES.get(what, [what])
	_bubble.text = (lines[randi() % lines.size()] if extra == "" else extra)
	_bubble.visible = true
	_bubble_t = 1.8
	_bubble.scale = Vector3.ONE * 0.3
	var tw := _bubble.create_tween()
	tw.tween_property(_bubble, "scale", Vector3.ONE, 0.25).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)


## What the player did, seen on him: laugh (the player ate) · angry (a mighty smash) · splat (hit by a portion sent
## back) · apple (the player ate an apple) · apple_hit (smashed the apple) · wow (a run of mighty hits).
func react(what: String, sfx: Sfx = null) -> void:
	_react = what
	_react_t = 0.0
	say(what)
	if sfx and what == "laugh":
		sfx.play("laugh", chest_world() + Vector3(0, 0.4, 0), -2.0, randf_range(0.95, 1.08))
	if what == "splat":
		_add_stain()


func _add_stain() -> void:
	if _stain == null:
		_stain = MeshInstance3D.new()
		var q := QuadMesh.new()
		q.size = Vector2(0.42, 0.42)
		_stain.mesh = q
		var m := ShaderMaterial.new()
		m.shader = preload("res://shaders/splat.gdshader")
		m.set_shader_parameter("color", Color(0.75, 0.4, 0.12))
		m.set_shader_parameter("seed", randf() * 10.0)
		_stain.material_override = m
		_stain.position = CHEST + Vector3(0, 0, 0.17)
		_rig.add_child(_stain)
	var mat := _stain.material_override as ShaderMaterial
	mat.set_shader_parameter("alpha", 1.0)
	mat.set_shader_parameter("seed", randf() * 10.0)


## Once a frame. head: the player's head in the game frame (he turns to face it).
func tick(delta: float, head: Vector3) -> void:
	var to := head - position                         # (he lives in the game frame, as the head does)
	to.y = 0.0
	if to.length() > 0.1:
		var want := atan2(to.x, to.z)                  # the model faces +Z
		_rig.rotation.y = lerp_angle(_rig.rotation.y, want, minf(delta * 3.0, 1.0))
	if _release_at >= 0.0:
		_release_at -= delta
		_place_held()
	elif _anim and not _anim.is_playing():
		_anim.speed_scale = 1.0
	if _bubble.visible:
		_bubble_t -= delta
		if _bubble_t <= 0.0:
			_bubble.visible = false
	if _stain:
		var sm := _stain.material_override as ShaderMaterial
		sm.set_shader_parameter("alpha", maxf(float(sm.get_shader_parameter("alpha")) - delta * 0.12, 0.0))
	_react_t += delta
	var t := _react_t
	match _react:
		"laugh":                                        # bounces with laughter, three times
			_rig.position = Vector3(0, absf(sin(t * 11.0)) * 0.07 * maxf(1.0 - t / 1.3, 0.0), 0)
			_rig.rotation.x = -0.08 * maxf(1.0 - t / 1.3, 0.0)
		"angry", "apple_hit":                           # shakes his head and body
			_rig.rotation.z = sin(t * 28.0) * 0.06 * maxf(1.0 - t / 0.9, 0.0)
		"splat":                                        # knocked back a step, and back to his cart
			var k := maxf(1.0 - t / 1.4, 0.0)
			_rig.rotation.x = -0.32 * sin(minf(t * 6.0, PI)) * k - 0.05 * k
			_rig.position = Vector3(0, 0, -0.35 * sin(minf(t * 4.0, PI * 0.5)) * k)
		"wow", "mega":                                  # arms of the anim aside: a little hop
			_rig.position = Vector3(0, absf(sin(t * 7.0)) * 0.12 * maxf(1.0 - t / 0.9, 0.0), 0)
		"apple":
			_rig.rotation.z = 0.12 * sin(minf(t * 3.0, PI)) * maxf(1.0 - t / 1.2, 0.0)   # a shrug to one side
	if t > 1.6 and _react != "":
		_react = ""
		_rig.position = Vector3.ZERO
		_rig.rotation.x = 0.0
		_rig.rotation.z = 0.0


func _place_held() -> void:
	if _held:
		_held.global_position = hand_world()
