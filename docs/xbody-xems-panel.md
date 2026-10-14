# XEMS panel on the XBody unit (mod v2)

XEMS and bodytech suits trained from the XBody machine's own screen, next to (not inside) the XBody app. The
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

## Use (owner)
1. Stick: `python3 scripts/xbody/build.py` → `build/xbody-dist/xbody-usb-v2.zip` (contents to a FAT32 stick root;
   README.txt in Bulgarian; `xems-bridge.uf2` is on the stick too).
2. XIAO: double-tap RESET while on a PC → a drive appears → copy `xems-bridge.uf2` onto it.
3. Unit off → stick in → on → "Updater finished" → off → stick out → on. Plug the XIAO (short extension cable).
4. Tap the **XEMS** tab (top right, draggable) → pick the suit → strength, channels, ▶.

## Panel
- Views: no bridge (picture: plug the XIAO) · pick a suit (cards, strongest signal first; the last suit reconnects by
  itself) · training (ring = phase progress, time left, strength ± with hold-repeat, channel bars tap/drag in 5 %
  steps, ▶ / ❚❚, ■ Стоп, program sheet: Hz, µs, impulse, pause, minutes, "Клиент над 60").
- ✕ hides the panel, the session goes on; the tab shows the time (green running, amber paused).
- Program values pass `safe::apply` (port of `ai/SafeLimits`) — corrections show as an amber line.
- A new link starts at strength 0. A lost link, a bridge pulled out or a suit that stops ACKing stops the training;
  nothing restarts by itself.
- bodytech: ~110 programming frames after the link; ▶ meanwhile shows "Миг…" and starts when they are out.
- Settings: `/opt/xems/panel.conf` (last suit, program, tab position). Log: `/opt/xems/panel.log`.

## Bridge line protocol (USB CDC, 115200)
Host → bridge: `PING` · `SCAN 1|0` · `CONN <mac>` · `DISC <mac>` · `W <mac> <hex>` · `SAFE <mac> <hex>`.
Bridge → host: `HELLO XEMS-BRIDGE <ver> <links>` · `PONG` · `ADV <mac> <rssi> <FE50|FFF0|NUS|-> <name>` ·
`LINK <mac> <svc>` · `LOST <mac> <reason>` · `FAIL <mac> <why>` · `N <mac> <hex>` · `WOK|WERR <mac>` · `SAFEOK`.
One write in flight per suit (write-with-response where the characteristic has it). The panel pings every second;
**2.5 s of host silence → the bridge writes every link's SAFE frame (XEMS F2 stop / bodytech SEL all off) and
disconnects.** bodytech additionally stops by its own 6 s SYNC watchdog. Up to 4 links. LED: blue blink = scanning,
green = a suit linked.

## Files
| Path | What |
|---|---|
| `xbody/bridge/xems_bridge/` | firmware source (`links.h` holds the types: the Arduino builder's prototypes) |
| `xbody/panel/core/` | `xemsproto` (stock app frames), `btproto` (BtProto port), `safe` (SafeLimits port), `suit` (clock + queue), `bridge` (lines) |
| `xbody/panel/ui/` | `app` (bridge, suits, notes, settings), `panel` (painted screens, no moc), `serial` (tty + fake bridge), `compat.cpp` |
| `xbody/overlay/etc/init.d/xems-panel` | rc5 S41: waits for `/tmp/qtembedded-0/QtEmbedded-0`, runs the panel, restarts it (≤ 5 quick falls) |
| `xbody/overlay/opt/xems/bin/xems-panel` | the ARM binary (`scripts/xbody/build-panel.sh`) |
| `xbody/emu/` | qemu helpers: `fbshim.cpp` (fake /dev/fb0), `stand_in_server.cpp` |

## Build / test
```
python3 scripts/xbody/fetch-base.py && sh scripts/xbody/sysroot.sh && sh scripts/xbody/qt-headers.sh
sh scripts/xbody/build-panel.sh          # tests + ARM build → overlay (checks glibc ≤ 2.20, GLIBCXX ≤ 3.4.20)
sh scripts/xbody/build-bridge.sh         # firmware → xbody/bridge/xems-bridge.uf2
sh scripts/xbody/runroot.sh              # + build/xtool/qemu (qemu-user-static deb) for:
sh scripts/xbody/emu-panel.sh OUT "4000 tap 260 380;5600 shot a.png;6000 quit" [client]
```
Toolchain: Ubuntu `g++-arm-linux-gnueabi` with Debian jessie glibc 2.19 headers/crt (`sysroot.sh`) and the card's
Qt / libstdc++; Qt 4.8.6 headers with a hand-written `qconfig.h` (qreal = float, `Q_WS_QWS`, little endian).

## First test on the unit (when the XIAO arrives)
1. XIAO on a PC: after flashing, a serial terminal at `/dev/ttyACM0` prints `HELLO XEMS-BRIDGE 1 4`; `SCAN 1` lists
   `ADV …` lines with the suits.
2. Unit: the tab appears ~5 s after XBody's screen; the picture "Включи XEMS моста" until the XIAO is plugged.
3. Suit at strength 0 → ▶ → the ring runs; raise to a low strength on one channel; pause / stop act at once.
4. Pull the XIAO out mid-impulse → the suit stops within ~2.5 s, the panel says why.
5. If the tab never shows: `/opt/xems/panel.log`; `ls /dev/ttyACM*` for the bridge.
