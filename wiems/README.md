# WiEMS (WiemsPro) EMS unit → XEMS — how we get the BLE protocol

Target: the WiemsPro wireless EMS units. Two vendor apps, same hardware family (WIEMSPRO SL):
- **Wiems Easy** — App Store id1633394446, v1.0.4 (2024-12-10), iOS/iPadOS **11.0+, iPhone too**, Apple-silicon Mac,
  185 MB; "train in 3 clicks, up to **3 users at once**" (so: one BLE link per unit, three at a time).
  **Primary target**: newest firmware/protocol, and an iPhone is enough for the capture.
- **Wiems** — id1083387696, v1.8.45 (2022), iPad only (iPadOS 12.1+), full manual control → use it to decode
  the fields Easy hides (per-channel Hz / width / times), if Easy's capture does not show them.
Siblings: WiemsPlus, BodStim, NooFit Pro, OnnaFit. **No Android app exists** (Play Store checked 2026-10-15), so
the bodytech route (decompile the APK, `bodytech/PROTOCOL.md`) is not open — we read the protocol off the air
instead, and use the iOS binary only as a cross-check.
For a 3-user capture, note which unit (name / MAC from the log's connect) is whose: `pklg_att.py` prints the
connection handle (`cNN`) on every line.

## Route 1 — HCI log from the iPad (no jailbreak, no IPA; do this first)
The iPad logs every Bluetooth packet *after* link-layer decryption, so pairing/bonding hides nothing.
1. On the iPad / iPhone (Safari): open
   `https://developer.apple.com/services-account/download?path=/iOS/iOS_Logs/iOSBluetoothLogging.mobileconfig`
   (sign in with any Apple ID; page: developer.apple.com/bug-reporting/profiles-and-logs/?platform=ios → "Bluetooth") →
   install the profile (Settings → Profile downloaded), **restart** the device. (Free Apple ID is enough; the profile
   expires after a few days.)
2. Open Wiems Easy (or Wiems) **after** the restart and connect the unit (the GATT discovery must be in the log — it names the
   handles). Run a scripted session, writing down the time of each step:
   connect → each channel 0 → 10 → 20 → 0 alone (channel map) → master up/down → Hz change (e.g. 85 → 20 → 100)
   → pulse width change → work/pause times → start / pause / stop → program switch → battery screen → disconnect.
   One change at a time, ~5 s apart: the diff between neighbouring writes is what decodes the fields.
3. Take a sysdiagnose: hold **both volume buttons + top button ~1.5 s** (short vibration), wait ~10 min.
   Settings → Privacy & Security → Analytics & Improvements → Analytics Data → `sysdiagnose_…tar.gz` → share.
   Inside: `logs/Bluetooth/*.pklg`. (With a Mac: PacketLogger from Xcode "Additional Tools" records it live.)
4. Decode here: `python3 wiems/pklg_att.py capture.pklg [--all] [--csv out.csv]` → service/characteristic UUIDs
   and every write / notification with time, ready to line up with the step list.
   Same tool reads an Android btsnoop log (if we ever drive the unit from a tablet with "HCI snoop log" on).

Fallback without the iPad log: nRF52840 dongle + nRF Sniffer for Bluetooth LE in Wireshark (passive; works only
if the link is unencrypted or the pairing is captured — `crackle` for legacy pairing).

## Route 2 — the binary (cross-check, constants, checksum, limits)
App Store IPAs are FairPlay-encrypted; a decrypted Mach-O needs one of:
- iPad or iPhone on iOS 14.0–16.6.1 / 17.0 → TrollStore + **TrollDecrypt** (no jailbreak), or a checkm8 iPad
  (A9–A11, palera1n) → `bagbak` / frida-ios-dump.
- Apple-silicon Mac: install Wiems Easy / Wiems from the Mac App Store (iPad app), SIP off → `appdecrypt`.
Then: look at the bundle first — Xamarin/.NET (`*.dll` → ILSpy), React Native/Cordova (`main.jsbundle`/`www/`),
Flutter (`App.framework`) or native ObjC/Swift (`class-dump` + Ghidra; search `CBPeripheral writeValue`,
`CBUUID UUIDWithString`). Only the protocol facts go into our repo, never vendor code (same rule as bodytech /
Bluetens).

## Route 3 — active probe from the Android tablet
After route 1 names the service: nRF Connect (or a copy of `bodytech/probe`) to replay recorded frames, read
battery, and test the keep-alive / watchdog — everything route 1 cannot prove (safety stop time, limits).

## Into XEMS (after the protocol is written down in `wiems/PROTOCOL.md`)
Same shape as bodytech (`docs/xems-bodytech.md`): package `com.isaigu.gymapp.wiems` —
`WiProto` (frame encodings + golden vectors from the captures), `WiTranslator` (XEMS suit command 0x53… →
WiEMS frames: channel %, Hz, width, work/pause, start/stop), `WiBridge` (hooks `BleDeviceManager.getConfig/write`
like `BtBridge`, keep-alive, write-after-ACK pacing), settings page; patch `scripts/apply-wiems.py` +
`verify-wiems.py`; offline test vs a simulator fed with the captured frames. Safety limits from
`docs/xems-safety-limits.md` apply unchanged; first person test at low strength.

## Facts so far
- Wiems 1.8.45: bundle `com.medcab.wiems`, team `SNQSJMRGYB`, native Objective-C (CoreData, AFNetworking) →
  a decrypted binary gives readable class/selector names with `class-dump`.
- 2026-10-15, owner's iPad12,1 (iPad 9th gen) on iPadOS 26.6.1: Wiems crashed 17 s after launch, 50 s after boot
  (EXC_BREAKPOINT in `__CFBasicHashRehash` ← `-[_NSFaultingMutableSet count]` ← app code on a background
  queue: a CoreData threading race in the app, not ours; bluetoothd was active). A race → may pass on a retry;
  else use Wiems Easy. Crash reports (`.ips`) carry no BLE data — the capture is the sysdiagnose `.pklg`.

## Status
- [x] Store research, plan, decoder `wiems/pklg_att.py` (offline test: `sh wiems/test/run.sh`).
- [x] Capture 1 (2026-10-16, Wiems 1.8.45, no step list) → `wiems/logs/capture1-…-att.txt`, decoded in
      `wiems/PROTOCOL.md` (service, start/stop, live strengths, clock, XOR checksum).
- [ ] Capture 2 — controlled changes (PROTOCOL.md "Open") → Hz / width / times bytes.
- [ ] Probe on the Android tablet (replay start / strength / stop), then the XEMS driver.
