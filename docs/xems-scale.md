# Body-composition scale (Lepulse Lescale P1) — direct BLE, no Fitdays

Status: research only, nothing implemented. Goal: the tablet reads the scale itself, stores the
measurement per client (`(license_id, cid)`, see `xems-client-sync.md`), and replaces the
Deurenberg body-fat estimate in `AutoEngine.fatPct()` with a measured value.

## What the hardware is
- Lescale P1: 8 electrodes (4 foot + 4 handle), 5 segments, app **Fitdays** ⇒ **ICOMON (Chipsea
  BIA chip)** platform. Not Qingniu/Yolanda: the `FFE0/FFE1/FFE2` + `FD 33…` spec and the
  `FFB2 0x10/0x20/0x30/0x40` packet tables circulated online are unverified/generated — ignore.
- Measures **|Z| only** (no reactance) at **2 frequencies, 20 kHz and 100 kHz**, per limb
  ⇒ 8 usable limb impedances. **Trunk bytes are not a usable impedance** (Fitman #320, sacoma).
  So: no true phase angle; Z100/Z20 per limb is available (ECW/TBW-like index).
- Protocol is **plaintext** over service `FFB0` (XXTEA/DH in the vendor lib belongs to other
  protocol versions).

## Two verified open-source decoders (both MIT — portable to Java)
| | Fitman (`DaveNijhuis/Fitman`, `SCALE.md`, `backend/scale/`) | sacoma-lib (`ynsgnr/sacoma-lib`, `docs/protocol.md`) |
|---|---|---|
| Device | e.volve = iCOMON FG2305ULB | SACOMA Ultra |
| Chars | FFB1 write, FFB2 notify live, FFB3 indicate frames, FFB4 name image | FFB1 write, FFB2 notify live, FFB3 notify result |
| Frame | `[seq u16 LE][len u16 LE][type][payload][sum&0x1F]` | 20 B: `[seq][len][frag][16 B payload][sum(payload)&0x1F]` |
| Handshake | `AA`→`B0`, `BE` guest, `BF` profile, `BE` user, `BD`, `BC`; `A7`→`B0` | sustained `BA` heartbeat ~0.4 s + `BB` users + `BD 09`, `B0` ack each `A0/A3` |
| Live weight | FFB2, 12 B | `A2`: [4-5] u16 BE /1000 kg, [1] 01 live / 03 stable |
| Result | `A7` 43 B: [16-23] 4×Z20, [26-33] 4×Z100, int16 LE /10 Ω (LA, RA, RL, LL); [40-41] scale's fat % /10 | `A3`: [3-4] weight /1000, [6..] 10×u16 BE /10 Ω |
| Algorithm | WLA25 chain (Fitdays' own) from FFM — 44/50 values = Fitdays exactly; limbs ±0.1 kg | WLA25 port (`wla25.py`) |

Same family, two protocol generations ⇒ implement both, **auto-detect** by characteristic set
(FFB4 present / first frame type `AA` vs `A0/A2`). Confirm on the real P1 once (nRF Connect:
name, FFB1–FFB4, first frames) or by an HCI snoop of one Fitdays weigh-in.

Notes from those projects:
- The scale computes body fat itself from the profile sent in the handshake (height, age, sex,
  user id). Everything else is derived from FFM. We can also compute from the raw impedances.
- Repeats a minute apart reuse the same impedance reading (only weight changes).
- Without the handshake the scale shows `--` for composition; weight still streams.

## Measuring protocol (owner: no suit, thin clothes)
- Clothes don't matter; **bare feet + bare hands** on electrodes do. Weight: subtract ~0.3–0.5 kg
  for clothes (one fixed setting).
- Measure **before** the EMS session: after the session sweat/fluid shift lowers Z ⇒ fat %
  reads falsely low. Same time of day, ≥2 h after a meal, before training — trends only valid
  under the same conditions.
- The scale is one more BLE link: measure before the suit connects (see `EmsBleCoexist`).

## Validation path
Existing Fitdays history on the owner's phone = reference: decode the same weigh-in ourselves
and compare with the Fitdays report (target: Fitman's level — exact/±0.1). History import is
possible via the unofficial Fitdays cloud client (`AboveColin/fitdays`) — optional, fragile.

## Gemini / LLM
Not for numbers (non-deterministic, unverifiable). Optional later: short text interpretation of
the trend + sessions, through the license Worker (no key on the tablet), with client consent
(health data leaves the device).
