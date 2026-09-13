#!/usr/bin/env python3
"""Revert multi-interval active pause (caused login/training instability)."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
LAYOUT = DECOMPILED / "res/layout/edit_parameter_dialog.xml"
HELPER = DIALOG_DIR / "ActivePauseSettingsHelper.smali"
ENTRY = DIALOG_DIR / "ActivePauseEntry.smali"
STORAGE = DIALOG_DIR / "ActivePauseStorage.smali"

SEGMENT_FILES = (
    DIALOG_DIR / "ActivePauseSegment.smali",
    DIALOG_DIR / "ActivePauseSegmentRunner.smali",
    DIALOG_DIR / "ActivePauseSegmentsHelper.smali",
    DIALOG_DIR / "ActivePauseSegmentsHelper$1.smali",
    DIALOG_DIR / "ActivePauseSegmentsHelper$2.smali",
)

EXTRA_UI_START = '                    <LinearLayout android:orientation="vertical" android:id="@id/pauseSegment2Panel"'
EXTRA_UI_END = '                    <Button android:textSize="16.0sp" android:textColor="@color/text_primary" android:id="@id/activePauseAddBtn"'

SEND_PULSE_BROKEN = """    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->resolve(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    move-result-object v2

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v4, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x64

    move v8, v3

    if-gez v8, :cond_2

    const/4 v8, 0x0

    :cond_2
    const/16 v3, 0x96

    if-le v8, v3, :cond_3

    const/16 v8, 0x96

    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget v7, v2, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I"""

SEND_PULSE_FIXED = """    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_4

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x64

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    const/16 v3, 0x96

    if-le v2, v3, :cond_3

    const/16 v2, 0x96

    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget v7, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I"""


def remove_segment_files() -> None:
    for path in SEGMENT_FILES:
        if path.exists():
            path.unlink()


def patch_entry(text: str) -> str:
    if "segments:Ljava/util/ArrayList;" not in text:
        return text
    import re

    return re.sub(
        r"\n\.field public segments:Ljava/util/ArrayList;.*?\.end field\n",
        "\n",
        text,
        count=1,
        flags=re.DOTALL,
    )


def patch_storage(text: str) -> str:
    if "getSegments" not in text:
        return text
    import re

    text = re.sub(
        r"\n\.method public static getSegments\(.*?\n\.end method\n",
        "\n",
        text,
        count=1,
        flags=re.DOTALL,
    )
    text = re.sub(
        r"\n\.method public static storeSegments\(.*?\n\.end method\n",
        "\n",
        text,
        count=1,
        flags=re.DOTALL,
    )
    old = """    iget-object v0, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_sync0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_sync0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;

    iget v3, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseHz:I

    iput v3, v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseHz:I

    iget v3, v2, Lcom/isaigu/gymapp/dialog/ActivePauseEntry;->pauseStrenthPercent:I

    iput v3, v0, Lcom/isaigu/gymapp/dialog/ActivePauseSegment;->pauseStrenthPercent:I

    :cond_sync0
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->saveEntries(Ljava/util/List;)V"""
    new = """    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->saveEntries(Ljava/util/List;)V"""
    if old in text:
        text = text.replace(old, new, 1)
    return text


def patch_layout(xml: str) -> str:
    if "pauseSegment2Panel" not in xml:
        return xml
    start = xml.find(EXTRA_UI_START)
    if start < 0:
        return xml
    end = xml.find(EXTRA_UI_END, start)
    if end < 0:
        return xml
    end = xml.find("/>\n", end) + 3
    return xml[:start] + xml[end:]


def patch_helper(text: str) -> str:
    text = text.replace(
        "\n    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V\n",
        "\n",
    )
    old = """    :cond_hz_done
    sget-object v1, Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->roots:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_seg_refresh

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentsHelper;->refresh(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V

    :cond_seg_refresh
    return-void
.end method"""
    new = """    :cond_hz_done
    return-void
.end method"""
    if old in text:
        text = text.replace(old, new, 1)
    return text


def patch_train_item(text: str) -> str:
    if "ActivePauseSegmentRunner" in text:
        if SEND_PULSE_BROKEN in text:
            text = text.replace(SEND_PULSE_BROKEN, SEND_PULSE_FIXED, 1)
        elif SEND_PULSE_FIXED not in text.split(":cond_4")[0]:
            raise RuntimeError("TrainItem sendPulse segment patch marker not found")
    text = text.replace(
        "\n    invoke-static {}, Lcom/isaigu/gymapp/dialog/ActivePauseSegmentRunner;->reset()V\n",
        "\n",
    )
    # Fix corrupted invoke range if move v8,v2 left object in v8
    text = text.replace(
        "    move-object v4, v1\n\n    move v8, v2\n\n    invoke-virtual/range {v3 .. v8}",
        "    move-object v4, v1\n\n    move v8, v2\n\n    invoke-virtual/range {v3 .. v8}",
    )
    broken_tail = """    move-object v4, v1

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V"""
    fixed_tail = """    move-object v4, v1

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V"""
    # After SEND_PULSE_FIXED, v2 is scaled strength, v8 should be v2 for sendActivePause last arg
    if broken_tail in text and "move v8, v2" in text.split("sendActivePause")[0].split("move v8, v3")[-1]:
        pass  # already handled by SEND_PULSE_FIXED block
    return text


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing", file=sys.stderr)
        return 1

    remove_segment_files()

    ENTRY.write_text(patch_entry(ENTRY.read_text(encoding="utf-8")), encoding="utf-8")
    STORAGE.write_text(patch_storage(STORAGE.read_text(encoding="utf-8")), encoding="utf-8")
    LAYOUT.write_text(patch_layout(LAYOUT.read_text(encoding="utf-8")), encoding="utf-8")
    HELPER.write_text(patch_helper(HELPER.read_text(encoding="utf-8")), encoding="utf-8")
    TRAIN_ITEM.write_text(patch_train_item(TRAIN_ITEM.read_text(encoding="utf-8")), encoding="utf-8")

    print("Reverted multi-interval active pause (single profile restored)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
