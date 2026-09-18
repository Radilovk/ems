#!/usr/bin/env python3
"""Install MusicDiagLog smali and hook crash handler + application init."""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
UTILS_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils"
CRASH_APP = DECOMPILED / "smali_classes2/com/isaigu/gymapp/CrashApplication.smali"
CRASH_HANDLER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/AndroidCrashHandler.smali"
BRANDING_SMALI = ROOT / "branding" / "smali"

INIT_HOOK = """
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->init(Landroid/content/Context;)V

"""

CRASH_HOOK = """
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->recordCrash(Ljava/lang/Throwable;)V

"""


def install_smali() -> None:
    src = BRANDING_SMALI / "MusicDiagLog.smali"
    if not src.is_file():
        raise SystemExit(f"Missing compiled smali: {src} — run compile-music-sync-java.sh")
    UTILS_DIR.mkdir(parents=True, exist_ok=True)
    dest = UTILS_DIR / "MusicDiagLog.smali"
    shutil.copy2(src, dest)
    print(f"installed train/utils/{dest.name}")


def patch_crash_application(text: str) -> str:
    marker = "    invoke-super {p0}, Landroid/app/Application;->onCreate()V\n"
    hook = "    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->init(Landroid/content/Context;)V\n\n"
    if "MusicDiagLog;->init" in text:
        print("CrashApplication.onCreate: diag init already applied")
        return text
    if marker not in text:
        raise RuntimeError("CrashApplication.onCreate marker not found")
    print("CrashApplication.onCreate: init MusicDiagLog")
    return text.replace(marker, marker + hook, 1)


def patch_crash_handler(text: str) -> str:
    marker = (
        "    invoke-static {v4}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V\n"
    )
    hook = (
        "    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;"
        "->recordCrash(Ljava/lang/Throwable;)V\n\n"
    )
    if "MusicDiagLog;->recordCrash" in text:
        print("AndroidCrashHandler.handleException: crash log hook already applied")
        return text
    if marker not in text:
        raise RuntimeError("AndroidCrashHandler.handleException marker not found")
    print("AndroidCrashHandler.handleException: record crash to diag file")
    return text.replace(marker, marker + hook, 1)


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    install_smali()
    CRASH_APP.write_text(patch_crash_application(CRASH_APP.read_text(encoding="utf-8")), encoding="utf-8")
    CRASH_HANDLER.write_text(
        patch_crash_handler(CRASH_HANDLER.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    print("Diagnostic logging patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
