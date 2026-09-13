#!/usr/bin/env python3
"""Ramp up/down settings in seconds (0-3 s), not milliseconds."""

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

RAMP_PICKER_MAX = 3
RAMP_PICKER_STEP = 1
RAMP_UNIT = "s"

INPUT_RAMP_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog$2.smali"
OUTPUT_RAMP_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog$3.smali"
COMMAND_UTIL = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils/CommandUtil.smali"
PROTOCOL_CONTROLLER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/ble/ProtocolController.smali"
EDIT_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog.smali"

PICKER_SECONDS = f"""    const/4 v1, 0x0

    const/4 v2, 0x{RAMP_PICKER_MAX}

    const/4 v3, 0x{RAMP_PICKER_STEP}

    const-string v4, "{RAMP_UNIT}\""""

# UI stores seconds (0-3); device expects legacy units (~100 per second).
RAMP_SCALED_INPUT = """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    mul-int/lit8 v5, v5, 0x64

    const/16 v6, 0xff

    if-le v5, v6, :cond_ramp_in_cap

    move v5, v6

    :cond_ramp_in_cap
    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    mul-int/lit8 v5, v5, 0x64

    const/16 v6, 0xff

    if-le v5, v6, :cond_ramp_out_cap

    move v5, v6

    :cond_ramp_out_cap
    int-to-byte v5, v5"""

RAMP_SCALED_PROTO = """    mul-int/lit8 v1, p7, 0x64

    const/16 v3, 0xff

    if-le v1, v3, :cond_proto_ramp_in_cap

    move v1, v3

    :cond_proto_ramp_in_cap
    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    mul-int/lit8 v1, p8, 0x64

    const/16 v3, 0xff

    if-le v1, v3, :cond_proto_ramp_out_cap

    move v1, v3

    :cond_proto_ramp_out_cap
    int-to-byte v1, v1

    const/16 v3, 0x8

    aput-byte v1, v0, v3"""

RAMP_DIRECT_INPUT = """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    int-to-byte v5, v5"""

RAMP_DIRECT_PROTO = """    int-to-byte v1, p7

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    int-to-byte v1, p8

    const/16 v3, 0x8

    aput-byte v1, v0, v3"""

PRECHECK_SECONDS = """    .local v3, "value2":I
    if-ltz v2, :cond_1b

    if-ltz v3, :cond_1b

    const/4 v4, 0x3

    if-gt v2, v4, :cond_1b

    if-gt v3, v4, :cond_1b

    add-int v4, v2, v3

    if-le v4, v1, :cond_10"""


def replace_once(path: Path, old: str, new: str, label: str) -> bool:
    text = path.read_text(encoding="utf-8")
    if new in text:
        return False
    if old not in text:
        raise SystemExit(f"{label}: expected block not found in {path}")
    path.write_text(text.replace(old, new, 1), encoding="utf-8")
    return True


def patch_ramp_picker(path: Path, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    if f'const-string v4, "{RAMP_UNIT}"' in text and "const/4 v2, 0x3" in text:
        return

    candidates = [
        (
            "    const/4 v1, 0x0\n\n"
            "    const/16 v2, 0xbb8\n\n"
            "    const/16 v3, 0xa\n\n"
            '    const-string v4, "ms"\n',
        ),
        (
            "    const/4 v1, 0x0\n\n"
            "    const/16 v2, 0x64\n\n"
            "    const/16 v3, 0xa\n\n"
            '    const-string v4, "ms"\n',
        ),
        (
            "    const/4 v1, 0x0\n\n"
            "    const/16 v2, 0x64\n\n"
            "    const/16 v3, 0xa\n\n"
            '    const-string v4, "ms"\n',
        ),
    ]
    for (old,) in candidates:
        if old in text:
            text = text.replace(old, PICKER_SECONDS + "\n", 1)
            path.write_text(text, encoding="utf-8")
            return
    raise SystemExit(f"{label}: picker block not found in {path}")


def patch_command_util() -> None:
    text = COMMAND_UTIL.read_text(encoding="utf-8")
    if RAMP_SCALED_INPUT in text:
        return

    ms_encoded = """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    add-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0xa

    const/16 v6, 0xff

    if-le v5, v6, :cond_ramp_in_cap

    move v5, v6

    :cond_ramp_in_cap
    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    add-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0xa

    const/16 v6, 0xff

    if-le v5, v6, :cond_ramp_out_cap

    move v5, v6

    :cond_ramp_out_cap
    int-to-byte v5, v5"""

    for old in (RAMP_DIRECT_INPUT, ms_encoded):
        if old in text:
            text = text.replace(old, RAMP_SCALED_INPUT, 1)
            COMMAND_UTIL.write_text(text, encoding="utf-8")
            return

    raw = """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    int-to-byte v5, v5"""

    if raw in text:
        text = text.replace(raw, RAMP_SCALED_INPUT, 1)
        COMMAND_UTIL.write_text(text, encoding="utf-8")
        return
    raise SystemExit("CommandUtil ramp encoding block not found")


def patch_protocol_controller() -> None:
    text = PROTOCOL_CONTROLLER.read_text(encoding="utf-8")
    if RAMP_SCALED_PROTO in text:
        return

    ms_encoded = """    add-int/lit8 v1, p7, 0x9

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

    for old in (RAMP_DIRECT_PROTO, ms_encoded):
        if old in text:
            text = text.replace(old, RAMP_SCALED_PROTO, 1)
            PROTOCOL_CONTROLLER.write_text(text, encoding="utf-8")
            return

    raw = """    .line 138
    int-to-byte v1, p7

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    int-to-byte v1, p8

    const/16 v3, 0x8

    aput-byte v1, v0, v3"""

    if raw in text:
        text = text.replace(raw, RAMP_SCALED_PROTO, 1)
        PROTOCOL_CONTROLLER.write_text(text, encoding="utf-8")
        return
    raise SystemExit("ProtocolController ramp encoding block not found")


def patch_precheck_seconds() -> None:
    text = EDIT_DIALOG.read_text(encoding="utf-8")
    if PRECHECK_SECONDS in text:
        return

    ms_max = """    .local v3, "value2":I
    if-ltz v2, :cond_1b

    if-ltz v3, :cond_1b

    const/16 v4, 0xbb8

    if-gt v2, v4, :cond_1b

    if-gt v3, v4, :cond_1b

    add-int v4, v2, v3

    mul-int/lit16 v5, v1, 0x3e8

    if-le v4, v5, :cond_10"""

    original = """    .local v3, "value2":I
    if-ltz v2, :cond_1b

    if-ltz v3, :cond_1b

    add-int v4, v2, v3

    mul-int/lit16 v5, v1, 0x3e8

    if-le v4, v5, :cond_10"""

    if ms_max in text:
        text = text.replace(ms_max, PRECHECK_SECONDS, 1)
    elif original in text:
        text = text.replace(original, PRECHECK_SECONDS, 1)
    else:
        raise SystemExit("EditUserProgramDataDialog preCheck block not found")
    EDIT_DIALOG.write_text(text, encoding="utf-8")


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
    patch_precheck_seconds()

    bg_replacements = {
        "inputoutputramperror": "Нарастването и спадът заедно трябва да са по-малки от импулса (сек)",
        "inputramperror": "Нарастването: 0–3 s",
        "outputramperror": "Спадът: 0–3 s",
    }
    en_replacements = {
        "inputoutputramperror": "The sum of input ramp and output ramp must be less than the pulse duration (seconds)",
        "inputramperror": "Input ramp must be between 0 and 3 seconds",
        "outputramperror": "Output ramp must be between 0 and 3 seconds",
    }
    default_replacements = {
        "inputoutputramperror": "inputramp和outputramp之和必须小于脉冲持续（秒）",
        "inputramperror": "inputramp必须在0到3秒之间",
        "outputramperror": "outputramp必须在0到3秒之间",
    }

    patch_strings(VALUES_BG, bg_replacements)
    patch_strings(VALUES_EN, en_replacements)
    patch_strings(VALUES_DEFAULT, default_replacements)

    print("Applied ramp limit patches (0-3 seconds, scaled x100 for device)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
