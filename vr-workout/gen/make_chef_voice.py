"""The chef's voice: every word, laugh and grunt he says, in ONE voice → vr-workout/assets/sfx/chef/*.ogg
and scripts/game/chef_voice.gd (the event → lines table the game picks from).

usage: python gen/make_chef_voice.py <model dir>      needs kokoro-onnx, soundfile, ffmpeg (libvorbis)
       <model dir> holds the downloaded Kokoro-82M files (Apache-2.0, https://huggingface.co/hexgrad/Kokoro-82M):
         kokoro-v1.0.onnx  https://github.com/thewh1teagle/kokoro-onnx/releases/download/model-files-v1.0/kokoro-v1.0.onnx
         voices-v1.0.bin   https://github.com/thewh1teagle/kokoro-onnx/releases/download/model-files-v1.0/voices-v1.0.bin

One speaker (VOICE) and one treatment for every clip (a touch lower and warmer, the same loudness), so the cook never
sounds like two people: his throws ("Special delivery!", "Eat this!"), his laughs when the player eats, his "Nooo!"
when his food is smashed, his "Ouch!" when it comes back at him. The bubble over his head shows the same words.
"""
import os, subprocess, sys, tempfile
import numpy as np
import soundfile as sf
from kokoro_onnx import Kokoro

VOICE = "am_michael"          # the cook (a warm, full male voice)
SPEED = 1.08                  # a busy man at a busy cart
PITCH = 0.95                  # a little lower: a big, hearty man
HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "..", "assets", "sfx", "chef")
GD = os.path.join(HERE, "..", "scripts", "game", "chef_voice.gd")

# event → [(clip, what he says)]. The events are the chef's REACT keys plus start / taunt / chuckle. Laughs and grunts
# are hard for a TTS voice: only the ones Whisper heard right are kept ("Ho ho ho", "Bwa ha ha"; no bare grunts).
LINES = {
    "start": [("start_hungry", "Who's hungry?"), ("start_cook", "Let's cook!"), ("start_open", "Kitchen's open!"),
              ("start_lunch", "Lunch time, my friend!")],
    "taunt": [("taunt_delivery", "Special delivery!"), ("taunt_eat", "Now, eat this!"), ("taunt_catch", "Catch this!"),
              ("taunt_order", "Order up!"), ("taunt_comes", "Here it comes!"), ("taunt_wide", "Open wide!"),
              ("taunt_hot", "Nice and hot!"), ("taunt_grill", "Straight from the grill!"), ("taunt_another", "One more!")],
    "chuckle": [("chuckle_hoho4", "Ho ho ho ho!"), ("chuckle_hoho", "Ho ho ho!"), ("chuckle_bwa", "Bwa ha ha ha!"),
                ("chuckle_muah", "Mwa ha ha ha!")],
    "laugh": [("laugh_more", "Ha ha! Want more?"), ("laugh_delicious", "Mmm, delicious!"), ("laugh_yummy", "Yummy, huh?"), ("laugh_yum", "Yummy!"),
              ("laugh_gotcha", "Ha ha! Gotcha!"), ("laugh_eatup", "Eat up, eat up!"), ("laugh_love", "Cooked with love!"),
              ("laugh_belly", "That goes straight to the belly!")],
    "gloat": [("gloat_more", "More! More! More!"), ("gloat_love", "You love my cooking!"),
              ("gloat_fatten", "Ha ha ha! I'll fatten you up!"), ("gloat_stop", "You just can't stop eating!")],
    "angry": [("angry_food", "Hey! My food!"), ("angry_omg", "Oh my god!"), ("angry_no", "No! No! Nooo!"), ("angry_ohno", "Oh no!"), ("angry_gosh", "Oh my gosh!"),
              ("angry_dare", "How dare you!"), ("angry_waste", "What a waste!"), ("angry_burger", "My beautiful burger!")],
    "splat": [("splat_ouch", "Ouch!"), ("splat_apron", "Ugh! My apron!"), ("splat_fair", "That is not fair!"),
              ("splat_oof", "Oof!"), ("splat_face", "Right in my chest!")],
    "apple": [("apple_pff", "Pfff. An apple."), ("apple_boring", "Boring and healthy."), ("apple_vitamins", "Okay, fine. Vitamins.")],
    "apple_hit": [("apple_hit_ha", "Ha! You smashed the healthy one!"), ("apple_hit_good", "That was the good one!")],
    "mega": [("mega_burger", "Mega burger time!"), ("mega_comes", "Here comes the mega burger!"), ("mega_special", "The house special!"),
             ("mega_kcal", "Sixteen hundred calories! Try it!")],
    "cake": [("cake_birthday", "A whole cake! Happy birthday!"), ("cake_you", "This cake is just for you!"),
             ("cake_love", "Two thousand nine hundred calories of love!")],
    "wow": [("wow_power", "Oh my god! What power!"), ("wow_unbelievable", "Unbelievable!"), ("wow_machine", "You're a machine!"),
            ("wow_feed", "I can't feed you!")],
    "boss_down": [("boss_down_no", "Oh no! My masterpiece!"), ("boss_down_special", "My special! No, no, no!"),
                  ("boss_down_day", "I spent all day on that!")],
    "lost": [("lost_win", "Okay, okay. You win."), ("lost_nothing", "You ate nothing!"), ("lost_closing", "I'm closing for today.")],
    "won": [("won_tasty", "Tasty, wasn't it?"), ("won_back", "Come back soon!"), ("won_appetit", "Bon appetit!")],
}
BUBBLE = {"Bon appetit!": "Bon appétit!"}     # what the bubble shows, where the spelling for the voice differs


def treat(wav, sr, dst):
    """The same voice colour on every clip: lower, a warm low shelf, a little presence, gently compressed, one loudness."""
    with tempfile.NamedTemporaryFile(suffix=".wav", delete=False) as f:
        src = f.name
    sf.write(src, wav, sr)
    af = (f"asetrate={int(sr * PITCH)},aresample={sr},atempo={1 / PITCH:.4f},"
          "highpass=f=70,equalizer=f=160:t=q:w=1.2:g=3,equalizer=f=3200:t=q:w=1.5:g=2,"
          "acompressor=threshold=-20dB:ratio=3:attack=5:release=80,"
          "silenceremove=start_periods=1:start_threshold=-50dB:stop_periods=1:stop_threshold=-50dB:stop_duration=0.15,"
          "loudnorm=I=-16:TP=-1.5:LRA=7,apad=pad_dur=0.05")
    subprocess.run(["ffmpeg", "-y", "-loglevel", "error", "-i", src, "-af", af, "-ar", "44100", "-ac", "1",
                    "-c:a", "libvorbis", "-q:a", "4", dst], check=True)
    os.unlink(src)


def main():
    model = sys.argv[1] if len(sys.argv) > 1 else "."
    k = Kokoro(os.path.join(model, "kokoro-v1.0.onnx"), os.path.join(model, "voices-v1.0.bin"))
    os.makedirs(OUT, exist_ok=True)
    for event, lines in LINES.items():
        for clip, text in lines:
            wav, sr = k.create(text, voice=VOICE, speed=SPEED, lang="en-us")
            treat(np.asarray(wav, dtype=np.float32), sr, os.path.join(OUT, clip + ".ogg"))
            print(clip, "·", text)
    with open(GD, "w") as g:
        g.write("## The chef's voice, made by gen/make_chef_voice.py (one speaker, one treatment) — do not edit by hand.\n")
        g.write("## event → [[the clip, the words in his bubble], …]; clips in assets/sfx/chef/.\n")
        g.write("class_name ChefVoice\nextends RefCounted\n\nconst LINES := {\n")
        for event, lines in LINES.items():
            items = ", ".join('["%s", "%s"]' % (c, BUBBLE.get(t, t)) for c, t in lines)
            g.write('\t"%s": [%s],\n' % (event, items))
        g.write("}\n\n\nstatic func stream(clip: String) -> AudioStream:\n")
        g.write('\treturn load("res://assets/sfx/chef/%s.ogg" % clip) as AudioStream\n')


if __name__ == "__main__":
    main()
