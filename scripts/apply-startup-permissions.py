#!/usr/bin/env python3
"""Batch runtime permissions at app start; skip duplicate prompts later in the app."""

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
UTILS_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils"

STARTUP_HOOK = (
    "    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/StartupPermissions;"
    "->requestAllIfNeeded(Landroid/app/Activity;)V\n\n"
)

HIPERMISSION_BLOCK = re.compile(
    r"\n    invoke-static \{p0\}, Lme/weyye/hipermission/HiPermission;->create\(Landroid/content/Context;\)"
    r"Lme/weyye/hipermission/HiPermission;\n\n"
    r"    move-result-object v1\n\n"
    r"    new-instance v2, Lcom/isaigu/gymapp/MainActivity\$1;\n\n"
    r"    invoke-direct \{v2, p0\}, Lcom/isaigu/gymapp/MainActivity\$1;-><init>\(Lcom/isaigu/gymapp/MainActivity;\)V\n\n"
    r"    \.line 83\n"
    r"    const-string v3, \"android\.permission\.WRITE_EXTERNAL_STORAGE\"\n\n"
    r"    invoke-virtual \{v1, v3, v2\}, Lme/weyye/hipermission/HiPermission;->checkSinglePermission"
    r"\(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;\)V\n",
    re.MULTILINE,
)

OPERATION_UTIL_METHOD = """.method public static requestPermission(Lcom/isaigu/gymapp/BaseActivity;)V
    .locals 3
    .param p0, "activity"    # Lcom/isaigu/gymapp/BaseActivity;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_skip

    invoke-static {p0}, Lme/weyye/hipermission/HiPermission;->create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/utils/OperationUtil$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/OperationUtil$2;-><init>(Lcom/isaigu/gymapp/BaseActivity;)V

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2, v1}, Lme/weyye/hipermission/HiPermission;->checkSinglePermission(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;)V

    :cond_skip
    return-void
.end method"""


def install_smali() -> None:
    src = BRANDING / "smali" / "StartupPermissions.smali"
    if not src.is_file():
        raise SystemExit("Missing StartupPermissions.smali — run compile-music-sync-java.sh")
    UTILS_DIR.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, UTILS_DIR / "StartupPermissions.smali")
    print("installed train/utils/StartupPermissions.smali")


def patch_main_activity(text: str) -> str:
    if "StartupPermissions;->requestAllIfNeeded" in text:
        print("MainActivity.onCreate: startup permissions hook already applied")
        return text
    marker = "    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChangeWithoutRestart(Landroid/app/Activity;)V\n"
    if marker not in text:
        raise RuntimeError("MainActivity.onCreate LanguageUtils marker not found")
    text = text.replace(marker, marker + "\n" + STARTUP_HOOK, 1)
    if HIPERMISSION_BLOCK.search(text):
        text = HIPERMISSION_BLOCK.sub("\n", text, count=1)
        print("MainActivity.onCreate: replaced HiPermission storage prompt with startup batch")
    else:
        print("MainActivity.onCreate: HiPermission storage block not found (already removed?)")
    print("MainActivity.onCreate: StartupPermissions.requestAllIfNeeded hooked")
    return text


def patch_operation_util(text: str) -> str:
    if "StartupPermissions" in text or ":cond_skip" in text.split("requestPermission", 1)[-1][:400]:
        print("OperationUtil.requestPermission: skip-if-granted already applied")
        return text
    pattern = re.compile(
        r"\.method public static requestPermission\(Lcom/isaigu/gymapp/BaseActivity;\)V\n.*?\.end method",
        re.DOTALL,
    )
    if not pattern.search(text):
        raise RuntimeError("OperationUtil.requestPermission method not found")
    text = pattern.sub(OPERATION_UTIL_METHOD, text, count=1)
    print("OperationUtil.requestPermission: skip when ACCESS_FINE_LOCATION already granted")
    return text


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    install_smali()
    if MAIN_ACTIVITY.is_file():
        MAIN_ACTIVITY.write_text(
            patch_main_activity(MAIN_ACTIVITY.read_text(encoding="utf-8")),
            encoding="utf-8",
        )
    if OPERATION_UTIL.is_file():
        OPERATION_UTIL.write_text(
            patch_operation_util(OPERATION_UTIL.read_text(encoding="utf-8")),
            encoding="utf-8",
        )
    print("Startup permission patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
