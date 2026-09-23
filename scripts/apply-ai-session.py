#!/usr/bin/env python3
"""XEMS Smart Session ("AI" button): install ai smali, hook device cycles, route ramp bytes.

- branding/smali/ai → smali_classes2/com/isaigu/gymapp/ai
- TrainItem$2.onFinish (ON phase starts): AiSession.onPulseCycle(item), next to BlockProgramRunner
- CommandUtil / ProtocolController ramp bytes: AiRamp.inputByte()/outputByte() instead of the
  constant 0 written by remove-ramp.py (AiRamp returns 0 unless a Smart Session runs).
Sidebar button and HR feed are wired from WearableSyncHelper / NotifyWearableBridge (Java).
"""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
SRC_SMALI = ROOT / "branding" / "smali" / "ai"
DEST = DECOMPILED / "smali_classes2/com/isaigu/gymapp/ai"
TRAIN_ITEM_2 = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem$2.smali"
COMMAND_UTIL = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils/CommandUtil.smali"
PROTOCOL_CONTROLLER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/ble/ProtocolController.smali"

BLOCK_HOOK = (
    "    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;"
    "->onPulseCycleComplete(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n"
)
AI_HOOK = (
    "\n    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem$2;"
    "->this$0:Lcom/isaigu/gymapp/train/model/TrainItem;\n\n"
    "    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;"
    "->onPulseCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n"
)

RAMP_ZERO_COMMAND = """    const/4 v4, 0x7

    const/4 v5, 0x0

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    const/4 v5, 0x0

    aput-byte v5, v0, v4"""

RAMP_AI_COMMAND = """    const/4 v4, 0x7

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByte()I

    move-result v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByte()I

    move-result v5

    aput-byte v5, v0, v4"""

RAMP_ZERO_PROTO = """    const/4 v1, 0x0

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    const/4 v1, 0x0

    const/16 v3, 0x8

    aput-byte v1, v0, v3"""

RAMP_AI_PROTO = """    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByte()I

    move-result v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByte()I

    move-result v1

    const/16 v3, 0x8

    aput-byte v1, v0, v3"""


def install_smali() -> None:
    if not SRC_SMALI.is_dir():
        raise SystemExit(f"missing {SRC_SMALI} — run scripts/compile-ai-java.sh")
    if DEST.exists():
        shutil.rmtree(DEST)
    shutil.copytree(SRC_SMALI, DEST)
    print(f"installed {sum(1 for _ in DEST.rglob('*.smali'))} ai smali files")


def patch_cycle_hook() -> None:
    text = TRAIN_ITEM_2.read_text(encoding="utf-8")
    if "AiSession;->onPulseCycle" in text:
        print("TrainItem$2: AI cycle hook already present")
        return
    if BLOCK_HOOK not in text:
        raise SystemExit("TrainItem$2: BlockProgramRunner hook not found (run apply-block-program.py first)")
    text = text.replace(BLOCK_HOOK, BLOCK_HOOK + AI_HOOK, 1)
    TRAIN_ITEM_2.write_text(text, encoding="utf-8")
    print("TrainItem$2: AI cycle hook added")


def patch_ramp(path: Path, zero: str, ai: str, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    if "AiRamp;->inputByte" in text:
        print(f"{label}: AI ramp already routed")
        return
    if zero not in text:
        raise SystemExit(f"{label}: zero-ramp snippet not found (remove-ramp.py changed?)")
    path.write_text(text.replace(zero, ai, 1), encoding="utf-8")
    print(f"{label}: ramp bytes routed through AiRamp")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh", file=sys.stderr)
        return 1
    install_smali()
    patch_cycle_hook()
    patch_ramp(COMMAND_UTIL, RAMP_ZERO_COMMAND, RAMP_AI_COMMAND, "CommandUtil")
    patch_ramp(PROTOCOL_CONTROLLER, RAMP_ZERO_PROTO, RAMP_AI_PROTO, "ProtocolController")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
