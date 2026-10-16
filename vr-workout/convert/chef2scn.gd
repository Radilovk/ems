## The Mixamo chef (owner's Throw.fbx: a "Man Chef" skin + the throw) → assets/chef/chef.scn for the headset.
## Blender's FBX import keeps only the file's first take (an empty one), so this runs in Godot, whose FBX importer
## (ufbx) reads the throw. The face keeps the blend shapes the game's expressions use (FACE: smile, frown, brows,
## blinks, squints, visemes for talking — of the 128 Character Creator shapes), the clothes lose theirs; the empty take
## is dropped; the textures (≤ 1024 px) are saved beside the scene as chef_albedo.png / chef_normal.jpg (the game puts
## them back on: scripts/game/chef.gd). More motions of the same Mixamo character (the owner's Defeat, Strong
## Gesture, Spat In Face, Shove Reaction …) come in as extra animations of the one AnimationPlayer.
## usage: in any Godot 4.4 project that has the .fbx files imported:
##   godot --headless --path <project> -s chef2scn.gd -- res://<throw>.fbx /abs/path/chef.scn [res://<x>.fbx=<name> …]
extends SceneTree

const FACE := ["Eyes_Blink", "Eye_Blink_L", "Eye_Blink_R", "Eye_Wide_L", "Eye_Wide_R", "Eye_Squint_L", "Eye_Squint_R",
	"Brow_Raise_Left", "Brow_Raise_Right", "Brow_Drop_Left", "Brow_Drop_Right", "A01_Brow_Inner_Up",
	"Mouth_Smile", "Mouth_Smile_L", "Mouth_Frown", "Mouth_Pucker", "Mouth_Widen", "Mouth_Lips_Tight", "Mouth_Open",
	"Mouth_Snarl_Upper_L", "Mouth_Snarl_Upper_R", "Nose_Scrunch", "Cheek_Raise_L", "Cheek_Raise_R", "A20_Cheek_Puff",
	"A25_Jaw_Open", "V_Open", "V_Wide", "V_Tight_O", "V_Explosive", "V_Dental_Lip", "V_Lip_Open"]

func _init() -> void:
	_run.call_deferred()


func _run() -> void:
	var a := OS.get_cmdline_user_args()
	var n: Node = load(a[0]).instantiate()
	get_root().add_child(n)
	await process_frame
	var dir := String(a[1]).get_base_dir()
	var faces := {}                                    # mesh name → ImporterMesh with all its shapes (from the FBX)
	var doc := FBXDocument.new()
	var st := FBXState.new()
	if doc.append_from_file(ProjectSettings.globalize_path(a[0]), st) == OK:
		for gm in st.get_meshes():
			var im: ImporterMesh = gm.mesh
			if im.get_blend_shape_count() > 10:
				faces["CC_Game_Body"] = im
	var done := {}
	for mi in n.find_children("*", "MeshInstance3D", true, false):
		var m: Mesh = (mi as MeshInstance3D).mesh
		if m is ArrayMesh and (m as ArrayMesh).get_blend_shape_count() > 0:
			# The imported (compressed) mesh will not hand out its shapes: the face is built again from the FBX's own
			# uncompressed data with the FACE shapes, the clothes without any.
			var flat := _rebuild(m as ArrayMesh, faces.get(mi.name) if mi.name == "CC_Game_Body" else null)
			(mi as MeshInstance3D).mesh = flat
			m = flat
			print("  ", mi.name, ": ", flat.get_blend_shape_count(), " face shapes")
		for s in m.get_surface_count():
			var mat = m.surface_get_material(s)
			if not (mat is BaseMaterial3D) or done.has(mat):
				continue
			done[mat] = true
			for p in ["albedo_texture", "normal_texture", "roughness_texture", "metallic_texture", "ao_texture"]:
				var t = mat.get(p)
				if not (t is Texture2D):
					continue
				var img: Image = t.get_image()
				if img.is_compressed():
					img.decompress()
				if img.get_width() > 1024:
					img.resize(1024, 1024 * img.get_height() / img.get_width(), Image.INTERPOLATE_LANCZOS)
				if p == "albedo_texture":           # (its alpha cuts out the eyelashes and the hair's edge)
					img.save_png(dir.path_join("chef_albedo.png"))
				elif p == "normal_texture":
					img.save_jpg(dir.path_join("chef_normal.jpg"), 0.9)
				mat.set(p, null)                    # set again by Chef from the files beside the scene
	var ap: AnimationPlayer = n.find_child("AnimationPlayer")
	var lib := ap.get_animation_library("")
	for name in lib.get_animation_list():
		if lib.get_animation(name).length < 0.5:
			lib.remove_animation(name)
		elif name != "throw":
			lib.rename_animation(name, "throw")
	for extra in a.slice(2):                         # res://x.fbx=name: one more motion of the same character
		var pair := String(extra).split("=")
		var other: Node = load(pair[0]).instantiate()
		var oap: AnimationPlayer = other.find_child("AnimationPlayer")
		for name in oap.get_animation_list():
			var an := oap.get_animation(name)
			if an.length >= 0.5:
				lib.add_animation(pair[1], an.duplicate(true))
		other.free()
	for c in n.get_children():
		_own(c, n)
	var ps := PackedScene.new()
	ps.pack(n)
	print("save ", a[1], " err=", ResourceSaver.save(ps, a[1], ResourceSaver.FLAG_COMPRESS), " anims=", lib.get_animation_list())
	quit()


## The mesh again: from `im` (all its shapes) with only FACE kept, or without shapes from `m` itself.
func _rebuild(m: ArrayMesh, im) -> ArrayMesh:
	var flat := ArrayMesh.new()
	if im == null:
		for s in m.get_surface_count():
			flat.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, m.surface_get_arrays(s), [], {},
				m.surface_get_format(s) & ~Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY)
			flat.surface_set_material(s, m.surface_get_material(s))
		return flat
	var src := im as ImporterMesh
	var keep: Array[int] = []
	for i in src.get_blend_shape_count():
		if String(src.get_blend_shape_name(i)) in FACE:
			keep.append(i)
	flat.blend_shape_mode = src.get_blend_shape_mode()
	for i in keep:
		flat.add_blend_shape(src.get_blend_shape_name(i))
	for s in src.get_surface_count():
		var shapes := []
		for i in keep:
			shapes.append(src.get_surface_blend_shape_arrays(s, i))
		flat.add_surface_from_arrays(src.get_surface_primitive_type(s), src.get_surface_arrays(s), shapes, {},
			src.get_surface_format(s) & ~Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY)
		flat.surface_set_material(s, m.surface_get_material(mini(s, m.get_surface_count() - 1)))
	return flat


func _own(c: Node, root: Node) -> void:
	c.owner = root
	for d in c.get_children():
		_own(d, root)
