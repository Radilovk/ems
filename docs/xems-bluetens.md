# Bluetens — protocol and the XEMS module plan

Source: the Bluetens Android app 7.0.105 (APKPure), an Ionic/Cordova app — the whole device logic is plain JS in
`assets/www/build/main.js` (UltraCreation "loki" shell), so nothing below is guessed from traffic. Read on 2026-10-13.
The vendor's 334 programs (`assets/www/assets/lok/*.lok`) are **not** in this repo (their content, not ours).

## Device
- Small TENS/EMS unit; the app drives one output per device with one strength step **1..60** (no per-channel control in the protocol).
- Advertised names (case-insensitive): Classic `bluetens`, `bluetensq`, `bluetensx`, `blt`, `*.blt`, `pkt`, `bt2`,
  `mdt`, `bluetens2`; Sport/Duo `bst`, `duosport2`, anything with `duo` / `sport`. Several devices = several links.
- Firmware images ship in the app (`assets/upgrade/*.bin`, OTA via `>ota`); we never flash.

## Transport
- BLE GATT, "serial" profile: service **FFE0**, characteristic **FFE1** (notify + write; write-without-response
  when the characteristic offers it and firmware ≥ 2.0.0, else write-with-response).
- 20-byte writes, ≥ 27 ms apart (app targets ~5.9 kbit/s).
- **Text shell**: every command is ASCII `>cmd args` + `\r\n`; every answer is a `\r\n`-terminated line.
  Status lines are `<code>: <text>` (0 = OK, anything else = error text). One request in flight at a time.

## Commands (what the app uses)
| Command | Answer | Meaning |
|---|---|---|
| `>ver` | `v.1.2.3` / `ver=…` | firmware; app packs it as `(maj*1000+min)*10000+build` |
| `>bat` | `<mV>` or `<mV>:…` | battery in mV (v2: /5000 = %). App sends it every 20 s while running = keep-alive |
| `>stat` | `tick=<s>,str=<n>,md5=…,dmd5=…` | running time, strength, md5 of the running / default file |
| `>ls` | file list lines | files on the device |
| `>md5 <file>` | md5 | skip the upload if it matches |
| `>cat <file> -l=<bytes>` then raw bytes | `3: end of cat` | upload a program file |
| `>rm <file>` | status | delete a file |
| `>ssta <file>` | status | **start** a program |
| `>str <1..60>` | `str=<n>` or `<n>` | **set strength** (only while running) |
| `>osto` | status | **stop output** |
| `>mode [0\|2]` | `mode=…` | 0 = sync, 2 = async (Eurocept firmware ≥ 3.003.0008) |
| `>sdef <file>` / `>ndef i=<file>` | `sdef=…` / status | program the device's own button runs offline |
| `>btnm <name>` | `btnm=…` | rename the device |
| `>shdn` / `>rst` | — | power off / reset |
| `>clrfs -s=<n>`, `>fmt BBFS`, `>format . ultrafs`, `>ota -s= -c=` | — | maintenance, **not for XEMS** |

Connect sequence of the app: connect → notify FFE1 → `>ver` → `>bat` → `>sdef` (read default) → `>stat` → `>mode`.
Start: (`>md5` → `>cat` if different) → `>mode` → `>ssta` → strength starts at 1 → `>str n` as the user turns it up.

## Program format (.lok) — `scripts/bluetens/lok.py`
ASCII, e.g. `V1D16{|R1P96F6C708}{R47|R2P96F6|F7}`: `V` version, `D` digit base (10/16), `{…}` section, `|` block
(inherits the previous block), `R` repeat, `I` pause ms, `F` Hz, `T` Hz×10, `P` pulse width µs (≤ 400),
`C` pulses per repeat, `<S1S2…>` section playlist. Time = Σ (1000/F·C + I)·R. Full grammar in the script's docstring.
The script parses all 334 vendor programs and rebuilds 332 of them byte-for-byte (the other 2 differ only in a
redundant token), so XEMS can **write its own programs** — the device needs no vendor file and no vendor server.

## How it fits XEMS
- A new Java module `wearable/bluetens/` next to `wearable/scale/` (same pattern as `ScaleLink`: own BLE link,
  own screen, no vendor smali touched): `BluetensLink` (scan by name, FFE0/FFE1, line queue, keep-alive),
  `BluetensLok` (port of `lok.py`), `BluetensScreen` (landscape: device | program | big strength dial).
- Programs come from XEMS's own impulse maps (Hz, µs, work/pause) → `.lok`, so a Bluetens pad can run the same
  block plan as the suit for one body part, or a home/recovery session after the suit training.
- Limits from `docs/xems-safety-limits.md` apply to generated programs too (pause from Hz, 60+ ≤ 85 Hz …).

## Open questions (owner)
- Role: an extra pad during the suit session, or a separate recovery / home mode?
- Which device is in hand (Classic, Sport/Duo, Eurocept) and its firmware — async mode and `ndef` depend on it.
- Legal: talking to the device for interoperability is normally allowed; copying the vendor's programs or app
  code is not — XEMS ships only programs it generates itself.
