#!/usr/bin/env python3
"""Apply encode-time arms channel strength reduction (÷5 at 150 µs … ÷10 at 400 µs pulse width) (buwei5 / index 4)."""

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
PW_MARKER = "ChannelStrengthScale;->setPulseWidth(I)V"

# The arms divider follows the program's pulse width: hand it over before the parts PDU is built.
PW_ANCHOR = """    .param p2, "strenth"    # I

    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;"""

PW_PATCHED = """    .param p2, "strenth"    # I

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->setPulseWidth(I)V

    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;"""

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


TRAIN_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train"
VIEW_HOLDER = TRAIN_DIR / "TrainViewHolder.smali"
BAR_LISTENER = TRAIN_DIR / "TrainViewHolder$5.smali"
SHOWN_MARKER = "ChannelStrengthScale;->shown(III)F"
STORED_MARKER = "ChannelStrengthScale;->stored(IFI)I"

# updateUI: the channel slider and its % show the value with the pulse-width balance applied.
BAR_OLD = """    int-to-float v6, v2

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V"""
BAR_NEW = """    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v1, v2, v6}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->shown(III)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V"""
TEXT_OLD = """    int-to-float v9, v2

    const/high16 v10, 0x42c80000    # 100.0f"""
TEXT_NEW = """    iget v9, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v1, v2, v9}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->shown(III)F

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f"""
# drag end: the shown value goes back to the value kept at the reference width.
DRAG_OLD = """    iget v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->val$index:I

    float-to-int v3, p2

    aput v3, v1, v2"""
DRAG_NEW = """    iget v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->val$index:I

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    invoke-static {v2, p2, v3}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->stored(IFI)I

    move-result v3

    aput v3, v1, v2"""


def patch_sliders() -> None:
    vh = VIEW_HOLDER.read_text(encoding="utf-8")
    if SHOWN_MARKER not in vh:
        for old, new, what in ((BAR_OLD, BAR_NEW, "bar"), (TEXT_OLD, TEXT_NEW, "text")):
            if vh.count(old) != 1:
                raise RuntimeError(f"TrainViewHolder.updateUI channel {what} anchor not found once — base changed?")
            vh = vh.replace(old, new, 1)
        VIEW_HOLDER.write_text(vh, encoding="utf-8")
        print("TrainViewHolder.updateUI: channel sliders show the pulse-width balance")
    bl = BAR_LISTENER.read_text(encoding="utf-8")
    if STORED_MARKER not in bl:
        if bl.count(DRAG_OLD) != 1:
            raise RuntimeError("TrainViewHolder$5.onStopTrackingTouch anchor not found — base changed?")
        BAR_LISTENER.write_text(bl.replace(DRAG_OLD, DRAG_NEW, 1), encoding="utf-8")
        print("TrainViewHolder$5: dragged channel value mapped back through the balance")


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
    if PW_MARKER not in text:
        if PW_ANCHOR not in text:
            raise RuntimeError("CommandUtil.getPartsParamsPduWithStrength head not found — base APK changed?")
        text = text.replace(PW_ANCHOR, PW_PATCHED, 1)
        print("CommandUtil.getPartsParamsPduWithStrength: pulse width → ChannelStrengthScale")
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
    patch_sliders()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
