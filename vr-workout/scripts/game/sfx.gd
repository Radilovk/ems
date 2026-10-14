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
const BED_BPM := 128.0

var bpm := BED_BPM                   # 0 = unknown (an owner's track without a tempo): the game paces itself
var _lp: AudioEffectLowPassFilter
var _spec: AudioEffectSpectrumAnalyzerInstance
var _bass := 0.0
var _bass_peak := 0.05

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
	music.bus = _music_bus()
	add_child(music)


## The music on its own bus with a low-pass: a hit taken muffles it, then it opens up again with the suit's fall.
func _music_bus() -> String:
	var i := AudioServer.get_bus_index("Music")
	if i < 0:
		AudioServer.add_bus()
		i = AudioServer.bus_count - 1
		AudioServer.set_bus_name(i, "Music")
		AudioServer.set_bus_send(i, "Master")
		_lp = AudioEffectLowPassFilter.new()
		_lp.cutoff_hz = 20000.0
		_lp.resonance = 0.6
		AudioServer.add_bus_effect(i, _lp)
		AudioServer.add_bus_effect(i, AudioEffectSpectrumAnalyzer.new())     # the arena listens to the bass
	else:
		_lp = AudioServer.get_bus_effect(i, 0) as AudioEffectLowPassFilter
	_spec = AudioServer.get_bus_effect_instance(i, 1) as AudioEffectSpectrumAnalyzerInstance
	return "Music"


## Every sound effect goes through a hall: a short, wide reverb gives the hits a space around them.
func _sfx_bus() -> String:
	if AudioServer.get_bus_index("Sfx") < 0:
		AudioServer.add_bus()
		var i := AudioServer.bus_count - 1
		AudioServer.set_bus_name(i, "Sfx")
		AudioServer.set_bus_send(i, "Master")
		var rv := AudioEffectReverb.new()
		rv.room_size = 0.72
		rv.damping = 0.45
		rv.spread = 1.0
		rv.wet = 0.2
		rv.dry = 1.0
		rv.predelay_msec = 30.0
		AudioServer.add_bus_effect(i, rv)
	return "Sfx"


## The music's bass now, 0 … 1 (against its own recent peak, so quiet and loud tracks both move the room).
func bass() -> float:
	if _spec == null or muted:
		return 0.0
	var m := _spec.get_magnitude_for_frequency_range(30.0, 160.0, AudioEffectSpectrumAnalyzerInstance.MAGNITUDE_MAX).length()
	_bass_peak = max(_bass_peak * 0.9995, m, 0.02)
	_bass = lerpf(_bass, clampf(m / _bass_peak, 0.0, 1.0), 0.35)
	return _bass


## Under water for a moment: the cutoff drops, then rises back over `seconds`, easing out like the suit's punishment.
func muffle(seconds: float) -> void:
	if _lp == null:
		return
	var tw := create_tween()
	tw.tween_method(func(v: float) -> void: _lp.cutoff_hz = v, 20000.0, 420.0, 0.06)
	tw.tween_method(func(v: float) -> void: _lp.cutoff_hz = 420.0 * pow(20000.0 / 420.0, v), 0.0, 1.0, seconds) \
		.set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_SINE)


## Seconds into the playing track, as heard now (the mix and the output delay taken off). -1 = no music.
func song_time() -> float:
	if muted or not music.playing:
		return -1.0
	return music.get_playback_position() + AudioServer.get_time_since_last_mix() - AudioServer.get_output_latency()


func start_music() -> void:
	if not music.playing:
		music.play()


## Back to the built-in bed.
func set_bed() -> void:
	var was := music.playing
	music.stream = BED
	bpm = BED_BPM
	if was:
		music.play()


## A user soundtrack (mp3 / ogg) instead of the bed.
func set_track(path: String, track_bpm := 0.0) -> bool:
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
	bpm = track_bpm
	if was:
		music.play()
	return true


## The settings: music and effects volume (dB).
func set_volumes(music_level_db: float, sfx_level_db: float) -> void:
	music_db = music_level_db
	if music:
		music.volume_db = music_db
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index(_sfx_bus()), sfx_level_db)


## Quieter and muffled while paused (db < 0), back to the full mix with 0.
func hold_music(db: float) -> void:
	var tw := create_tween()
	tw.tween_property(music, "volume_db", music_db + db, 0.25)
	if _lp:
		var to := 900.0 if db < 0.0 else 20000.0
		tw.parallel().tween_method(func(v: float) -> void: _lp.cutoff_hz = v, _lp.cutoff_hz, to, 0.25)


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
		q.bus = _sfx_bus()
		add_child(q)
		q.global_position = at
		q.play()
		p = q
	else:
		var q2 := AudioStreamPlayer.new()
		q2.stream = S[name]
		q2.volume_db = db
		q2.pitch_scale = pitch
		q2.bus = _sfx_bus()
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
	q.doppler_tracking = AudioStreamPlayer3D.DOPPLER_TRACKING_IDLE_STEP     # things flying past bend in pitch
	q.bus = _sfx_bus()
	node.add_child(q)
	if not muted:
		q.play()
	if not loop:
		q.finished.connect(q.queue_free)
	return q
