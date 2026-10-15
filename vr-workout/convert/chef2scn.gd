## The Mixamo chef (owner's Throw.fbx: a "Man Chef" skin + the throw) → assets/chef/chef.scn for the headset.
## Blender's FBX import keeps only the file's first take (an empty one), so this runs in Godot, whose FBX importer
## (ufbx) reads the throw: the face's blend shapes and the empty take dropped, the textures (≤ 1024 px) saved beside
## the scene as chef_albedo.png / chef_normal.jpg (the game puts them back on: scripts/game/chef.gd).
## usage: in any Godot 4.4 project that has the .fbx imported:
##   godot --headless --path <project> -s chef2scn.gd -- res://<the>.fbx /abs/path/chef.scn
extends SceneTree

func _init() -> void:
	_run.call_deferred()


func _run() -> void:
	var a := OS.get_cmdline_user_args()
	var n: Node = load(a[0]).instantiate()
	get_root().add_child(n)
	await process_frame
	var dir := String(a[1]).get_base_dir()
	var done := {}
	for mi in n.find_children("*", "MeshInstance3D", true, false):
		var m: Mesh = (mi as MeshInstance3D).mesh
		if m is ArrayMesh and (m as ArrayMesh).get_blend_shape_count() > 0:    # face shapes: never seen from 8 m
			var flat := ArrayMesh.new()
			for s in m.get_surface_count():
				flat.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, m.surface_get_arrays(s), [], {},
					m.surface_get_format(s) & ~Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY)
				flat.surface_set_material(s, m.surface_get_material(s))
			(mi as MeshInstance3D).mesh = flat
			m = flat
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
	for c in n.get_children():
		_own(c, n)
	var ps := PackedScene.new()
	ps.pack(n)
	print("save ", a[1], " err=", ResourceSaver.save(ps, a[1], ResourceSaver.FLAG_COMPRESS), " anims=", lib.get_animation_list())
	quit()


func _own(c: Node, root: Node) -> void:
	c.owner = root
	for d in c.get_children():
		_own(d, root)
