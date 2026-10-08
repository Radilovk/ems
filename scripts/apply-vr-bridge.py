#!/usr/bin/env python3
"""Quest 3 haptic bridge (wearable/vr, vr-bridge/): manifest permissions for the UDP receiver's Wi-Fi locks
(WAKE_LOCK → low-latency WifiLock, CHANGE_WIFI_MULTICAST_STATE → MulticastLock for the HELLO broadcast; INTERNET
is the vendor's) and a check that the receiver, the drive, the zones switch and the hooks reached the decompiled tree.
The bridge itself is started from wearable/NotifyWearableBridge (attach / detach / full stop) — no smali hook here."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
MANIFEST = DECOMPILED / "AndroidManifest.xml"
PERMISSIONS = ("android.permission.WAKE_LOCK", "android.permission.CHANGE_WIFI_MULTICAST_STATE",
               "android.permission.INTERNET")
VR_CLASSES = ("VrTelemetryReceiver", "VrHapticRouter", "VrDrive", "VrPulses", "VrNoiseGate", "VrZones", "VrBridge", "VrMainCall",
              "VrSettings", "VrPanel")
CALLS = {
    "wearable/NotifyWearableBridge.smali": (
        "Lcom/isaigu/gymapp/wearable/vr/VrBridge;->attach(Landroid/content/Context;)V",
        "Lcom/isaigu/gymapp/wearable/vr/VrBridge;->detach()V",
        "Lcom/isaigu/gymapp/wearable/vr/VrBridge;->onTrainingStopped()V",
    ),
    "wearable/vr/VrHapticRouter.smali": (
        "Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->passes(Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;)Z",
        "Lcom/isaigu/gymapp/wearable/vr/VrPulses;->pulse(IFJZZJ)V",
    ),
    "wearable/vr/VrDrive.smali": (
        "Lcom/isaigu/gymapp/wearable/vr/VrPulses;->level(J)F",
        "Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZ)V",
        "Lcom/isaigu/gymapp/wearable/vr/VrZones;->engage(Lcom/isaigu/gymapp/train/model/TrainItem;)V",
        "Lcom/isaigu/gymapp/wearable/vr/VrZones;->release()V",
    ),
    "wearable/vr/VrZones.smali": (
        "Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z",
        "Lcom/isaigu/gymapp/wearable/vr/VrSettings;->rests(I)Z",
    ),
}
# Installed later by apply-xems-nav.py: checked in branding/smali, the copy it installs.
BRANDING_CALLS = {
    "widget/XemsNav.smali": (                       # the "VR" tile → VrPanel (settings sheet, 1.1.402)
        "Lcom/isaigu/gymapp/wearable/vr/VrPanel;->open(Landroid/app/Activity;)V",
        "Lcom/isaigu/gymapp/wearable/vr/VrPanel;->status()Ljava/lang/String;",
    ),
}


def find_smali(rel: str) -> Path | None:
    for root in sorted(DECOMPILED.glob("smali*")):
        p = root / "com/isaigu/gymapp" / rel
        if p.is_file():
            return p
    return None


def main() -> int:
    if not MANIFEST.is_file():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    text = MANIFEST.read_text(encoding="utf-8")
    added = []
    for perm in PERMISSIONS:
        if f'android:name="{perm}"' in text:
            continue
        marker = "<application"
        if marker not in text:
            raise RuntimeError("AndroidManifest: <application not found")
        text = text.replace(marker, f'<uses-permission android:name="{perm}"/>\n    {marker}', 1)
        added.append(perm.rsplit(".", 1)[1])
    MANIFEST.write_text(text, encoding="utf-8")
    print("AndroidManifest: VR bridge permissions " + (", ".join(added) + " added" if added else "already there"))

    missing = [c for c in VR_CLASSES if find_smali(f"wearable/vr/{c}.smali") is None]
    if missing:
        print("ERROR: VR bridge smali missing: " + ", ".join(missing), file=sys.stderr)
        return 1
    for rel, needles in CALLS.items():
        p = find_smali(rel)
        body = p.read_text(encoding="utf-8") if p else ""
        for n in needles:
            if n not in body:
                print(f"ERROR: {rel} lacks {n}", file=sys.stderr)
                return 1
    for rel, needles in BRANDING_CALLS.items():
        p = ROOT / "branding" / "smali" / rel
        body = p.read_text(encoding="utf-8") if p.is_file() else ""
        for n in needles:
            if n not in body:
                print(f"ERROR: branding/smali/{rel} lacks {n}", file=sys.stderr)
                return 1
    print("VR bridge: receiver → gate (preset) → pulses → MasterStrengthControl (→ SoftRamp → SafeGuard.enforce), zones, VR tile + panel wired")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
