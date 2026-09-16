#!/usr/bin/env python3
"""Reduce safe Bluetooth command queue delays for faster device response."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
COMMAND_SENDER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/CommandSender.smali"
COMMAND_RECEIVER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/CommandReceiver.smali"

# Conservative values: keep a small gap between writes, but much faster than stock.
CMD_DELAY_MS = 0x1e  # 30 ms (was 100 ms)
STOP_DELAY_MS = 0xc8  # 200 ms (was 1000 ms)
NOTIFY_SETUP_DELAY_MS = 0xc8  # 200 ms (was 500 ms)

POST_WRITE_OLD = f"""    if-ne v3, v4, :cond_2

    const-wide/16 v3, 0x3e8

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x64"""

POST_WRITE_NEW = f"""    if-ne v3, v4, :cond_2

    const-wide/16 v3, {STOP_DELAY_MS:#x}

    goto :goto_0

    :cond_2
    const-wide/16 v3, {CMD_DELAY_MS:#x}"""

RECEIVER_NOTIFY_OLD = """    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->batteryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8"""

RECEIVER_NOTIFY_NEW = f"""    const-wide/16 v2, {NOTIFY_SETUP_DELAY_MS:#x}

    invoke-virtual {{v0, v1, v2, v3}}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->batteryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8"""


def patch_command_sender() -> None:
    text = COMMAND_SENDER.read_text(encoding="utf-8")
    if POST_WRITE_NEW in text:
        print("CommandSender.postWrite: delays already patched")
        return
    if POST_WRITE_OLD not in text:
        raise RuntimeError("CommandSender.postWrite delay patch marker not found")
    COMMAND_SENDER.write_text(text.replace(POST_WRITE_OLD, POST_WRITE_NEW, 1), encoding="utf-8")
    print(
        f"CommandSender.postWrite: cmd delay {CMD_DELAY_MS} ms, stop delay {STOP_DELAY_MS} ms"
    )


def patch_command_receiver() -> None:
    text = COMMAND_RECEIVER.read_text(encoding="utf-8")
    if RECEIVER_NOTIFY_NEW in text:
        print("CommandReceiver: notify setup delay already patched")
        return
    if RECEIVER_NOTIFY_OLD not in text:
        raise RuntimeError("CommandReceiver notify setup delay patch marker not found")
    COMMAND_RECEIVER.write_text(text.replace(RECEIVER_NOTIFY_OLD, RECEIVER_NOTIFY_NEW, 1), encoding="utf-8")
    print(f"CommandReceiver: notify setup delay {NOTIFY_SETUP_DELAY_MS} ms (battery poll unchanged)")


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    patch_command_sender()
    patch_command_receiver()
    print("Bluetooth latency patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
