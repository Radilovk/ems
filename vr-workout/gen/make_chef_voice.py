"""The chef's voice: every word, laugh, grunt and cry he makes, all by ONE real voice actor → vr-workout/assets/sfx/chef/*.ogg
and scripts/game/chef_voice.gd (the event → lines table the game picks from).

usage: python gen/make_chef_voice.py <packs dir>      needs ffmpeg (libvorbis)
       <packs dir> holds VoiceBosch's packs from OpenGameArt (SoundBiter SFX library, CC-BY-SA 4.0), one folder each,
       named as the page's slug, its .wav files inside (download every .wav linked on the page):
         banter-man-video-game-announcer   https://opengameart.org/content/banter-man-video-game-announcer
         el-dude-video-game-announcer      https://opengameart.org/content/el-dude-video-game-announcer
         mr-happy-video-game-announcer     https://opengameart.org/content/mr-happy-video-game-announcer
         effort-sounds-male-audio-pack     https://opengameart.org/content/effort-sounds-male-audio-pack
         damage-sounds-male-audio-pack     https://opengameart.org/content/damage-sounds-male-audio-pack
         death-sounds-male-audio-pack      https://opengameart.org/content/death-sounds-male-audio-pack

One man for everything (owner: "it must not sound like a different voice"): his BANTER MAN — a mocking, trash-talking
showman, which is what the cook is — carries the words and the laugh; the same actor's short cries from EL DUDE ("No
way!", "Whoa!", "Oh no!", about the same pitch: 184 vs 195 Hz), his effort grunts for each throw, his pain grunts when
food comes back at him, his groans when he loses, two big calls from MR. HAPPY for the MEGA burger and the cake. Each
clip is cut at the word boundaries Whisper found (a phrase out of a longer line where only its start fits), its silence
trimmed, a short fade, one loudness (words −16 LUFS, grunts −19).
"""
import os, subprocess, sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "..", "assets", "sfx", "chef")
GD = os.path.join(HERE, "..", "scripts", "game", "chef_voice.gd")

B = "banter-man-video-game-announcer"
D = "el-dude-video-game-announcer"
H = "mr-happy-video-game-announcer"
E = "effort-sounds-male-audio-pack"
G = "damage-sounds-male-audio-pack"
X = "death-sounds-male-audio-pack"

# event → [(clip, pack, file number, from s, to s (None = to its end), the words in his bubble ("" = a sound, no bubble))]
LINES = {
    "start": [("start_ladies", B, 9, 0.0, 1.40, "Ladies and gentlemen!"), ("start_come_on", B, 16, 0.0, None, "Come on, do something!"),
              ("start_fight", H, 24, 0.0, None, "Fight!")],
    "taunt": [("taunt_come_on", B, 16, 0.0, None, "Come on, do something!"), ("taunt_ladies", B, 9, 0.0, 1.40, "Ladies and gentlemen!")],
    "throw": [("throw_%02d" % n, E, n, 0.0, None, "") for n in (1, 3, 6, 9, 10, 12, 21, 24, 30, 32)],
    "chuckle": [("chuckle_haha", B, 4, 0.0, 1.16, "Ha ha ha!")],
    "laugh": [("laugh_aisle", B, 4, 0.0, None, "Ha ha ha! Clean-up on aisle four!"), ("laugh_embarrassing", B, 3, 0.0, None, "How embarrassing!"),
              ("laugh_feeding_tube", B, 17, 0.0, None, "And I call that move: the Feeding Tube!"),
              ("laugh_mark", B, 6, 0.0, None, "Now THAT's gonna leave a mark!"), ("laugh_hurt", B, 1, 0.0, None, "Ooh, that's gotta hurt!")],
    "gloat": [("gloat_entertained", B, 9, 0.0, None, "Ladies and gentlemen, are you not entertained?"),
              ("gloat_job", B, 18, 0.0, None, "And that's why I love my job!"),
              ("gloat_here", B, 25, 2.85, None, "Honestly, what are we even doing here?")],
    "angry": [("angry_omg", B, 5, 0.0, 1.20, "Oh my god!"), ("angry_damn", B, 7, 0.0, 1.25, "Oh damn!"),
              ("angry_beating", B, 8, 0.0, None, "Holy crap, what a beating!"), ("angry_crack", B, 21, 0.0, None, "I definitely heard a crack!"),
              ("angry_no_way", D, 2, 0.0, None, "No way!"), ("angry_whoa", D, 8, 0.0, None, "Whoa!"), ("angry_oh_no", D, 37, 0.0, 0.95, "Oh no!")],
    "wow": [("wow_fists", B, 24, 0.0, None, "Sticks and stones… but also fists, apparently!"),
            ("wow_acquainted", B, 22, 0.0, None, "I gotta say, that fist is getting very well acquainted with that face!"),
            ("wow_beating", B, 8, 0.0, None, "Holy crap, what a beating!")],
    "splat": [("splat_%02d" % n, G, n, 0.0, None, "") for n in (2, 6, 7, 9, 11, 13)] +
             [("splat_felt", B, 11, 2.62, None, "God damn, I felt that one!"), ("splat_doctor", B, 2, 0.0, None, "Somebody call a doctor!")],
    "weak": [("weak_sauce", B, 26, 0.0, None, "That is what we call some weak sauce! Boooo!"), ("weak_snooze", B, 15, 0.0, None, "What a snooze fest!"),
             ("weak_tissue", B, 25, 0.0, 2.60, "I've seen more resistance from a used tissue!")],
    "apple": [("apple_snooze", B, 15, 0.0, None, "What a snooze fest!"), ("apple_unfortunate", B, 14, 0.0, None, "Well… that's unfortunate.")],
    "apple_hit": [("apple_hit_haha", B, 4, 0.0, 1.16, "Ha ha ha!"), ("apple_hit_embarrassing", B, 3, 0.0, None, "How embarrassing!")],
    "mega": [("mega_bonus", H, 12, 0.0, None, "BONUS ROUND!")],
    "cake": [("cake_final", H, 13, 0.0, None, "FINAL ROUND!")],
    "boss_down": [("boss_down_%02d" % n, X, n, 0.0, None, "") for n in (12, 15, 23)] +
                 [("boss_down_uh_oh", X, 16, 0.0, None, "Uh-oh…"), ("boss_down_oh_no", D, 37, 0.0, 0.95, "Oh no!")],
    "lost": [("lost_unfortunate", B, 14, 0.0, None, "Well… that's unfortunate."), ("lost_bummer", D, 14, 0.0, None, "Bummer, man!"),
             ("lost_down", D, 31, 0.0, None, "This is bringing me down, man."), ("lost_groan", X, 4, 0.0, None, "")],
    "won": [("won_job", B, 18, 0.0, None, "And that's why I love my job!"), ("won_entertained", B, 9, 0.0, None, "Ladies and gentlemen, are you not entertained?"),
            ("won_aisle", B, 4, 0.0, None, "Ha ha ha! Clean-up on aisle four!")],
}


def source(packs, pack, n):
    d = os.path.join(packs, pack)
    for f in sorted(os.listdir(d)):
        if f.endswith(".wav") and f.startswith("%02d." % n):
            return os.path.join(d, f)
    raise SystemExit("missing %s #%d" % (pack, n))


def cut(src, start, end, words, dst):
    """A phrase out of the take: [start, end) (+ a breath after), silence trimmed, a short fade out, one loudness."""
    a = start
    span = ["-ss", "%.2f" % max(a - 0.02, 0.0)] + (["-t", "%.2f" % (end - a + 0.14)] if end else [])
    lufs = -16 if words else -19
    af = ("silenceremove=start_periods=1:start_threshold=-45dB,areverse,"
          "silenceremove=start_periods=1:start_threshold=-48dB,afade=t=in:d=0.04,areverse,"
          f"afade=t=in:d=0.006,loudnorm=I={lufs}:TP=-1.5:LRA=9,apad=pad_dur=0.04")
    subprocess.run(["ffmpeg", "-y", "-loglevel", "error", *span, "-i", src, "-af", af, "-ar", "44100", "-ac", "1",
                    "-c:a", "libvorbis", "-q:a", "5", dst], check=True)


def main():
    packs = sys.argv[1] if len(sys.argv) > 1 else "."
    os.makedirs(OUT, exist_ok=True)
    for f in os.listdir(OUT):
        if f.endswith(".ogg") or f.endswith(".ogg.import"):
            os.unlink(os.path.join(OUT, f))
    for event, lines in LINES.items():
        for clip, pack, n, a, b, words in lines:
            cut(source(packs, pack, n), a, b, words, os.path.join(OUT, clip + ".ogg"))
            print(clip, "·", words or "(sound)")
    with open(GD, "w") as g:
        g.write("## The chef's voice, made by gen/make_chef_voice.py (one actor: VoiceBosch, CC-BY-SA 4.0) — do not edit by hand.\n")
        g.write('## event → [[the clip, the words in his bubble ("" = a sound, no bubble)], …]; clips in assets/sfx/chef/.\n')
        g.write("class_name ChefVoice\nextends RefCounted\n\nconst LINES := {\n")
        for event, lines in LINES.items():
            items = ", ".join('["%s", "%s"]' % (c, w) for c, _, _, _, _, w in lines)
            g.write('\t"%s": [%s],\n' % (event, items))
        g.write("}\n\n\nstatic func stream(clip: String) -> AudioStream:\n")
        g.write('\treturn load("res://assets/sfx/chef/%s.ogg" % clip) as AudioStream\n')


if __name__ == "__main__":
    main()
