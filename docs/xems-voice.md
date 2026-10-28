# XEMS voice — Bulgarian command words on a XIAO nRF52840 Sense (Plus)

Owner, 2026-10-27: a small module with a microphone hears the trainer during any training, with any unit (suit,
Bluetens, MASTOGO, WiEMS, …). It reacts to **"едно, две, три, старт"** (start), **"пауза"**, **"стоп"** (stops at once),
**"увеличи импулса" / "намали импулса"** (one step up / down). Commands are said a little louder, after a short pause.
The words are not fixed: they come from **the trainer's own recordings**.

Firmware: `voice/xems_voice/` (`kws.h` = the recogniser, `xems_voice.ino` = mic, BLE, USB, storage).
Build: `sh scripts/voice/build-voice.sh` → `voice/xems-voice-sense.uf2`, `voice/xems-voice-sense-plus.uf2`.
Offline test: `python3 scripts/voice-sim/run.py [-v]` (espeak-ng Bulgarian voice, needs espeak-ng, ffmpeg, g++).

## Hardware
Seeed XIAO nRF52840 **Sense Plus** (also builds for the plain Sense): nRF52840 Cortex-M4F 64 MHz with FPU, 256 KB
RAM, 1 MB internal flash + 2 MB QSPI, BLE 5, PDM mic MSM261D3526H1CP, IMU LSM6DS3TR-C, LiPo charger.
The firmware uses 147 KB flash and 147 KB RAM (90 KB free); the internal file system (28 KB) keeps the examples.

## Which recogniser, and why (research)
| Option | Bulgarian | Own recordings | On this chip | Verdict |
|---|---|---|---|---|
| Picovoice Porcupine / Rhino (MCU) | no (≈17 languages, no Bulgarian; MCU builds need a commercial licence) | no | yes | out |
| Edge Impulse / TFLite Micro CNN (MFCC + DS-CNN) | any — trained on our data | yes, but needs ~50–100 clips per word + training in the cloud | yes (EI lists the XIAO Sense; the stock PDM example has known bugs on it) | **phase 3**, once we have the clips |
| Pretrained multilingual embedding + few-shot (MSWC-style) | language-independent | 3–5 clips | 150–300 KB int8 model — fits, tight | possible later, no ready model to verify offline |
| **MFCC + DTW template matching, speaker-dependent** | any | **3 clips per word, recorded on the device, no training** | yes, ≈10 % CPU | **phase 1 — built** |

Why DTW first: it is the only option that works today, offline, in Bulgarian, from the trainer's own voice, with any
phrase (record "плюс" instead of "увеличи импулса" and that is the command). Its weak side — other people's voices,
loud music — is exactly what the owner's rule ("louder, after a pause") and per-command safety handle. When we have
clips of real sessions (the module can collect them), a CNN trained on them (phase 3) replaces the matcher and keeps
the protocol.

## Pipeline (`kws.h`)
1. **Front end** — 16 kHz, 25 ms frames every 10 ms, Hamming, pre-emphasis 0.97, 512-point FFT, 26 mel bands
   100–7600 Hz. Energy is taken from the plain signal (DC out): pre-emphasis takes ~10 dB off a voiced vowel against
   hiss, and the finder missed "увеличи" in noise because of it.
2. **Word finder** — the noise floor follows quiet fast and loud slowly (≈3 s; faster while only running sound is
   heard, else music switched on locked it out). A word = ≥ 3 frames 12 dB over the floor, after a quiet run of
   ≥ 200 ms that ended ≤ 200 ms before (soft consonants before the loud vowel), closed by 220 ms of quiet; length
   160 ms – 1.5 s; its peak ≥ 18 dB over the floor. Longer = running speech, never a command: wait for the next pause.
3. **Features of the word** — the steady noise of every band (learned from quiet frames) taken out ×1.5, a floor
   30 dB under the word's loudest band (a word recorded in quiet and one said over noise then look alike), log,
   12 cepstra minus their mean + energy under the peak, 20 ms frames, int8.
4. **Matching** — DTW (steps 1/1/2, band ±¼ + 4, early stop) against every example; per command the nearest.
   Accepted only when **d ≤ threshold** of that command **and d ≤ 70 % of the next command's d**.
   Threshold = 2.5 × the mean distance between the command's own examples × sensitivity × safety:
   start 0.9, plus 0.85 (must be sure), pause 1.15, stop 1.3 (a stop too many costs nothing).
5. **Rules** — "старт" acts only after "три" within 4 s (`count 1`, default; `count 3` = "едно, две, три" in order,
   `count 0` = alone). One step per "увеличи/намали", at most one per second. `mute 1` = hear, never act.

Latency: the word is closed 220 ms after its end + matching (≈ 10–50 ms on the chip) → **"стоп" acts ≈ 0.3 s after
it is said.**

## Protocol (USB serial and BLE Nordic UART `6E400001-…`, name "XEMS Voice"; one text line each)
Full list at the top of `xems_voice.ino`. The tablet acts only on `CMD <start|pause|stop|plus|minus> <score>`;
`CNT 1|2|3` shows the countdown, `HEARD …` is for the "how well does it hear me" screen, `REC …` for recording.
Recording: `rec stop` → LED blinks blue → say "стоп" once → `REC stop ok 1 …` (green). Three times per command.

## Offline test (2026-10-27, `scripts/voice-sim/run.py`)
Examples: espeak-ng `bg+m3`, 3 per command (speed 135–165, pitch 45–55). Test: the same voice at other speeds and
pitch (140 / 175, pitch 58 / 42), a session of 1-2-3-start, 2× plus, pause, start without the countdown, 1-2-3-start,
minus, running speech at −8 dB, ten loud single non-commands (хайде, добре, браво, още, четири, давай, спокойно,
почивка, издръж, край), stop.
| Run | Result |
|---|---|
| quiet | 7/7 commands right, 0 false (start without countdown → `NOCOUNT`) |
| white noise, speech ≈ 29 dB above it | 7/7, 0 false |
| white noise ≈ 21 dB | 4/7, 0 false (misses, never wrong) |
| another voice (`bg+f2`) | 0/7, 0 false — speaker-dependent by design: each person who gives commands records |

Commands land at d ≈ 300–1000 (noise up to 1370); non-commands at ≥ 1740 with ratio ≥ 0.72 to the next command.
espeak is cleaner than a real voice: tune `sens` with the real mic (`HEARD` lines show d / thr).

## Setting it up (owner, 2026-10-28: "as few steps as possible")
1. Flash once: double-tap RESET on the XIAO → the XIAO drive appears → copy `voice/xems-voice-sense-plus.uf2`.
2. XEMS → menu → **Глас** → the tablet finds the module by itself (no pairing) → **▶ Научи гласа ми** → say each
   word as it shows (3 times, the next comes by itself; "Не те чух" asks again). ≈ 1.5 min. Done.
From then on XEMS links to it on every start (autoConnect to the kept address) and commands work from any page.
A tap on a word records only that word again; "Строго / Нормално / Лесно" = `sens 0.8 / 1.0 / 1.3`.
Without the tablet: any BLE / USB serial terminal speaks the same lines (`rec one`, `list`, …).

## XEMS side (1.1.480-ai) — `wearable/voice/`
- `VoiceLink` — one app-wide BLE link (Nordic UART): kept address + autoConnect from `XemsNav.attach`; scans for
  "XEMS Voice" only while the page is open. On every link: `mute 0`, `meter 0` (a learning page that died never
  leaves the module deaf), `ping`, `list`.
- `VoiceRemote.onCommand` — MASTOGO page (`MastogoScreen.voice`), Bluetens page (`BluetensScreen.voice`), AI
  session (`AiSession`), else the suit row (`XemsPanel.press`, `BandRemote.mainStep`; WiEMS rides the row).
  start / pause act only when stopped / running (a repeated word never toggles back); plus / minus only while
  running; a short tone confirms (stop / pause lower).
- `VoiceScreen` (menu → Глас, `XemsNav.K_VOICE`, icon `XemsIcon.MIC`) — left: the word to say (huge, ●●○, level
  bar) or what was heard / the countdown; right: the 8 words (tap = again), sensitivity. Learning sends `mute 1` +
  `meter 1`, per word `del` then 3 × `rec` (timeout → again).
- The module can live on the trainer (lanyard / clip): only enrolled voices act.

## Phase 3 — learned model
`dump` of every word (16 kHz, ≤ 1.6 s) to the tablet → a labelled set from real sessions (gym noise, EMS breathing)
→ Edge Impulse / TFLite Micro DS-CNN (int8, ~50–100 KB) with noise augmentation → replaces step 4, same protocol.
The IMU can then add "knock twice = stop" as a second, silent channel (off by default: jumps and squats knock too).
