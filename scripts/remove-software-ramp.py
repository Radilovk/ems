#!/usr/bin/env python3
"""Remove software ramp hook that blocks sendPulse and causes training freeze on Play."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
UTILS = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"

HELPER = UTILS / "SoftwareRampHelper.smali"
TICK = UTILS / "SoftwareRampHelper$Tick.smali"

RAMP_HOOK = """    .line 135
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/SoftwareRampHelper;->interceptSendPulse(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_ramp_done

    return-void

    :cond_ramp_done
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;"""

SEND_PULSE_START = """    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;"""


def unhook_send_pulse(text: str) -> str:
    if "SoftwareRampHelper;->interceptSendPulse" not in text:
        return text
    if RAMP_HOOK not in text:
        raise SystemExit("TrainItem.sendPulse ramp hook marker not found for removal")
    return text.replace(RAMP_HOOK, SEND_PULSE_START, 1)


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1

    for path in (HELPER, TICK):
        if path.exists():
            path.unlink()

    text = TRAIN_ITEM.read_text(encoding="utf-8")
    text = unhook_send_pulse(text)
    TRAIN_ITEM.write_text(text, encoding="utf-8")

    print("Removed software ramp (sendPulse hook and SoftwareRampHelper)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
