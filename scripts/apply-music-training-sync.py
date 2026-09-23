#!/usr/bin/env python3
"""Music-sync BLE hooks.

- Immediate pause: flush BLE queue on train stop, reorder TrainItem.stop.
- Pacing: CommandSender.isBusy() / TrainItem.isSenderBusy() and a write-complete hook
  into MusicSync so only the latest strength level waits for the suit's queue.
"""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
COMMAND_SENDER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/CommandSender.smali"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
WRITE_CALLBACK = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/CommandSender$1.smali"

CLEAR_PENDING_METHOD = """
.method public clearPendingCommands()V
    .locals 1

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->commandQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method
"""

IS_BUSY_METHOD = """
.method public isBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->writing:Z

    if-nez v0, :cond_busy

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->commandQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_idle

    :cond_busy
    const/4 v0, 0x1

    return v0

    :cond_idle
    const/4 v0, 0x0

    return v0
.end method
"""

IS_SENDER_BUSY_METHOD = """
.method public isSenderBusy()Z
    .locals 1

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    if-eqz v0, :cond_no_sender

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->isBusy()Z

    move-result v0

    return v0

    :cond_no_sender
    const/4 v0, 0x0

    return v0
.end method
"""

POST_WRITE_CALL = (
    "    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;"
    "->access$100(Lcom/isaigu/gymapp/train/model/CommandSender;)V\n"
)
WRITE_COMPLETE_HOOK = (
    "\n    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->onBleWriteComplete()V\n"
)

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


def patch_command_sender_busy(text: str) -> str:
    if "isBusy()Z" in text:
        print("CommandSender: isBusy already present")
        return text
    marker = ".method public sendCommend(B[B)V"
    if marker not in text:
        raise RuntimeError("CommandSender.sendCommend marker not found")
    text = text.replace(marker, IS_BUSY_METHOD + "\n" + marker, 1)
    print("CommandSender: added isBusy()")
    return text


def patch_train_item_busy(text: str) -> str:
    if "isSenderBusy()Z" in text:
        print("TrainItem: isSenderBusy already present")
        return text
    marker = ".method public onParamsChange()V"
    if marker not in text:
        raise RuntimeError("TrainItem.onParamsChange marker not found")
    text = text.replace(marker, IS_SENDER_BUSY_METHOD + "\n" + marker, 1)
    print("TrainItem: added isSenderBusy()")
    return text


def patch_write_callback(text: str) -> str:
    if "MusicSync;->onBleWriteComplete()V" in text:
        print("CommandSender$1: write-complete hook already present")
        return text
    # onWriteSuccess + onWriteFailure: notify after postWrite() started the next command.
    if text.count(POST_WRITE_CALL) != 2:
        raise RuntimeError("CommandSender$1 postWrite calls not found (expected 2)")
    text = text.replace(POST_WRITE_CALL, POST_WRITE_CALL + WRITE_COMPLETE_HOOK)
    print("CommandSender$1: added MusicSync.onBleWriteComplete() hook")
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
        patch_command_sender_busy(
            patch_command_sender(COMMAND_SENDER.read_text(encoding="utf-8"))
        ),
        encoding="utf-8",
    )
    TRAIN_ITEM.write_text(
        patch_train_item_busy(
            patch_train_item_stop(TRAIN_ITEM.read_text(encoding="utf-8"))
        ),
        encoding="utf-8",
    )
    WRITE_CALLBACK.write_text(
        patch_write_callback(WRITE_CALLBACK.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    print("Music training sync BLE patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
