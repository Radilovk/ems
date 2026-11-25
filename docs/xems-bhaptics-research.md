# bHaptics ecosystem as a source of hit ZONES (research, 2026-11-25 — nothing built yet)

Why: third-party VR boxing games only tell the controllers "vibrate"; the suit needs WHERE the hit landed.
Games that support a bHaptics vest do tell where (motor indices on a vest). Question: can XEMS ride that?

## How a Quest game talks to bHaptics (read from `bhaptics/tact-android`, `libs/bhaptics_manager.aar`)
- The game-side SDK binds a service of the **bHaptics Player app on the headset**: package `com.bhaptics.player`,
  intent action `com.bhaptics.player.BhapticsHapticService`, extra `appId`. The game needs `<queries>` for that package.
  The Player owns Bluetooth; the game has no BLE code.
- AIDL `com.bhaptics.service.IBhapticsService` — 57 methods, transaction codes = declaration order from 1. Gameplay:
  `play(appId,event)`, `playPos`, `playParam`, `playLoop*`, `playMotors(appId,position,durationMs,int[] motors)`,
  `playPathWithRequestId(appId,pos,ms,reqId,float[] x,float[] y,int[] intensity)`, `hapticEventDot/Path`, `stop*`,
  `initialize(appId,apiKey,defaultSetting-json)` (+V2 variants), `getDeviceList()` (List of JSON strings:
  `{deviceName,address,position(int),connected,paired,enable,battery,audioJackIn}`), `getStatus(appId)->byte[]`.
- Positions: 0 Vest (32 motors) · 1/2 forearms L/R (3) · 3 head (4) · 4/5 hands (3) · 6/7 feet (3) · 8/9 gloves (8);
  200/201/202 = VestFront/VestBack/Tactal in `SimpleBhapticsDevice.positionToString`.
- Events by name come from the bHaptics Developer Portal (appId + apiKey); the third `initialize` argument carries the
  app's mapping JSON. Per-motor geometry of the vest is only in images on docs.bhaptics.com/sdk/further/motor.
- Thrill of the Fight: bHaptics page lists Meta Quest + SteamVR, "Native", vest torso / sleeves arms / visor face / hands.
  Also native: X-Fitness, PUNCH FIT MR Edition. Creed / FitXR / Knockout League: not seen in the readable list.

## Idea (NOT built)
A sideloaded `com.bhaptics.player` look-alike on the Quest that implements this service, logs/forwards every call
(zone + level) to the tablet → zone → suit channel via `PartStrength`. First step would only LOG what a real game
calls (and auto-upload through the existing `/v1/vrlog` endpoint, readable at `/v1/vrlog/recent`).

## BLOCKER to clear first — the SDK licence (https://bhaptics.gitbook.io/license-sdk/, 11.08.2024)
Quoted fragments: §1.1 "The SDK has to be used only with bHaptics Hardware and bHaptics Software."; §1.1 "If you want to
use any other third-party hardware with our SDK, please contact …"; §2.1 "You are not allowed to develop, or aid in the
development, directly or indirectly, of any hardware or software …" (rest not read); §2.3 "Do not attempt to circumvent
any related security measures". A Player look-alike driving our suit is very likely outside §1.1. The sanctioned route
is to contact bHaptics for third-party hardware. Have the full text read (by the owner / a lawyer) before building.

## Licence-free alternative: our own boxing sparring in XEMS Studio
We draw the opponent, so we know the glove's contact point → zone → per-zone impulse (needs a wire message with a
channel mask + a tablet-side per-channel boost over `PartStrength`; `suit.gd` already carries zone/side).

## Update 2026-11-25 — phase 1 built (owner accepted the licence risk, private use only)
`bhaptics-spy/` — a `com.bhaptics.player` look-alike that only LISTENS and uploads what games send (README there).
APK is built locally (`bhaptics-spy/build.sh`), not published. `xems_vr_patch.py --install` installs it as-is
(package `com.bhaptics.player` → ready path). Next: read the first recording (Thrill of the Fight), then decide the
zone → channel mapping and the tablet link.
