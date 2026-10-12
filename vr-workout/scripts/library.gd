## What the headset can show: coaches (humanoid models) and rooms (360° photos or 3D scenes), built in or dropped
## into a folder on the Quest — no rebuild needed to try a new one:
##   Quest:   Android/data/eu.xems.studio/files/XEMS/coaches/   …/XEMS/rooms/     (USB cable or SideQuest)
##   desktop: <user data>/XEMS/…  or  -- --lib=<folder>
## Coaches: .glb / .gltf (.fbx is tried too). Clothes / hair as separate files on the same rig: <coach>+<item>.glb
## (e.g. anna.glb + anna+shirt.glb + anna+hair.glb) are put on that coach. Rooms: .jpg / .png / .webp / .hdr 360° photos (2:1), or .glb / .gltf
## scenes in metres. Optional sidecar <file>.json: {"name": "…", "cam": 1.5, "yaw": 0.0, "scale": 1.0,
## "offset": [x, y, z], "turn": 0} — cam = the photo's camera height, yaw = turn of a photo (0..1), turn = degrees.
class_name Library
extends RefCounted

const ANDROID_DIRS := ["/storage/emulated/0/Android/data/eu.xems.studio/files/XEMS", "/storage/emulated/0/Download/XEMS"]

const BUILTIN_COACHES := [
	{"name": "Треньор с худи (Mixamo)", "path": "res://assets/coaches/mixamo_ch08.glb"},
	{"name": "Андроид", "path": "res://assets/coaches/android.glb"},
	{"name": "Манекен (ActorCore)", "path": "res://assets/coaches/actorcore_dummy.glb"},
	{"name": "Michelle (Mixamo)", "path": "res://assets/coaches/Michelle.glb"},
]
const BUILTIN_ROOMS := [
	{"name": "Йога зала", "path": "res://assets/yoga_room.jpg", "kind": "pano", "cam": 1.45, "yaw": -0.135},
	{"name": "Бруталистка зала", "path": "res://assets/rooms/brutalist.glb", "kind": "scene"},
	{"name": "Фитнес зала", "path": "res://assets/rooms/gym_room.glb", "kind": "scene"},
	{"name": "Боксова зала", "path": "res://assets/rooms/boxing_ring.jpg", "kind": "pano", "cam": 1.5},
	{"name": "Плаж", "path": "res://assets/rooms/beach.jpg", "kind": "pano", "cam": 1.6, "yaw": 0.35},
	{"name": "Йога студио", "path": "res://assets/rooms/yoga_studio.glb", "kind": "scene"},
	{"name": "Мост", "path": "res://assets/rooms/bridge.jpg", "kind": "pano", "cam": 1.6},
]
const COACH_EXT := ["glb", "gltf", "fbx"]
const PANO_EXT := ["jpg", "jpeg", "png", "webp", "hdr"]
const SCENE_EXT := ["glb", "gltf", "fbx"]

const README := """XEMS Studio — сложи тук свои треньори и зали, без нов build.

coaches/  човешки модел със скелет: .glb или .gltf (Mixamo, Unreal, MakeHuman…). Бутон B сменя треньора.
          Отделни дрехи/коса за същия скелет: <име>+<нещо>.glb, напр. anna.glb, anna+shirt.glb, anna+hair.glb.
rooms/    360° снимка 2:1 (.jpg до 8192×4096 е най-добре, .hdr също) или 3D сцена .glb в метри.
          Бутон Y сменя залата.

По желание до файла: същото име + .json, напр. zala.jpg + zala.json:
  {"name": "Моята зала", "cam": 1.5, "yaw": 0.0}            снимка: височина на камерата (м), завъртане 0..1
  {"name": "Гора", "scale": 1.0, "offset": [0, 0, -1], "turn": 90}   3D сцена
"""


static func dirs(extra: String = "") -> Array:
	var out := []
	if extra != "":
		out.append(extra)
	if OS.get_name() == "Android":
		out.append_array(ANDROID_DIRS)
	else:
		out.append(OS.get_user_data_dir().path_join("XEMS"))
	return out


## Make the drop folders (with a how-to) where the app may write, so they show up over USB after the first start.
static func prepare(extra: String = "") -> void:
	for d in dirs(extra):
		for sub in ["coaches", "rooms"]:
			DirAccess.make_dir_recursive_absolute(d.path_join(sub))
		if DirAccess.dir_exists_absolute(d) and not FileAccess.file_exists(d.path_join("README.txt")):
			var f := FileAccess.open(d.path_join("README.txt"), FileAccess.WRITE)
			if f:
				f.store_string(README)


static func _sidecar(path: String) -> Dictionary:
	var j := path.get_basename() + ".json"
	if not FileAccess.file_exists(j):
		return {}
	var v = JSON.parse_string(FileAccess.get_file_as_string(j))
	return v if v is Dictionary else {}


static func _scan(sub: String, exts: Array, extra: String) -> Array:
	var out := []
	for d in dirs(extra):
		var dir := DirAccess.open(d.path_join(sub))
		if dir == null:
			continue
		var files := Array(dir.get_files())
		files.sort()
		for f in files:
			if f.get_extension().to_lower() in exts:
				var path: String = d.path_join(sub).path_join(f)
				var e := {"name": f.get_basename(), "path": path}
				e.merge(_sidecar(path), true)
				out.append(e)
	return out


static func coaches(extra: String = "") -> Array:
	var out := BUILTIN_COACHES.duplicate(true)
	var found := _scan("coaches", COACH_EXT, extra)
	for e in found:
		var base: String = e.path.get_file().get_basename()
		if "+" in base:
			continue                                   # a piece of clothing, not a coach
		e["wear"] = []
		for w in found:
			if w.path.get_base_dir() == e.path.get_base_dir() and w.path.get_file().begins_with(base + "+"):
				e.wear.append(w.path)
		out.append(e)
	return out


static func rooms(extra: String = "") -> Array:
	var out := BUILTIN_ROOMS.duplicate(true)
	for e in _scan("rooms", PANO_EXT + SCENE_EXT, extra):
		e["kind"] = "scene" if e.path.get_extension().to_lower() in SCENE_EXT else "pano"
		out.append(e)
	return out


## A model from res:// or from a file on the device (glTF; FBX where the engine can read it).
static func load_scene(path: String) -> Node3D:
	if path.begins_with("res://"):
		var ps = load(path)
		return ps.instantiate() if ps is PackedScene else null
	var ext := path.get_extension().to_lower()
	var doc: GLTFDocument
	var state: GLTFState
	if ext == "fbx":
		if not ClassDB.class_exists("FBXDocument"):
			return null
		doc = ClassDB.instantiate("FBXDocument")
		state = ClassDB.instantiate("FBXState")
	else:
		doc = GLTFDocument.new()
		state = GLTFState.new()
	if doc.append_from_file(path, state) != OK:
		return null
	var n = doc.generate_scene(state)
	return n if n is Node3D else null


## A 360° photo as a texture. Returns {"tex": Texture2D, "hdr": bool, "exposure": float}.
static func load_pano(path: String) -> Dictionary:
	if path.begins_with("res://"):
		return {"tex": load(path), "hdr": false, "exposure": 1.0}
	var img := Image.load_from_file(path)
	if img == null or img.is_empty():
		return {}
	if img.get_width() > 8192:
		img.resize(8192, 4096, Image.INTERPOLATE_BILINEAR)
	var hdr := img.get_format() in [Image.FORMAT_RF, Image.FORMAT_RGF, Image.FORMAT_RGBF, Image.FORMAT_RGBAF,
		Image.FORMAT_RH, Image.FORMAT_RGH, Image.FORMAT_RGBH, Image.FORMAT_RGBAH, Image.FORMAT_RGBE9995]
	var exposure := 1.0
	if hdr:
		img.convert(Image.FORMAT_RGBAH)
		var small := img.duplicate() as Image             # average brightness → a sensible exposure (key 0.2)
		small.resize(64, 32, Image.INTERPOLATE_BILINEAR)
		var sum := 0.0
		for y in 32:
			for x in 64:
				var c := small.get_pixel(x, y)
				sum += log(0.0001 + c.r * 0.2126 + c.g * 0.7152 + c.b * 0.0722)
		exposure = 0.2 / exp(sum / 2048.0)
	img.generate_mipmaps()
	return {"tex": ImageTexture.create_from_image(img), "hdr": hdr, "exposure": exposure}
