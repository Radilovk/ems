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
USER_ROW_LAYOUT = DECOMPILED / "res/layout/new_user_train_control_item_layout.xml"


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

    user_row = USER_ROW_LAYOUT.read_text(encoding="utf-8") if USER_ROW_LAYOUT.is_file() else ""
    if "@id/trainAddParticipantWrap" not in user_row:
        fail("new_user_train_control_item_layout.xml missing trainAddParticipantWrap overlay")
    if user_row.lstrip().startswith("<RelativeLayout"):
        fail("user row layout root must stay LinearLayout for ViewBinding")

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

    adapter = TRAIN / "TrainAdapter.smali"
    if adapter.is_file():
        ad_text = adapter.read_text(encoding="utf-8")
        if "updateAddParticipantButton(Z)V" not in ad_text:
            fail("TrainAdapter missing last-row add-user visibility patch")
        if "shouldShowAddFooter()Z" in ad_text:
            fail("TrainAdapter still uses footer add-user row")

    vh = TRAIN / "TrainViewHolder.smali"
    if vh.is_file():
        vh_text = vh.read_text(encoding="utf-8")
        if "isFooter:Z" in vh_text or "bindFooterAddListener" in vh_text:
            fail("TrainViewHolder still has footer-row wiring")
        if "if-eqz v0, :cond_footer_done" in vh_text or "if-nez v0, :cond_footer_done" in vh_text:
            fail("TrainViewHolder still has isFooter bind guard (breaks user data bind)")
        if "initAddParticipantButton()V" not in vh_text:
            fail("TrainViewHolder missing row add-user overlay wiring")

    footer = DECOMPILED / "res/layout/train_add_participant_footer.xml"
    if footer.is_file():
        fail("train_add_participant_footer.xml must not exist (use row overlay instead)")

    print("Login path smali/layout checks passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
