# xbody/ — mod for the XBody EMS unit (i.MX53, Yocto 1.7, Qt 4.8 app Newave 3.2.0)

System map: `docs/xbody-os.md`. XEMS panel + XIAO bridge: `docs/xbody-xems-panel.md`. XBody internals: `docs/xbody-protocol.md`. Vendor layout: grep `xbody/base-manifest.tsv` (Bash grep; it is in `.ignore`).

## Model
Only **our changes** live in git, never the vendor rootfs:
- `overlay/` — files exactly as they must appear on the card (`overlay/opt/x` → `/opt/x`). Exec bit and
  symlinks are kept; owner becomes root. No spaces in paths. Existing vendor dirs keep their mode.
- `remove.list` — card paths to delete (files; one per line, `#` comments).
- `overlay/opt/xems/hooks/NN-name.sh` — run once per mod version on the unit at boot, before the app
  (`overlay/etc/init.d/xems-firstboot`, rc5 S35). For anything that must be done *on* the device
  (e.g. editing the live DB, which has client data and no sqlite3 CLI — ship an ARM binary in overlay).
- `overlay/opt/xems/VERSION` — mod version. **Bump it on every change under `xbody/`** (hooks re-run
  only when it changes; the output file names carry it).

## Build (on request: "дай файла за картата")
```
python3 scripts/xbody/build.py                         # → build/xbody-dist/xbody-usb-vN.zip (USB stick)
python3 scripts/xbody/build.py --img build/xbody-base/sd.img   # + xbody-sd-vN.img.gz (whole card, Etcher)
sh scripts/xbody/test.sh                               # must print ALL OK before shipping
```
- USB route works on the live card (backup on the stick, `xems/RESTORE` undoes). Preferred.
- SD-image route needs the raw card image (`fetch-base.py --id <drive id of .img/.img.gz/.zip>`); the
  current Drive file is a 7z **file dump** (symlinks flattened) — analysis only, never a base to write.
- Outputs are gitignored; hand them over with SendUserFile, don't commit them.
- The zip = `PROCHETI.txt` + `PODGOTVI-FLESHKA.cmd|.command` + `tools/podgotvi.ps1` + `fleshka/` (stick contents).
  The tools live in `scripts/xbody/stick/` (.cmd CRLF, .ps1 UTF-8 BOM — test.sh checks; the .ps1 is run under pwsh
  with mocked drives when `build/xtool/pwsh` exists).
- XBody's cable output is shaped by `opt/xems/bin/xems-xbproxy` (core `xbcable`, docs/xbody-xems-panel.md "XBody's
  own cable"); it must stay transparent when off and never stimulate outside XBody's own impulse / pause frames.
- Android stick app: `sh scripts/xbody/build-android.sh` after build.py → `build/xbody-dist/xems-fleshka-vN.apk`
  (hand it over with the zip). Ready cable programs: `xbody/panel/core/xbprog.*` (tests: L1–L5, never above XBody).
- Bridge firmware changed → bump `BRIDGE_VER` (the unit updates older bridges by itself), `build-bridge.sh`.

## Panel / bridge
- Changed `xbody/panel/**` → `sh scripts/xbody/build-panel.sh` (tests + ARM build into the overlay, symbol check),
  bump `overlay/opt/xems/VERSION`, commit the binary. Changed the firmware → `sh scripts/xbody/build-bridge.sh`, commit the `.uf2`.
- C++98 (Qt 4 headers), no moc (virtual handlers only), no new GLIBC/GLIBCXX symbols (`compat.cpp`).
- Check UI in qemu (`scripts/xbody/emu-panel.sh … client`) before shipping.

## Rules
- Device shell is busybox 1.22 ash: no bash-isms, no `sha256sum`, no `tar -T`; LF line endings.
- Never put client data (DB, logs, `/Settings`) in git.
- Touching `xbody/` or `scripts/xbody/` does not touch the APK → no `RELEASE_VERSION` bump.
