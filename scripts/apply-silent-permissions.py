#!/usr/bin/env python3
"""Disable runtime permission prompts; permissions granted at APK install (targetSdk 22)."""

from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING = ROOT / "branding"
MAIN_ACTIVITY = DECOMPILED / "smali_classes2/com/isaigu/gymapp/MainActivity.smali"
OPERATION_UTIL = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils/OperationUtil.smali"
TRAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/TrainFragment.smali"
NEW_TRAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
CALENDAR_EVENTS = DECOMPILED / "smali_classes2/com/isaigu/gymapp/calendar/CalendarEvents.smali"
ANDROID_UTILS = DECOMPILED / "smali_classes2/com/isaigu/gymapp/utils/AndroidUtils.smali"
UTILS_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils"
MANIFEST = DECOMPILED / "AndroidManifest.xml"

STARTUP_HOOK = (
    "    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/StartupPermissions;"
    "->requestAllIfNeeded(Landroid/app/Activity;)V\n\n"
)

OPERATION_UTIL_METHOD = """.method public static requestPermission(Lcom/isaigu/gymapp/BaseActivity;)V
    .locals 0
    .param p0, "activity"    # Lcom/isaigu/gymapp/BaseActivity;

    return-void
.end method"""

CALENDAR_REQUEST_METHOD = """.method public static requestCalendarReadWritePermission(Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;)V
    .locals 1
    .param p0, "cal"    # Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/isaigu/gymapp/calendar/CalendarEvents$OnPermissionCallback;->onPermission(Z)V

    :cond_0
    return-void
.end method"""

TRAIN_FRAGMENT_HIPERMISSION = re.compile(
    r"\n    \.line 158\n"
    r"    invoke-virtual \{p0\}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity\(\)Lcom/isaigu/gymapp/BaseActivity;\n\n"
    r"    move-result-object v1\n\n"
    r"    invoke-static \{v1\}, Lme/weyye/hipermission/HiPermission;->create\(Landroid/content/Context;\)"
    r"Lme/weyye/hipermission/HiPermission;\n\n"
    r"    move-result-object v1\n\n"
    r"    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment\$1;\n\n"
    r"    invoke-direct \{v2, p0\}, Lcom/isaigu/gymapp/fragment/TrainFragment\$1;-><init>\("
    r"Lcom/isaigu/gymapp/fragment/TrainFragment;\)V\n\n"
    r"    \.line 159\n"
    r"    const-string v3, \"android\.permission\.ACCESS_FINE_LOCATION\"\n\n"
    r"    invoke-virtual \{v1, v3, v2\}, Lme/weyye/hipermission/HiPermission;->checkSinglePermission"
    r"\(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;\)V\n",
    re.MULTILINE,
)

NEW_TRAIN_OPUTIL = re.compile(
    r"\n    invoke-static \{v1\}, Lcom/isaigu/gymapp/train/utils/OperationUtil;"
    r"->requestPermission\(Lcom/isaigu/gymapp/BaseActivity;\)V\n"
)


def install_smali() -> None:
    src = BRANDING / "smali" / "StartupPermissions.smali"
    if not src.is_file():
        raise SystemExit("Missing StartupPermissions.smali — run compile-music-sync-java.sh")
    UTILS_DIR.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, UTILS_DIR / "StartupPermissions.smali")
    print("installed train/utils/StartupPermissions.smali (no-op)")


def patch_main_activity(text: str) -> str:
    if "StartupPermissions;->requestAllIfNeeded" not in text:
        marker = "    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChangeWithoutRestart(Landroid/app/Activity;)V\n"
        if marker not in text:
            raise RuntimeError("MainActivity.onCreate LanguageUtils marker not found")
        text = text.replace(marker, marker + "\n" + STARTUP_HOOK, 1)
        print("MainActivity.onCreate: StartupPermissions no-op hooked")
    else:
        print("MainActivity.onCreate: StartupPermissions already hooked")
    hip = re.compile(
        r"\n    invoke-static \{p0\}, Lme/weyye/hipermission/HiPermission;->create.*?"
        r"checkSinglePermission\(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;\)V\n",
        re.DOTALL,
    )
    if hip.search(text):
        text = hip.sub("\n", text, count=1)
        print("MainActivity.onCreate: removed HiPermission storage prompt")
    return text


def patch_operation_util(text: str) -> str:
    pattern = re.compile(
        r"\.method public static requestPermission\(Lcom/isaigu/gymapp/BaseActivity;\)V\n.*?\.end method",
        re.DOTALL,
    )
    if not pattern.search(text):
        raise RuntimeError("OperationUtil.requestPermission not found")
    text = pattern.sub(OPERATION_UTIL_METHOD, text, count=1)
    print("OperationUtil.requestPermission: disabled (install-time grants)")
    return text


def patch_train_fragment(text: str) -> str:
    if TRAIN_FRAGMENT_HIPERMISSION.search(text):
        text = TRAIN_FRAGMENT_HIPERMISSION.sub("\n", text, count=1)
        print("TrainFragment.onCreateView: removed HiPermission location prompt")
    else:
        print("TrainFragment.onCreateView: HiPermission already removed")
    return text


def patch_new_train_fragment(text: str) -> str:
    if not NEW_TRAIN_OPUTIL.search(text):
        print("NewTrainFragment: OperationUtil.requestPermission call already removed")
        return text
    text = NEW_TRAIN_OPUTIL.sub("\n", text, count=1)
    print("NewTrainFragment: removed OperationUtil.requestPermission call")
    return text


def patch_calendar_events(text: str) -> str:
    pattern = re.compile(
        r"\.method public static requestCalendarReadWritePermission\(Lcom/isaigu/gymapp/calendar/CalendarEvents\$OnPermissionCallback;\)V\n.*?\.end method",
        re.DOTALL,
    )
    if not pattern.search(text):
        raise RuntimeError("CalendarEvents.requestCalendarReadWritePermission not found")
    text = pattern.sub(CALENDAR_REQUEST_METHOD, text, count=1)
    print("CalendarEvents: calendar permission prompt disabled")
    return text


def patch_android_utils(text: str) -> str:
    """Make requestPermission invoke callback as granted without system dialog."""
    old = (
        ".method public static requestPermission(Landroid/app/Activity;Ljava/lang/String;IL"
        "com/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V\n"
    )
    if "requestPermission granted stub" in text:
        print("AndroidUtils.requestPermission: already silent")
        return text
    pattern = re.compile(
        r"\.method public static requestPermission\(Landroid/app/Activity;Ljava/lang/String;I"
        r"Lcom/isaigu/gymapp/utils/AndroidUtils\$RequestPermissionCallback;\)V\n.*?\.end method",
        re.DOTALL,
    )
    stub = """.method public static requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "callback"    # Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;

    # requestPermission granted stub — install-time grant mode
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    invoke-interface {p3, p1, p2, v0}, Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;->onRequestPermission(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method"""
    if not pattern.search(text):
        raise RuntimeError("AndroidUtils.requestPermission(single) not found")
    text = pattern.sub(stub, text, count=1)
    pattern2 = re.compile(
        r"\.method public static requestPermission\(Landroid/app/Activity;\[Ljava/lang/String;I"
        r"Lcom/isaigu/gymapp/utils/AndroidUtils\$RequestPermissionCallback;\)V\n.*?\.end method",
        re.DOTALL,
    )
    stub2 = """.method public static requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "callback"    # Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v0, 0x1

    invoke-interface {p3, v1, p2, v0}, Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;->onRequestPermission(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method"""
    if pattern2.search(text):
        text = pattern2.sub(stub2, text, count=1)
    print("AndroidUtils.requestPermission: silent grant stub")
    return text


def patch_manifest(text: str) -> str:
    if "me.weyye.hipermission.PermissionActivity" in text:
        text = re.sub(
            r'<activity android:configChanges="keyboardHidden\|orientation" '
            r'android:name="me\.weyye\.hipermission\.PermissionActivity"[^>]*/>\s*',
            "",
            text,
            count=1,
        )
        print("manifest: removed HiPermission PermissionActivity")
    else:
        print("manifest: HiPermission PermissionActivity already removed")
    return text


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    install_smali()
    if MAIN_ACTIVITY.is_file():
        MAIN_ACTIVITY.write_text(patch_main_activity(MAIN_ACTIVITY.read_text(encoding="utf-8")), encoding="utf-8")
    if OPERATION_UTIL.is_file():
        OPERATION_UTIL.write_text(patch_operation_util(OPERATION_UTIL.read_text(encoding="utf-8")), encoding="utf-8")
    if TRAIN_FRAGMENT.is_file():
        TRAIN_FRAGMENT.write_text(patch_train_fragment(TRAIN_FRAGMENT.read_text(encoding="utf-8")), encoding="utf-8")
    if NEW_TRAIN_FRAGMENT.is_file():
        NEW_TRAIN_FRAGMENT.write_text(
            patch_new_train_fragment(NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")),
            encoding="utf-8",
        )
    if CALENDAR_EVENTS.is_file():
        CALENDAR_EVENTS.write_text(
            patch_calendar_events(CALENDAR_EVENTS.read_text(encoding="utf-8")),
            encoding="utf-8",
        )
    if ANDROID_UTILS.is_file():
        ANDROID_UTILS.write_text(
            patch_android_utils(ANDROID_UTILS.read_text(encoding="utf-8")),
            encoding="utf-8",
        )
    if MANIFEST.is_file():
        MANIFEST.write_text(patch_manifest(MANIFEST.read_text(encoding="utf-8")), encoding="utf-8")
    print("Silent permission mode applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
