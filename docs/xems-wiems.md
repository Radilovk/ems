# WiEMS unit in XEMS and on the XBody machine (1.1.446-ai, XBody mod v7, bridge v3)

A WiemsPro unit (`WIEMS - EMS Device`, iPad app Wiems) trains from the stock XEMS row on the tablet and from
the XEMS panel on the XBody machine (through the XIAO bridge). Protocol: `wiems/PROTOCOL.md` (decoded from the
owner's capture: HCI log + the vendor app's own log). **Not tried on the unit yet** — first test checklist below.

**Owner's rule (2026-10-16): no screen of its own.** The training control is the same for every suit — on XBody
XBody's own training screen (XEMS / bodytech / WiEMS alike), on the tablet the stock XEMS row, unchanged. A new
suit only adds a driver under the existing screen.

## How it works (tablet)
| piece | where | job |
|---|---|---|
| `WiProto` | `branding/java/src/…/bodytech` | the unit's frames: strengths, program, rest Hz, widths, run; op = [selector, value…] |
| `WiTranslator` | same | pure logic: XEMS cmd → unit writes (tested offline, golden bytes from the capture) |
| `WiBridge` | same | glue: which device, write queue (one in flight, each after its write response), run notify, battery |
| `BtBridge` / `BtLoad` | same | the existing bodytech hooks hand a WiEMS device to WiBridge first — no new smali hooks |

- Channel map: XBody's (owner, 2026-10-16) — `WiTranslator.SLIDER_TO_CH`, panel `WI_ZONES`. **Caveat:** written
  from the old static XBody decode (5 Седалище, 6 Корем); XBody's measured order is 5 Корем, 6 Седалище. The WiEMS
  app (v1.7) now uses the measured order + a per-suit map set on the body (hidden service mode,
  docs/xems-wiems-app.md v1.7); port its checked maps here.
- Which device: its name starts with `WIEMS` (the stock name filter "ems" already lists it); a MAC seen once is
  remembered (`xems_wiems_units`). Only on an unlocked (admin) tablet, as bodytech.
- The row's link (`BleDeviceManager.getConfig`) is the unit's **battery service** 180F / 2A19: the stock code
  subscribes it and every battery notification becomes the row's percent. Writes go to the vendor service
  `7764d8fe-…` by UUID (FastBle `write`), the run characteristic is subscribed by WiBridge.
- The unit runs its own work / rest cycle once started (there is no "output on" without it). So:
  **▶ on the row** (`BtLoad.hold`) starts the unit with the program last heard (program phase 2, rest Hz, widths,
  strengths 0, run `25`); the row shows the same banner as bodytech ("Зареждане на програмата… N %", no screen of its own — owner: the training screen is the same for every suit) and its clock waits; at the unit's first `01`
  (≈ 4 s; 6 s fallback) the vendor's second step goes out (strengths 0, program phase 0) and the row starts — the
  unit's work / rest then run in step with the row's impulse / pause.
- From then the row's phases only set strengths: impulse → its sliders (SoftRamp steps included), pause without
  second impulse → 0, second impulse → its sliders and its Hz as the unit's rest Hz. A new Hz / impulse / pause
  length → strengths 0, the program (phase 0), strengths (the vendor's way of changing a running program).
- F2 (pause / stop), `TrainItem.reset`, end of time → strengths 0 + run `00`. Resume = ▶ = a new count-down.

## Translation
| XEMS | WiEMS |
|---|---|
| slider of a body part (Гърди, Корем, Предно бедро, Прасец, Ръце, Трапец, Гръб, Кръст, Седалище, Задно бедро) | the unit channel of that body part — **XBody's channel order** (owner: a WiEMS suit is an XBody-standard suit): 0 Трапец, 1 Гръб, 2 Гърди, 3 Кръст, 4 Ръце, 5 Седалище, 6 Корем, 7 Предно бедро, 8 Задно бедро, 9 Прасец |
| strength % | the unit's value 1 : 1, ≤ 100 (field is 7 bits; the vendor was seen up to 20) |
| Hz, impulse s, pause s | program `fr`, `w`, `r` (Ru = Rd = 0: the row ramps itself) |
| second impulse Hz | rest Hz (`frecuenciaResting`, rest strength 100 as the vendor) |
| width | **not sent** — the unit keeps the vendor's per-channel widths (unit of 0x001c unknown) |

## Safety
- Strength ≤ 100; upstream XEMS limits (`docs/xems-safety-limits.md`) act before the translator.
- Strengths nobody renewed for the longer phase + 3 s → 0 (heartbeat, 0.5 s).
- After a new link / a failed write the next command first writes strengths 0 + run stop (the unit may run from before).
- XBody: the bridge's SAFE frame for a WiEMS unit is run stop (`04 00`), sent when the panel goes silent 2.5 s.
- **Unknown:** whether the unit stops by itself when the link drops / the tablet goes silent (watchdog), and the
  real strength scale. First session: low strength, one channel, a hand on СТОП.

## XBody machine (panel + XIAO bridge)
- Bridge firmware v3 (`xbody/bridge`): profile `WIEMS` (vendor service + battery), `ADV … WIEMS <name>`, `LINK <mac>
  WIEMS`. `W` / `SAFE` values are `[selector, value…]` (0 strengths, 1 program, 2 rest, 3 widths, 4 run); `N` lines
  carry `04` (run) or `10` (battery) first. The unit updates older bridges by itself (DFU), as before.
- Panel (`xbody/panel/core/wiproto.*`, `Suit::WIEMS`): XBody's zones on XBody's channel order (as the tablet), the
  СТАРТ waits for the count-down ("МИГ…"), phases set strengths, pause / stop = strengths 0 + run stop.
- Tests: `sh scripts/xbody/test-panel.sh` (golden bytes + a session), emulator (fake bridge lists a WiEMS unit).

## Tests
`bash wiems/xems/run.sh` (WiProto / WiTranslator, 47 checks) · `sh wiems/test/run.sh` (capture decoder) ·
`sh scripts/xbody/test-panel.sh` · `python3 scripts/verify-bodytech.py` after a build.

## First test on the unit
1. Tablet (admin): Тренировка → the unit shows up as a device "WIEMS - EMS Device" → connect → battery % on the row.
2. Strength 0 → ▶ → "WiEMS се включва…" ~4 s → the clock runs. Raise ONE channel slowly; which muscle answers →
   write down the channel map (slider → muscle).
3. Watch: does the unit's work / rest match the row's impulse / pause? Does pause / stop cut at once?
4. Pull the tablet's Bluetooth mid-impulse: does the unit stop by itself (and after how long)?
5. Same on XBody with the XIAO (bridge v3): the tile "WiEMS" in the suit list.
