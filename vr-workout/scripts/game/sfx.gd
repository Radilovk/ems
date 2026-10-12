## Every sound of the game. Sounds are synthesised by gen/make_sounds.py (nothing to license); the soundtrack is a
## placeholder bed until the owner's own music is dropped into the XEMS/music folder (see Library).
class_name Sfx
extends Node

const S := {
	"punch": preload("res://assets/sfx/punch.ogg"), "knee": preload("res://assets/sfx/knee.ogg"),
	"kick": preload("res://assets/sfx/kick.ogg"), "shatter": preload("res://assets/sfx/shatter.ogg"),
	"whoosh": preload("res://assets/sfx/whoosh.ogg"), "pass": preload("res://assets/sfx/pass.ogg"),
	"hum": preload("res://assets/sfx/hum.ogg"), "alarm": preload("res://assets/sfx/alarm.ogg"),
	"damage": preload("res://assets/sfx/damage.ogg"), "dodge": preload("res://assets/sfx/dodge.ogg"),
	"combo": preload("res://assets/sfx/combo.ogg"), "levelup": preload("res://assets/sfx/levelup.ogg"),
	"beep": preload("res://assets/sfx/beep.ogg"), "go": preload("res://assets/sfx/go.ogg"),
	"tick": preload("res://assets/sfx/tick.ogg"), "blip": preload("res://assets/sfx/blip.ogg"),
	"fail": preload("res://assets/sfx/fail.ogg"),
}
const BED := preload("res://assets/sfx/music_bed.ogg")

var music: AudioStreamPlayer
var music_db := -9.0
var muted := false


func _ready() -> void:
	var hum: AudioStreamOggVorbis = S["hum"]
	hum.loop = true
	var bed: AudioStreamOggVorbis = BED
	bed.loop = true
	music = AudioStreamPlayer.new()
	music.stream = BED
	music.volume_db = music_db
	add_child(music)


func start_music() -> void:
	if not music.playing:
		music.play()


## A user soundtrack (mp3 / ogg) instead of the bed.
func set_track(path: String) -> bool:
	var st: AudioStream = null
	match path.get_extension().to_lower():
		"ogg":
			st = AudioStreamOggVorbis.load_from_file(path)
		"mp3":
			st = AudioStreamMP3.load_from_file(path)
	if st == null:
		return false
	if st is AudioStreamOggVorbis:
		(st as AudioStreamOggVorbis).loop = true
	elif st is AudioStreamMP3:
		(st as AudioStreamMP3).loop = true
	var was := music.playing
	music.stream = st
	if was:
		music.play()
	return true


func duck_music(db: float, seconds: float) -> void:
	var tw := create_tween()
	tw.tween_property(music, "volume_db", music_db + db, 0.08)
	tw.tween_interval(seconds)
	tw.tween_property(music, "volume_db", music_db, 0.4)


## A one-shot sound: at a place in the room (`at` = world position) or flat in the head.
func play(name: String, at = null, db := 0.0, pitch := 1.0) -> void:
	if muted or not S.has(name):
		return
	var p: Node
	if at is Vector3:
		var q := AudioStreamPlayer3D.new()
		q.stream = S[name]
		q.volume_db = db
		q.pitch_scale = pitch
		q.unit_size = 4.0
		q.max_distance = 40.0
		add_child(q)
		q.global_position = at
		q.play()
		p = q
	else:
		var q2 := AudioStreamPlayer.new()
		q2.stream = S[name]
		q2.volume_db = db
		q2.pitch_scale = pitch
		add_child(q2)
		q2.play()
		p = q2
	p.finished.connect(p.queue_free)


## A sound that travels with a node (a hazard's hum, an element's whoosh).
func attach(node: Node3D, name: String, db := 0.0, loop := false) -> AudioStreamPlayer3D:
	var q := AudioStreamPlayer3D.new()
	q.stream = S[name]
	q.volume_db = db
	q.unit_size = 3.0
	q.max_distance = 40.0
	q.doppler_tracking = AudioStreamPlayer3D.DOPPLER_TRACKING_PHYSICS_STEP
	node.add_child(q)
	if not muted:
		q.play()
	if not loop:
		q.finished.connect(q.queue_free)
	return q
