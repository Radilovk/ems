# XEMS Studio — EMS VR workout for Quest 3

Standalone Quest 3 app (Godot 4.4, OpenXR via the Meta vendors plugin, Compatibility renderer): an EMS game in a wide room,
with a human coach, and your body map that glows where the suit works.

## The game (v0.2) — plasma, fists, knees, feet, ducks and leans
Things fly at you. **Break** the colourful spheres: cyan with a fist, violet with a knee, orange with a foot. **Dodge** the
red striped beams (nothing else looks like them): a bar at head height → squat; a pillar beside the head → lean to the
other side. A coach explains the rules, shows the nine basic moves, plays a round himself (breaking, ducking, leaning),
steps aside — then it is the player's turn. The level (speed, gap, mix of elements) is chosen by how the last one went
(≥ 75 % up, < 45 % down). Score, combo and the level are on the left card, the suit zones that are working on the right.

| Part | Where |
|---|---|
| Rules of the game, 8 levels (speed, gap, mix, count), contact planes, suit feel constants | `scripts/game/defs.gd` |
| Flow: tutorial → countdown → levels, judging (break / miss / dodge / hit), suit events, simulated player for tests | `scripts/game/game.gd` |
| Elements: plasma spheres, hazard beams (shaders `plasma`, `hazard`, `halo`) | `scripts/game/elem.gd` |
| The player's body: head, hands (controllers), knees and feet (Meta body tracking, `/user/body_tracker`) | `scripts/game/body.gd` |
| The coach's moves: guard, jab, cross, knee ×2, kick ×2, lean ×2, duck (key poses on the IK rig) | `scripts/game/moves.gd` |
| Suit events and the 100 Hz → 7 Hz envelope | `scripts/game/suit.gd` |
| Sounds (synthesised) + the owner's soundtrack | `scripts/game/sfx.gd`, `gen/make_sounds.py`, `assets/sfx/` |

**Input.** Hands = the two controllers. Head = the headset: lean = head sideways from the calibrated middle, squat = head
height / standing height. Legs = Meta **body tracking** (Quest 3 estimates the legs from the upper body and the cameras;
plugin ≥ 4.1 uses `XR_META_body_tracking_full_body`; the export asks for the permission). Without leg data (the browser,
a desktop) the game leaves out knees and feet and plays with hands, squats and leans. A hit needs a speed (fist ≥ 1.0 m/s,
knee ≥ 0.7, foot ≥ 0.9): holding a limb in the way does not break anything. The game logic runs in ≤ 20 ms steps.
**Buttons.** Right A = skip the explanation · left X = "this is the middle" (stand straight, look ahead) · right B = next
coach · left Y = next room · left grip = next track of your music.

**Suit feel** (`SuitLink`, see `docs` when the tablet side lands): a broken sphere = a short burst (100 Hz, 0.15 s) in the
limb that broke it (arms for a fist, legs for knee/foot), normal strength. A hit taken (a missed sphere, an undodged beam)
= 100 Hz at 1.5× strength, falling over 2.5 s to the base programme (7 Hz, normal strength) — sharp start, smooth fall in
frequency and strength. Where: head → belly, glutes, back; upper body → arms; legs → legs. The tablet clamps everything
with its absolute limits (docs/xems-safety-limits.md).

**Rooms.** Wide spaces only: 3D scenes (brutalist hall, gym, studio) and 360° photos drawn big (`radius`, `room_depth`): the
player stands near the back wall and has the whole room ahead. **Desktop tests (no headset):**
```
godot --path vr-workout -- --sim=1 --skiptut=1 --levels=1 --level=4 --skill=0.8 --timescale=6   # plays itself, prints LEVEL … done
godot --path vr-workout -- --shot=out.png --wait=8 --view=player --sim=1 --skiptut=1 --level=4     # a frame of play
godot --path vr-workout -- --shot=out.png --move=knee_l --mt=0.3 --view=profile                    # a coach move frozen
godot --path vr-workout -- --shot=out.png --wait=4 --demo=1 --view=player                          # the coach's own round
```

## In the Quest browser (WebXR) — the way it ships now
`https://radilovk.github.io/ems/vr/` → open in the Meta Quest browser → **Влез във VR**. Built and published by
`.github/workflows/design-tools-pages.yml` on every push to `main` that touches `vr-workout/` (Godot 4.4.1 web,
no threads, so GitHub Pages needs no special headers; the "Web" preset in `export_presets.cfg`). `main.gd`
`_setup_webxr()`: a page button opens the `immersive-vr` session (browsers only allow it from a click), the controllers
are `XRController3D` as in the app, B / Y switch coach / room. First visit loads ≈ 220 MB (cached after). Local build:
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
bash vr-workout/build.sh shot squat 2.0 player                                     # desktop PNG via Xvfb
bash vr-workout/build.sh repack        # no SDK (cloud): new project data into the committed APK, same signing key
```
Desktop args (after `--`): `--shot=out.png --ex=squat|lunge|curl|punch --t=<s> --view=player|side|wide
--cam=<capture height> --yaw=<0..1>`. `addons/`, `android/`, `.godot/`, `build/` are fetched / generated.

## Licences
Godot (MIT), godot_openxr_vendors (MIT), Inter font (OFL, `assets/fonts/LICENSE-Inter.txt`), room HDRI from the owner,
coaches and rooms: see `assets/CREDITS.md` (CC-BY-4.0
authors credited there).
