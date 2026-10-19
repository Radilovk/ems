## The chef's voice, made by gen/make_chef_voice.py (one actor: VoiceBosch, CC-BY-SA 4.0) — do not edit by hand.
## event → [[the clip, the words in his bubble ("" = a sound, no bubble)], …]; clips in assets/sfx/chef/.
class_name ChefVoice
extends RefCounted

const LINES := {
	"start": [["start_ladies", "Ladies and gentlemen!"], ["start_come_on", "Come on, do something!"], ["start_fight", "Fight!"]],
	"taunt": [["taunt_come_on", "Come on, do something!"], ["taunt_ladies", "Ladies and gentlemen!"]],
	"throw": [["throw_01", ""], ["throw_03", ""], ["throw_06", ""], ["throw_09", ""], ["throw_10", ""], ["throw_12", ""], ["throw_21", ""], ["throw_24", ""], ["throw_30", ""], ["throw_32", ""]],
	"chuckle": [["chuckle_haha", "Ha ha ha!"]],
	"laugh": [["laugh_aisle", "Ha ha ha! Clean-up on aisle four!"], ["laugh_embarrassing", "How embarrassing!"], ["laugh_feeding_tube", "And I call that move: the Feeding Tube!"], ["laugh_mark", "Now THAT's gonna leave a mark!"], ["laugh_hurt", "Ooh, that's gotta hurt!"]],
	"gloat": [["gloat_entertained", "Ladies and gentlemen, are you not entertained?"], ["gloat_job", "And that's why I love my job!"], ["gloat_here", "Honestly, what are we even doing here?"]],
	"angry": [["angry_omg", "Oh my god!"], ["angry_damn", "Oh damn!"], ["angry_beating", "Holy crap, what a beating!"], ["angry_crack", "I definitely heard a crack!"], ["angry_no_way", "No way!"], ["angry_whoa", "Whoa!"], ["angry_oh_no", "Oh no!"]],
	"wow": [["wow_fists", "Sticks and stones… but also fists, apparently!"], ["wow_acquainted", "I gotta say, that fist is getting very well acquainted with that face!"], ["wow_beating", "Holy crap, what a beating!"]],
	"splat": [["splat_02", ""], ["splat_06", ""], ["splat_07", ""], ["splat_09", ""], ["splat_11", ""], ["splat_13", ""], ["splat_felt", "God damn, I felt that one!"], ["splat_doctor", "Somebody call a doctor!"]],
	"weak": [["weak_sauce", "That is what we call some weak sauce! Boooo!"], ["weak_snooze", "What a snooze fest!"], ["weak_tissue", "I've seen more resistance from a used tissue!"]],
	"apple": [["apple_snooze", "What a snooze fest!"], ["apple_unfortunate", "Well… that's unfortunate."]],
	"apple_hit": [["apple_hit_haha", "Ha ha ha!"], ["apple_hit_embarrassing", "How embarrassing!"]],
	"mega": [["mega_bonus", "BONUS ROUND!"]],
	"cake": [["cake_final", "FINAL ROUND!"]],
	"boss_down": [["boss_down_12", ""], ["boss_down_15", ""], ["boss_down_23", ""], ["boss_down_uh_oh", "Uh-oh…"], ["boss_down_oh_no", "Oh no!"]],
	"lost": [["lost_unfortunate", "Well… that's unfortunate."], ["lost_bummer", "Bummer, man!"], ["lost_down", "This is bringing me down, man."], ["lost_groan", ""]],
	"won": [["won_job", "And that's why I love my job!"], ["won_entertained", "Ladies and gentlemen, are you not entertained?"], ["won_aisle", "Ha ha ha! Clean-up on aisle four!"]],
}


static func stream(clip: String) -> AudioStream:
	return load("res://assets/sfx/chef/%s.ogg" % clip) as AudioStream
