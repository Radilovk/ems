#!/usr/bin/env python3
"""Allow input/output ramp values up to 3000 ms in program settings."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
VALUES_BG = ROOT / "translations" / "values-bg/strings.xml"
VALUES_DEFAULT = DECOMPILED / "res/values/strings.xml"
VALUES_EN = DECOMPILED / "res/values-en/strings.xml"

RAMP_PICKER_MAX = 3000  # 0xbb8
RAMP_PICKER_STEP = 10

INPUT_RAMP_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog$2.smali"
OUTPUT_RAMP_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog$3.smali"
COMMAND_UTIL = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils/CommandUtil.smali"
PROTOCOL_CONTROLLER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/ble/ProtocolController.smali"
EDIT_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog.smali"

RAMP_ENCODE_INPUT = """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    add-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0xa

    const/16 v6, 0xff

    if-le v5, v6, :cond_ramp_in_cap

    move v5, v6

    :cond_ramp_in_cap
    int-to-byte v5, v5"""

RAMP_ENCODE_OUTPUT = """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    add-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0xa

    const/16 v6, 0xff

    if-le v5, v6, :cond_ramp_out_cap

    move v5, v6

    :cond_ramp_out_cap
    int-to-byte v5, v5"""

PROTO_RAMP_ENCODE = """    add-int/lit8 v1, p7, 0x9

    div-int/lit8 v1, v1, 0xa

    const/16 v3, 0xff

    if-le v1, v3, :cond_proto_ramp_in_cap

    move v1, v3

    :cond_proto_ramp_in_cap
    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    add-int/lit8 v1, p8, 0x9

    div-int/lit8 v1, v1, 0xa

    const/16 v3, 0xff

    if-le v1, v3, :cond_proto_ramp_out_cap

    move v1, v3

    :cond_proto_ramp_out_cap
    int-to-byte v1, v1

    const/16 v3, 0x8

    aput-byte v1, v0, v3"""


def patch_file(path: Path, old: str, new: str, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    if new in text:
        return
    if old not in text:
        raise SystemExit(f"{label}: expected block not found in {path}")
    path.write_text(text.replace(old, new, 1), encoding="utf-8")


def patch_ramp_picker(path: Path, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    marker = "    const/16 v2, 0xbb8\n"
    if marker in text:
        return
    old = (
        "    const/4 v1, 0x0\n\n"
        "    const/16 v2, 0x64\n\n"
        "    const/16 v3, 0xa\n"
    )
    new = (
        "    const/4 v1, 0x0\n\n"
        f"    const/16 v2, 0x{RAMP_PICKER_MAX:x}\n\n"
        f"    const/16 v3, 0x{RAMP_PICKER_STEP:x}\n"
    )
    if old not in text:
        raise SystemExit(f"{label}: picker block not found in {path}")
    path.write_text(text.replace(old, new, 1), encoding="utf-8")


def patch_command_util() -> None:
    patch_file(
        COMMAND_UTIL,
        """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    int-to-byte v5, v5""",
        f"""{RAMP_ENCODE_INPUT}

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

{RAMP_ENCODE_OUTPUT}""",
        "CommandUtil ramp encoding",
    )


def patch_protocol_controller() -> None:
    patch_file(
        PROTOCOL_CONTROLLER,
        """    .line 138
    int-to-byte v1, p7

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    int-to-byte v1, p8

    const/16 v3, 0x8

    aput-byte v1, v0, v3""",
        PROTO_RAMP_ENCODE,
        "ProtocolController ramp encoding",
    )


def patch_precheck_max() -> None:
    text = EDIT_DIALOG.read_text(encoding="utf-8")
    marker = "const/16 v4, 0xbb8"
    if marker in text:
        return
    old = """    .local v3, "value2":I
    if-ltz v2, :cond_1b

    if-ltz v3, :cond_1b

    add-int v4, v2, v3"""
    new = """    .local v3, "value2":I
    if-ltz v2, :cond_1b

    if-ltz v3, :cond_1b

    const/16 v4, 0xbb8

    if-gt v2, v4, :cond_1b

    if-gt v3, v4, :cond_1b

    add-int v4, v2, v3"""
    if old not in text:
        raise SystemExit("EditUserProgramDataDialog preCheck block not found")
    EDIT_DIALOG.write_text(text.replace(old, new, 1), encoding="utf-8")


def patch_strings(path: Path, replacements: dict[str, str]) -> None:
    text = path.read_text(encoding="utf-8")
    changed = False
    for name, value in replacements.items():
        pattern = rf'(<string name="{name}">)(.*?)(</string>)'
        if re.search(pattern, text):
            text, count = re.subn(pattern, rf"\1{value}\3", text, count=1)
            changed = changed or count > 0
    if changed:
        path.write_text(text, encoding="utf-8")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1

    patch_ramp_picker(INPUT_RAMP_DIALOG, "input ramp picker")
    patch_ramp_picker(OUTPUT_RAMP_DIALOG, "output ramp picker")
    patch_command_util()
    patch_protocol_controller()
    patch_precheck_max()

    bg_replacements = {
        "inputramperror": "Нарастването: 0–3000 ms",
        "outputramperror": "Спадът: 0–3000 ms",
    }
    en_replacements = {
        "inputramperror": "inputramp must be between 0 and 3000 ms",
        "outputramperror": "outputramp must be between 0 and 3000 ms",
    }
    default_replacements = {
        "inputramperror": "inputramp必须在0到3000毫秒之间",
        "outputramperror": "outputramp必须在0到3000毫秒之间",
    }

    patch_strings(VALUES_BG, bg_replacements)
    patch_strings(VALUES_EN, en_replacements)
    patch_strings(VALUES_DEFAULT, default_replacements)

    print("Applied ramp limit patches (0-3000 ms)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
