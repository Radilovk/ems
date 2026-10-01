#!/usr/bin/env python3
"""At MainActivity startup ask only for what the suit needs, in one request (wearable/XemsAccess) — the vendor's own
storage check at start (HiPermission, its own activity; on Android 13+ it is refused without a dialog and nags) is
removed — and open the app by itself after an update (wearable/XemsAutoStart, a MY_PACKAGE_REPLACED receiver in the manifest)."""

from __future__ import annotations

import re
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


HIPERMISSION = re.compile(
    r"\n    invoke-static \{p0\}, Lme/weyye/hipermission/HiPermission;->create\(Landroid/content/Context;\)"
    r"Lme/weyye/hipermission/HiPermission;\n.*?"
    r"invoke-virtual \{v1, v3, v2\}, Lme/weyye/hipermission/HiPermission;->checkSinglePermission"
    r"\(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;\)V\n",
    re.DOTALL,
)


def drop_vendor_storage_check(text: str) -> str:
    m = HIPERMISSION.search(text)
    if not m:
        if "HiPermission;->checkSinglePermission" in text:
            raise RuntimeError("MainActivity: HiPermission start check changed shape")
        print("MainActivity.onCreate: vendor storage check already removed")
        return text
    if "WRITE_EXTERNAL_STORAGE" not in m.group(0) or m.group(0).count("invoke-") > 4:
        raise RuntimeError("MainActivity: HiPermission match is not the storage check")
    print("MainActivity.onCreate: vendor storage check at start removed")
    return text[:m.start()] + "\n" + text[m.end():]


def patch_main_activity(text: str) -> str:
    text = drop_vendor_storage_check(text)
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
