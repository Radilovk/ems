# Native band workout started from the phone (Band 10)

Goal: XEMS starts / pauses / resumes / stops a workout **on the band itself**, so the band records HR,
calories and time natively and the workout reaches Mi Fitness as a normal band workout.

Source: Mi Fitness 9.8.348i own logs (`XiaomiFit.device.log`, `XiaomiFit.main.log`, `Transfer.device.log`),
Huawei MNA-L29 + Xiaomi Smart Band 10, 2026-09-27, three phone-started "indoor running" sessions.
HCI snoop was not usable on that phone (Huawei stack writes no `btsnoop_hci.log` into the bugreport).
Field numbers: Gadgetbridge `xiaomi.proto` (`Health` = command type 8).

## Sequence Mi Fitness sends (type 8 = Health, over the v2 protobuf channel)

| When | Cmd | Proto (`Health` field) | Content |
|---|---|---|---|
| Start, step 1 | 8/30 | `workoutOpenWatch` = 25 | `sport=1:<type>`, `unknown2=2:2` (sport version 2). Band answers 8/30 `workoutOpenReply` = 26 (`0,2,10` = ok) |
| Start, step 2 | 8/26 | `workoutStatusWatch` = 20 | `timestamp=1` (unix s), `sport=3`, `status=4:0` |
| Pause | 8/26 | 20 | same, `status=1` |
| Resume | 8/26 | 20 | same, `status=2` |
| Finish | 8/26 | 20 | same, `status=3` |
| Every 1 s while running | 8/49 | unknown | phone sport data (duration, HR, pace…) — phone-led data, maybe optional |
| After start | 8/52 | unknown | per-sport records (best distance/duration) — optional |

`status` on the wire = Mi Fitness `sprotState` in `[SportWearSender]`.
Log mapping, verified on all three sessions:

```
[BleSportState] sportState = 1 (start)  → [SportWearSender] sprotState:0
[BleSportState] sportState = 2 (pause)  → sprotState:1
[BleSportState] sportState = 3 (resume) → sprotState:2
[BleSportState] sportState = 4 (finish) → sprotState:3
```

So the wire value is **0 start, 1 pause, 2 resume, 3 finish** (Gadgetbridge's comment on
`WorkoutStatusWatch.status` for the band→phone direction says 1 resumed / 2 paused — the phone→band order
from the logs wins; verify on the band).

Other fields logged with every request: `timeZone = 12` (quarter hours, UTC+3), `sportLaunchType = 0`,
`wearmode = 0`, `sportVersion = 2`. Candidates on the wire: `WorkoutStatusWatch.unknown2` (timezone?),
`unknown6 = 2` (version), `unknown10 = 0` (launch type / wear mode).

The band confirms every 8/26 with an 8/26 reply (`responseCode = 0, responseMsg = ok, selectVersion = 2`,
plus summary data on finish). Round trip ≈ 0.1–0.6 s.

## Sport types seen

Mi Fitness phone launch offered: `sportType 3` = indoor running (started OK), `6` (needs GPS, never
started), `1` outdoor running. A gym / strength type goes through another screen
(`sport_eco…GymLaunchEcoSportActivity`) and was not started in these logs. Strength / HIIT codes for the band
are still unknown → try them from XEMS and watch what the band shows.

## Band behaviour

- Workout shorter than the band's minimum → band says "too short to be saved" (not recorded).
  Test sessions must run several minutes.
- While a phone-started workout runs, the band itself sends an 8/30 pre-request; the phone answers
  `code 2` ("has ongoing sport, abort") — harmless echo.

## Open questions

1. Is 8/49 (phone data every second) needed, or does the band time out without it?
2. Band codes for strength / HIIT / free training.
3. Exact meaning of `WorkoutStatusWatch` fields 2 / 6 / 10 on the phone→band direction.

## Sport codes (second capture, 2026-09-27 04:00–05:48)

| Code | What | Evidence |
|---|---|---|
| 3 | indoor running | started from the phone by Mi Fitness, band accepted (`responseCode 0`) |
| 8 | free training | band-started; Mi Fitness parses it with `FreeTrainingDataProcesser` |
| 16 | HIIT | band-started; synced as `key=high_interval_training` |
| 308, 313, 399 | strength-type workouts from the band's list (started 05:44 / 05:45 / 05:46) | band pre-requests only; names not in the log |

Only code 3 is verified as a **phone** start. XEMS defaults the band owner to 16 (HIIT); `wearable-ble.log`
`band_workout` lines show what was sent. If the band ignores a code, pick another one in the client form.

## Third capture (06:10–06:16) and the mapping XEMS uses (1.1.159-ai)

Band-started codes in start order: 308, 313, 399 (strength list, after HIIT 16) and 311, 310, 304, 307. Matched to the
user's picks: 308 weights, 313 physical training, 399 unknown, 311 yoga, 310 stretching, 304 flexibility,
307 aerobics — by order only, names are not in the logs. Mi Fitness has no custom type, so XEMS "Auto"
(client form, default): passive procedures (drainage / massage goal or ≤ 10 Hz) → 311 yoga, cardio (fat loss /
cellulite) → 307 aerobics, the rest → 308 weights. Manual: weights, HIIT, aerobics, yoga, stretching, flexibility,
free. The band computes its own calories from HR for the chosen type; the XEMS report keeps its own estimate
(stimulus + HR model) and shows it as kcal and MET. Writing XEMS calories into the band workout would need the 8/49
phone-data message, whose fields are not known yet.
