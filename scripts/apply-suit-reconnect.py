#!/usr/bin/env python3
"""The suit's Bluetooth link drops during a training → the row waits for it and binds it again.

  TrainItemManager.disConnected(mac)  start: wearable/SuitReconnect.lost(this, mac) → true = handled (the
                                       stock close, which emptied the row, is skipped)
  TrainItem.xemsHold()                 new: stop, close the receiver, connected = false, redraw (keeps the
                                       train record, the device and all settings)
  TrainItem.xemsRebind(BleDevice)      new: device + new CommandSender/CommandReceiver (as init() does, without
                                       its reset), connected = true, stop sent, redraw
  TrainViewHolder.updateUI             end: SuitReconnect.mark(item, row) — the row's banner
Runs after apply-double-impulse.py (BETA_MUSIC: needs the wearable smali).
"""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
APP = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
SR = "Lcom/isaigu/gymapp/wearable/SuitReconnect;"
TI = "Lcom/isaigu/gymapp/train/model/TrainItem;"
TIM = "Lcom/isaigu/gymapp/train/TrainItemManager;"
TVH = "Lcom/isaigu/gymapp/train/TrainViewHolder;"
W = "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;"
DEV = "Lcom/clj/fastble/data/BleDevice;"
CS = "Lcom/isaigu/gymapp/train/model/CommandSender;"
CR = "Lcom/isaigu/gymapp/train/model/CommandReceiver;"
LIS = "Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;"
BIND = "Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;"
MARK = "xems_suit_reconnect"


def span(text: str, sig: str) -> tuple[int, int]:
    a = text.find(sig)
    if a < 0:
        sys.exit(f"apply-suit-reconnect: {sig} not found")
    return a, text.find(".end method", a) + len(".end method")


def patch_manager() -> None:
    f = APP / "train" / "TrainItemManager.smali"
    text = f.read_text(encoding="utf-8")
    if SR in text:
        print("TrainItemManager: already waits for a lost suit")
        return
    a, b = span(text, ".method public disConnected(Ljava/lang/String;)V")
    body = text[a:b]
    loc = body.find(".param") if ".param" in body else body.find(".locals")
    eol = body.find("\n", loc) + 1
    add = (
        f"\n    invoke-static {{p0, p1}}, {SR}->lost({TIM}Ljava/lang/String;)Z\n\n"
        "    move-result v0\n\n"
        f"    if-eqz v0, :cond_{MARK}\n\n"
        "    return-void\n\n"
        f"    :cond_{MARK}\n"
    )
    body = body[:eol] + add + body[eol:]
    f.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("TrainItemManager.disConnected: a lost suit is waited for (SuitReconnect)")


def patch_item() -> None:
    f = APP / "train" / "model" / "TrainItem.smali"
    text = f.read_text(encoding="utf-8")
    if "xemsHold()V" in text:
        print("TrainItem: xemsHold/xemsRebind already there")
        return
    for need in (f"receiver:{CR}", f"commandListener:{LIS}", f"device:{DEV}", f"sender:{CS}",
                 ".method private onTrainItemChange()V"):
        if need not in text:
            sys.exit(f"apply-suit-reconnect: TrainItem has no {need}")
    methods = f"""
.method public xemsHold()V
    .locals 2

    iget-object v0, p0, {TI}->data:{W}

    iget-boolean v0, v0, {W}->connected:Z

    if-nez v0, :cond_{MARK}

    return-void

    :cond_{MARK}
    invoke-virtual {{p0}}, {TI}->stop()V

    iget-object v0, p0, {TI}->receiver:{CR}

    invoke-virtual {{v0}}, {CR}->close()V

    iget-object v0, p0, {TI}->data:{W}

    const/4 v1, 0x0

    iput-boolean v1, v0, {W}->connected:Z

    invoke-direct {{p0}}, {TI}->onTrainItemChange()V

    return-void
.end method

.method public xemsRebind({DEV})V
    .locals 4

    iput-object p1, p0, {TI}->device:{DEV}

    new-instance v0, {CS}

    invoke-direct {{v0, p1}}, {CS}-><init>({DEV})V

    iput-object v0, p0, {TI}->sender:{CS}

    new-instance v1, {CR}

    iget-object v2, p0, {TI}->commandListener:{LIS}

    invoke-direct {{v1, p1, v0, v2}}, {CR}-><init>({DEV}{CS}{LIS})V

    iput-object v1, p0, {TI}->receiver:{CR}

    iget-object v2, p0, {TI}->data:{W}

    const/4 v3, 0x1

    iput-boolean v3, v2, {W}->connected:Z

    invoke-virtual {{v0}}, {CS}->sendStop()V

    invoke-direct {{p0}}, {TI}->onTrainItemChange()V

    return-void
.end method
"""
    f.write_text(text.rstrip("\n") + "\n" + methods, encoding="utf-8")
    print("TrainItem: xemsHold / xemsRebind added")


def patch_holder() -> None:
    f = APP / "train" / "TrainViewHolder.smali"
    text = f.read_text(encoding="utf-8")
    if SR in text:
        print("TrainViewHolder: banner already hooked")
        return
    a, b = span(text, ".method private updateUI()V")
    body = text[a:b]
    if body.count("    return-void\n") != 1:
        sys.exit("apply-suit-reconnect: TrainViewHolder.updateUI has not exactly one return-void")
    add = (
        f"    iget-object v0, p0, {TVH}->binding:{BIND}\n\n"
        f"    invoke-virtual {{v0}}, {BIND}->getRoot()Landroid/widget/LinearLayout;\n\n"
        "    move-result-object v0\n\n"
        f"    iget-object v1, p0, {TVH}->item:{TI}\n\n"
        f"    invoke-static {{v1, v0}}, {SR}->mark({TI}Landroid/view/View;)V\n\n"
    )
    body = body.replace("    return-void\n", add + "    return-void\n", 1)
    f.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("TrainViewHolder.updateUI: the lost-suit banner")


def main() -> None:
    if not (APP / "wearable" / "SuitReconnect.smali").is_file():
        print("apply-suit-reconnect: SuitReconnect not installed (BETA_MUSIC=0) — skipped")
        return
    patch_manager()
    patch_item()
    patch_holder()


if __name__ == "__main__":
    main()
