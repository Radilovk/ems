## The chef (scenario "Готвачът"): a cook in an apron and cap at his street-food cart, a few metres ahead on the square,
## who throws food at the player on the beat — and takes it personally.
##
## He is the owner's Mixamo "Man Chef" with one motion, an overarm throw (assets/chef/chef.scn, convert/chef2scn.gd).
## He works BEHIND his cart, like a real vendor: the counter (1.03 m) is between him and the player, his stock laid
## out on it. Before each throw he bends over the counter, reaches for the portion with his right hand and takes it
## (Reach: the spine and the right arm turned by a skeleton modifier over the animation), straightens up into the
## throw and lets go over the counter. The food leaves his hand RELEASE seconds into the throw: the game asks him to
## start so that this falls exactly when the food must leave to land on its beat (on fast levels he skips the reach
## and hurries the throw).
## Everything else is his face for the game: he laughs when the player eats, gets cross at a mighty smash, staggers
## back when a mighty hit sends the food back into him, announces the MEGA burger, sulks at an eaten apple. His words
## are a bubble over his head and his own voice from his mouth, in the room (ChefVoice: one real voice actor for every
## word, laugh, grunt and cry — "Ha ha ha! Clean-up on aisle four!", "Oh my god!", a grunt with each throw; cut by
## gen/make_chef_voice.py). One man, one mouth: a new reaction cuts what he was saying, a call-out or a throw's grunt
## waits until he has finished.
##
## Alive in the face too (Face): the Character Creator face shapes the converter keeps — he blinks, laughs with his
## eyes when the player eats, frowns at a mighty smash, winces when food hits him, looks sad at a defeat, grunts as he
## throws, and his lips and jaw move while he talks. Whole-body reactions are the owner's Mixamo motions of the same
## character (REACT): Spat In Face (food sent back), Shove Reaction (a mighty smash), Strong Gesture (the big one
## announced, the player eats again and again), Defeat (the big one smashed, a level won by the player).
class_name Chef
extends Node3D

const SCENE := preload("res://assets/chef/chef.scn")
const CART := preload("res://assets/chef/food_cart.glb")
const FONT := preload("res://assets/fonts/Inter-SemiBold.otf")
const RELEASE := 0.84                       # s into the throw: the hand is fastest and ahead of the head (measured)
const HAND := "CC_Base_R_Hand"
const CHEST := Vector3(0, 1.25, 0)          # where a returned portion lands on him (his own space)
# The cart, measured (convert: food_cart.glb is centred): its counter top 1.03 m above the ground, 1.33 m above the
# model's middle; its back edge 0.74 m behind the middle, the trays from 0.57 m behind to 0.66 m in front.
const CART_LIFT := 1.3285
const CART_AT := Vector3(0.6, 0.0, 1.17)    # the cart's middle from his feet: he stands behind its left part
const COUNTER := 1.03
const PICK := Vector3(-0.25, 1.03, 0.62)    # the spot on the counter in reach of his right hand (his space)
const REACH_MAX := 0.55                     # s at most for bending to the counter and back up (when there is time)
const STOCK := ["burger", "donut", "cheeseburger", "ice_cream", "croissant", "donut", "burger", "cake"]

## event → [the motion ("" = stay as he is), the face, seconds of that face]
const REACT := {
	"laugh": ["", "laugh", 1.6], "gloat": ["gesture", "smug", 2.0], "angry": ["shove", "surprise", 1.4],
	"splat": ["spat", "pain", 2.4], "wow": ["shove", "surprise", 1.6], "apple": ["", "disgust", 1.4],
	"apple_hit": ["", "laugh", 1.2], "mega": ["gesture", "smug", 2.0], "cake": ["gesture", "smug", 2.0],
	"boss_down": ["defeat", "sad", 5.0], "lost": ["defeat", "sad", 4.0], "won": ["gesture", "smug", 2.2],
}
const GESTURE_LEN := 1.9                    # s of Strong Gesture before a big one is thrown
const MOUTH := Vector3(0, 1.68, 0.12)       # where his voice comes from (his own space)
const TAUNT := 0.15                         # share of throws he calls out ("Come on, do something!")
const CHUCKLE := 0.25                       # share of eaten portions he only laughs at (else a mocking line)
## Bulgarian words for what has no voice clip (a rules card's title is said as it is)
const LINES := {
	"laugh": ["Ха-ха! Още едно?", "Мммм, вкусно ли беше?", "Яж, яж!", "Браво, още калории!", "Това ще остане по корема!",
		"Сготвено с любов!"],
	"angry": ["Ей! Храната ми!", "Не така!", "Толкова труд…", "Ах ти!", "Що за маниери!"],
	"splat": ["Ох! Право в мен!", "Ауу!", "Не е честно!", "Престилката ми!"],
	"apple": ["Пфу, ябълка…", "Скучно и полезно.", "Добре де, витамини."],
	"apple_hit": ["Ха! Ябълката удари?!", "Тя беше полезната!"],
	"mega": ["МЕГА БУРГЕР!", "Специалитетът на заведението!", "1650 калории — опитай!"],
	"cake": ["Цяла торта! Честит рожден ден!", "2900 калории любов!", "Тортата е за теб!"],
	"taunt": ["Хапни си!", "Гладен ли си?", "Поръчка!", "Топло, топло!", "Още една порция!"],
	"wow": ["Леле, каква сила!", "Не мога да те нахраня!", "Ти си машина!"],
	"gloat": ["Още! Още!", "Обичаш ми гозбите!", "Ще те угоя!"],
	"boss_down": ["Не! Специалитетът ми!", "Цял ден я правих…", "Това беше върхът ми!"],
	"lost": ["Добре де… победи ме.", "Нищо не изяде…", "Затварям за днес."],
	"won": ["Вкусно, нали?", "Ще се върнеш пак!", "Добър апетит!"],
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
var _reach: Reach
var _reach_t := -1.0                        # s into the reach (< 0: none) …
var _reach_len := 0.0                       # … which lasts this long; the throw starts at its end
var _throw_k := 1.0                         # the throw's pace then
var _on_counter: Node3D                     # the portion waiting at PICK, until his hand takes it
var _acting := ""                           # a whole-body reaction playing now (REACT), "" = idle / throwing
var _pre_t := -1.0                          # s left of the show before a big one is thrown (< 0: none)
var _pre_id := ""
var face: Face
var sfx: Sfx                                # set by the game: the voice follows its mute and effects volume
var _voice: AudioStreamPlayer3D
var _last_line := {}                        # event → the clip said last time (never the same twice in a row)


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
	face = Face.new(model, _skel)
	if _skel:
		var jaw := JawEyes.new()
		jaw.face = face
		_skel.add_child(jaw)
		_reach = Reach.new()
		_reach.influence = 0.0
		_skel.add_child(_reach)
	var cart: Node3D = CART.instantiate()           # in front of him, its sign to the player
	for mi in cart.find_children("*", "MeshInstance3D", true, false):
		(mi as MeshInstance3D).cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	cart.position = CART_AT + Vector3(0, CART_LIFT, 0)
	add_child(cart)
	_lay_out_stock()
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
	_voice = AudioStreamPlayer3D.new()
	_voice.position = MOUTH
	_voice.unit_size = 5.0                          # full voice at his usual 4.5–6.5 m, quieter further away
	_voice.max_distance = 45.0
	_voice.attenuation_filter_cutoff_hz = 9000.0
	_rig.add_child(_voice)


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


## Wind up for `id`, letting go in `in_sec` seconds: with time to spare he first reaches over the counter and takes it
## (up to REACH_MAX), then throws at his own pace (RELEASE); short of time he hurries, or starts the throw part-way.
func wind_up(id: String, in_sec: float) -> void:
	if _anim == null:
		return
	_acting = ""
	if Defs.boss(id) and in_sec >= GESTURE_LEN + RELEASE + 0.3:   # the big one: first the show
		_pre_t = GESTURE_LEN
		_pre_id = id
		_release_at = in_sec
		_play("gesture")
		face.mood("smug", GESTURE_LEN + 0.5)
		say(id)
		return
	_wind(id, in_sec)


func _wind(id: String, in_sec: float) -> void:
	_pre_t = -1.0
	face.mood("effort", in_sec + 0.3)
	_reach_len = clampf(in_sec - RELEASE * 0.85, 0.0, REACH_MAX)
	if _reach_len < 0.3:
		_reach_len = 0.0                           # no time to bend down: it is already in his hand
	var left := in_sec - _reach_len
	_throw_k = clampf(RELEASE / maxf(left, 0.05), 0.8, 2.6)
	_release_at = in_sec
	if _held:
		_held.queue_free()
		_held = null
	if _on_counter:
		_on_counter.queue_free()
		_on_counter = null
	_held_id = id
	var size := float(Defs.FOODS[id].size) * (0.8 if Defs.boss(id) else 1.0)
	if _reach_len > 0.0:
		_on_counter = Elem.food_model(id, size)     # it waits on the counter until his hand gets there
		add_child(_on_counter)
		_on_counter.position = PICK + Vector3(0, size * 0.4, 0)
		_reach_t = 0.0
		_anim.play("throw", 0.15)
		_anim.seek(0.0, true)
		_anim.pause()
	else:
		_take(id, size)
		_start_throw(left)
	if not Defs.boss(id) and randf() < TAUNT and not speaking():
		say("taunt")


func _take(id: String, size: float) -> void:
	if _on_counter:
		_on_counter.queue_free()
		_on_counter = null
	_held = Elem.food_model(id, size)
	add_child(_held)
	_place_held()


func _start_throw(left: float) -> void:
	_reach_t = -1.0
	var start := maxf(RELEASE - left * _throw_k, 0.0)   # too little time even at his fastest: start part-way through
	_anim.speed_scale = _throw_k
	_anim.play("throw", 0.12)
	_anim.seek(start, true)


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
	if (_held != null or _on_counter != null) and face:   # (a real throw: the portion in his hand or still on the counter)
		face.grunt()
		if not speaking():
			say("throw")                               # (his effort as the food leaves his hand)
	_release_at = -1.0
	_pre_t = -1.0
	_reach_t = -1.0
	if _on_counter:
		_on_counter.queue_free()
		_on_counter = null
	if _held:
		_held.queue_free()
		_held = null


## He says something for an event (ChefVoice.LINES: his voice + the same words in the bubble), or `extra` / a key
## without a clip as text only.
func say(what: String, extra := "") -> void:
	var sec := 0.0
	if extra == "" and ChefVoice.LINES.has(what):
		var line: Array = _pick(what)
		sec = _speak(String(line[0]))
		if String(line[1]) == "":                     # a grunt, a cry: his face moves, no bubble
			if face:
				face.talk(sec * 0.8)
			return
		_bubble.text = String(line[1])
	else:
		var lines: Array = LINES.get(what, [what])
		_bubble.text = (lines[randi() % lines.size()] if extra == "" else extra)
	_bubble.visible = true
	_bubble_t = maxf(1.8, sec + 0.5)
	if face:
		face.talk(sec - 0.1 if sec > 0.0 else clampf(_bubble.text.length() * 0.065, 0.5, 1.7))
	_bubble.scale = Vector3.ONE * 0.3
	var tw := _bubble.create_tween()
	tw.tween_property(_bubble, "scale", Vector3.ONE, 0.25).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)


## Is he talking now (his voice still playing)?
func speaking() -> bool:
	return _voice != null and _voice.playing


## One of the event's lines, never the one he said last time for it.
func _pick(what: String) -> Array:
	var lines: Array = ChefVoice.LINES[what]
	var i := randi() % lines.size()
	if lines.size() > 1 and String(lines[i][0]) == String(_last_line.get(what, "")):
		i = (i + 1 + randi() % (lines.size() - 1)) % lines.size()
	_last_line[what] = String(lines[i][0])
	return lines[i]


## His voice from his mouth (3D, through the effects' hall), cutting whatever he was saying. → its length in s.
func _speak(clip: String) -> float:
	var st := ChefVoice.stream(clip)
	if st == null or _voice == null:
		return 0.0
	_voice.stop()
	_voice.stream = st
	_voice.bus = sfx.sfx_bus() if sfx else &"Master"
	_voice.pitch_scale = randf_range(0.98, 1.02)      # (the same man; only a breath of difference between takes)
	if sfx == null or not sfx.muted:
		_voice.play()
	return st.get_length()


## What the player did, seen on him (REACT): his face, his body, his words. laugh (the player ate) · gloat (ate
## again and again) · angry (a mighty smash) · splat (hit by a portion sent back) · wow (a run of mighty hits) · apple
## (the player ate an apple) · apple_hit (smashed it) · boss_down (the big one smashed) · lost / won (a level's end).
## A whole-body motion plays only between throws: a throw that is due takes over.
func react(what: String, _sfx: Sfx = null) -> void:
	var r: Array = REACT.get(what, ["", "neutral", 1.0])
	_react = what
	_react_t = 0.0
	say("chuckle" if what == "laugh" and randf() < CHUCKLE else what)
	face.mood(String(r[1]), float(r[2]))
	if _acting == "defeat" and (what == "lost" or what == "won"):
		return                                         # (the big one smashed just before the level's end: stays down)
	if String(r[0]) != "" and _release_at < 0.0 and _reach_t < 0.0:
		var a := String(r[0])
		if a == "shove" and randf() < 0.5:
			a = "shove2"                               # (its mirror: pushed to the other side)
		_play(a)
	if what == "splat":
		_add_stain()


func _play(a: String) -> void:
	if _anim == null or not _anim.has_animation(a):
		return
	_acting = a
	_anim.speed_scale = 1.0
	_anim.play(a, 0.25)


## Back to standing at the counter, ready (the throw's first frame, held).
func _idle() -> void:
	_acting = ""
	_anim.speed_scale = 1.0
	_anim.play("throw", 0.35)
	_anim.seek(0.0, true)
	_anim.pause()


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
	if _pre_t >= 0.0:                                 # the show before a big one, then the throw
		_pre_t -= delta
		_release_at -= delta
		if _pre_t < 0.0:
			_wind(_pre_id, _release_at)
	elif _acting != "" and (not _anim.is_playing() or _anim.current_animation != _acting):
		_idle()
	face.tick(delta)
	if _reach_t >= 0.0:                               # bending to the counter, taking it, straightening up
		_reach_t += delta
		var h := _reach_len * 0.5
		var k := _reach_t / h if _reach_t < h else maxf(1.0 - (_reach_t - h) / h, 0.0)
		_reach.influence = smoothstep(0.0, 1.0, k)
		_reach.target = global_transform * PICK + Vector3(0, 0.05, 0)
		if _reach_t >= h and _held == null:
			_take(_held_id, float(Defs.FOODS[_held_id].size) * (0.8 if Defs.boss(_held_id) else 1.0))
		if _reach_t >= _reach_len:
			_start_throw(_release_at - delta)
	elif _reach and _reach.influence > 0.0:
		_reach.influence = maxf(_reach.influence - delta * 5.0, 0.0)
	if _release_at >= 0.0 and _pre_t < 0.0:
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
		"apple_hit":                                    # shakes his head and body
			_rig.rotation.z = sin(t * 28.0) * 0.06 * maxf(1.0 - t / 0.9, 0.0)
		"splat" when _acting == "":                    # (no motion: knocked back a step by hand)
			var k := maxf(1.0 - t / 1.4, 0.0)
			_rig.rotation.x = -0.32 * sin(minf(t * 6.0, PI)) * k - 0.05 * k
			_rig.position = Vector3(0, 0, -0.35 * sin(minf(t * 4.0, PI * 0.5)) * k)
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


## His stock on the counter: a row of portions on the trays to his left and in front, none at PICK (his hand's spot).
func _lay_out_stock() -> void:
	var spots := [Vector3(-0.95, 0, 0.8), Vector3(-0.6, 0, 1.15), Vector3(0.15, 0, 0.8), Vector3(0.55, 0, 1.1),
		Vector3(0.95, 0, 0.78), Vector3(1.35, 0, 1.12), Vector3(-0.2, 0, 1.2), Vector3(0.6, 0, 0.72)]
	for i in spots.size():
		var id: String = STOCK[i % STOCK.size()]
		var size := float(Defs.FOODS[id].size) * 0.85
		var m := Elem.food_model(id, size)
		add_child(m)
		m.position = Vector3(spots[i].x, COUNTER + size * 0.35, spots[i].z)
		m.rotation.y = randf() * TAU


## Over the throw animation: bend the spine to the counter and swing the right arm so the hand reaches `target`
## (world). Its influence (0 … 1) blends it in and out; the throw itself runs with influence 0.
class Reach extends SkeletonModifier3D:
	const LEAN := 0.42                       # rad, the upper body over the counter (≈ 24°)
	var target := Vector3.ZERO
	var _spine := -1
	var _arm := -1
	var _hand := -1

	func _process_modification() -> void:
		var sk := get_skeleton()
		if sk == null:
			return
		if _spine < 0:
			_spine = sk.find_bone("CC_Base_Spine01")
			_arm = sk.find_bone("CC_Base_R_Upperarm")
			_hand = sk.find_bone("CC_Base_R_Hand")
			if _spine < 0 or _arm < 0 or _hand < 0:
				return
		_turn(sk, _spine, Basis(Vector3.RIGHT, LEAN))
		var s: Vector3 = sk.get_bone_global_pose(_arm).origin
		var h: Vector3 = sk.get_bone_global_pose(_hand).origin
		var t: Vector3 = sk.global_transform.affine_inverse() * target
		var a := (h - s).normalized()
		var b := (t - s).normalized()
		if a.cross(b).length() > 0.001:
			_turn(sk, _arm, Basis(Quaternion(a, b)))

	## Turns a bone by `by` (skeleton space) about its own origin.
	func _turn(sk: Skeleton3D, bone: int, by: Basis) -> void:
		var g: Transform3D = sk.get_bone_global_pose(bone)
		var parent := sk.get_bone_parent(bone)
		var pg: Basis = sk.get_bone_global_pose(parent).basis if parent >= 0 else Basis.IDENTITY
		sk.set_bone_pose_rotation(bone, (pg.inverse() * (by * g.basis)).get_rotation_quaternion())



## His face: the kept Character Creator shapes (convert/chef2scn.gd FACE) driven by a mood, blinks, a grunt as he
## throws and visemes while he talks. Every shape eases to its target; the jaw bone follows `jaw` (JawEyes), so the
## teeth and tongue open with the lips.
class Face extends RefCounted:
	const MOODS := {
		"neutral": {"Mouth_Smile": 0.12},
		"laugh": {"Mouth_Smile": 1.0, "Cheek_Raise_L": 0.8, "Cheek_Raise_R": 0.8, "Eye_Squint_L": 0.6, "Eye_Squint_R": 0.6,
			"Mouth_Open": 0.25},
		"smug": {"Mouth_Smile_L": 0.9, "Brow_Raise_Left": 0.7, "Eye_Squint_R": 0.35, "Cheek_Raise_L": 0.5},
		"angry": {"Brow_Drop_Left": 1.0, "Brow_Drop_Right": 1.0, "Mouth_Frown": 0.7, "Nose_Scrunch": 0.6,
			"Mouth_Snarl_Upper_L": 0.5, "Mouth_Snarl_Upper_R": 0.5, "Eye_Squint_L": 0.4, "Eye_Squint_R": 0.4},
		"surprise": {"Brow_Raise_Left": 1.0, "Brow_Raise_Right": 1.0, "A01_Brow_Inner_Up": 0.6, "Eye_Wide_L": 1.0,
			"Eye_Wide_R": 1.0, "V_Tight_O": 0.5},
		"pain": {"Eye_Squint_L": 1.0, "Eye_Squint_R": 1.0, "Eyes_Blink": 0.6, "Nose_Scrunch": 1.0, "Mouth_Frown": 0.6,
			"Mouth_Snarl_Upper_L": 0.6, "Mouth_Snarl_Upper_R": 0.6, "Brow_Drop_Left": 0.8, "Brow_Drop_Right": 0.8},
		"sad": {"A01_Brow_Inner_Up": 1.0, "Mouth_Frown": 1.0, "Eyes_Blink": 0.3},
		"disgust": {"Nose_Scrunch": 0.8, "Mouth_Frown": 0.5, "Mouth_Snarl_Upper_L": 0.7, "Brow_Drop_Left": 0.5,
			"Eye_Squint_L": 0.5},
		"effort": {"Brow_Drop_Left": 0.45, "Brow_Drop_Right": 0.45, "Mouth_Lips_Tight": 0.7, "Eye_Squint_L": 0.25,
			"Eye_Squint_R": 0.25},
	}
	const JAW := {"laugh": 0.35, "surprise": 0.45, "pain": 0.15, "sad": 0.05}
	# a syllable: [shape, its weight, how far the jaw opens]
	const VISEMES := [["V_Open", 0.8, 0.55], ["V_Wide", 0.7, 0.3], ["V_Tight_O", 0.8, 0.35], ["V_Explosive", 0.8, 0.0],
		["V_Dental_Lip", 0.7, 0.1], ["V_Lip_Open", 0.6, 0.25], ["", 0.0, 0.0]]

	var jaw := 0.0                       # 0 … 1, read by JawEyes
	var _mesh: MeshInstance3D
	var _idx := {}                       # shape name → index
	var _now := {}                       # shape name → current weight
	var _mood := "neutral"
	var _mood_t := 0.0
	var _talk_t := 0.0
	var _syl_t := 0.0
	var _syl: Array = ["", 0.0, 0.0]
	var _blink_in := 2.0
	var _blink := 0.0
	var _grunt := 0.0
	var _t := 0.0

	func _init(model: Node, _skel: Skeleton3D) -> void:
		for mi in model.find_children("*", "MeshInstance3D", true, false):
			var m := mi as MeshInstance3D
			if m.mesh is ArrayMesh and (m.mesh as ArrayMesh).get_blend_shape_count() > 1:
				_mesh = m
				for i in (m.mesh as ArrayMesh).get_blend_shape_count():
					_idx[String((m.mesh as ArrayMesh).get_blend_shape_name(i))] = i
				break

	func mood(name: String, sec: float) -> void:
		_mood = name if MOODS.has(name) else "neutral"
		_mood_t = sec

	func talk(sec: float) -> void:
		_talk_t = sec
		_syl_t = 0.0

	func grunt() -> void:
		_grunt = 0.3

	func tick(delta: float) -> void:
		_t += delta
		if _mood_t > 0.0:
			_mood_t -= delta
			if _mood_t <= 0.0:
				_mood = "neutral"
		var want: Dictionary = (MOODS[_mood] as Dictionary).duplicate()
		var j: float = JAW.get(_mood, 0.0)
		if _mood == "laugh":                              # ha-ha-ha
			j = 0.15 + 0.35 * absf(sin(_t * 9.0))
		if _talk_t > 0.0:                                 # syllables while the bubble speaks
			_talk_t -= delta
			_syl_t -= delta
			if _syl_t <= 0.0:
				_syl = VISEMES[randi() % VISEMES.size()]
				_syl_t = randf_range(0.09, 0.16)
			for k in want.keys():
				if String(k).begins_with("Mouth") or String(k).begins_with("V_"):
					want[k] = float(want[k]) * 0.5
			if String(_syl[0]) != "":
				want[_syl[0]] = maxf(float(want.get(_syl[0], 0.0)), float(_syl[1]))
			j = maxf(j * 0.5, float(_syl[2]))
		if _grunt > 0.0:                                  # "hup!" as the food leaves his hand
			_grunt -= delta
			want["V_Open"] = 0.7
			want["Brow_Drop_Left"] = 0.8
			want["Brow_Drop_Right"] = 0.8
			j = maxf(j, 0.45)
		_blink_in -= delta                                # blinks every 2–5 s (and at once after a fright)
		if _blink_in <= 0.0:
			_blink = 0.14
			_blink_in = randf_range(2.0, 5.0)
		if _blink > 0.0:
			_blink -= delta
			want["Eyes_Blink"] = 1.0
		jaw = lerpf(jaw, j, minf(delta * 14.0, 1.0))
		if _mesh == null:
			return
		var rate := minf(delta * 12.0, 1.0)
		for k in _idx.keys():
			var cur: float = _now.get(k, 0.0)
			var v := lerpf(cur, clampf(float(want.get(k, 0.0)), 0.0, 1.0), 1.0 if k == "Eyes_Blink" else rate)
			if absf(v - cur) > 0.001 or not _now.has(k):
				_now[k] = v
				_mesh.set_blend_shape_value(_idx[k], v)


## Opens the jaw bone with Face.jaw (teeth, tongue and chin follow), over whatever motion plays.
class JawEyes extends SkeletonModifier3D:
	const OPEN := 0.32                        # rad at jaw = 1
	var face: Face
	var _jaw := -1

	func _process_modification() -> void:
		var sk := get_skeleton()
		if sk == null or face == null or face.jaw < 0.01:
			return
		if _jaw < 0:
			_jaw = sk.find_bone("CC_Base_JawRoot")
			if _jaw < 0:
				return
		var g: Transform3D = sk.get_bone_global_pose(_jaw)
		var p := sk.get_bone_parent(_jaw)
		var pg: Basis = sk.get_bone_global_pose(p).basis if p >= 0 else Basis.IDENTITY
		var turned := Basis(Vector3.RIGHT, OPEN * face.jaw) * g.basis
		sk.set_bone_pose_rotation(_jaw, (pg.inverse() * turned).get_rotation_quaternion())
