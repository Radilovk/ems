# Face — facial stimulation (owner, 2026-11-06, 1.1.500-ai)

Cosmetic NMES of the mimetic muscles. Two devices with different reach, so different programs:

| Device | What it can | Programs |
|---|---|---|
| **XEMS suit** (Auto → Пасивна → Стягане) | 1–120 Hz, one Hz / µs for all channels, face pads on the **arm outputs** = one strength for both cheeks, coarse steps (arms ÷4 at 100 µs) | **Лице · Повдигане**, **Лице · Тонус** |
| **Bluetens** (page Bluetens → Готови) | any Hz ≤ 1200, width per block (fine soft rise), one pad = one side with its own strength, pads anywhere | **Лице · Повдигане**, **Лице · Тонус**, **Под брадичката** |

Microcurrent (µA "lifting") is out of reach of both and has no controlled evidence — not offered.

## 1. Physiology the programs stand on
**What ages.** Ultrasound: the deep midface fat compartments thin with age (SOOF −36 %, deep medial cheek −26 %
youngest → oldest, BMI/sex adjusted). Zygomaticus major (ZM) thickness does **not** differ young vs old on MRI
(2005) — midface ageing is not muscle loss alone. So the realistic goal is **a thicker, firmer ZM that fills and
holds the cheek** (volume replacement from muscle), not "lifting sagging skin".

**What training does.** NMES RCT (Kavanagh 2012, 108 women, 43.7 y): 20 min/day, 5 d/week, 12 weeks → ZM
thickness +18.6 % (blinded ultrasound), none in controls; > 80 % perceived firmer / lifted; skin redness under the
pads in all, gone within 20 min. A 2025 Japanese home-EMS study (14 women, 10 min/day, 12 weeks) → ZM thicker at
4 and 12 weeks, nasolabial folds shallower, skin elasticity (Cutometer R2, R8) up — uncontrolled. Facial exercise
(Alam 2018, uncontrolled, 30 min/day 8 weeks then every other day) → upper and lower cheek fullness up, proposed
mechanism muscle hypertrophy. Consistent direction, small evidence base.

**The muscles.** Mimetic muscles have no tendon — they insert into the skin (a contraction moves skin directly);
they are rich in **fast oxidative IIA fibres** (type I 20–40 % in ZM, lower in newer work), and orbicularis oris
has **no muscle spindles**. Consequences: they fatigue fast at high rates (fatigue rises sharply above 50–75 Hz,
slow under 20 Hz) → in the lift the pause is ≥ 2× the contraction; the IIA share makes a 35 Hz endurance stimulus
meaningful (tone program).

**The nerves.** Motor: facial nerve (VII) — temporal, zygomatic, buccal, marginal mandibular, cervical branches.
The **buccal** branch drives the ZM; the **zygomatic** branch drives orbicularis oculi. The middle division
surfaces at Zuker's point (midway on the line from the root of the helix to the mouth corner) — a pad in front of
the ear or on the zygomatic arch reaches the nerve trunk and makes the eye blink. Sensory: trigeminal (V) — dense,
which is why discomfort, not current, limits the face. Narrow pulses favour large motor axons over small fibres
(weak evidence, consistent with the 10–100 µs used on the face).

**The impulse (Efthimiou et al. 2024, systematic review of facial NMES):**
- 50–100 Hz, recommended 50–70 Hz; **avoid < 20 Hz** — single twitches are perceptible and more uncomfortable.
  → no low-Hz warm-up or cool-down in any face program; the wake-up is short holds at the working rate.
- Biphasic symmetric rectangular, **10–100 µs per phase** (example 50 µs). Our units' "100 µs" is either 50 or
  100 µs per phase — both inside.
- Ag/AgCl ≈ 3 cm² (16 × 19 mm), ≥ 2.5 cm² for visible movement; RMS ≤ 2 mA/cm².
- Thresholds (Ilves 2019): felt 1–1.5 mA, visible contraction cheek ≈ 4 mA (forehead 2, mouth 3), discomfort
  from ≈ 7 mA — **the working window is narrow**: raise slowly, stop at a clear contraction.
- Slendertone Face (the RCT device): 70–80 Hz, 80–100 µs per phase → our 70 Hz sits where both sources meet.

**RMS check.** 70 Hz × 2 × 100 µs = 1.4 % duty → I_rms = 0.118 · I_peak; 25 mA peak on 3 cm² ≈ 1.0 mA/cm².

## 2. Who not (asked once, not a central block)
Where it is asked: XEMS — the Auto client step (botox / filler; the rest is in the client record); Bluetens — the face
studio's placement question, and the Bluetens page's ⓘ carries the whole list as "Кога не — попитай преди
електродите" (`BluetensScreen.contraCard`, 1.1.501: pacemaker / implant, pregnancy — not on belly, low back, pelvis,
epilepsy, wound / irritated skin / reduced feeling, recent surgery / leg thrombosis, face: botox or filler < 2 weeks,
facial palsy; never around the eyes, the neck, across the chest).
From the review: pregnancy, pacemaker / implanted electronics, epilepsy, recent facial surgery, broken or
irritated skin. Added here:
- **Botulinum toxin in the area < 2 weeks**: uptake into the nerve endings is activity-dependent — stimulation after
  injection strengthens and speeds the toxin's effect (healthy subjects and patients, small studies). Fillers /
  threads < 2 weeks: no data → the same pause as a precaution.
- **Facial palsy** (Bell's etc.): a medical treatment, not this program (synkinesis evidence is mixed).
- Pads never on the front / side of the neck (carotid sinus), lips, inside the mouth, or < 2 cm from the eye.

## 3. Programs
### Лице · Повдигане (both devices) — hypertrophy of the ZM
| Part | Time | Hz | µs | Hold : silence |
|---|---|---|---|---|
| Wake-up | 2 min | 70 | 70 (Bluetens) / 100 | 2 s : 8 s, strength 60 → 80 % |
| Lift | rest | 70 | 100 | 3 s (0.4–0.5 s rise / fall) : 6 s |
| Let go | 2 min | 30 | 70 / 100 | 2 s : 8 s at 50 % |

Course (Kavanagh): 2 weeks of 10–12 min 3×/week, then 20 min 5×/week, 12 weeks, ≥ 24 h apart (the 4-day
whole-body rule does not apply: tiny muscle mass, no systemic load).

### Лице · Тонус (both devices) — fatigue resistance, upkeep after the course
35 Hz · 100 µs, hold 4 s (XEMS; Auto's passive hold cap) / 5 s (Bluetens), silence ≥ the hold; wake-up 35 Hz
3 s : 7 s; the same let-go. 10–15 min 2–3×/week after the 12 weeks — trained muscle loses its gain without load.
Evidence: frequency–fatigue physiology + the IIA-rich fibre mix; **no facial trial** for this exact program.

### Под брадичката (Bluetens only) — suprahyoid (digastric, mylohyoid, geniohyoid)
30 Hz · 200 µs, 4 s : 8 s, wake-up and let-go 30 Hz 2 s : 8 s at 140 µs. Small muscles → low rate (submental NMES
studies in healthy volunteers: 30–80 Hz; 80 Hz · 700 µs used acutely without harm); the thicker submental tissue
→ a wider pulse than the cheek. Both pads under the chin, left and right of the midline, between the chin bone
and the hyoid. Seated, never while eating or drinking (the current moves the hyoid). A contour effect is **not
proven** — the card and ⓘ say so. Not on XEMS: the arms channel feeds both arm cables at once.

## 4. Placement (cheek, both devices)
Along the ZM, origin → insertion: the upper pad on the cheekbone, ≥ 2 cm below the outer eye corner; the lower
2–3 cm further towards the mouth corner (not on the lip). The pair on one side; never cheek to cheek (current
across the head). Not in front of the ear (nerve trunk → orbicularis oculi → blinking). If the eye blinks or the
lip pulls sideways, move the lower pad.
Strength: from 0, slowly, until the mouth corner lifts visibly; stay at that threshold or just above; no pain.

## 5. Code
### XEMS — `ai/AutoCatalog.FACE`, `FACE_TONE` (`isFace`)
- Passive, goal Стягане, level 1. Zones only `ARMS`; `AutoPlanner` zeroes **and locks** every other channel.
- Left arm cable → left cheek pair, right → right. One strength for both cheeks: place the pads the same.
- Arms divider (`ChannelStrengthScale`): ÷4 at 100 µs (D = 10). **Licence `arms_full` removes it.**
- `AutoLimits.pwMin(plan)` = `FACE_PW` (100) for the face (the body's floor is 150). `FACE_HZ_MIN` 20 for every
  face step (`faceStep`). Lift 18 min, tone 13 min (`baseSeconds`; first passive session ≤ 15), recovery 2 min
  (`recoveryS`). No Hz / µs window; smart impulse GENTLE.
- **Not a map**: `Workout.presets` skips face programs (a map run has no channel lock).
- Test `bash scripts/ai-sim/run-auto.sh` → AutoSim `face()`: both programs, men / women, first / tenth session:
  only arms carries current, 100 µs, ≥ 20 Hz, soft ramps, lift 70 Hz 3 : ≥ 6, tone 35 Hz ≥ 4 : ≥ hold; every engine
  command; recovery 2 min. AiExSim: no face map.

### Bluetens — `wearable/bluetens/BluetensPrograms.FACE` (`XFLF`), `FACE_TONE` (`XFTN`), `CHIN` (`XCHN`)
- `hold()` = one contraction (rise widths 0.1 s each, hold, fall, silence); `wake()` = 2 min of short holds.
- ⓘ (`detail`) carries placement and course; default 10 min.
- Test `bash scripts/bluetens/run.sh`: ≥ 20 Hz, face ≤ 100 µs, chin ≤ 200 µs, lift silence ≥ 2× hold, tone / chin
  silence ≥ hold, length of every minute choice.

## 6. The face studio (1.1.498-ai, `wearable/face/`)
One full-screen page for both devices (owner: "a completely different interface, aesthetic, for clients and staff").
- **Entry.** XEMS: Auto → Пасивна → Стягане → a face card → the client step, which asks the face question
  (1.1.499: toggle "Ботокс или филър в лицето през последните 2 седмици" — `AutoCatalog.Program.asksFace`,
  `AutoModel.Extra.injectable`; "yes" blocks the face programs in `AutoCatalog.blockReason`, the button says
  "Към лицето ›") → `FaceStudio.openAuto` opens at the placement (the answer shown as ✓, not asked again; the Auto
  sheet closes, the session stays; `FaceStudio.ownsAuto()` keeps `AutoUi` / `AutoBoard` / `AutoHints` away, `AutoUi.open` / `show`
  bring the studio back, `AutoUi.onFinished` hands the end to it). Bluetens: the page's **Лице ›** card
  (`BluetensScreen.faceCard`; the three face files are no longer in its list) → `FaceStudio.openDevice(BluetensFace)`.
- **Left: the picture.** The owner's image `branding/face/face.webp` (→ assets/xems/face/, `apply-exercise-assets.py`)
  with the anatomy of `FaceArt` drawn over it in the picture's pixels (landmarks measured on it, ≈ 46 px = 1 cm):
  the target muscle (zygomaticus spindle with fibres / the suprahyoid bellies), the pads true to size with their
  numbers, the keep-out zones (⊘ eye 2 cm, in front of the ear, side of the neck). While the device works the muscle
  shortens and glows, impulses run along the fibres at the rate's speed, ripples leave the pads and the mouth corner
  rises with an arrow — driven by the device's real rhythm (`FaceTimeline`: the Bluetens file itself; the suit's
  cycle hook `AutoSession.lastCycleMs`). On the effect step it previews the program's own rhythm.
- **Right: one thing at a time** (`1 Ефект · 2 Поставяне · 3 Сила`, then the run, then done):
  1. Effect cards: result first (“По-плътна, повдигната скула”), the muscle and its Latin name, chips with rhythm and
     course; ⓘ = the neurophysiology in a few lines (`FaceProgram.how`). The course line under them
     (`FaceCourse`: session N of 56 · week W, or “the muscle recovers — best tomorrow after 14:00”).
  2. Placement: three numbered lines + (XEMS) the arm cables, (Bluetens) each pad with its battery; the one question
     (botox / filler < 2 weeks; Bluetens adds pacemaker, pregnancy, epilepsy, irritated skin — no client record
     there) — the primary button is the "no" (“✓ Не · към силата”), “Да, има” blocks with the reason.
  3. Strength: the target in words (“until the mouth corner visibly lifts — no pain, no blinking”), one big stepper
     per channel (XEMS one, Bluetens one per cheek). **+ is one step per tap** (no hold-repeat on the face), − may be
     held. XEMS runs its calibration cycle meanwhile (▶ Старт); Bluetens already runs the wake-up (✓ Добре е).
  4. Run: `FaceRing` — three phase arcs, time left big, phase name, the beat pill “СТЯГАНЕ 2 / ОТДИХ 5” with an inner
     arc; the steppers stay; ❚❚ (XEMS) and ■ (XEMS: to the let-go, then end; Bluetens: end). ✕ only hides while it
     runs; the entry brings it back.
  5. Done: ✓, “Сесия 7 от 56 е готова” + the course bar, the next good time, “Tone keeps it” after the 56th, the
     redness note. A session counts from 60 % of the plan (prefs `xems_face`, key `u<clientId>` / `bt`).
     XEMS: “Готово” then closes Auto and lets the client report show.
- Minutes on Bluetens are derived: lift 10 in weeks 1–2, then 20; tone / contour 10.
- Test: `bash scripts/face-sim/run.sh [svg dir]` — anatomy distances on the picture (pads 2–3.5 cm apart, ≥ 2 cm from
  the eye corner and outside its zone, clear of the nerve trunk, not on the lip, chin pads ≥ 2 cm from the neck side),
  the Bluetens lift timeline (holds 3 s, rests 6 s, ≥ 20 Hz, phases in order), the course math; SVGs of the scenes
  over the picture to look at.

## 7. The procedure catalogue (1.1.500-ai — owner: "words that mean something for aesthetics, more procedures")
`wearable/face/FaceProgram` — the cards speak to cosmeticians and clients: name, the visible result, two short
chips (rhythm · when), ●●● how sure; the physiology behind ⓘ. Two kinds of current: **motor** (the muscle contracts,
always ≥ 20 Hz on the face) and **sensory** (only the skin's nerves; the strength is a tingle, the muscle must not move).

| Procedure (result) | Current | XEMS (Auto id) | Bluetens (file) | Evidence |
|---|---|---|---|---|
| **Лифтинг** — повдигнати, по-плътни скули | motor 70 Hz · 100 µs · 3 : 6 s | `face` | `XFLF` | ●●● Kavanagh 2012 RCT on the face |
| **Стегнат овал** — еластичност, която пази лифтинга | motor 35 Hz · 100 µs · 4–5 : 5 s | `face_tone` | `XFTN` | ●●○ frequency–fatigue, IIA fibres |
| **Детокс от отоци** — по-малко подпухване | motor pump 30 Hz · 100 µs · 1 : 2 s; Bluetens: the 2nd cheek 1.5 s later (a wave, `XFDB`) | `face_drain` | `XFDR` / `XFDB` | ●●○ NMES reduces oedema (Burgess 2019 systematic review; limbs) |
| **Ботокс ефект** — отпусната мимика, по-гладко чело | sensory 60 Hz · 250 µs (the approved supraorbital device: 60 Hz, 250–300 µs, 20 min); XEMS 4 : 4 s (fused-impulse limit), Bluetens 5.5 s trains, width rising over 2 min | `face_relax` | `XFRX` | ●●○ TENS lowers muscle tone (stroke/SCI meta-analyses, 100 Hz best); short-lived, not a toxin substitute |
| **Отпусната челюст** — по-мек долен овал | sensory burst TENS: 7 × 100 Hz twice a second · 150 µs, alternating with 3/s every 20 s (frequency change delays habituation) | — | `XJAW` | ●●○ TENS lowers resting masseter EMG (TMD RCT) |
| **Стегната брадичка** — по-стегнат профил | motor 30 Hz · 200 µs · 4 : 8 s | — | `XCHN` | ●○○ contour not measured |

- **Not offered, on purpose:** strengthening the frontalis (could deepen forehead lines — critique of the HIFES
  studies); anything around the eye; microcurrent "lifting" (no controlled evidence, out of reach).
- XEMS: the Auto menu shows **one** card, "Лице · естетични процедури" (`AutoCatalog.FACE`); the client step asks the
  botox / filler question; the studio opens at the effect and offers the four. Bluetens: the six.
- Placement in the picture (`FaceArt`): forehead pads ≥ 2 cm above the brows (XEMS: a pair on each half via the two arm
  cables; Bluetens: one pair across the middle, as the approved device); masseter pads under the cheekbone and above
  the jaw angle, ≥ 1.5 cm from the nerve trunk; the drainage shows the fluid's way to the nodes in front of the ear and
  under the jaw. During strength and run the pads are outlines, so the working muscle shows through.
- Studio layout: the picture fills the page height; the right column is the step (a 2-column card grid on the
  effect step, scrolls if it must) over a course card on its floor.
- Tests: AutoSim `face()` runs all four XEMS programs through every safety invariant (`runPlan`) plus their own
  rhythm checks; BluetensSim checks every face file's widths (100 / 200 / 250 / 150 µs), ≥ 20 Hz, rest ratios;
  face-sim checks the forehead and jaw pads' distances.

## 9. Multi-channel face (owner, 2026-11-06; built in 1.1.502-ai)
New hardware: a **face connector for the XEMS suit** — all 10 channels, each one bipolar pair, on ten face sites
(sockets F1–F10); and **up to 3 Bluetens** at once. Channels sit next to each other, not only mirrored.
**The channels are galvanically isolated** (owner) — both sides may work at the same moment; Bluetens devices are
separate batteries anyway.

### 9.1 What the hardware allows
| | XEMS suit, 10 channels | Bluetens × 3 |
|---|---|---|
| Hz / width / shape | **one for all channels** at a moment (steps may change it) | each device its own file |
| strength | a master + each site's share (`AutoSession.adjustChannel`, 20–100 %, 10 % a step) | per device |
| rhythm | site masks per step: waves, turns (Auto `Step.zones`) | per device; offsets between files (the drainage) |
| kinds at once | one kind per moment | any mix (forehead sensory + jaws bursts) |

Safety, both devices: the encoder's **face mode** (`ChannelStrengthScale.setFace`, set by `AutoSession` for a face
plan, cleared on close): every channel gets the gentle divider (÷4 at 100 µs), no body balance correction; sites not
in the program are 0 and locked (`AutoPlanner`: the program's sites exactly, no personal offsets — a "legs" focus
never reaches a cheek). Still open: the bench test of mA per strength step (no face cap in mA until then).

### 9.2 Sites = sockets (`FaceArt` sites = `AutoCatalog.F_*` = suit channels 0–9; "L" = the client's left)
| F | site | muscle / nerve | kind |
|---|---|---|---|
| F1 / F2 | cheekbone L / R | zygomaticus major | motor |
| F3 / F4 | nasolabial L / R (low on the muscle, ≥ 2 cm from the eye) | zygomaticus minor · levator labii superioris | motor |
| F5 / F6 | lower cheek L / R (beside the mouth corner, ≥ 1 cm from it) | risorius · buccinator | motor |
| F7 / F8 | jaw L / R | masseter | **sensory only** (strengthening widens the jaw) |
| F9 | forehead, across the middle, 2 fingers above the brows | n. supraorbitalis / supratrochlearis | **sensory only** |
| F10 | under the chin, across the midline | digastric · mylohyoid | motor |
Connector pads 12 × 16 mm (three pairs fit a cheek); Bluetens' own 16 × 19 mm. face-sim checks every site against the
keep-out zones and that the pads of the sites a procedure uses together never overlap.

### 9.3 Procedures (`FaceProgram`: `xemsSites()`, `bluetensSites()`; Auto ids `AutoCatalog.FACE_IDS`)
| Procedure (result) | XEMS | Bluetens (device → site, file) | Evidence |
|---|---|---|---|
| **Лифтинг 3D** — повдигнати скули, по-мека назолабиална гънка | F1–F6, 70 Hz · 100 µs · 3 : 6 (`face`) | 1 cheek L, 2 cheek R (`XFLF`) | ●●● ZM · ●●○ the others |
| **Лифтинг на овала** — скули + брадичка | F1–F6 3 s ↔ F10 3 s (50 Hz), each muscle 3 : 6 (`face_oval`) | + 3 chin (`XCHN`) | ●●○ |
| **Стегнат овал** | F1–F6, 35 Hz · 4 : 5 (`face_tone`) | 2 cheeks (`XFTN`) | ●●○ |
| **Детокс от отоци** — лимфна вълна | open F10, then F3/F4 → F5/F6 → F1/F2 → F10, 30 Hz 1 s, the previous at 50 %, silent refill (`face_drain`) | 1–2 cheeks `XFDR`/`XFDB`; with 3: chin `XFDR` opens, cheeks `XFDB` 1.5 s later | ●●○ |
| **Ботокс ефект** | F9 sensory 60 Hz · 250 µs · 4 : 4 (`face_relax`) | 1 forehead (`XFRX`) | ●●○ |
| **Спокойно лице** | F9 + F7 + F8 sensory, 60 ↔ 80 Hz (`face_calm`) | 1 forehead `XFRX`, 2–3 jaws `XJAW` | ●●○ |
| **Отпусната челюст** | F7 + F8, 2 Hz plain · 250 µs (no bursts on the suit) (`face_jaw`) | 2 jaws (`XJAW` bursts) | ●●○ |
| **Стегната брадичка** | F10, 30 Hz · 200 µs · 4 : 8 (`face_chin`) | 1 chin (`XCHN`) | ●○○ |

### 9.4 Studio
- Placement: a two-column table socket / device → site (with each Bluetens battery, "не е свързано" for a missing
  one); the picture labels the pads the same (F3 / 2).
- Strength: XEMS — the master big + a compact share per site (3 a row); Bluetens — one big stepper per device (≤ 3).
- The picture: every working site glows by its own level (XEMS: the step's share of the site × the hold; Bluetens:
  each device's own file), the wave visibly runs across the sites.
- Tests: AutoSim `face()` — all eight programs: exactly their sites, locked others, no personal offsets, widths, ≥ 20 Hz
  (the jaw's sensory 2 Hz excepted), each rhythm, every safety invariant (`runPlan`), engine commands inside the sites.

## 10. XBody — next (owner, 2026-11-06: XEMS and Bluetens now; the XBody unit later, with a new firmware)
The XBody board already speaks the same model as the XEMS suit (docs/xbody-protocol.md): 10 channels, a level per
channel (`Levels[10]`, % ×10) and a master, one Hz (1–1000) and one width (50–400 µs) for all, impulse / pause. So
the face connector's ten sites F1–F10 and the eight procedures fit it as they are. What it takes:
- **One source of truth — built (1.1.503-ai): `branding/face/procedures.json`** (`format: xems-face/1`), made by
  `bash scripts/face-sim/export.sh` (`scripts/face-sim/FaceExport.java`): picture geometry (size, px/cm, mirror axis),
  limits (motor ≥ 20 Hz, widths 100 / 200 / 250 µs, recovery 120 s, pad sizes, ≤ 3 Bluetens), the ten sites (socket,
  suit channel, names, pad centres and angle), the keep-out points, and the eight procedures — names, tags, texts
  (how / placement / strength goal, BG + EN), evidence, tint, glyph, course, XEMS sites, Bluetens sites and files
  (`BluetensPrograms.faceFile`, now the one place for that map), and the **plan exactly as the automatic mode builds
  it** after its limits, for a reference client (woman, 45 y, 10 sessions): phases (duration, φ, envelope, wave,
  hint) and every step (Hz, µs, on / off, ramps, σ, site mask). Never edited by hand.
  **Match test** (`bash scripts/face-sim/run.sh`): the committed file must equal a fresh export byte for byte
  ("stale — run export.sh"), and `scripts/face-sim/check_procedures.py` re-checks it independently the way the panel
  will read it: sockets / channels, plan zones = the procedure's sites, totals, the let-go last, widths per procedure,
  1–120 Hz, ≤ 300 µs from 100 Hz, ≥ 20 Hz (the jaw excepted), fused ≤ 6 s (≥ 50 Hz) / 10 s, rise ≥ 0.3 s, pause ≥
  hold, no step outside the sites, every pad outside the keep-out zones. XBody's panel adds its own C++ reader test
  against the same file when it is built.
- **Face mode on the board.** The equivalent of `ChannelStrengthScale.setFace`: a gentler output for all channels
  (the new firmware's own divider or a lower `ImpulseAmplification`), set only while a face procedure runs.
- **Firmware asks:** galvanically isolated channels (confirm on the XBody output stage as on XEMS); widths 100 / 200 /
  250 µs exactly; a soft rise / fall ≥ 0.3 s per impulse; per-channel levels changeable while it runs; ideally bursts
  (the jaw's 7 × 100 Hz twice a second — XEMS plays it as plain 2 Hz).
- **Panel screen** (800 × 600, XBody's look): the same flow — effect → placement (sockets on the picture) → strength
  (master + per-site share) → the run — drawn from `FaceArt`'s numbers (sites, pads, keep-out) exported with the
  procedures.
- The bench test (mA per level step on face pads) is needed on XBody too.

## 12. Comfort: no deep ache, no sting (owner, 2026-11-07; 1.1.504–505-ai)
**The report:** on the forehead a dull, deep ache "inside the bone", even at 2 %, with wide and with small
self-adhesive pads (the hydrogel physiotherapy kind — the right ones); the muscle does nothing.
**Why** (the neurophysiology, not a guess):
- It is periosteal pain. The forehead has a few mm of tissue over the frontal bone; the current runs along the bone's
  lining, rich in thin pain fibres (Aδ, C).
- Pain fibres need **long** pulses: their threshold falls steeply as the pulse widens (Alon et al.: 350 → 30 mA from
  5 → 1000 µs; C-fibre chronaxie ≈ 2 ms). Short pulses excite the large fibres (touch Aβ, motor) first. Conventional
  TENS = 50–200 µs at 80–100 Hz (Aβ, a comfortable buzz); the "acupuncture-like" kind = ≥ 200 µs at low rates, aimed
  at Aδ / C. Our forehead program had 250 µs (copied from the supraorbital device) — on the wrong side.
- Depth is set by the distance between the two pads (closer = shallower), not by the pulse width; a pair across the
  whole forehead sends the current deep along the bone.
- Where a sensory nerve leaves the bone (supraorbital notch, infraorbital and mental foramina) a pad gives a strong
  radiating tingle / ache with little muscle work; the nasolabial pad sat 1.6 cm from the infraorbital one.
- Every abrupt train onset is a new sting; the Bluetens forehead trains started at full intensity.

**The rules (both devices; AutoSim, BluetensSim, face-sim and the procedures.json check enforce them):**
| | before | now |
|---|---|---|
| Ботокс ефект, Спокойно лице | 60 Hz · 250 µs | **100 Hz · 50 µs** (Calm: 100 ↔ 80 Hz) — conventional TENS; 100 Hz is also the best rate for tone reduction (meta-analysis) |
| Стегната брадичка | 200 µs | **150 µs** |
| Отпусната челюст (XEMS) | 2 Hz · 250 µs | **2 Hz · 150 µs** |
| motor cheek programs | 100 µs | 100 µs (facial NMES 10–100 µs) |
| any face pulse | — | **≤ 150 µs** (`face_pw_max_us`) |
| Auto's face floor | 100 µs | 50 µs (`AutoLimits.pwMin` → `SafeLimits.PW_MIN`) |
| forehead pair | 3.4 cm apart, across the middle | **2.2 cm** centre to centre ("един пръст между тях") |
| nasolabial pads | 1.6 cm from the infraorbital foramen | **≥ 2 cm** (lower on the muscle) |
| nerve exits | — | keep-out rings on the picture; every pad ≥ 1.5 cm (face-sim, check_procedures.py) |
| Bluetens forehead train | full at once | **40 → 70 → 100 Hz over 0.3 s**, 5.2 s, 0.5 s rest |
- No discomfort UI (owner, 1.1.505: "the strategy itself must leave no pain"): the "Неприятно" button of 1.1.504 is
  gone; the rules above are the strategy. 1.1.505 also takes the cheekbone pad (F1/F2, Bluetens cheek 1) off the
  zygomatic bone onto the muscle belly (ZM 20 % → 60 % of the line, 1.6 cm apart) — the same thin-tissue-over-bone
  situation as the forehead; the nasolabial line moved 6 px medially to keep the pads apart.
- If the ache stays on a person even at 50 µs with the pads close: the forehead is not for them — the programs stay
  as they are, the studio's sheet says so.

### 12.1 Adjustable width and the pad size (owner, 2026-11-08; 1.1.506-ai)
- **Width ≠ strength.** The nerve answers to the charge (current × width). Narrower at a little more strength moves
  the same muscle with a more superficial feel (pain fibres Aδ/C and periosteum need long pulses); wider reaches
  deeper and aches sooner. Too narrow needs a current density that prickles the skin. The comfortable optimum differs
  by person and site → the studio's strength step has **„Импулс − N µs +“** with one line: „Боли в дълбочина? Намали
  импулса и добави сила.“ Depth itself is set mostly by pad size and spacing, not by width.
- **XEMS suit: 50 / 100 / 150 µs only.** The vendor encoder sends `pulseWidth / 50` as one byte (`CommandUtil`), so
  nothing narrower than 50 and nothing between exists; the stepper moves 50 µs (`AutoSession.setFacePw`, applied in
  `writeRows` while CALIB/RUN; AutoSim checks every face step is on the 50 µs grid).
- **Bluetens: 20–150 µs, 5 µs steps.** The pad takes µs as written (`P`). `BluetensPrograms.withWidth` scales every
  pulse by `us / full` (rises keep their shape, floor 20, cap = chosen) — rhythm and length unchanged (BluetensSim
  `faceWidth`); `BluetensFace.setWidth` swaps the new files in (strength kept), only before ▶ — the file restarts.
  Under ~20 µs the needed current density prickles; whether the pad's output stage really shapes a 20 µs pulse is
  not measured (open item 1).
- **Pad size on the placement step, one line:** XEMS (three pairs per cheek) 12 × 16 mm; Bluetens / one pair per site
  16 × 19 mm (≈ 3 cm², the review's size), self-adhesive; larger ones reach the bone.

### 12.2 Strength steps on the face (owner, 2026-11-10; 1.1.507-ai)
Face mode already divides every channel like the arms (`ChannelStrengthScale.armsFactor`: ÷3 at 50, ÷4 at 100,
÷5 at 150 µs), so the face's 100 % is ~25 suit units. The suit takes one whole byte per channel (`CommandUtil`:
part % × strength, no finer register), so ~4 master taps were one real step (empty taps, then a jump). Now, in the
strength step, one tap moves the master by the smallest amount that changes the sent unit, and the studio shows the
real unit (1, 2, 3 …). Finer than one unit needs the face connector's own attenuation (open item 1: mA per unit).

## 13. Open
1. Strength → mA for both units (0.5–1 kΩ, USB scope, 100 µs) → a hard face cap; tells whether "µs" is one phase,
   and whether Bluetens really gives 20–45 µs pulses.
2. Face pads (≈ 3 cm² Ag/AgCl) with the arm-cable / Bluetens connector.
3. A tablet screenshot of the studio (built offline; the picture layer is checked as SVG only).

## Sources
Kavanagh 2012 J Cosmet Dermatol 10.1111/jocd.12007 · Efthimiou 2024 Behav Res Methods 56:2941 (PMC11133044) ·
Alam 2018 JAMA Dermatol 10.1001/jamadermatol.2017.5142 · Japanese home-EMS 12-week study, J-Stage koshohin 49(2) ·
midface fat ultrasound 2023 / ZM MRI 2005 (PubMed 15793457) · Stål 1990, Schwarting 1982 (fibre types) ·
botulinum + stimulation, J Rehabil Med 10.2340/16501977-0790 · ES in facial palsy review 2024 (PMC10299525).
