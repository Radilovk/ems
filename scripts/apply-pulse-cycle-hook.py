#!/usr/bin/env python3
"""The pulse-cycle hook of TrainItem$2.onFinish (an ON phase begins) → AiSession.onPulseCycle, which drives the
AI session, Auto and the maps; also installs the interval timer smali.

Before 1.1.331 this was apply-block-program.py: the hook went to the timer's block program first (removed — the
workouts' maps do blocks, with per-row strength and the limits)."""

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

def _load_timer_smali_installer():
    import importlib.util

    path = ROOT / "scripts" / "install_interval_timer_smali.py"
    spec = importlib.util.spec_from_file_location("install_interval_timer_smali", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def install_smali() -> None:
    _load_timer_smali_installer().install()


def patch_pulse_hook(text: str) -> str:
    hook = (
        "    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;"
        "->onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n"
    )
    if "AiSession;->onPulseCycle" in text:
        print("TrainItem$2.onFinish: pulse-cycle hook already applied")
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
    print("TrainItem$2.onFinish: pulse-cycle hook (AiSession)")
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
    print("apply-pulse-cycle-hook: done")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
