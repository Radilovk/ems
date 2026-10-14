# XBody unit — operating system map

The XBody EMS machine's SD card, as dumped from the owner's card (Drive `xb.7z`, see
`scripts/xbody/fetch-base.py`). Vendor app **v1.7.14b**. Full path list: `xbody/base-manifest.tsv`
(grep it; `z` rows = 0-byte in the dump = symlinks on the real card). How we change it: `xbody/CLAUDE.md`.

## Platform
- Board **i.MX53 QSB** (`/etc/hostname` = imx53qsb), ARMv7 32-bit, EABI5.
- **Yocto/Poky 1.7** (build 201412090613), kernel **2.6.35.3** (`/boot/zImage`, loaded from the rootfs —
  modules in `/lib/modules/2.6.35.3-maintain+yocto+gb3912bb`). Root fs is ext (has `lost+found`).
- **busybox 1.22.1** userland: `tar`, `gzip`, `md5sum -c` yes; **no** `sha256sum`, **no** `sqlite3` CLI.
- GUI: **Qt 4.8.6 Embedded** (`/usr/lib/libQt*E.so.4.8.6`), QWS on `/dev/fb0` (no X), tslib touch on
  `/dev/input/touchscreen0`.

## Boot chain
`/sbin/init` → `/etc/inittab` (runlevel 5; getty on `ttymxc0` 115200 = serial console, and `tty1`) →
`/etc/init.d/rc 5` → `/etc/rc5.d/S*` in order:

| rc5 | Script | Role |
|---|---|---|
| S01–S22 | networking, dbus, **sshd** (S09), rpcbind, apmd, hwclock, syslog, avahi, ofono | system |
| S20 | `emsc-serialdaemon` | `/usr/sbin/emsc-tcpseriald -serial /dev/ttymxc3 -baud 115200 -port 1235` |
| S20 | `ar1100-serialdaemon` | `/usr/sbin/ar1100-seriald -ar1xxx /dev/ttymxc4` (AR1100 resistive-touch controller) |
| S30 | `xbody-updater` | **USB update hook** (below) |
| **S35** | `xems-firstboot` | **ours** — runs `/opt/xems/hooks/*.sh` once per mod version |
| S40 | `xbody-start` | `/opt/xbody/xbody.sh &` |
| S99 | qtdemo, rmnologin, stop-bootlogd | |

Shutdown: `emsc-poweroff.sh` sends a power-off frame to the stimulator board over `ttymxc3`.

## The app — `/opt/xbody/`
| Path | What |
|---|---|
| `xbody.sh` | starter: `xbody_control &`, tslib env, `xbody -qws`; when the GUI exits → `poweroff` |
| `xbody` | Qt GUI, ELF ARM, **not stripped, with debug_info** (symbols available for reversing) |
| `xbody_control` | companion daemon, ELF ARM, not stripped |
| `xbody_db.sqlite` | main DB (programs, clients, settings) — client data, never commit |
| `Backups/KnownGood-*.sqlite` | app's own DB backups |
| `translations/<lang>/` | Qt translations, `bg` included |
| `xbody.conf` | `online=0` |
| `log.txt` | app log (75 MB on the owner's card) |
| `v1.7.14b.version` | version marker (empty file) |

Qt settings: `/Settings/XBody/*.conf` (`translation=en`, `XBodyOnlineEnabled=false`), `/Settings/Trolltech.conf`.

## Stimulator link
The GUI does not open the UART itself: `emsc-tcpseriald` bridges **TCP localhost:1235 ⇄ `/dev/ttymxc3`
115200 8N1**. Frames are ASCII lines ending CRLF (the power-off script shows the shape). The TCP port is
the natural point to observe or proxy the traffic without touching the vendor binaries.

## Network
`/etc/network/interfaces`: `eth0` dhcp (auto), `wlan0` dhcp (auto, essid `xbodynetwork`, wpa_supplicant),
`usb0` static 192.168.7.2/24 (USB gadget), `bnep0` (BT PAN). sshd + avahi run at boot.

## USB update hook (vendor)
`/etc/init.d/xbody-updater` (S30): if `/dev/sda1` (else `/dev/sda`) exists, mount on `/tmp/pen`; if
`/tmp/pen/updater.sh` exists → `cd /tmp/pen; ./updater.sh` **as root**, then `sleep 5; poweroff`.
Runs before the app starts. This is how our mod is installed (`scripts/xbody/updater.sh`).

## Pitfalls
- The 7z dump is a Windows-side copy: **756 symlinks became 0-byte files** (`bin/sh`, `bin/busybox`,
  every `rc*.d/S*`, `.so` links). Never write it back to a card; it would not boot.
- A stick left in with a vendor-style `updater.sh` reboots → updates → powers off forever. Ours renames
  itself to `updater.done.sh` after a run.
- tar entries for existing directories reset their mode (`/tmp` is 1777) — the payload carries files only.
