#!/usr/bin/env python3
"""At MainActivity startup ask for every permission at once (wearable/XemsAccess: runtime batch + settings pages),
and open the app by itself after an update (wearable/XemsAutoStart, a MY_PACKAGE_REPLACED receiver in the manifest)."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
MAIN_ACTIVITY = DECOMPILED / "smali_classes2/com/isaigu/gymapp/MainActivity.smali"
MANIFEST = DECOMPILED / "AndroidManifest.xml"
RECEIVER = (
    '<receiver android:exported="false" android:name="com.isaigu.gymapp.wearable.XemsAutoStart">'
    '<intent-filter><action android:name="android.intent.action.MY_PACKAGE_REPLACED"/></intent-filter></receiver>'
)


def patch_manifest(text: str) -> str:
    if "XemsAutoStart" in text:
        print("AndroidManifest: auto-start receiver already there")
        return text
    if "</application>" not in text:
        raise RuntimeError("AndroidManifest: </application> not found")
    print("AndroidManifest: auto-start after update (MY_PACKAGE_REPLACED → XemsAutoStart)")
    return text.replace("</application>", RECEIVER + "</application>", 1)

STARTUP_HOOK = (
    "    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;"
    "->requestAtStartup(Landroid/app/Activity;)V\n\n"
)


def patch_main_activity(text: str) -> str:
    if "WearableBlePermissions;->requestAtStartup" in text:
        print("MainActivity.onCreate: wearable BLE permissions hook already applied")
        return text
    marker = "    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChangeWithoutRestart(Landroid/app/Activity;)V\n"
    if marker not in text:
        raise RuntimeError("MainActivity.onCreate LanguageUtils marker not found")
    text = text.replace(marker, marker + "\n" + STARTUP_HOOK, 1)
    print("MainActivity.onCreate: WearableBlePermissions.requestAtStartup hooked")
    return text


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    if not MAIN_ACTIVITY.is_file():
        print("MainActivity.smali missing", file=sys.stderr)
        return 1
    MANIFEST.write_text(patch_manifest(MANIFEST.read_text(encoding="utf-8")), encoding="utf-8")
    MAIN_ACTIVITY.write_text(
        patch_main_activity(MAIN_ACTIVITY.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    print("Wearable BLE permission patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
