# XEMS Studio — EMS VR workout for Quest 3

Standalone Quest 3 app (Godot 4.4, OpenXR via the Meta vendors plugin, Compatibility renderer): an EMS game in a wide room,
and your body map that glows where the suit works. No coach for now (owner, 2026-10: the motion was not good enough; a
coach comes back only with professional mocap made for his own rig, e.g. Mixamo clips on the Mixamo character).

## The game (v0.3) — on the beat, felt three ways
Things fly at you **on the beat of the music**. **Break** the colourful spheres: cyan with a fist, violet with a knee,
orange with a foot — each has a target ring waiting at the spot where it must be hit, tightening and brightening as it
comes. **Dodge** the red striped beams: a bar at eye height → squat (≈ 20 % lower); a pillar beside the head → lean to the
other side. First the rules (the real things float in front of you), then a short **try-out** — one of each, slow, a
second chance if missed — then the levels. The level (speed, gap, mix) follows how the last one went (≥ 75 % up,
< 45 % down).

**One event, three senses on the same curve.**
| | a sphere broken | a hit taken (missed sphere, beam not dodged) |
|---|---|---|
| eyes | shards fly on along the strike, sparks, a shockwave, its light flashes on the room; points rise; the fist's trail turns white-hot once fast enough to count; gloves glow brighter as a combo grows | a red edge round the view that flares and fades |
| ears | spatial hit + shatter on the beat, pitch rises with the combo | a thud, the music goes muffled and opens up again |
| body | a 150 ms controller pulse on that side → the suit (strike) | both controllers, full amplitude falling over 2.5 s → the suit (punish) |
The red edge, the muffled music and the suit's punishment all fall over the same 2.5 s ease-out. The floor ring beats with
the music. The suit link is the controllers' haptics: the XEMS OpenXR layer (`vr-bridge`) sends each pulse to the tablet,
which drives the suit in manual mode under the absolute limits (docs/xems-safety-limits.md).

**The arena** (default room, `scripts/game/arena.gd`, built from code — 0 MB, light on the Quest): night sky with a haze and
stars (`arena_sky`), dark glass floor with a neon grid streaming towards you at the elements' speed and a band of light
running down the lane to your feet on every beat (`arena_floor`), arches that flare far → near through the beat, the
portal everything is thrown out of (it moves to each level's spawn distance; `portal`), dust in the air for depth. The
music's bass (spectrum analyser on the Music bus — any track) brightens it all; a combo of 10 turns it magenta, 20 gold.
On the dark ground every glow reads far stronger than in the photo rooms (left Y still switches to them).
**Variety:** orbit rings tell the spheres apart by shape too (fist 1, knee 2, foot 3); from level 2 a rare **golden**
fist sphere is worth triple with a bigger burst. **Sound:** every effect goes through a short hall reverb (Sfx bus), 3D
sounds pan and bend in pitch as things fly past (Doppler).

**Music.** The built-in bed is 128 BPM. Your tracks (XEMS/music) set the beat with `"bpm"` in `<track>.json` or `128bpm`
in the name; without a tempo the game paces itself on a 120 BPM grid. The beat clock follows the playback position.

| Part | Where |
|---|---|
| Rules of the game, 8 levels (speed, gap, mix, count), contact planes, suit feel constants | `scripts/game/defs.gd` |
| Flow: rules → try-out → countdown → levels; beat scheduling; judging (swept limbs); simulated player | `scripts/game/game.gd` |
| Elements + target rings (shaders `plasma`, `hazard`, `halo`, `approach`) | `scripts/game/elem.gd` |
| Effects: shards, sparks, shockwave, light flash, points, red edge, fist trails (`shock`, `vignette`, `trail`) | `scripts/game/fx.gd` |
| The arena: sky, streaming floor, beat arches, portal, dust, bass + combo colour | `scripts/game/arena.gd` |
| The player's body: head, hands (controllers), knees and feet (Meta body tracking, `/user/body_tracker`) | `scripts/game/body.gd` |
| Suit events → controller haptics → the suit; the 100 Hz → 7 Hz envelope | `scripts/game/suit.gd` |
| Sounds (synthesised), music bus with the hit low-pass, beat clock | `scripts/game/sfx.gd`, `gen/make_sounds.py`, `assets/sfx/` |

**Input.** Hands = the two controllers. Head = the headset: lean = head sideways from the calibrated middle, squat = head
height / standing height. Legs = Meta **body tracking** — Quest 3 *estimates* the legs from the upper body, so a real knee
or kick may not show: the try-out decides (the knee / kick spheres must break), otherwise the game plays with hands,
squats and leans and says so. A hit needs a speed (fist ≥ 1.0 m/s, knee ≥ 0.7, foot ≥ 0.9): holding a limb in the way
does not break anything; the limbs are swept between frames (≤ 20 ms steps), so a fast fist cannot pass through.
**Buttons.** Right A = skip (a rules page, the try-out) · left X = "this is the middle" · left Y = next room · left grip =
next track of your music.

**Rooms.** Wide spaces only: 3D scenes (brutalist hall, gym, studio) and 360° photos drawn big (`radius`, `room_depth`): the
player stands near the back wall and has the whole room ahead. **Desktop tests (no headset):**
```
godot --path vr-workout -- --sim=1 --skiptut=1 --levels=1 --level=4 --skill=0.8 --timescale=6   # plays itself, prints LEVEL … done
godot --path vr-workout -- --shot=out.png --wait=8 --view=player --sim=1 --skiptut=1 --level=4     # a frame of play
godot --path vr-workout -- --shot=out.png --wait=3 --skiptut=1 --burst=0 --bt=0.06               # an effect frozen (0/1/2 = sphere, hit)
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
