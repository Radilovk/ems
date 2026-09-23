#!/usr/bin/env python3
"""Verify arms channel strength scale hook is present in decompiled smali."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
COMMAND_UTIL = (
    DECOMPILED
    / "smali_classes2/com/isaigu/gymapp/train/utils/CommandUtil.smali"
)
CHANNEL_SCALE = (
    DECOMPILED
    / "smali_classes2/com/isaigu/gymapp/train/utils/ChannelStrengthScale.smali"
)
BRANDING = ROOT / "branding" / "smali" / "ChannelStrengthScale.smali"


def main() -> int:
    errors: list[str] = []

    if not BRANDING.is_file():
        errors.append(f"missing prebuilt smali: {BRANDING}")

    if not CHANNEL_SCALE.is_file():
        errors.append(f"missing installed smali: {CHANNEL_SCALE}")

    if not COMMAND_UTIL.is_file():
        errors.append(f"missing CommandUtil.smali: {COMMAND_UTIL}")
    else:
        text = COMMAND_UTIL.read_text(encoding="utf-8")
        if "ChannelStrengthScale;->scaleOutput(IF)F" not in text:
            errors.append("CommandUtil.getPartPduValue missing ChannelStrengthScale hook")

    if CHANNEL_SCALE.is_file():
        cs = CHANNEL_SCALE.read_text(encoding="utf-8")
        if "scaleOutput(IF)F" not in cs:
            errors.append("ChannelStrengthScale.smali missing scaleOutput method")
        if "0x3d4ccccd" not in cs:
            errors.append("ChannelStrengthScale.smali missing 0.05f scale constant")

    if errors:
        for err in errors:
            print(f"FAIL: {err}", file=sys.stderr)
        return 1

    print("verify-arms-channel-scale: OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
