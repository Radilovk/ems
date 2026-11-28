# The trainer's own "тренер" — a small model learnt on the tablet (1.1.598)

Owner, 2026-11-28: "train the model on my voice, on the tablet; no servers, no traffic"; the wake word is "тренер"
alone. The older DTW spotter (3 examples) could not be both sensitive and sure; the cloud ear cost requests and time.

## How a new trainer is taught (Settings → Гласово управление → "Научи гласа ми", ~40 s)
1. "Тренер" 8 times (a pause before each), then 4 short phrases of their own: "Тренировка", "Добре, почивка",
   "Колко време остава", "Тренирай бавно" — their other words are what the model must never take.
2. Each is cut from the microphone by WakeWord's recording (its start / end frames, `WakeWord.ago0/ago1`) out of a 3 s
   raw ring (`WakeListener.clip`, 30 ms each side); a word 0.25–1.3 s, a phrase 0.4–2.5 s, else "say it again".
3. The tablet trains on its own thread (`WakeSetup.Learn`, progress in %, ~1–3 min): `KwsTrain.train` with the pack
   `assets/xems/kws-pack.bin`, saved as `files/kws-model.bin`. Nothing is sent anywhere.

## The model (`ai/Kws`, `ai/KwsTrain` — pure Java, the same code runs on the JVM)
- Features: log-mel 26 bands (as `scripts/voice-kws/feat.py`), a 0.64 s window mean-normalised per band, every 4th
  frame → 416 numbers. MLP 416 → 64 (ReLU) → 1, Adam, 50 epochs.
- Positives: each cut 150× in a random hall — speed ±10 %, −20…+3 dB, room echo 0.2–0.7 s, music / people talking /
  hiss at 0–25 dB. Negatives: the word half outside the window, the trainer's phrases (2500 windows), the pack.
- The pack (`branding/voice/kws-pack.bin`, 6.9 MB, made by `scripts/voice-kws/run-kws.sh … <out>`): 13 500 int8
  windows — 30 Chirp voices × 40 sentences (gym talk with "тренировка", "тренира", "треньор", "тренажор" …), the same
  30 voices saying "тренер", "треньор", "тренер, пауза", "тренировка" (other people's "тренер" is NOT a wake — the
  timbre decides), halls without a voice — plus 90 s of people talking (µ-law) for the positives' halls.
- Live (`Kws.Detector` in WakeListener's mic loop): a window every 50 ms, two in a row over 0.96 wake, then 1.2 s rest.
  The wake opens the command window as before (Google's background recognizer; it is never given up for good now —
  a tablet that once failed was left on Google's dialog forever).

## Measured (`scripts/voice-kws/run-kws.sh`, the owner's 11 "тренер" cuts, 4 folds, 10 voices only in the test)
At the shipped line (between 0.95 and 0.98): quiet 100 %, music 10 dB 92–97 %, music 5 dB 85–91 %, music 0 dB
47–64 %, far + echo + music 5 dB 83–89 %, people talking 5 dB 20–27 %, other people's "тренер" 2–4 %; false wakes
0.7–3.3 an hour on a 1.5 h stream of other voices over music + people. Limits: the cuts are one session on a phone;
the tablet's microphone and a real hall are not in the test. `run-setup.sh`: the setup's cut holds the word (11/11),
the live detector = the training's features.

## 1.1.599 — the owner's voice built in
Owner: "send the voice already trained, inside the version". `branding/voice/kws-owner.bin` (110 KB, trained by
`sh scripts/voice-kws/run-owner.sh <enroll dir>` — the tablet's own recipe on the owner's 11 cuts + their other
speech, with the app's pack) ships as `assets/xems/kws-owner.bin`. `WakeListener.loadKws`: a model the tablet learnt
(`files/kws-model.bin`) first, else this one — "тренер" works at once; "Научи гласа ми" replaces it per tablet.
