#!/usr/bin/env python3
"""Immediate music-sync pause: flush BLE queue on train stop, reorder TrainItem.stop."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
COMMAND_SENDER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/CommandSender.smali"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"

CLEAR_PENDING_METHOD = """
.method public clearPendingCommands()V
    .locals 1

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->commandQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method
"""

STOP_BLE_BLOCK = """    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->clearPendingCommands()V

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;"""

STOP_BLE_BLOCK_OLD = """    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pulseCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;"""

STOP_TAIL_OLD = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingState()V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V"""

STOP_TAIL_NEW = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingState()V"""


def patch_command_sender(text: str) -> str:
    if "clearPendingCommands()V" in text:
        print("CommandSender: clearPendingCommands already present")
        return text
    marker = ".method public sendCommend(B[B)V"
    if marker not in text:
        raise RuntimeError("CommandSender.sendCommend marker not found")
    text = text.replace(marker, CLEAR_PENDING_METHOD + "\n" + marker, 1)
    print("CommandSender: added clearPendingCommands()")
    return text


def patch_train_item_stop(text: str) -> str:
    if "clearPendingCommands()V" in text and STOP_BLE_BLOCK in text:
        print("TrainItem.stop: music-sync BLE flush already applied")
        return text
    if STOP_BLE_BLOCK_OLD not in text:
        raise RuntimeError("TrainItem.stop BLE block marker not found")
    text = text.replace(STOP_BLE_BLOCK_OLD, STOP_BLE_BLOCK, 1)
    if STOP_TAIL_OLD in text:
        text = text.replace(STOP_TAIL_OLD, STOP_TAIL_NEW, 1)
    print("TrainItem.stop: sync music + flush BLE queue before sendPause/sendStop")
    return text


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    COMMAND_SENDER.write_text(
        patch_command_sender(COMMAND_SENDER.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    TRAIN_ITEM.write_text(
        patch_train_item_stop(TRAIN_ITEM.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    print("Music training sync BLE patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
