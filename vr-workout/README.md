# XEMS Studio — EMS VR workout for Quest 3

Standalone Quest 3 app (Godot 4.4, OpenXR via the Meta vendors plugin, Compatibility renderer). A calm photo-real
studio, a "glass" coach that shows each exercise, and your body map that glows where the suit works.

## What is in it (v0.1)
- **Room:** `assets/yoga_room.jpg` — the owner's 360° HDRI (`yoga_room_4k.exr`), tone-mapped to 4096×2048, projected
  onto a room-sized shell from the camera height (`shaders/room.gdshader`): the parquet floor sits under your feet
  with depth, not as a far-away sky. `ROOM_YAW` puts the arched window ahead.
- **Coach:** `scripts/mannequin.gd` — capsule figure posed by joint angles, feet kept on the floor automatically,
  turned 3/4 so depth reads. Each body part knows its XEMS channels (Прасец … Ръце) and glows warm in the impulse.
- **Exercises:** `scripts/exercises.gd` — Клек, Напад, Бицепс сгъване, Прави удари. One rep = down → **hold (EMS
  impulse)** → up → rest. Punches spawn targets at arm's reach; hit = speed > 2 m/s within 14 cm.
- **Cards:** frosted glass (`shaders/glass.gdshader`) — exercise name / cue / reps left, "Работят сега" body map right.
- **Suit link:** one controller haptic pulse per hold (and per punch hit). Installed through the XEMS VR Launcher
  (catalog "XEMS Studio" or 📥 Downloads) the loader shim forwards it to the tablet like any patched game.
  Next step: send rich events (hand, force, zone) straight to the tablet instead of haptics.

## Build / preview
```
ANDROID_HOME=<sdk with platform 34 + build-tools 34> bash vr-workout/build.sh     # → vr-workout/xems-studio.apk
bash vr-workout/build.sh shot squat 2.0 player                                     # desktop PNG via Xvfb
```
Desktop args (after `--`): `--shot=out.png --ex=squat|lunge|curl|punch --t=<s> --view=player|side|wide
--cam=<capture height> --yaw=<0..1>`. `addons/`, `android/`, `.godot/`, `build/` are fetched / generated.

## Licences
Godot (MIT), godot_openxr_vendors (MIT), Inter font (OFL, `assets/fonts/LICENSE-Inter.txt`), room HDRI from the owner.
