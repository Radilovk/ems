#!/usr/bin/env python3
"""Minimize Bluetooth command queue latency — write immediately after each ACK."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
COMMAND_SENDER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/CommandSender.smali"
COMMAND_RECEIVER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/CommandReceiver.smali"

POST_WRITE_IMMEDIATE = """    iput-boolean v1, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->writing:Z

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->writeCommend(Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;)V"""

POST_WRITE_DELAYED_RE = re.compile(
    r"    iput-boolean v1, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->writing:Z\n\n"
    r"    \.line 85\n"
    r"    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandSender;->handler:Landroid/os/Handler;\n\n"
    r"    new-instance v2, Lcom/isaigu/gymapp/train/model/-\$\$Lambda\$CommandSender\$RihoiG4MsHHeMDH04A0cwm0tV0E;\n\n"
    r"    invoke-direct \{v2, p0, v0\}, Lcom/isaigu/gymapp/train/model/-\$\$Lambda\$CommandSender\$RihoiG4MsHHeMDH04A0cwm0tV0E;-><init>\("
    r"Lcom/isaigu/gymapp/train/model/CommandSender;Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;\)V\n\n"
    r"    const/16 v3, -0xe\n\n"
    r"    invoke-virtual \{v0\}, Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;->getCommend\(\)B\n\n"
    r"    move-result v4\n\n"
    r"    if-ne v3, v4, :cond_2\n\n"
    r"    const-wide/16 v3, 0x[0-9a-f]+\n\n"
    r"    goto :goto_0\n\n"
    r"    :cond_2\n"
    r"    const-wide/16 v3, 0x[0-9a-f]+\n\n"
    r"    :goto_0\n"
    r"    invoke-virtual \{v1, v2, v3, v4\}, Landroid/os/Handler;->postDelayed\(Ljava/lang/Runnable;J\)Z",
    re.MULTILINE,
)

RECEIVER_NOTIFY_RE = re.compile(
    r"    const-wide/16 v2, 0x[0-9a-f]+\n\n"
    r"    invoke-virtual \{v0, v1, v2, v3\}, Landroid/os/Handler;->postDelayed\(Ljava/lang/Runnable;J\)Z\n\n"
    r"    \.line 28\n"
    r"    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->handler:Landroid/os/Handler;\n\n"
    r"    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->batteryRunnable:Ljava/lang/Runnable;\n\n"
    r"    const-wide/16 v2, 0x[0-9a-f]+",
    re.MULTILINE,
)

RECEIVER_NOTIFY_IMMEDIATE = """    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver;->batteryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0"""


def patch_command_sender() -> None:
    text = COMMAND_SENDER.read_text(encoding="utf-8")
    if POST_WRITE_IMMEDIATE in text:
        print("CommandSender.postWrite: already immediate (no inter-command delay)")
        return
    match = POST_WRITE_DELAYED_RE.search(text)
    if not match:
        raise RuntimeError("CommandSender.postWrite delay block not found")
    text = POST_WRITE_DELAYED_RE.sub(POST_WRITE_IMMEDIATE, text, count=1)
    COMMAND_SENDER.write_text(text, encoding="utf-8")
    print("CommandSender.postWrite: removed Handler delays, write on ACK immediately")


def patch_command_receiver() -> None:
    text = COMMAND_RECEIVER.read_text(encoding="utf-8")
    if RECEIVER_NOTIFY_IMMEDIATE in text:
        print("CommandReceiver: connect setup delays already minimal")
        return
    match = RECEIVER_NOTIFY_RE.search(text)
    if not match:
        raise RuntimeError("CommandReceiver connect delay block not found")
    text = RECEIVER_NOTIFY_RE.sub(RECEIVER_NOTIFY_IMMEDIATE, text, count=1)
    COMMAND_RECEIVER.write_text(text, encoding="utf-8")
    print("CommandReceiver: notify + first battery poll scheduled immediately")


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    patch_command_sender()
    patch_command_receiver()
    print("Bluetooth minimum-latency patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
