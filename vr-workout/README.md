# XEMS Studio — EMS VR workout for Quest 3

Standalone Quest 3 app (Godot 4.4, OpenXR via the Meta vendors plugin, Compatibility renderer): an EMS game in a wide room,
and your body map that glows where the suit works. No coach for now (owner, 2026-10: the motion was not good enough; a
coach comes back only with professional mocap made for his own rig, e.g. Mixamo clips on the Mixamo character).

## The game (v0.4) — on the beat, felt three ways
Things fly at you **on the beat of the music**, out of the portal ahead and out of **side gates** on an arc around you.
**Break** the spheres: cyan with a fist, violet with a knee, orange with a foot (a kick), green low ones in a squat. A
fist sphere may carry a **punch type** — a dot = straight jab, a chevron = hook from that side or an uppercut — and only
that direction breaks it. A pink **shield** = guard up: both fists in front of the face when it arrives. **Dodge** the
red ones: a bar at eye height → squat; a pillar beside the head → lean away; a **wall** on one half → step to the other
side. Things come alone or in **patterns** (one-two, hook combo, run, duck-and-low, knee-then-kick, block-and-counter,
wall-and-punch) whose share grows with the level. The level (speed, gap, mix) follows how the last one went.
Borrowed from the best-rated VR fitness games: punch types and guard (FitXR, Les Mills Bodycombat), timing grades,
multiplier and rank (Beat Saber), squats and side steps (Supernatural), walls (Beat Saber's obstacles).

**Score.** Timing: within 70 ms of the beat *Перфектно* ×1.5, within 150 ms *Чудесно* ×1.2, else *Добре*. The combo
multiplier climbs ×1 → ×4 (every 8 hits) and colours the trails cyan → green → magenta → gold. A session
(5–30 min or endless) ends on a summary: score, accuracy, best combo, hits, perfect, dodged, squats, steps, minutes, a
rank SS … D and the record.

**One event, three senses on the same curve.**
| | a sphere broken | a hit taken (missed sphere, red one not dodged) |
|---|---|---|
| eyes | shards along the strike, sparks, a shockwave, light on the room, the glove flares; points with the timing grade rise | a red edge round the view that flares and fades |
| ears | spatial hit + shatter on the beat, pitch rises with the combo | a thud, the music goes muffled and opens up again |
| body | a 150 ms controller pulse on that side → the suit (strike) | both controllers, falling over 1.2 s (soft) or 2.5 s (strong) → the suit (punish) |
The suit link is the controllers' haptics: the XEMS OpenXR layer (`vr-bridge`) sends each pulse to the tablet, which
drives the suit in manual mode under the absolute limits (docs/xems-safety-limits.md). The game adds no pulses of its own
(a pulse would reach the suit).

**Menu** (opens at start; the menu button / right B in play = pause). A panel in the room, used with the controller's
laser + trigger or touched with a glove / finger. Pages: *Начало*, *Настройки* (tempo, where things come from: front /
arc / wide, legs, red ones yes/no, length; music, effects, comfort mode, room), *Позиция и ръст* (center here, center at
start, height: measured or set, your place in the room by 25 cm / 15°), *Костюм и импулси* (below), pause, summary.
Everything is saved (`user://settings.cfg`).

**Impulse dock** — the suit side, from inside the game (`tablet.gd` ↔ the tablet's `VrControl`, CTRL / STATE on the
bridge port). The menu page shows the strength in the suit now, the game's level, hits passed / cut, and sets: the
trainer's strength (the ceiling, −/+), whether the game drives the strength, impulses from the game on/off, the miss
punishment, which hits pass, the weakest hit, the rise, the channels that rest while VR drives, defaults. The **wrist
dock**: turn the inside of the left wrist to your eyes like a watch → a small card with the strength, −/+ and pause, pressed
with the right fist or finger, also mid-game. The tablet answers only a game on the headset its layer is paired from.

**The body.** Hands: the controller while it tracks, else **hand tracking** (simultaneous hands and controllers) — put a
controller down and play with bare hands; pick it up and it is found again by itself (a toast says which). No hands at
all for 1.2 s → the game pauses itself and goes on when a hand is back. **Legs:** Quest 3 only *estimates* the legs from
the upper body (Meta body tracking, high fidelity), so real kicks need a **controller strapped to each ankle**: the game
sees a controller held low while you stand and treats it as that foot (hands then come from hand tracking). The *Крака*
setting: auto (ankle controllers → tracking that the try-out confirmed → squat-and-step moves), ankles only, tracking
only, moves only, none. **Seen:** sci-fi gloves (cyan plates and light tubes that flash magenta on a hit; at a button — the wrist dock, the
menu — the index finger lifts out of the fist and presses with its tip), leg armour in the same kit (the glove's gauntlet
as the shin guard, its back-hand plate and disc as the knee pad, a boot with a cyan toe cap, heel plate, instep disc and a
light strip on the sole) and a halo under each foot, trails
behind fists and feet that turn white-hot once fast enough to count.

**The arena** (default room, `scripts/game/arena.gd`, built from code plus < 1 MB of CC0 Poly Haven assets in
`assets/arena/`): the real Milky Way over a night sky with a horizon haze, moon rocks drifting and turning round the
arena with a rim in the arena's colour, a ringed gas giant up to the left (`planet`, `planet_ring`, `rock` shaders),
neon floor streaming at the elements' speed, beat arches, the portal and the side gates (each flares as it throws), dust; the music's bass brightens
it all, the combo turns it magenta, then gold. **Music.** The built-in bed is 128 BPM. Your tracks (XEMS/music) set the
beat with `"bpm"` in `<track>.json` or `128bpm` in the name; else a 120 BPM grid.

| Part | Where |
|---|---|
| Kinds, levels, patterns' share, timing grades, multiplier, contact planes | `scripts/game/defs.gd` |
| Flow (menu → rules → try-out → levels → summary), pause, patterns, gates, judging, simulated player | `scripts/game/game.gd` |
| Saved settings | `scripts/game/settings.gd` |
| The menu panel and its pages | `scripts/game/menu.gd` |
| Impulse dock: line to the tablet / wrist card | `scripts/game/tablet.gd`, `scripts/game/dock.gd` |
| Elements, flight paths, punch marks, shield, walls (shaders `plasma`, `hazard`, `halo`, `approach`) | `scripts/game/elem.gd` |
| Gloves (fist / pointing), leg armour, trails | `scripts/game/avatar.gd` |
| Effects (`shock`, `vignette`, `trail`) | `scripts/game/fx.gd` |
| The arena + side gates | `scripts/game/arena.gd` |
| The panoramic hall (built from code) | `scripts/game/skyloft.gd` |
| Adding the player's own songs (file picker → XEMS/music) | `scripts/game/music_import.gd` |
| Head, hands (controller / hand tracking), ankle controllers, body tracking | `scripts/game/body.gd` |
| Suit events → controller haptics → the suit | `scripts/game/suit.gd` |
| Sounds, music bus, beat clock | `scripts/game/sfx.gd`, `gen/make_sounds.py`, `assets/sfx/` |

**Buttons.** Menu / right B = menu and pause · right A = skip · left X = "this is the middle" · left Y = next room ·
left grip = next track. A system recenter (hold Meta) recalibrates too.

**Rooms.** The arena (3D space); the panoramic hall (`scripts/game/skyloft.gd`: glass from floor to ceiling on three
sides, a terrace with a glass railing, the view beyond); the brutalist hall (3D, dressed by `scripts/game/hall.gd`: an LED
wall playing the music, neon strips whose cross bars run with the beat, light tubes, boxing bags, gym kit, lane lines,
two lit words — all in the combo's colour); and three real places, 8K 360° photos (Poly Haven, CC0): a meadow on a hill,
the cathedral square in Ulm, a mountain plateau at night. **The player stands where the camera stood**, the photo
painted round that spot on a shell of the place's real size (`scripts/library.gd`): the square is a measured box (`box`
= its walls' x/z from the camera, from a top-down projection of its ground), open land a cylinder (`radius`) a little
short of where its ground stops being flat — so the ground under your feet is at its real distance. `yaw` turns the
best side ahead; things fly in from up to the front wall − 0.4 m (16 m at most). The owner's own photos (XEMS/rooms)
get a cylinder of `radius` unless they give a `box`.
**Views of the panoramic hall** (setting "Гледка", `GameSettings.VIEWS`, drawn as the sky by `shaders/view_sky.gdshader`,
infinitely far, so in the headset the landscape is truly out there behind crisp panes): three 360° photos (the
mountains, the meadow, the night plateau) and 10 of the owner's photos (`land/` → `assets/views/` by
`convert/crop_views.py`). Each photo keeps its full width and is hung exactly across the hall's three glass walls (220°
from where you stand), its height from its own proportions (never stretched), only the band of rows the glass can show
kept (25° below to 25° above eye level, the chosen row at eye level): 32–37 pixels a degree, sharper than the headset.
Above and below that band it fades into its own sky and ground colour. (The 1920 px "Dolomites in autumn" is left out:
too small to be sharp that wide.)
**Your music.** Settings → Звук: "Песен" picks the track (the built-in bed or one of yours), "Добави свои песни (mp3)" opens
the device's file picker (`scripts/game/music_import.gd`): in the Quest browser the page's own picker, the songs kept by
the browser for the site; in the Quest app the system picker, copied to `XEMS/music`. The page has the same button under
"Влез във VR". Left grip = the next song; the choice is remembered.
**Desktop tests (no headset):**
```
godot --path vr-workout -- --sim=1 --skiptut=1 --levels=1 --level=4 --skill=0.8 --timescale=6   # plays itself, prints LEVEL … done
godot --path vr-workout -- --shot=out.png --wait=8 --view=player --sim=1 --skiptut=1 --level=4     # a frame of play
godot --path vr-workout -- --shot=out.png --wait=3 --skiptut=1 --burst=0 --bt=0.06               # an effect frozen (0/1/2 = sphere, hit)
godot --path vr-workout -- --shot=out.png --wait=4 --menu=suit                                   # a menu page (home/settings/position/suit/pause/summary)
godot --path vr-workout -- --shot=out.png --wait=8 --view=player --sim=1 --skiptut=1 --dock=1     # the wrist dock
godot --path vr-workout -- --shot=out.png --wait=3 --room=1 --land=3 --look=40 --pitch=5          # a room, a view, a direction
godot --path vr-workout -- --shot=out.png --wait=3 --glove=right --point=1 --gt=1                  # a glove close-up, pointing
godot --path vr-workout -- --shot=out.png --wait=4 --sim=1 --skiptut=1 --leg=l --lx=0.4 --lz=-0.3 # the leg armour close-up
godot --path vr-workout -- --shot=out.png --wait=3 --menu=settings --tab=1                         # a settings tab
```

## In the Quest browser (WebXR) — the way it ships now
`https://radilovk.github.io/ems/vr/` → open in the Meta Quest browser → **Влез във VR**. Built and published by
`.github/workflows/design-tools-pages.yml` on every push to `main` that touches `vr-workout/` (Godot 4.4.1 web,
no threads, so GitHub Pages needs no special headers; the "Web" preset in `export_presets.cfg`). `main.gd`
`_setup_webxr()`: a page button opens the `immersive-vr` session (browsers only allow it from a click), the controllers
are `XRController3D` as in the app, Y switches the room. First visit loads ≈ 30 MB (cached after). Local build:
`godot --headless --path vr-workout --export-release Web build/web/index.html`, serve `build/web/`.
**Not yet in the browser:** the suit link — the haptic → tablet path lives in the OpenXR layer of the APK; the web
page needs its own channel to the tablet. Textures Godot extracts from the .glb files are not committed (`.gitignore`);
the import re-creates them. **The Quest app with the suit link** is built by the same workflow (`build.sh`, the runner's Android SDK) and
published as the rolling release **`xems-studio-latest`** (`xems-studio.apk`, full quality, > 100 MB, so never
committed). The tablet's XEMS VR Launcher → 🎮 Каталог → XEMS Studio downloads it (`catalog.json` source `url`,
fetched again only when it changed), installs it on the headset and adds the haptic bridge → the suit.

## Build / preview
```
ANDROID_HOME=<sdk with platform 34 + build-tools 34> bash vr-workout/build.sh     # → vr-workout/xems-studio.apk
bash vr-workout/build.sh shot 8 player                                             # desktop PNG via Xvfb (a played frame)
bash vr-workout/build.sh repack        # no SDK (cloud): new project data into the committed APK, same signing key
```
Desktop args (after `--`): `--shot=out.png --wait=<s> --view=player|side|wide --sim=1 --skiptut=1 --level=<n>
--room=<n|name> --cam=<capture height> --yaw=<0..1> --mute=1`. `addons/`, `android/`, `.godot/`, `build/` are fetched / generated.

## Licences
Godot (MIT), godot_openxr_vendors (MIT), Inter font (OFL, `assets/fonts/LICENSE-Inter.txt`), room HDRI from the owner,
rooms: see `assets/CREDITS.md` (CC-BY-4.0
authors credited there).
