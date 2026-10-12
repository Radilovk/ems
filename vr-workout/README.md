# XEMS Studio — EMS VR workout for Quest 3

Standalone Quest 3 app (Godot 4.4, OpenXR via the Meta vendors plugin, Compatibility renderer). A calm photo-real
studio, a "glass" coach that shows each exercise, and your body map that glows where the suit works.

## What is in it (v0.1)
- **Room:** `assets/yoga_room.jpg` — the owner's 360° HDRI (`yoga_room_4k.exr`), tone-mapped to 4096×2048, projected
  onto a room-sized shell from the camera height (`shaders/room.gdshader`): the parquet floor sits under your feet
  with depth, not as a far-away sky. `ROOM_YAW` puts the arched window ahead.
- **Coach:** `scripts/coach.gd` — any ready-made clothed humanoid (default: Mixamo Ch08), turned 3/4 so depth reads.
  Moves like a person, not joint by joint: the pelvis is placed and tilted (hip hinge, long spine), the feet are
  planted and the legs reach them by two-bone IK (no sliding or floating, knees over the toes, heel rises on the
  ball, toes stay flat), arms and head hang off the trunk with the gaze level; breathing and a small sway at rest;
  a change of exercise eases over 0.7 s. Punches are posed too (or play the model's own Punch_Jab / Punch_Cross clips).
  `scripts/mannequin.gd` = the small glass body map (each part knows its XEMS channels and glows in the impulse).
- **Exercises:** `scripts/exercises.gd` — Клек, Напад, Бицепс сгъване, Прави удари. One rep = down → **hold (EMS
  impulse)** → up → rest. Each exercise is a path of key poses (squat: hips lead, then knees, arms rise as a
  counterweight; lunge: weight shift → low swing → reach → heel plant → straight down), run through a monotone
  cubic (a planted foot never drifts, no overshoot) on a minimum-jerk clock; arms and head lag the pelvis.
  Punches spawn targets at arm's reach; hit = speed > 2 m/s within 14 cm.
- **Coaches & rooms to try (`scripts/library.gd`):** right **B** = next coach, left **Y** = next room (a name shows
  above the coach). Built in coaches: hoodie man (Mixamo Ch08, default), android (AI mesh, decimated + auto-rigged by
  `convert/autorig.py`), ActorCore motion dummy, Michelle (Mixamo). Rooms: yoga room, brutalist interior, gym room, yoga studio (3D), boxing ring, beach, bridge (360°).
  Credits: `assets/CREDITS.md`. Converters for new downloads (Blender as a module, `pip install bpy`): `convert/`
  fbx2glb (ActorCore/Unity FBX → upright glb), mixamo2glb (Mixamo FBX → glb, textures capped, matte cloth), shrink_glb (cap textures of any glb), autorig
  (unrigged T/A/I-pose humanoid → decimated if heavy, Unreal-named rig + weights; arms resting on the body are cut free),
  bake_static (scene skinned to prop rigs → static), exr2jpg (EXR → tone-mapped JPG). Owner's rule: only ready-made models with real clothes, or separate clothing files — no painted-on outfits.
  **No rebuild for new ones:** copy files to the Quest under `Android/data/eu.xems.studio/files/XEMS/coaches|rooms`
  (made with a README on the first start; USB or SideQuest). Coaches: .glb/.gltf, any humanoid rig; clothes / hair as separate files on the same rig: `<coach>+<item>.glb`
  (`anna.glb`, `anna+shirt.glb`, `anna+hair.glb`) — their skinned meshes move onto the coach's skeleton (bind by bone
  name). Any rig (Unreal, Mixamo,
  MakeHuman, Rigify names); `Coach` finds bones by role, turns the model to face +Z, fixes cm scale, stands it on the
  floor and straightens T/A-pose arms. Rooms: 360° .jpg/.png/.webp/.hdr (2:1, up to 8192 px; .hdr is exposed and
  tone-mapped) or a .glb scene (cm → m, floor found under you, centred between you and the coach). Optional
  `<file>.json`: `name`, `cam`, `yaw` (photo) / `scale`, `turn`, `offset` (scene). Desktop: `--lib=<dir>
  --coach=<n|name> --room=<n|name> --view=close`.
- **Cards:** frosted glass (`shaders/glass.gdshader`) — exercise name / cue / reps left, "Работят сега" body map right.
- **Suit link:** one controller haptic pulse per hold (and per punch hit). Installed through the XEMS VR Launcher
  (catalog "XEMS Studio" or 📥 Downloads) the loader shim forwards it to the tablet like any patched game.
  Next step: send rich events (hand, force, zone) straight to the tablet instead of haptics.

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
