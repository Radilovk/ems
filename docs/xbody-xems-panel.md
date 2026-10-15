# XEMS panel on the XBody unit (mod v9)

XEMS and bodytech suits and WiEMS units (mod v7, `docs/xems-wiems.md`) trained from the XBody machine's own screen, next to (not inside) the XBody app. The
unit's kernel (2.6.35) has no Bluetooth LE, so a **Seeed XIAO nRF52840** on USB is its BLE radio.

```
xems-panel (Qt 4.8 QWS client over XBody) ──/dev/ttyACM0, text lines──▶ XIAO bridge ──BLE──▶ XEMS (FFF0 / NUS) or bodytech (FE50)
```
XBody's own stimulator path (`xbody_control` → port 1235 → `/dev/ttymxc3`) is untouched.

## Status
| Part | State |
|---|---|
| Bridge firmware `xbody/bridge/xems-bridge.uf2` | builds (123 KB, Seeeduino:nrf52 1.1.13); **not run on a XIAO yet** |
| Suit protocols, safety limits, phase clock (`xbody/panel/core`) | 111 host checks (`sh scripts/xbody/test-panel.sh`): bodytech golden vectors, XEMS frames, safety table |
| Panel (`xbody/panel/ui`) | ARM build runs in qemu on the card's own Qt, as server and as a **client over a stand-in XBody**; fake bridge end to end |
| On the unit, with suits | **not done** — first test when the XIAO arrives (checklist below) |

## Use (owner) — everything in `PROCHETI.txt` of the zip
1. **Stick (PC, ~1 min):** unzip `xbody-usb-vN.zip`, plug a stick, double-click `PODGOTVI-FLESHKA.cmd` (Windows) /
   `PODGOTVI-FLESHKA.command` (Mac; Linux: `sh …`). It finds the stick, offers FAT32 formatting (asks "ДА"; Windows
   ≤ 32 GB; Mac via diskutil; Linux: not formatted), copies `fleshka/` to its root, checks the payload md5, ejects.
   A XIAO in UF2 mode on that PC gets the firmware on the way. A stick with a backup of an earlier install gets a
   choice: 1 install / 2 **върни назад** (writes `updater.sh` + `xems/RESTORE`; backups are never touched).
2. **Unit (~5 min):** off → stick in → on → it installs and powers off by itself → stick out → on. The **XEMS** tab
   is top right (draggable).
3. **XIAO (once):** plug it into the unit; a new board: press RESET twice → **the unit programs it** (no PC):
   `/opt/xems/bin/xems-uf2` runs every 2 s (init `xems-panel`), copies `/opt/xems/bridge/xems-bridge.uf2` onto a
   drive < 128 MB with `INFO_UF2.TXT` (nRF52840/XIAO), never a mounted or bigger one; state in `/tmp/xems-uf2.state`
   → the "no bridge" screen says "Програмирам моста…" / "Мостът се рестартира…" / error + retry hint.
   **Updates are automatic:** the panel compares `HELLO XEMS-BRIDGE <ver>` with `/opt/xems/bridge/VERSION`; an older
   bridge (v2+) gets `DFU` before any suit links → outputs off, board restarts as its UF2 drive → xems-uf2 → new
   HELLO. v1 answers `ERR unknown DFU` → the note asks for RESET twice once.

## XBody's own cable (no XIAO): suit standard + double impulse (mod v6)
For the normal work on XBody's cable, with an XBody **or an XEMS** suit:
```
xbody (GUI) → xbody_control ──1235──▶ xems-xbproxy ──1236──▶ emsc-tcpseriald → /dev/ttymxc3 → stimulator
```
- `/etc/default/emsc-tcpseriald` (sourced by the vendor S20 script) moves the daemon to 1236 and starts the proxy
  loop — **only if `xems-xbproxy --selftest` passes** and `/opt/xems/cable.off` is absent; else the stock path.
- Every `pc_emse` frame (50 ms) goes through `xbcable::Shaper` (`xbody/panel/core/xbcable.*`):
  - **XEMS suit:** each XBody body part leaves on the lead that reaches it in an XEMS suit (`xemsLead`, from the
    owner's table; test checks both directions — cable and BLE — against that one table). Latched when a training
    starts; a change mid-training applies from the next one (the page says so).
  - **Double impulse:** in XBody's pause (training bit set, stimulation bit clear) bit 0 on, `tp` = 1000/Hz₂,
    levels × pct (cap 50000 = the board's 100 %). Hz₂ ≤ 10 and under the main Hz (1 Hz main → none), pct 10–150,
    strength 0 → none. Only from the second cycle, inside the pause length measured in the previous cycle
    (+300 ms after the impulse, −200 ms before the next): XBody has no pause button, anything longer (stop, end,
    a hang) never gets it. Settings change live.
- Measured on the real `xbody_control` in qemu (`board.log`): levels stay in the pause frames, stop = all 0,
  4 s / 1 s cycle; through the ARM proxy: legflex 60 → arm lead, second pause 5 Hz at 50 % from +0.3 s to −0.2 s.
- Settings `/opt/xems/xbody-cable.conf` (`wiring=xbody|xems`, `double=0|1`, `double_hz`, `double_pct`), written by the
  panel (tmp + rename), re-read by the proxy within 0.5 s. State for the panel: `/tmp/xems-cable.state`.
- Screen: the XEMS tab opens **Кабел на XBody** when no bridge is plugged (from the suit list: header "Кабел"):
  two tiles XBody / XEMS suit (ⓘ = zone → lead table), double impulse switch + rhythm picture + Hz / strength
  pills, live status in the header, autosave ("✓ Запазено"); the XIAO card at the bottom. The tab shows ⇄ (XEMS
  suit) and 2× (double impulse) whenever XBody's output is changed by us.
- Tests: `test-panel.sh` (Shaper + table, 211 checks; the proxy end to end over sockets), `test.sh` 5b (stock path).

## Cable and wireless side by side, several wireless suits (mod v9)
- XBody's own training (cable) and the panel's wireless suits are separate windows and run at the same time: `← XBODY`
  leaves a wireless session running; the tabs switch.
- Up to **4 wireless sessions** (= the bridge's links), each with its own suit, program, clock and queue (`App`
  `Session`); the panel shows one at a time — the same XBody training screen for every one (owner's rule).
- **Session tabs** (`SessionTab`) under the XEMS tab while XBody is in front, one per session: name, time left (green
  running, yellow paused / "МИГ…" counting down, "готов" idle) and a red **■ STOP** — the suit's outputs off at once
  (stop + its SAFE frame straight out), without opening the panel. A tap elsewhere opens that session's screen.
- The XEMS tab shows **+** while a session exists: a tap opens the suit list for one more (4/4: opens the current).
  A suit already in a session is not listed; scanning only while the list is shown; the last suit reconnects by
  itself only when no session exists; bridge DFU only with no session.
- A lost link / WERR / no ACK ends only that session (note names it); a pulled or silent bridge ends all.
- Emulator check: two suits running (WiEMS + XEMS), ■ on the first stops it only, the second's tab opens its screen.

## Panel
The screen is a copy of **XBody's own manual-training screen** (owner: same look, not a new design), on the unit's
800×600 (4:3; `/etc/pointercal`, XBody's pictures are all 800-wide):
- Header as XBody's: `← XBODY` (back to XBody, the session goes on) · suit name, kind, battery (or the note line,
  red = warning) — tap it while idle to disconnect · program block (Hz, impulse/pause, µs) → the program sheet.
- Body picture front/back at (153, 45); zone buttons 175×50 in XBody's two columns, **same order as XBody**
  (`TrainingWindow`: column 1 legext, legflex, bottom, abdomen, waist; column 2 back, trapez, chest, arm, optional):
  XEMS Предно бедро, Задно бедро, Седалище, Корем, Кръст | Гръб, Трапец, Гърди, Ръце, Прасец.
  **bodytech**: Бедра (one zone = both thigh channels, same %), Седалище, Корем, Кръст | Гръб, Трапец, Ръце.
- As on XBody: tap zones to select them (red, the zone lights on the body); nothing selected = the **СИЛА** hump
  (MASTER) is selected. − / + and the slider bar act on the selection: strength ±1, zones in 5 % steps; hold repeats.
  Timer hump: elapsed · **ВСИЧКИ** (select every zone) · time left; under it the phase box (impulse seconds green,
  pause grey, `II` paused). СТАРТ (green) / ПАУЗА (yellow) bottom left, СТОП (red) bottom right.
- **Настройки на сесията** (tap the program block; while running it says "Програмата се сменя на пауза"):
  landscape, two groups. Left = program: Hz, µs, minutes as − value + pills, the impulse/pause rhythm as a bar
  (green work, grey rest) with a pill each. Right = this suit and client: **connector standard** XBody | XEMS
  (XEMS suits only; ⓘ opens the lead → channel table, rerouted rows marked red), "Над 60 години" switch, and a
  derived summary (impulses, work minutes). Откажи left, ✓ Готово bottom right. Values pass `safe::apply`
  (port of `ai/SafeLimits`) — corrections show as a red note. Dialogs use XBody's dark-red band.
- **Connector standard** (`Suit::Wiring`, saved as `suit/wiring`): an XEMS suit on XBody-standard cables. Zones stay
  body parts; each drives the XEMS channel its XBody lead lands on (owner's table, XEMS → XBody): Ръце→Корем,
  Гърди→Допълнителен (calf), Корем→Задно бедро, Предно бедро→same, Гръб→Седалище, Трапец→Кръст, Кръст→Гръб,
  Седалище→Трапец, Задно бедро→Ръце, Прасец→Гърди. Switching keeps every zone's %. Header shows "XEMS · кабели XBody".
- While a value changes, a big % card over the body says what it belongs to (XBody's showPercent); idle zones at
  0 % read grey; the phase box has a thin progress line.
- **XBody's pictures and Arial are read at start from `/opt/xbody/xbody`** (Qt rcc resources in the not-stripped
  ELF, `ui/xbres.cpp`) — nothing of XBody's is in git. Missing binary / resource → the same layout painted
  (plain figure, flat buttons). `XEMS_XBODY_BIN` overrides the path.
- Repaints only on a change (a text signature of the state, checked every 50 ms); the running clock repaints only
  its hump + phase box. The tab repaints when its text changes.
- A new link starts at strength 0. A lost link, a bridge pulled out or a suit that stops ACKing stops the training;
  nothing restarts by itself. bodytech: ~110 programming frames after the link; СТАРТ meanwhile shows "МИГ…".
- Settings: `/opt/xems/panel.conf` (last suit, program, tab position). Log: `/opt/xems/panel.log`.

## Bridge line protocol (USB CDC, 115200)
Host → bridge: `PING` · `SCAN 1|0` · `CONN <mac>` · `DISC <mac>` · `W <mac> <hex>` · `SAFE <mac> <hex>` · `DFU` (v2).
WiEMS (v3, svc `WIEMS`): `W` / `SAFE` hex = `[selector, value…]` (0 strengths, 1 program, 2 rest, 3 widths, 4 run);
`N` hex starts with `04` (run characteristic) or `10` (battery 2A19).
Bridge → host: `HELLO XEMS-BRIDGE <ver> <links>` · `PONG` · `ADV <mac> <rssi> <FE50|FFF0|NUS|-> <name>` ·
`LINK <mac> <svc>` · `LOST <mac> <reason>` · `FAIL <mac> <why>` · `N <mac> <hex>` · `WOK|WERR <mac>` · `SAFEOK` · `DFUOK`.
One write in flight per suit (write-with-response where the characteristic has it). The panel pings every second;
**2.5 s of host silence → the bridge writes every link's SAFE frame (XEMS F2 stop / bodytech SEL all off) and
disconnects.** bodytech additionally stops by its own 6 s SYNC watchdog. Up to 4 links. LED: blue blink = scanning,
green = a suit linked.

## Files
| Path | What |
|---|---|
| `xbody/bridge/xems_bridge/` | firmware source (`links.h` holds the types: the Arduino builder's prototypes) |
| `xbody/panel/core/` | `xemsproto` (stock app frames), `btproto` (BtProto port), `safe` (SafeLimits port), `suit` (clock + queue), `bridge` (lines) |
| `xbody/panel/ui/` | `app` (bridge, suits, notes, settings), `panel` (XBody-style screens, no moc), `xbres` (XBody's rcc pictures/fonts from its ELF), `serial` (tty + fake bridge), `compat.cpp` |
| `xbody/overlay/etc/init.d/xems-panel` | rc5 S41: waits for `/tmp/qtembedded-0/QtEmbedded-0`, runs the panel, restarts it (≤ 5 quick falls) |
| `xbody/overlay/opt/xems/bin/xems-panel` | the ARM binary (`scripts/xbody/build-panel.sh`) |
| `xbody/overlay/opt/xems/bin/xems-uf2`, `opt/xems/bridge/` | the unit programs a XIAO in UF2 mode; firmware + VERSION (`build-bridge.sh` writes them) |
| `scripts/xbody/stick/` | PC tools in the zip: `PODGOTVI-FLESHKA.cmd` → `podgotvi.ps1` (Windows), `PODGOTVI-FLESHKA.command` (Mac/Linux) |
| `xbody/emu/` | qemu helpers: `fbshim.cpp` (fake /dev/fb0), `stand_in_server.cpp` |

## Build / test
```
python3 scripts/xbody/fetch-base.py && sh scripts/xbody/sysroot.sh && sh scripts/xbody/qt-headers.sh
sh scripts/xbody/build-panel.sh          # tests + ARM build → overlay (checks glibc ≤ 2.20, GLIBCXX ≤ 3.4.20)
sh scripts/xbody/build-bridge.sh         # firmware → xbody/bridge/xems-bridge.uf2
sh scripts/xbody/runroot.sh              # + build/xtool/qemu (qemu-user-static deb) for:
sh scripts/xbody/emu-panel.sh OUT "3000 tap 152 155;5600 shot a.png;6000 quit" [client]
```
Emulator screen 800×600 (`XEMS_FB_W` / `XEMS_FB_H`), taps in screen pixels; `EMU_NO_BRIDGE=1` (plug-the-XIAO view),
`EMU_TAB=1` (only the corner tab). XBody's pictures in the emulator: copy the dump's `opt/xbody` into
`build/xbody-runroot/opt/` (and `chmod +x` its two programs). To see XBody's own screens: run `xbody_control` and
`xbody -qws` in qemu with a TCP sink on 127.0.0.1:1235 and Qt's `QVFbMouse:<fifo>` mouse for taps (16-byte packets
x, y, buttons, wheel); log in with a trainer of the dump's DB (emulator copy only).
Toolchain: Ubuntu `g++-arm-linux-gnueabi` with Debian jessie glibc 2.19 headers/crt (`sysroot.sh`) and the card's
Qt / libstdc++; Qt 4.8.6 headers with a hand-written `qconfig.h` (qreal = float, `Q_WS_QWS`, little endian).

## First test on the unit (when the XIAO arrives)
1. XIAO on a PC: after flashing, a serial terminal at `/dev/ttyACM0` prints `HELLO XEMS-BRIDGE 1 4`; `SCAN 1` lists
   `ADV …` lines with the suits.
2. Unit: the tab appears ~5 s after XBody's screen; the picture "Включи XEMS моста" until the XIAO is plugged.
3. Suit at strength 0 → ▶ → the ring runs; raise to a low strength on one channel; pause / stop act at once.
4. Pull the XIAO out mid-impulse → the suit stops within ~2.5 s, the panel says why.
5. If the tab never shows: `/opt/xems/panel.log`; `ls /dev/ttyACM*` for the bridge.
