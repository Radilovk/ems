#!/usr/bin/env python3
"""Block program pulse hook (global runner; UI lives in IntervalTimerHelper)."""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
TRAIN_ITEM_2 = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem$2.smali"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
BRANDING_SMALI = ROOT / "branding/smali"

BLOCK_SMALI = (
    "ProgramSegment.smali",
    "BlockProgramRunner.smali",
    "BlockProgramStorage.smali",
    "BlockProgramEditor.smali",
    "BlockProgramEditor$RowHolder.smali",
    "TimerPreset.smali",
    "TimerPresetStorage.smali",
    "TimerPresetUiHelper.smali",
)


def install_smali() -> None:
    DIALOG_DIR.mkdir(parents=True, exist_ok=True)
    for name in BLOCK_SMALI:
        src = BRANDING_SMALI / name
        if src.is_file():
            shutil.copy2(src, DIALOG_DIR / name)
            print(f"installed dialog/{name}")
    for src in sorted(BRANDING_SMALI.glob("BlockProgramEditor$*.smali")):
        shutil.copy2(src, DIALOG_DIR / src.name)
        print(f"installed dialog/{src.name}")
    for src in sorted(BRANDING_SMALI.glob("-$$Lambda$BlockProgramEditor*.smali")):
        shutil.copy2(src, DIALOG_DIR / src.name)
        print(f"installed dialog/{src.name}")
    if not (DIALOG_DIR / "BlockProgramRunner.smali").is_file():
        raise SystemExit("Missing BlockProgramRunner.smali — run compile-interval-timer-java.sh")
    runner_text = (DIALOG_DIR / "BlockProgramRunner.smali").read_text(encoding="utf-8")
    if "-$$Lambda$BlockProgramRunner" in runner_text:
        raise SystemExit(
            "BlockProgramRunner.smali still references lambda classes — "
            "recompile without lambdas (compile-interval-timer-java.sh)"
        )


def patch_pulse_hook(text: str) -> str:
    hook = (
        "    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;"
        "->onPulseCycleComplete(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n"
    )
    old_runner = "SegmentProgramRunner;->onPulsePhaseFinished"
    new_runner = "BlockProgramRunner;->onPulseCycleComplete"
    if new_runner in text:
        print("TrainItem$2.onFinish: block program hook already applied")
        return text
    if old_runner in text:
        text = text.replace(
            "Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->onPulsePhaseFinished",
            "Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->onPulseCycleComplete",
        )
        print("TrainItem$2.onFinish: upgraded segment hook to block program")
        return text
    old = """    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)V"""
    new = """    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

""" + hook + """    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)V"""
    if old not in text:
        raise RuntimeError("TrainItem$2.onFinish hook marker not found")
    print("TrainItem$2.onFinish: block program cycle hook")
    return text.replace(old, new, 1)


def remove_legacy_train_hooks(text: str) -> str:
    removals = (
        "    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->onTrainingStart(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n",
        "    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->onTrainingStop(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n",
        "    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->onTrainingStart(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n",
        "    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->onTrainingStop(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n",
    )
    changed = False
    for snippet in removals:
        if snippet in text:
            text = text.replace(snippet, "", 1)
            changed = True
    if "SegmentProgramStorage;->apply" in text:
        text = text.replace(
            "\n\n    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V",
            "",
        )
        changed = True
    if changed:
        print("TrainItem: removed legacy segment program hooks")
    return text


def main() -> int:
    if not DECOMPILED.is_dir():
        print("ERROR: build/decompiled missing", file=sys.stderr)
        return 1
    install_smali()
    TRAIN_ITEM_2.write_text(patch_pulse_hook(TRAIN_ITEM_2.read_text(encoding="utf-8")), encoding="utf-8")
    TRAIN_ITEM.write_text(remove_legacy_train_hooks(TRAIN_ITEM.read_text(encoding="utf-8")), encoding="utf-8")
    print("apply-block-program: done")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
