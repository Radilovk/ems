#!/usr/bin/env python3
"""Install interval timer stack smali (helper, presets, block program) into decompiled APK."""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
WIDGET_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/widget"
BRANDING_SMALI = ROOT / "branding/smali"

DIALOG_GLOBS = (
    "IntervalTimerHelper*.smali",
    "TimerPreset*.smali",
    "TimerPresetUiHelper*.smali",
    "BlockProgram*.smali",
    "ProgramSegment.smali",
    "BlockProgramEditor*.smali",
    "ModalInfoHelper*.smali",
)

REQUIRED_DIALOG = (
    "IntervalTimerHelper.smali",
    "IntervalTimerHelper$MasterToggleListener.smali",
    "IntervalTimerHelper$PresetRefreshRunnable.smali",
    "IntervalTimerHelper$ActivateListener.smali",
    "TimerPreset.smali",
    "TimerPresetStorage.smali",
    "TimerPresetUiHelper.smali",
    "TimerPresetUiHelper$PresetSpinnerListener.smali",
    "TimerPresetUiHelper$SavePresetListener.smali",
    "TimerPresetUiHelper$SavePresetNameCallback.smali",
    "TimerPresetUiHelper$RenamePresetListener.smali",
    "TimerPresetUiHelper$RenamePresetNameCallback.smali",
    "TimerPresetUiHelper$DeletePresetListener.smali",
    "TimerPresetUiHelper$DeleteConfirmListener.smali",
    "TimerPresetUiHelper$NameOkListener.smali",
    "TimerPresetUiHelper$NameCallback.smali",
    "BlockProgramRunner.smali",
    "BlockProgramStorage.smali",
    "BlockProgramEditor.smali",
    "ProgramSegment.smali",
)


def install() -> None:
    if not DECOMPILED.is_dir():
        raise SystemExit("build/decompiled missing — run apktool decompile first")
    DIALOG_DIR.mkdir(parents=True, exist_ok=True)
    WIDGET_DIR.mkdir(parents=True, exist_ok=True)
    installed = 0
    for pattern in DIALOG_GLOBS:
        for src in sorted(BRANDING_SMALI.glob(pattern)):
            shutil.copy2(src, DIALOG_DIR / src.name)
            installed += 1
    ring_src = BRANDING_SMALI / "widget" / "TimerRingView.smali"
    if not ring_src.is_file():
        raise SystemExit("Missing branding/smali/widget/TimerRingView.smali")
    shutil.copy2(ring_src, WIDGET_DIR / "TimerRingView.smali")
    installed += 1
    print(f"install-interval-timer-smali: installed {installed} class files")
    verify()


def verify() -> None:
    missing = [name for name in REQUIRED_DIALOG if not (DIALOG_DIR / name).is_file()]
    if missing:
        raise SystemExit(
            "Interval timer stack incomplete — missing dialog smali:\n  "
            + "\n  ".join(missing)
            + "\nRun: bash scripts/compile-interval-timer-java.sh"
        )
    runner = DIALOG_DIR / "BlockProgramRunner.smali"
    if runner.is_file() and "-$$Lambda$BlockProgramRunner" in runner.read_text(encoding="utf-8"):
        raise SystemExit(
            "BlockProgramRunner.smali references lambda classes — rebuild without lambdas"
        )
    inner_count = len(list(DIALOG_DIR.glob("TimerPresetUiHelper$*.smali")))
    if inner_count < 8:
        raise SystemExit(
            f"TimerPresetUiHelper inner classes missing ({inner_count}/8+) — dialog open will crash"
        )


if __name__ == "__main__":
    try:
        install()
    except SystemExit as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        raise
