## The player's own songs, added from inside the game: pick .mp3 / .ogg files on the device and they are copied into
## the music folder (Library.tracks finds them there from then on).
##   Quest browser (WebXR): a file picker of the page; the files are kept in the browser's storage for the site (user://).
##   Quest app / desktop: the system's file picker; where there is none, the toast names the folder to copy into.
class_name MusicImport
extends Node

signal imported(names: Array)           # file names now in the music folder (empty: nothing was added)
signal failed(why: String)

const EXT := ["mp3", "ogg"]
const PICK_JS := """
(function () {
	window.xemsMusic = [];
	window.xemsMusicBusy = true;
	var i = document.createElement('input');
	i.type = 'file';
	i.accept = '.mp3,.ogg,audio/mpeg,audio/ogg';
	i.multiple = true;
	i.style.display = 'none';
	document.body.appendChild(i);
	var done = function () { window.xemsMusicBusy = false; i.remove(); };
	i.addEventListener('cancel', done);
	i.addEventListener('change', async function () {
		for (const f of i.files) {
			try { window.xemsMusic.push({ name: f.name, data: new Uint8Array(await f.arrayBuffer()) }); } catch (e) {}
		}
		done();
	});
	i.click();
})();
"""

var _web := OS.has_feature("web")
var _polling := false
var _poll_left := 0.0
var _got: Array = []


## Where the songs go: the first music folder the app may write to.
static func folder() -> String:
	var d: String = Library.dirs()[0]
	return d.path_join("music")


func pick() -> void:
	if _web:
		JavaScriptBridge.eval(PICK_JS, true)
		_polling = true
		_poll_left = 600.0                       # the picker may stay open a while; give up after 10 minutes
		_got = []
		return
	if DisplayServer.has_feature(DisplayServer.FEATURE_NATIVE_DIALOG_FILE):
		var start := OS.get_system_dir(OS.SYSTEM_DIR_MUSIC)
		if start == "":
			start = OS.get_system_dir(OS.SYSTEM_DIR_DOWNLOADS)
		var err := DisplayServer.file_dialog_show("Избери песни", start, "", false,
			DisplayServer.FILE_DIALOG_MODE_OPEN_FILES, PackedStringArray(["*.mp3, *.ogg ; Музика"]), _on_dialog)
		if err == OK:
			return
	failed.emit("Копирай .mp3 в " + folder())


func _on_dialog(ok: bool, paths: PackedStringArray, _filter: int) -> void:
	if not ok or paths.is_empty():
		imported.emit([])
		return
	var names := []
	for p in paths:
		var bytes := FileAccess.get_file_as_bytes(p)
		if bytes.is_empty():
			continue
		var n := _save(p.get_file(), bytes)
		if n != "":
			names.append(n)
	if names.is_empty():
		failed.emit("Не мога да прочета файла — копирай .mp3 в " + folder())
	else:
		imported.emit(names)


func _process(delta: float) -> void:
	if not _polling:
		return
	_poll_left -= delta
	var n := int(JavaScriptBridge.eval("(window.xemsMusic || []).length", true))
	while n > 0:
		var name := String(JavaScriptBridge.eval("window.xemsMusic[0].name", true))
		var data = JavaScriptBridge.eval("window.xemsMusic[0].data", true)
		JavaScriptBridge.eval("window.xemsMusic.shift()", true)
		n -= 1
		if data is PackedByteArray and not (data as PackedByteArray).is_empty():
			var saved := _save(name, data)
			if saved != "":
				_got.append(saved)
	var busy = JavaScriptBridge.eval("window.xemsMusicBusy === true", true)
	if busy != true or _poll_left <= 0.0:
		_polling = false
		imported.emit(_got)


## Into the music folder under a safe name; returns the name, or "" if it is not a song or could not be written.
func _save(name: String, bytes: PackedByteArray) -> String:
	if not name.get_extension().to_lower() in EXT:
		return ""
	var safe := name.validate_filename()
	DirAccess.make_dir_recursive_absolute(folder())
	var f := FileAccess.open(folder().path_join(safe), FileAccess.WRITE)
	if f == null:
		return ""
	f.store_buffer(bytes)
	f.close()
	return safe
