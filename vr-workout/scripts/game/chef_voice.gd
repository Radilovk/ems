## The chef's voice, made by gen/make_chef_voice.py (one speaker, one treatment) — do not edit by hand.
## event → [[the clip, the words in his bubble], …]; clips in assets/sfx/chef/.
class_name ChefVoice
extends RefCounted

const LINES := {
	"start": [["start_hungry", "Who's hungry?"], ["start_cook", "Let's cook!"], ["start_open", "Kitchen's open!"], ["start_lunch", "Lunch time, my friend!"]],
	"taunt": [["taunt_delivery", "Special delivery!"], ["taunt_eat", "Now, eat this!"], ["taunt_catch", "Catch this!"], ["taunt_order", "Order up!"], ["taunt_comes", "Here it comes!"], ["taunt_wide", "Open wide!"], ["taunt_hot", "Nice and hot!"], ["taunt_grill", "Straight from the grill!"], ["taunt_another", "One more!"]],
	"chuckle": [["chuckle_hoho4", "Ho ho ho ho!"], ["chuckle_hoho", "Ho ho ho!"], ["chuckle_bwa", "Bwa ha ha ha!"], ["chuckle_muah", "Mwa ha ha ha!"]],
	"laugh": [["laugh_more", "Ha ha! Want more?"], ["laugh_delicious", "Mmm, delicious!"], ["laugh_yummy", "Yummy, huh?"], ["laugh_yum", "Yummy!"], ["laugh_gotcha", "Ha ha! Gotcha!"], ["laugh_eatup", "Eat up, eat up!"], ["laugh_love", "Cooked with love!"], ["laugh_belly", "That goes straight to the belly!"]],
	"gloat": [["gloat_more", "More! More! More!"], ["gloat_love", "You love my cooking!"], ["gloat_fatten", "Ha ha ha! I'll fatten you up!"], ["gloat_stop", "You just can't stop eating!"]],
	"angry": [["angry_food", "Hey! My food!"], ["angry_omg", "Oh my god!"], ["angry_no", "No! No! Nooo!"], ["angry_ohno", "Oh no!"], ["angry_gosh", "Oh my gosh!"], ["angry_dare", "How dare you!"], ["angry_waste", "What a waste!"], ["angry_burger", "My beautiful burger!"]],
	"splat": [["splat_ouch", "Ouch!"], ["splat_apron", "Ugh! My apron!"], ["splat_fair", "That is not fair!"], ["splat_oof", "Oof!"], ["splat_face", "Right in my chest!"]],
	"apple": [["apple_pff", "Pfff. An apple."], ["apple_boring", "Boring and healthy."], ["apple_vitamins", "Okay, fine. Vitamins."]],
	"apple_hit": [["apple_hit_ha", "Ha! You smashed the healthy one!"], ["apple_hit_good", "That was the good one!"]],
	"mega": [["mega_burger", "Mega burger time!"], ["mega_comes", "Here comes the mega burger!"], ["mega_special", "The house special!"], ["mega_kcal", "Sixteen hundred calories! Try it!"]],
	"cake": [["cake_birthday", "A whole cake! Happy birthday!"], ["cake_you", "This cake is just for you!"], ["cake_love", "Two thousand nine hundred calories of love!"]],
	"wow": [["wow_power", "Oh my god! What power!"], ["wow_unbelievable", "Unbelievable!"], ["wow_machine", "You're a machine!"], ["wow_feed", "I can't feed you!"]],
	"boss_down": [["boss_down_no", "Oh no! My masterpiece!"], ["boss_down_special", "My special! No, no, no!"], ["boss_down_day", "I spent all day on that!"]],
	"lost": [["lost_win", "Okay, okay. You win."], ["lost_nothing", "You ate nothing!"], ["lost_closing", "I'm closing for today."]],
	"won": [["won_tasty", "Tasty, wasn't it?"], ["won_back", "Come back soon!"], ["won_appetit", "Bon appétit!"]],
}


static func stream(clip: String) -> AudioStream:
	return load("res://assets/sfx/chef/%s.ogg" % clip) as AudioStream
