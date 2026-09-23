#!/usr/bin/env python3
"""Apply encode-time 20× arms channel strength reduction (buwei5 / index 4)."""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING_SMALI = ROOT / "branding" / "smali" / "ChannelStrengthScale.smali"
UTILS_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils"
COMMAND_UTIL = UTILS_DIR / "CommandUtil.smali"

HOOK_MARKER = "ChannelStrengthScale;->scaleOutput(IF)F"

ORIGINAL_TAIL = """    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0"""

PATCHED_TAIL = """    mul-float v0, v0, v1

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->scaleOutput(IF)F

    move-result v0

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0"""


def install_smali() -> None:
    if not BRANDING_SMALI.is_file():
        raise SystemExit(
            f"Missing {BRANDING_SMALI} — run scripts/compile-channel-scale-java.sh"
        )
    UTILS_DIR.mkdir(parents=True, exist_ok=True)
    dest = UTILS_DIR / "ChannelStrengthScale.smali"
    shutil.copy2(BRANDING_SMALI, dest)
    print(f"installed train/utils/{dest.name}")


def patch_command_util(text: str) -> str:
    if HOOK_MARKER in text:
        print("CommandUtil.getPartPduValue: arms scale hook already applied")
        return text
    if ORIGINAL_TAIL not in text:
        raise RuntimeError("CommandUtil.getPartPduValue tail not found — base APK changed?")
    text = text.replace(ORIGINAL_TAIL, PATCHED_TAIL, 1)
    print("CommandUtil.getPartPduValue: arms channel scale hook applied")
    return text


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    install_smali()
    if not COMMAND_UTIL.is_file():
        raise SystemExit(f"CommandUtil.smali not found: {COMMAND_UTIL}")
    COMMAND_UTIL.write_text(
        patch_command_util(COMMAND_UTIL.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
