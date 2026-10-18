# XEMS panel on the XBody unit (mod v13)

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

## XBody's own cable (no XIAO): suit standard + double impulse (mod v6, fixed v7)
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
- **v7 fix:** the zone → uems map is now measured, not decoded (abdomen 5, bottom 6 — v6 had them swapped, so XBody's
  "Корем" reached an XEMS suit's glutes). Checked through the ARM proxy on the live `xbody_control`: Корем → lead 8
  (= XEMS Корем), Допълнителен → lead 2 (= XEMS Прасец), Седалище → lead 0 (= XEMS Седалище).
- Measured on the real `xbody_control` in qemu (`board.log`): levels stay in the pause frames, stop = all 0,
  4 s / 1 s cycle; through the ARM proxy: legflex 60 → arm lead, second pause 5 Hz at 50 % from +0.3 s to −0.2 s.
- Settings `/opt/xems/xbody-cable.conf` (`wiring=xbody|xems`, `double=0|1`, `double_hz`, `double_pct`), written by the
  panel (tmp + rename), re-read by the proxy within 0.5 s. State for the panel: `/tmp/xems-cable.state`.
- Screen: the XEMS tab opens **Кабел на XBody** when no bridge is plugged (from the suit list: header "Кабел"):
  two tiles XBody / XEMS suit (ⓘ = zone → lead table), double impulse switch + rhythm picture + Hz / strength
  pills, live status in the header, autosave ("✓ Запазено"); the XIAO card at the bottom. The tab shows ⇄ (XEMS
  suit) and 2× (double impulse) whenever XBody's output is changed by us.
- Tests: `test-panel.sh` (Shaper + table, 211 checks; the proxy end to end over sockets), `test.sh` 5b (stock path).

## Body figures, double impulse, ramp (mod v13, owner)
- The body on the training screen: the **XEMS figures** (`/opt/xems/body`, made by `scripts/xbody/gen-panel-body.py`
  from `branding/body`, lifted to a lighter grey — owner: the near-black ones were too heavy), **female by default**,
  Жена | Мъж on the КЛИЕНТ line of "Настройки на сесията" (works mid-training). Every zone as strong as its output
  now: XBody's red for the impulse (light → deep at 80 %), XBody's yellow for the second impulse in the pause; a
  selected zone without output is tinted lightly; a tap on a muscle selects its zone (`ui/bodyfig.*`). Missing files →
  XBody's own picture as before. XBody's other pictures (humps, slider, fader, logo) stay XBody's.
- "Настройки на сесията" opens also while running: the program is greyed ("сменя се на пауза"), the client's sex works.
- **Рампа** 0,5–5 s (the soft rise of every impulse); WiEMS uses the unit's own rise (program Ru, whole seconds).
- **Двоен импулс** (switch + Hz₂ + %): XEMS — the pause sends the second impulse's strength share and Hz (output on);
  bodytech — every channel to Hz₂ and the share, back to the main Hz at the next impulse; WiEMS — the unit's own rest
  (rest Hz = Hz₂, rest % = the share ≤ 100), the strengths stay in the pause. Limits as everywhere (`safe::apply`:
  Hz₂ ≤ 10 and under the main, ≤ 150 %, the pause long enough with it). WiEMS: the width row reads "по модула".

## Cable and wireless side by side, several wireless suits (mod v12)
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

## Ready passive programs on XBody's cable (mod v8)
`xbody/panel/core/xbprog.*` — the auto-mode's passive procedures (docs/xems-auto-mode-spec.md §6.6–6.10):
Дренаж (wave up the body, 35 Hz 3:1, previous group at 50 %), Антицелулит, Болки в гърба, След раждане (spec 5:10 at
40 Hz breaks L1 → 4:8), Регенерация (3 ↔ 8 Hz), Пасивен метаболизъм. XBody keeps START / STOP / time and the zone
levels; the proxy plays the program over the training (own rhythm, Hz, µs, envelope, wave), **never above a zone's
XBody level** (only Антицелулит's own second impulse in the pause, ≤ 50 %). Latched at START; STOP ends it; when
it is over the outputs stay off until XBody ends. Tests: every program against L1–L5, L12, soft end; "never above"
over every 50-ms frame of every program; wave order; via the real `xbody_control` in qemu (35 Hz, 300 µs, 3:1).
Screen: "Кабел на XBody" → tab **Програми**: a tile per program = a red line icon for the procedure (Health Icons,
CC0, `xbody/panel/art/README.md`: lymph nodes, thigh skin, back pain, mother and baby, relaxation, weight) on white like
XBody's own program tiles, "20 мин · 35 Hz" under it; right: what it does, its phases, the running time.

### Length and after-training procedures (mod v10)
Seventh program **Оформяне** (waist, belly, glutes, thighs, arms: 6 Hz warm-up, 85 Hz 4:6 + 8 Hz second impulse
40 %, 50 Hz 3:5 + 6 Hz 40 %, 4 Hz end; icon symbols/waist-circumference). The side panel picks the length with one tap:
**10 · 15 · 20 · 25 · 30 мин** (the dot = the program's own; config `minutes=`, 0 = own; latched at START with the
program, state `program_min=`). `xbprog::plan()`:
- **10 min = after a training** where the program has its own version (green "след трен." tag on the tile):
  - Дренаж — opening 1 min, legs wave 5 min at 35 Hz, arms 2 min at 30 Hz, a pump 2 min at 8 Hz 2:2 with a 3-Hz
    second impulse ≤ 30 %. L12 stays for the wave: no second impulse in its pauses, where the vessels refill.
  - Оформяне — 85 Hz + 8 Hz second impulse 4 min, 40 Hz + 6 Hz 3 min, 3 ↔ 8 Hz massage 3 min.
  - Антицелулит — 85 Hz + 8 Hz second impulse 4 min, legs wave 4 min, 3 ↔ 8 Hz massage 2 min.
  - No warm-up (the body is warm), envelope starts at 80 %.
- **A strategy per length** (mod v11, docs/xems-ems-physiology.md §1, §3) for the rest. Warm-up = a rising low-Hz
  first phase, end = a low-Hz last phase, the work = everything between:
  - 10: the other programs drop the warm-up (the body is warm); the work starts at ≤ 80 % and the end is 2 min.
  - 15 (short): warm-up and end 2 min each.
  - 20–25 (standard): warm-up and end as written.
  - 30 (long): warm-up and end 3 min each.
  - The work shares the rest in proportion, in ¼-min steps.
  - ≥ 20 Hz work longer than 15 min without a break becomes two blocks with a 2-min 3 ↔ 8 Hz massage on the same
    zones between them, so the high-frequency fatigue recovers (τ 30–50 s). E.g. Болки в гърба at 30 min: 3 min
    warm-up, 11 min 80 Hz, 2 min massage, 11 min 80 Hz, 3 min end.
  - Hz, µs, rhythm, ramps and the wave are unchanged, so the limits hold.
  - The panel's yellow box names the strategy.
  - A tile's Hz is the frequency with the most time.

Tests: every program × every length against L1–L5, L12, ≥ 30 s phases, ≥ 20 Hz work ≤ 15 min in one go, no warm-up at
10, a 2-min warm-up at 15, a ≥ 1-s window for every second impulse, the
soft end, the exact length, "never above" and "ends on time" over every 50-ms frame; the length is latched at START.

## Feedback from the stimulator (what XBody can know)
- `xbody_control` has **no read path** from the board (only `SendPacketToHardware`; `XBHWCommunication` connects no
  readyRead) and sends nothing but the pc_emse frames: no impedance, contact, current or error from the suit.
- The GUI's "myopotential measurement" (`DiagnosticsView::beginMyoMeasurement`, MyoWidget) builds a stimulation
  setting from its combo boxes and runs a timer — it reads no signal. No heart-rate / sensor input anywhere.
- Whether the board itself sends anything is unknown statically: `xems-xbproxy` logs every byte from the board to
  `/opt/xems/board-rx.log` (64 KB cap) and counts it in the state; the USB installer copies `/opt/xems/*.log` to the
  stick (`xems-logs/`). Empty after a training = the board is silent.
- Real feedback can come from outside: the XIAO bridge can read a BLE heart-rate strap / the Band 10 (not done).

## Phone → XBody over a USB cable (mod v9, no stick)
The phone's USB tethering (RNDIS) gives the unit `usb0` (`rndis_host` / `cdc_ether` / `usbnet` are on the card).
`/opt/xems/bin/xems-link` (started by `xems-panel`) gets an address (`udhcpc`, script `xems-dhcp`: no default route,
no DNS), asks the "XEMS флашка" app `http://<phone>:8765/xems/hello?have=N&pending=M` (`PhoneServer.java`), downloads
a newer mod into `/opt/xems/pending` (a stick's layout), checks its md5 and version; `/etc/init.d/xems-pending`
(rc5 S29, before the vendor's stick updater) installs it at the next boot with the stick's installer — backups stay
in `/opt/xems/pending/xems`, one run per download (`updater.sh` → `.done.sh`, a failure → `.failed.sh`, never a boot
loop). The panel's header says "Версия N е изтеглена — изключи и включи XBody", the tab shows ↓; the app shows the
unit's version and when it has the download. The first time the unit needs v9 from a stick (the link comes with it).
Tests: `test.sh` 7 — the real `PhoneServer` on the host JVM ↔ `xems-link` ↔ the pending install on a fake root.

## Update from USB while the machine runs (mod v15) — admin interface, no reboot dance
Besides the stick-at-boot path (vendor `xbody-updater` auto-runs `updater.sh`, powers off), the mod is installable
while the unit is on, through **two** interfaces — owner's "и двете":

1. **XBody's own Administration Menu → Software Update** (its stock button, `AdminView::updateSoftwareClicked`
   in `opt/xbody/xbody`). It scans the stick root for `*.xbody`, checks a filename md5, then decrypts + extracts
   into `/`. `build.py` emits that archive at the stick root:
   `softwareupdate.newave.3.<mod>.<md5-16>.xbody` — a gzip'd tar of the overlay, `openssl aes-128-cbc -salt -md md5`
   with the vendor's fixed password (`Árvíztűrőtükörfúrógép9081`, as `QFile::encodeName` hands it to openssl:
   ISO-8859-1 with ű/ő → `?`). The mod version rides as the minor (`3.<mod>`), always > the app's own `3.2.0`, so
   it reads as newer. md5 = `md5("softwareupdate.newave.3.<mod>." + <cipher> + "xbody.")[:16]` (the way
   `ArchiveInspector::verifyIntegrity` computes it; `setDataFromFileName` wants it base-16, ≥ 8 chars). The vendor
   only copies the archive's files over `/` and then restarts **its own GUI** (`App::requestRestart` →
   `QCoreApplication::quit`, re-exec — **not** a reboot, so the boot installer `xems-pending` rc5 S29 never runs).
   So the archive carries the **stick** into `/opt/xems/pending` and the real install is run by the panel's own
   background loop (`init.d/xems-panel`, every 2 s): it sees `/opt/xems/pending/updater.sh`, runs it (backup in
   `/opt/xems/pending/xems`, `remove.list`, the firstboot hooks), parks a failed one as `.failed.sh`, and restarts
   the panel to the new binary once `/tmp/xems-busy` is gone (no suit linked, written by `App`) — **no reboot**. S29
   (+ its link, for units older than v9) stays as the boot-time fallback. Mod ≤ v18 has no such loop, so the first
   install of a loop-carrying version still needs one real power-cycle.
2. **The XEMS panel** — "Кабел на XBody" → tab "Кабел и импулс" → **Обнови XEMS от USB** (hidden while training).
   Confirm → `App::updateFromUsb()` runs `/opt/xems/bin/xems-usb-update apply`: mounts `/dev/sda1` (else `sda`),
   runs the stick's own `updater.sh` (backup + payload + `remove.list`, self-renames), reports the version in a
   toast. Full install (incl. `remove.list`); hooks still run next boot. `check` reports `ver`/`installed`.

Tests: `test.sh` 8 (the `.xbody` parses, its md5 matches, `openssl -d` + `tar xz` recover the overlay) and 9
(the helper installs onto a fake root, backs up, refuses a foreign stick).

## Internet only on request + the network lock (mod v21, owner)
Owner: "update and a log of the last 2 minutes — both only when asked; no polling, no automatic checks; every other
connection to native systems / servers over the network stops, only our protocol stays."

- **One button, the choices behind it.** "Кабел на XBody" → "Кабел и импулс" → **Обнови XEMS · Прати лог** opens
  XBody's dark-red dialog band with three one-tap tiles: **От интернет** · **От USB флашка** · **Изпрати лог**
  (`PanelWidget::paintService`). Updates are greyed ("след тренировката") while XBody's cable trains; the log is always
  there. Under the tiles: what happens / happened (`App::netLine`). Closing the sheet mid-request is fine — the result
  comes as a toast (red when it is not a ✓).
- **`/opt/xems/bin/xems-net update|log`** runs only from that tap (`App::netStart`, a QProcess, polled in the app's
  timer). Progress lines `. connect` / `. download N` / `. collect` / `. send`, then one of `OK <ver|log id>`,
  `CURRENT <ver>`, `ERR no-net|tls|server|check`.
  - update: `GET https://license.biocode-bg.com/v1/unit/update?app=xbody&have=N&unit=<id>` → plain text
    `version= / sha256= / size= / notes=`; newer → `GET /v1/unit/pack?app=xbody&v=N` (the server streams the pack it
    registered, so the unit trusts one host only) → sha256 (`openssl dgst`) + the stick's own md5 + VERSION → the files
    go into `/opt/xems/pending` (updater.sh last) → the panel's 2-s loop installs it (backup, remove.list, hooks) and
    restarts the panel once no suit is linked — no reboot. `/opt/xems/net-updated` makes the new panel say
    "✓ XEMS е обновен до версия N" in the sheet (or "не се инсталира" when the install failed).
  - log: XBody's `/opt/xbody/log.txt` from 2 minutes ago on (its lines start `YYYY-MM-DD HH:MM:SS.mmm`; compared as text
    with `date -d @(now-120)`, untimed lines follow the one before), our `/opt/xems/*.log` changed in those 2 minutes
    (their end; `board-rx.log` stays on the USB path), `/tmp/xems-*.state`, the end of dmesg; ≤ 250 KB →
    `POST /v1/unit/log?app=xbody&unit=<id>&ver=N` → `OK <id>`; the sheet shows "Логът е изпратен · № id" — the same
    number as in the admin page (XBody tab).
  - unit id = first 12 hex of md5(eth0 MAC, else wlan0) — no MAC leaves the unit.
  - TLS: the card's own curl 7.37.1 (GnuTLS 3.3.5) with `--cacert /opt/xems/etc/ca.pem` (the card's 2014 bundle +
    today's ISRG / GTS / GlobalSign / SSL.com / Sectigo / DigiCert roots). A clock before 2025 is set from the server's
    `Date` header first (that one request carries nothing). Checked in qemu with the card's curl + busybox against a
    local HTTPS stand-in.
- **The network lock** `/etc/init.d/xems-fw` (rc5 **S00**, before networking; also started by hook `60-net-lock` so a
  no-reboot install closes it at once): iptables `INPUT/OUTPUT/FORWARD DROP` except `lo` (XBody's own localhost link
  :1235 and our proxy — these rules go in first, the DROP policies last; no working iptables → nothing is closed),
  `usb0` (the phone's cable link), DHCP, established replies, and chain `XEMSNET`, which `xems-net` fills with DNS +
  TCP to our server's addresses (curl pinned with `--resolve`) only while it runs and flushes on exit. IPv6 off on every
  interface but lo. The vendor's network services lose their rc5 links (`xbody/remove.list`: sshd, rpcbind,
  mountnfs, avahi, ofono, neard) and the hook stops the running ones. XBody's own "online" features were already off
  (`online=0`, `XBodyOnlineEnabled=false`); the lock blocks them anyway. Undo: the USB stick's `xems/RESTORE`.
- Server side: `server/src/units.js` (+ migration `0015_units.sql`), admin page tab **XBody**: publish a version
  (version + `https://github.com/Radilovk/ems/raw/main/xbody/dist/xbody-net.tar` → the server stores sha256 / size),
  read / delete logs (kept 60 days, nightly sweep). `build.py` writes `xbody/dist/xbody-net.tar` (commit it).
- Tests: `test.sh` 10 (update / current / no line / foreign certificate / bad sha / the 2-minute log; the lock opened
  and closed), 11 (rule order, IPv6, a broken iptables leaves the network as it was); `server/test/units.test.js`.
- Not yet on the unit: the iptables rules on its 2.6.35 kernel (modules are on the card), the real Cloudflare chain.

## Wi-Fi page (mod v22, owner: "no Wi-Fi setting, nowhere to look for a signal")
XBody's own Wi-Fi screen (`WifiView`) is hidden with its "online" mode, and its log shows why it never worked: every
`SCAN` request to wpa_supplicant failed (696 times on the owner's card) — the radio was never brought up.
- **Where:** "Обнови · Лог · Wi‑Fi" → the sheet's fourth tile **Wi‑Fi** (shows the network it is on). Opening the page is
  the request for a scan; "Търси отново" in the header repeats it. Nothing scans in the background.
- **Page** (`PanelWidget::paintWifi`, landscape): left — the networks, strongest first, one row per name (signal bars,
  padlock for WPA, "✓ свързан" in green, "не се поддържа" greyed for EAP / WEP), 7 per page + "Още мрежи"; right — what
  is happening now, "Забрави тази мрежа", a note that the network is remembered and the internet is used only on request,
  "Готово". ← in the header goes back to the sheet.
- **Password** (`paintKeyboard`): own on-screen keyboard (the unit has none): digits, Latin letters, one-shot capitals ⇧,
  "?123" signs, space, "Изтрий", "Покажи" / "Скрий"; "Свържи" lights at 8–63 characters. A wrong password comes back on
  the keyboard line in red.
- **`/opt/xems/bin/xems-wifi scan|connect|forget`** (busybox ash, wpa_cli of wpa_supplicant 2.2, wext): `rfkill unblock`,
  `ifconfig wlan0 up`, starts wpa_supplicant if its socket is missing; the name and the password go on **stdin**; the
  name is set as hex (any characters), the password as the 64-hex PSK from `wpa_passphrase`; `select_network`, wait for
  COMPLETED (TEMP-DISABLED = wrong password → `ERR auth`), `enable_network all` (the other saved ones stay fallbacks),
  `save_config` (`update_config=1` → it reconnects by itself at boot), DHCP with busybox udhcpc. `xems-fw` also runs
  `rfkill unblock wifi` at S00, before networking brings wlan0 up.
- The lock (`xems-fw`) is unchanged: DHCP and wpa_supplicant's own frames pass; the internet is still used only by
  `xems-net` on request. `xems-net log` now carries `wpa_cli status` too.
- Tests: `test.sh` 12 (stand-in wpa_cli: sorted / deduped scan, open / WPA / unsupported, wrong password, join + address,
  saved once, forget, no radio); also run under the card's busybox ash + its `wpa_passphrase` in qemu (caught: busybox
  `od` has no `-A` → `hexdump`). Not yet on the unit: which Wi-Fi chip it has and whether its driver scans once up.
- **Mod v23 fix (owner: "the log does not send, says try again"):** v21/v22 shipped `xems-net` without its exec bit
  (0644), so the panel could not start it — every "От интернет" / "Изпрати лог" ended "Не стана". The panel now runs
  `xems-net` / `xems-wifi` through `/bin/sh` (exit 127 says the program is missing), the file is 0755 again, and
  `test.sh` 1 fails on any overlay program without its exec bit (in git and in the payload). Units on v21–22 need v23
  from the USB stick or the phone app once: their internet update runs the same broken file.

## First XIAO on the unit (owner, mod v24 / bridge v4)
Owner's run with v3: double RESET → the unit flashed it ("Програмирам моста" → "Мостът се рестартира…"), the LEDs went
dark (= the sketch's setup ran), then back to "Включи XEMS моста" — the panel never heard a line.
- Most likely cause: the core's `Serial` (Adafruit_USBD_CDC::write) **drops every byte while the host has not raised
  DTR**; HELLO / PONG never left the board if the unit's 2.6.35 cdc-acm did not raise it. **Bridge v4** writes through
  TinyUSB directly (`hostWrite` → `tud_cdc_n_write` + flush, FIFO overwritable without DTR, ≤ 200 ms per write) and
  says HELLO each second until the host speaks, DTR or not. The panel also raises DTR + RTS itself (`TIOCMBIS`) and logs
  `bridge port … open` to `panel.log`.
- `build-bridge.sh` raises the core's `CFG_GATT_MAX_CLIENT_CHARS` 40 → 48 (4 links × 11 client characteristics = 44;
  the 4th link lost its WiEMS / battery characteristics).
- **Diagnosis on the card:** while no bridge answers, the "Включи XEMS моста" card has a grey line
  "Виждам: XIAO по USB ✓|няма · ttyACM0 ✓|няма порт · отговор N байта|без отговор" (`App::readDiag`, every 2 s from
  `/sys/bus/usb/devices` idVendor 2886 / product XIAO; also `/tmp/xems-bridge.state`). "Изпрати лог" now carries the
  USB device list, `/dev/ttyACM*` and the USB lines of dmesg.
- A v3 bridge that never answered cannot take the DFU command: RESET twice once more and the unit flashes v4.

## Android: preparing the stick from a phone (`scripts/xbody/build-android.sh`)
`xems-fleshka-vN.apk` ("XEMS флашка", bg.xems.fleshka, versionCode = mod version) carries the stick of that mod in
`assets/fleshka`. OTG stick → "Избери флашката" (Storage Access Framework, the stick's root; phone storage or a
folder is refused) → "Инсталирай версия N": copies, reads the payload back and checks its md5; "Върни назад" when
the stick holds a backup; a XIAO in UF2 mode picked instead gets the bridge firmware. FAT32 can't be checked
through SAF (the screen asks for FAT32 ≤ 32 GB). Source `scripts/xbody/android/` (one Activity, no XML layouts,
dx-safe); javac → dx → baksmali → apktool b → uber-apk-signer. Not run on a device yet.

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

## Mod v16 — the WiEMS tablet app's behaviour on the panel; XEMS figures on XBody's own screen (owner)
- **WiEMS driver = the tablet's** (`docs/xems-wiems-app.md` v1.5–v1.13): strengths written only when they change, at
  the vendor's pace (≥ 0.8 s apart, a finger's change after 0.3 s), never at a work / rest change, with the check bits
  (`wi::currents`); the unit's `0x80|x` (seen 86) → paused, zones / strength back to what it last ran with, the zone
  that changed named; `00` → paused; no `01` for 5 s → paused; a late `01` does not end a new count-down; a START
  cancelled in its count-down never goes out. Every case in `core_test` (`wiemsSession`).
- **A dropped link keeps the session** (all kinds): on pause with its zones, strength, program and time done; the
  same suit is looked for and reconnects by itself (0 + stop first), ПРОДЪЛЖИ goes on.
- **Zones and strength stay as set** per suit kind, across sessions and restarts (`zones/k<kind>` in panel.conf); a
  first suit: zones 0, СИЛА 100.
- **Picking like the tablet:** under ВСИЧКИ a tap on a zone (or a muscle) picks that zone; ± / the slider move several
  zones by the same step; a pick ends after 5 s with no touch; a sideways slide on a zone button = its strength (the
  XEMS focus chip: the button's width = 20 %, ≤ 20, sent on release). Emulator: `ms slide x0 y0 x1 y1`.
- **Session sheet:** XBody's modes as chips by the title (Мускули 80 Hz 4/2 · Кардио 7 Hz continuous 20/10 · Релакс
  100 Hz 1/1, its defaults); **КОСТЮМ XBody | XEMS for WiEMS** (an XEMS suit on its XBody-standard leads, the owner's
  table, ⓘ shows it); the rise ≤ the impulse − 1 s (`safe::apply`).
- **XBody's own screen keeps its own figures (mod v17).** v16 put the XEMS figures there through XBody's config key
  `pixmaps_directory`; the owner took them out ("they don't work well there"). `hooks/50-xbody-figures.sh` now removes
  the key from `/opt/xbody/xbody.conf` and the v16 folders (`/opt/xems/xbody-pixmaps`, `xbody-body`, `xbody-figures`)
  — XBody reads its pictures from its binary again from its next start. The "Фигури" tab is gone; the XEMS figures
  stay on our panel's wireless screen only.

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
