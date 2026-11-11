## The player's legs as drawn (Avatar) in a few poses, for a look: standing, a squat, a knee raise, a front kick,
## a step — real proportions (eye height 1.60 m), the joints where the sensors' solve puts them.
##   xvfb-run -a -s "-screen 0 1600x900x24" godot --path vr-workout --rendering-driver opengl3 \
##     --script res://test/legs_look.gd -- --out=legs.png [--view=side|front|top|eye] [--pose=all|stand|squat|knee|kick]
extends SceneTree

const STAND_H := 1.60
var args := {}


func _initialize() -> void:
	for a in OS.get_cmdline_user_args():
		if a.begins_with("--") and "=" in a:
			args[a.substr(2, a.find("=") - 2)] = a.substr(a.find("=") + 1)
	var root := Node3D.new()
	get_root().add_child(root)
	var env := WorldEnvironment.new()
	var e := Environment.new()
	e.background_mode = Environment.BG_COLOR
	e.background_color = Color(0.11, 0.12, 0.15)
	e.ambient_light_source = Environment.AMBIENT_SOURCE_COLOR
	e.ambient_light_color = Color(0.5, 0.55, 0.62)
	e.ambient_light_energy = 0.7
	e.tonemap_mode = Environment.TONE_MAPPER_FILMIC
	env.environment = e
	root.add_child(env)
	var sun := DirectionalLight3D.new()
	sun.rotation_degrees = Vector3(-50, 35, 0)
	sun.light_energy = 1.3
	root.add_child(sun)
	var fill := DirectionalLight3D.new()
	fill.rotation_degrees = Vector3(-20, -140, 0)
	fill.light_energy = 0.5
	root.add_child(fill)
	var fl := MeshInstance3D.new()
	var pm := PlaneMesh.new()
	pm.size = Vector2(8, 4)
	fl.mesh = pm
	var fm := StandardMaterial3D.new()
	fm.albedo_color = Color(0.2, 0.21, 0.24)
	fl.material_override = fm
	root.add_child(fl)
	var poses: Array = ["stand", "squat", "knee", "kick", "step"] if args.get("pose", "all") == "all" else [args.pose]
	var i := 0
	for p in poses:
		var av := Avatar.new()
		root.add_child(av)
		var frame := Node3D.new()
		frame.position = Vector3((i - (poses.size() - 1) * 0.5) * 0.95, 0, 0)
		root.add_child(frame)
		av.set_meta("pose", p)
		av.set_meta("frame", frame)
		i += 1
	var cam := Camera3D.new()
	root.add_child(cam)
	var view: String = args.get("view", "side")
	var w := poses.size() * 0.95
	match view:
		"front":
			cam.look_at_from_position(Vector3(0, 0.75, -1.0 - w * 0.9), Vector3(0, 0.55, 0))
		"top":
			cam.look_at_from_position(Vector3(0, 1.55, 0.05), Vector3(0, 0, -0.35))
			cam.fov = 95
		"eye":                                          # as the player sees their own legs, looking down
			cam.look_at_from_position(Vector3(0, STAND_H, -0.05), Vector3(0, 0.15, -0.4))   # the eyes ~5 cm ahead of the hips
			cam.fov = 90
		"three":                                        # three quarters, close
			cam.look_at_from_position(Vector3(w * 0.3 + 0.9, 1.0, -1.0 - w * 0.25), Vector3(0, 0.5, 0))
			cam.fov = 50
		_:
			cam.look_at_from_position(Vector3(w * 0.45 + 1.3, 0.6, -0.15), Vector3(0, 0.5, -0.15))
			cam.fov = 55
	cam.current = true
	for f in 4:
		await process_frame
		for av in root.get_children():
			if av is Avatar:
				var b := _body(String(av.get_meta("pose")))
				(av as Avatar).update(b, av.get_meta("frame"), 1, {"hand": 3.0, "foot": 3.0}, cam.global_position, 1.0 / 72.0)
	await RenderingServer.frame_post_draw
	get_root().get_texture().get_image().save_png(args.get("out", "legs.png"))
	quit(0)


## A pose (frame space, −z ahead): hips, knees, ankles from angles, as the leg solve gives them.
func _body(pose: String) -> PlayerBody:
	var H := STAND_H / 0.936
	var lt := 0.245 * H
	var ls := 0.246 * H
	var ah := 0.039 * H
	var hw := 0.052 * H
	var b := PlayerBody.new()
	var legs := {}
	# per side: [hip flexion (thigh forward from down, deg), knee flexion (deg), hip drop (m), foot ahead (m)]
	var q := {"l": [0.0, 0.0, 0.0, 0.0], "r": [0.0, 0.0, 0.0, 0.0]}
	match pose:
		"squat":
			q = {"l": [70.0, 100.0, 0.0, 0.0], "r": [70.0, 100.0, 0.0, 0.0]}
		"knee":
			q = {"l": [0.0, 0.0, 0.0, 0.0], "r": [95.0, 110.0, 0.0, 0.0]}
		"kick":
			q = {"l": [0.0, 5.0, 0.0, 0.0], "r": [80.0, 10.0, 0.0, 0.0]}
		"step":
			q = {"l": [25.0, 10.0, 0.0, 0.0], "r": [-15.0, 30.0, 0.0, 0.0]}
	# the hips: the standing leg's (or the mean) chain from the floor up
	var hip_y := ah + ls + lt
	if pose == "squat":
		var th := deg_to_rad(70.0)
		var kn := deg_to_rad(100.0)
		hip_y = ah + ls * cos(kn - th) + lt * cos(th)
	for sd in ["l", "r"]:
		var sx := -1.0 if sd == "l" else 1.0
		var th := deg_to_rad(float(q[sd][0]))
		var kn := deg_to_rad(float(q[sd][1]))
		var hip := Vector3(sx * hw, hip_y, 0.0)
		var knee := hip + Vector3(0, -cos(th), -sin(th)) * lt
		var sh := th - kn                                   # the shin's angle from down, forward +
		var ankle := knee + Vector3(0, -cos(sh), -sin(sh)) * ls
		var planted := ankle.y < ah + 0.02
		var dir := Vector3(0, 0, -1)                       # planted: flat ahead; lifted: at a right angle to the shin
		if not planted:
			dir = Vector3(0, sin(sh), -cos(sh)).normalized()
		b.pos["knee_" + sd] = knee
		b.pos["foot_" + sd] = ankle + dir * 0.06
		b.ankle_pos[sd] = ankle
		b.valid["knee_" + sd] = true
		b.valid["foot_" + sd] = true
		b.hip_pos[sd] = hip
		b.foot_dir[sd] = dir
		b.foot_ground[sd] = planted
		b.speed["foot_" + sd] = 0.0
		b.speed["hand_" + ("l" if sd == "l" else "r")] = 0.0
	b.valid["hand_l"] = false
	b.valid["hand_r"] = false
	b.stand_h = STAND_H
	return b
