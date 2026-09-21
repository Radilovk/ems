#!/usr/bin/env python3
"""Fail the build if login -> MainFragment -> NewTrainFragment path looks broken."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
TRAIN = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train"
FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment"
LAYOUT = DECOMPILED / "res/layout/new_train_fragment_layout.xml"


def fail(msg: str) -> None:
    print(f"LOGIN PATH CHECK FAILED: {msg}", file=sys.stderr)
    raise SystemExit(1)


def main() -> int:
    if not DECOMPILED.is_dir():
        fail("build/decompiled missing")

    layout = LAYOUT.read_text(encoding="utf-8") if LAYOUT.is_file() else ""
    for view_id in ("allAdd", "allPerson", "allminus", "allStartPause", "allStop"):
        if f'@id/{view_id}' not in layout:
            fail(f"new_train_fragment_layout.xml missing @{view_id} (ViewBinding NPE on login)")

    nf = FRAGMENT / "NewTrainFragment.smali"
    if nf.is_file():
        text = nf.read_text(encoding="utf-8")
        if "TrainAddParticipantHelper" in text:
            fail("NewTrainFragment still references TrainAddParticipantHelper")
        for cls in (
            "MusicPlayerHelper;->attachMasterPanel",
            "IntervalTimerHelper;->attachMasterPanel",
        ):
            if cls in text:
                helper = cls.split(";")[0]
                if not (DIALOG / f"{helper}.smali").is_file():
                    fail(f"{helper}.smali missing but hooked from NewTrainFragment")

    tim = TRAIN / "TrainItemManager.smali"
    if tim.is_file():
        text = tim.read_text(encoding="utf-8")
        if "TrainAddParticipantHelper" in text:
            fail("TrainItemManager references TrainAddParticipantHelper")

    required_dialog = (
        "MusicPlayerHelper.smali",
        "MusicPlayerHelper$MasterOpenListener.smali",
        "IntervalTimerHelper.smali",
        "IntervalTimerHelper$MasterToggleListener.smali",
    )
    for name in required_dialog:
        if not (DIALOG / name).is_file():
            fail(f"missing dialog/{name}")

    print("Login path smali/layout checks passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
