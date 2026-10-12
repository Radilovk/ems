#!/usr/bin/env python3
"""Suit standard XEMS / X-Body per suit, the fourth step of the start picker — only on an unlocked (admin) tablet.

CommandSender.sendCommend start → bodytech/SuitStandard.toSuit(device, cmd, pdu): cmd 1 (the ten channel strengths,
main and second impulse) reordered to the X-Body suit's channels when that suit is set to X-Body.
Both pickers (NewUserProgramDeviceConnectDialogFragment, UserProgramDeviceConnectDialogFragment):
  initView end              → SuitStandard.picker(root): the "Стандарт" column right of the suit column
  updateSelectedDevice start → SuitStandard.device(bean): the column shows that suit's standard
A locked tablet gets no column and always sends XEMS. Runs after apply-bodytech.py (installs SuitStandard).
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
APP = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
CLS = "Lcom/isaigu/gymapp/bodytech/SuitStandard;"
SEND_MARKER = f"{CLS}->toSuit(Lcom/clj/fastble/data/BleDevice;B[B)V"
PICKER_MARKER = f"{CLS}->picker(Landroid/view/View;)V"
DEVICE_MARKER = f"{CLS}->device(Lcom/isaigu/gymapp/bean/DeviceBean;)V"
SENDER = "Lcom/isaigu/gymapp/train/model/CommandSender;"
SEND_HEAD = """.method public sendCommend(B[B)V
    .locals 2
    .param p1, "commend"    # B
    .param p2, "pdu"    # [B
"""


def patch_send() -> None:
    f = APP / "train/model/CommandSender.smali"
    text = f.read_text(encoding="utf-8")
    if SEND_MARKER in text:
        print("CommandSender: suit standard already hooked")
        return
    if text.count(SEND_HEAD) != 1:
        sys.exit("apply-suit-standard: CommandSender.sendCommend head not as expected")
    hook = (f"\n    iget-object v0, p0, {SENDER}->device:Lcom/clj/fastble/data/BleDevice;\n\n"
            f"    invoke-static {{v0, p1, p2}}, {SEND_MARKER}\n")
    f.write_text(text.replace(SEND_HEAD, SEND_HEAD + hook, 1), encoding="utf-8")
    print("CommandSender.sendCommend: → SuitStandard.toSuit")


def patch_picker(name: str) -> None:
    f = APP / "dialog" / f"{name}.smali"
    text = f.read_text(encoding="utf-8")
    if PICKER_MARKER in text:
        print(f"{name}: suit standard column already hooked")
        return
    m = re.search(r"\.method private initView\(Landroid/view/View;\)V\n.*?\n\.end method", text, re.S)
    if not m or m.group(0).count("    return-void\n") != 1:
        sys.exit(f"apply-suit-standard: {name}.initView not as expected")
    body = m.group(0)
    new = body.replace("    return-void\n", f"    invoke-static {{p1}}, {PICKER_MARKER}\n\n    return-void\n", 1)
    text = text.replace(body, new, 1)
    head = re.search(r"(\.method private updateSelectedDevice\(Lcom/isaigu/gymapp/bean/DeviceBean;\)V\n"
                     r"    \.locals \d+\n    \.param p1, \"deviceBean\"    # Lcom/isaigu/gymapp/bean/DeviceBean;\n)", text)
    if not head:
        sys.exit(f"apply-suit-standard: {name}.updateSelectedDevice head not as expected")
    text = text.replace(head.group(1), head.group(1) + f"\n    invoke-static {{p1}}, {DEVICE_MARKER}\n", 1)
    f.write_text(text, encoding="utf-8")
    print(f"{name}: Стандарт column + selected suit hooked")


def main() -> None:
    if not (APP / "bodytech/SuitStandard.smali").is_file():
        sys.exit("apply-suit-standard: SuitStandard.smali not installed (run apply-bodytech.py first)")
    patch_send()
    for name in ("NewUserProgramDeviceConnectDialogFragment", "UserProgramDeviceConnectDialogFragment"):
        patch_picker(name)


if __name__ == "__main__":
    main()
