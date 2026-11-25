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

## First recording — The Thrill of the Fight (Quest 3, 2026-11-25, code 5YFKJNHUHH, `com.fyian.TheThrillOfTheFight`)
The look-alike worked first time: the game's own pairing screen (options → bHaptics → Pair) listed our six fake devices
(`getDeviceList` polled every second, a `ping`), then it played. 1589 calls: `hapticEventDot` 720 (all the haptics),
`isPlaying` 721, `getDeviceList` 139, `refreshPairing` 5, `ping` 4. No `play`/`playMotors`/patterns — only **dots**:
`hapticEventDot(appId, eventId(GUID), position, byte[20] motor levels 0..100, durationMs=100)`.
- `HandL/HandR` (658): all 20 levels equal = how hard MY punch landed (glove). Dominant hand ~55 %.
- Hits TAKEN (62 in ~4 min, ~every 2.5 s): `VestFront` 12, `VestBack` 10, `Head` 20, `ForearmL/R` 20.
  - Vest face = 4 columns x 5 rows, index = row*4+col; a hit is a blob: 100 on the centre, 50 on a neighbour
    (front seen: [12,13,16,17] low-left, [2,3,6,7] upper, [10,11,14,15,18,19] right/low; back only [0,4] and [3,7]
    = upper left / upper right).
  - `Head`: six motors, a hit lights five contiguous ones (0-4 or 1-5), level up to 100.
  - `ForearmL/R`: motors 6-19 at one level 3..100 (a block — strength varies) and/or 0-2 at 100.
- Orientation (row 0 = top? column 0 = player's left or the viewer's?) is NOT proven — calibrate (docs.bhaptics.com motor page image).
- Suit channels (partsDisabled order): calf, front thigh, back thigh, glutes, abs, lower back, back, traps, chest, arms.
  Proposed: vest front rows 0-1 → chest, rows 2-4 → abs (cols → left/right of the channel pair where the suit has sides);
  back rows 0-1 → traps/back, lower rows → lower back; head → traps (+ a short chest pulse); forearm → arms;
  hands → arms, weak (own effort). Left/right: the vendor suit channels are shared L/R per name — check `PartStrength`.
`bhaptics-spy/analyze.py <code>` prints any recording this way. The listener is the only bHaptics-specific code; the
tablet would get a generic "zone hit" message (channel mask + level + ms).
