# Bluetens — protocol and the XEMS module plan

Source: the Bluetens Android app 7.0.105 (APKPure), an Ionic/Cordova app — the whole device logic is plain JS in
`assets/www/build/main.js` (UltraCreation "loki" shell), so nothing below is guessed from traffic. Read on 2026-10-13.
The vendor's catalogued programs are in `branding/bluetens/programs.json` (scripts/bluetens/import-vendor.py); the APK is not.

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

## Unsolicited lines
`NOTIFY strength <n>` (the pad's own button), `NOTIFY stop` (program ended), `NOTIFY noload` (electrodes off the
skin), `NOTIFY low` (battery), `NOTIFY shutdown` / `NOTIFY disconnect`, `NOTIFY error`, `NOTIFY insufficient space`.

## In XEMS (1.1.431-ai) — a page of its own, apart from the suit (owner, 2026-10-13)
Owner: Bluetens is **totally separate** from the suit and its training — only a button in the dock opens it; nothing
of it mixes into the training screen. The owner has a classic pad and a Duo.
- **Dock:** link tile "Bluetens" (`XemsNav.K_BLUETENS`, icon `XemsIcon.PADS`); on a fresh bar by default, and put on
  an existing bar once if there is room (`bluetens_docked`); movable like every tile.
- **Page** `wearable/bluetens/BluetensScreen` (landscape, full screen): left — program (5) and minutes (10/15/20/30);
  right — time left with a bar, then one card per pad (classic, or Duo 1 / Duo 2) with its strength 0–60 big and
  − / + (hold repeats); footer — one primary ▶ Пусни / ■ Спри. Pads are found and linked by themselves (up to 2).
  Electrodes off → amber line on that pad's card. ⓘ = the impulse in numbers + how to place the electrodes.
  **✕ stops the pads; "—" folds the window and they keep running (1.1.438).**
- **Code** (compile:wearable): `BluetensLok` (format), `BluetensPrograms` (XEMS's ready programs), `BluetensProgram`
  + `BluetensStore` + `BluetensEditor` (the manual module), `BluetensShell`
  (the conversation: queue, one request in flight, strength coalescing, md5 → upload only when changed, keep-alive
  `>bat` every 20 s while running), `BluetensAdvert` (tell a pad / Duo / v2 from the advert), `BluetensScan`,
  `BluetensLink` (GATT, 20-byte writes ≥ 27 ms apart, reconnect), `BluetensScreen`. All pure parts are tested
  offline: `bash scripts/bluetens/run.sh` (a simulated pad + every program re-read by `lok.py`).
- **Programs** (`BluetensPrograms`, files `X<code><min>` on the pad): Възстановяване 3–8 Hz · 250 µs; Масаж 80 Hz
  bursts of 0.1 s + 4 Hz; Облекчаване burst TENS 100 Hz × 7 / × 5 · 150 µs; Активиране 50 Hz · 300 µs, 0.5 s rise,
  3.5 s hold, 6 s rest at 4 Hz; Загряване 4 → 12 → 4 Hz. All inside docs/xems-safety-limits.md (fused ≤ 4 s,
  ≤ 300 µs from 100 Hz, rest ≤ 10 Hz). Strength always starts at 1.
- **Manual module** (1.1.432-ai, owner: "I want control over the parameters, programs I create" — the ready ones
  stay): the left column has two tabs, "Готови" and "Мои · ръчно". "Мои" lists the trainer's programs (name, time,
  steps, Hz / µs range), ✎ opens `BluetensEditor`, ＋ makes a new one. The editor is full screen. Each step has
  time, Hz, pulse width µs, impulse s (0 = continuous, only under 20 Hz), pause s, pulses in the pause (0 = silence,
  ≤ 10 Hz) and soft rise. Steps sit side by side; ⧉ duplicates, ✕ removes. Every change goes through
  `BluetensProgram.safe` (`ai/SafeLimits`): the value shown is what the pad gets, and an amber line says why. Saved
  as you go (`BluetensStore`, prefs `xems_bluetens` / `progs`). On the pad all own programs share one file, `XMINE`.
- **На живо** (1.1.433-ai, owner: "real-time control of the parameters"): a third tab. Kind of current
  (Импулси / Австралийски ток), Hz, µs, burst ms, impulse s, pause s, and the minutes. While the pads run, a change
  is sent 0.6 s after the last tap. The protocol has no live parameter command; only `>str` is live. So
  `BluetensShell.swap` uploads a program for the time left under the other file (`XLIVA` ↔ `XLIVB`, never over the
  one playing), sends `>ssta` and then `>str <the strength before>` (`>ssta` restarts at 1). A newer change replaces
  one still waiting, and a `NOTIFY stop` during the swap is not the end of the session. If the pad refuses `>cat`
  while running, the shell ends the line it polluted (bare CRLF), sends `>osto`, and does the newest swap again.
  The simulated pad covers all three firmware variants. "Запази като моя програма" copies the values into "Мои".
- **Australian current** (`Step.burstMs`, 1–5 ms; storage adds an 8th number; old 7-number lines still read):
  bursts of 1 kHz pulses (`F1000`, `C = burst ms`, `I = 1000/rate − burst`), with the step's Hz as the burst rate.
  The pad tops out at 1200 Hz (vendor `MAX_FREQ`), and its own `PAIN.lok` runs 1200 Hz bursts of 3–9 pulses at
  100 µs. So 1 kHz works, but the 2.5–4 kHz kind (and a true sine) is out of the pad's reach: these are rectangular
  biphasic pulses. Width ≤ 250 µs. The burst rate goes through the same limits as Hz, so ≥ 20 bursts/s is an
  impulse with a pause. The classic setting is 4 ms × 50/s.
- **Window over XEMS + the native programs** (1.1.438-ai, owner, 2026-10-14: "a modal window; minimised, Bluetens keeps
  working; XEMS and Bluetens run together; every program of the native Bluetens app in our module; only on an unlocked
  tablet"):
  - The page is a large modal (96 % × 94 %), XEMS visible around it. **"—"** in the header (or Back while pads are
    linked) folds it to a floating pill (`BluetensMini`): time left with a blinking dot, the program, ⚡ strength per
    pad, ■ stop. The pill floats over XEMS (`FLAG_NOT_TOUCH_MODAL | FLAG_NOT_FOCUSABLE`: touches outside go to XEMS),
    drags anywhere (place kept in prefs `mini_x` / `mini_y`), a tap opens the window again. The links, the shell and
    the timers stay alive while folded — only **✕** closes and stops the pads. One window at a time
    (`BluetensScreen.current`): the dock tile reopens the folded one.
  - Fourth tab **"Bluetens"** (1.1.439-ai, owner: "every program of the native app, by body part — no dependency on
    that app being installed"): the Bluetens app's own catalog, **shipped inside XEMS** — 219 programs, 17 body parts,
    9 categories, Bulgarian names and descriptions. `scripts/bluetens/import-vendor.py <unpacked APK>/assets/www` reads
    `assets/i18n/scriptfile.json` (FileName → category, mode, program family, body parts), `light.json` (the long
    30–600 min variants), `bg|en/master.json, cat.json, ui.json` (names) and `assets/lok/*.lok`, checks every file with
    `lok.py`, and writes `branding/bluetens/programs.json` (one file: catalog + the .lok text, ~165 KB);
    apply-exercise-assets.py ships it as `assets/xems/bluetens.json`; `BluetensLibrary` reads it off the main thread.
    The vendor's 132 other .lok files (not in its catalog — no name, not shown by the app) are left out. The
    `Override` entries of scriptfile.json only change the exercise picture / text, not the file.
    UI: chips "where on the body" (head → feet) → chips of the categories that part has → programs two to a row
    (time · Hz · µs), a 📍 line where the electrodes go (`BluetensLibrary.placement`); ⓘ = the program's own
    description. Played byte for byte, file `XNAT` on the pad; all inside 400 µs and ≤ 300 µs from 100 Hz (checked).
    The vendor APK itself is not in the repo (owner's Google Drive copy, Bluetens 7.0.105 APKPure).
  - **Only on an unlocked (admin) tablet** (`SuitStandard.unlocked()`): a locked tablet has no dock tile, no menu row,
    and `BluetensScreen.open` does nothing.
- Not done yet: no device test (protocol from the vendor app only); `>mode` (async, Eurocept) is not sent.

## Notes
- Legal: talking to the device for interoperability is normally allowed; copying the vendor's programs or app
  code is not. The owner decided (2026-10-14) to ship the Bluetens app's program files and catalog in XEMS
  ("Bluetens" tab); XEMS's own programs ("Готови", "Мои", "На живо") are generated here.
