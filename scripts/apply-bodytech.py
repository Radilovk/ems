#!/usr/bin/env python3
"""Bodytech suit (EMSFIT 5.1 hardware, service FE50) driven from the stock XEMS training row.

  copies branding/smali/bodytech/*.smali → com/isaigu/gymapp/bodytech/ (BtBridge, BtTranslator, BtProto, BtSettings)
  BleDeviceManager.getConfig   start: BtBridge.config(device) → FE50/FE51 for a bodytech suit (null = stock config)
  BleDeviceManager.write       start: BtBridge.write(device, frame, cb) → true = the XEMS frame was translated and
                               queued (cb fires after the last bodytech frame), false = the stock write goes on
  CommandReceiver.onReceiveData start: BtBridge.reply(device, bytes, listener) → true = a bodytech reply (battery)
  CommandSender.sendDuration / sendActivePause / sendPause  start: BtBridge.phase(device, 1 / 2 / 0)
  TrainItem.reset (stop)      start: BtBridge.reset(device) → all off, strengths 0, the suit programmed afresh
  TrainItem.start             start: BtLoad.hold(item, device) → true = the suit is still being programmed (~3 s):
                               the start waits (no clock, no lost impulse) and goes by itself when the program is in
  TrainViewHolder.updateUI    end: BtLoad.mark(item, row) — "Зареждане на програмата… N %" over a waiting row
  TrainViewHolder$1.onNoDoubleClick (the row's gear) start: BtGear.open(item, view) → true = on a bodytech row the
                               gear first asks "Настройки на програмата" / "Пълни параметри" (BtFull)
  SettingFragment.onCreateView after the Band section: BtSettingsSection.attach(activity, root) — Settings →
                               "Костюм bodytech" (channel → slider map, impulse group, waveform, strength scale)
Doc: docs/xems-bodytech.md. Runs after apply-suit-reconnect.py (everything that rewrites these methods is done).
"""
from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
APP = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
SRC = ROOT / "branding" / "smali" / "bodytech"
BB = "Lcom/isaigu/gymapp/bodytech/BtBridge;"
DEV = "Lcom/clj/fastble/data/BleDevice;"
CB = "Lcom/clj/fastble/callback/BleWriteCallback;"
CFG = "Lcom/isaigu/gymapp/train/ble/BleDeviceConfig;"
LIS = "Lcom/isaigu/gymapp/train/listener/OnReceiveCommandListener;"
CS = "Lcom/isaigu/gymapp/train/model/CommandSender;"
CR = "Lcom/isaigu/gymapp/train/model/CommandReceiver;"
MARK = "xems_bt"


def install_classes() -> None:
    files = sorted(SRC.glob("*.smali"))
    if not files:
        sys.exit("apply-bodytech: branding/smali/bodytech/*.smali missing (run scripts/compile-bodytech-java.sh)")
    dst = APP / "bodytech"
    dst.mkdir(parents=True, exist_ok=True)
    for f in files:
        shutil.copy(f, dst / f.name)
    print(f"bodytech: {len(files)} classes installed")


def insert_at_start(path: Path, sig: str, code: str, tag: str) -> None:
    text = path.read_text(encoding="utf-8")
    a = text.find(sig)
    if a < 0:
        sys.exit(f"apply-bodytech: {sig} not found in {path.name}")
    b = text.find(".end method", a)
    body = text[a:b]
    if f"{MARK}_{tag}" in body:
        print(f"{path.name} {tag}: already hooked")
        return
    lines = body.split("\n")
    i = 1
    in_ann = False
    while i < len(lines):
        s = lines[i].strip()
        if in_ann:
            if s.startswith(".end annotation"):
                in_ann = False
            i += 1
        elif s.startswith(".annotation"):
            in_ann = True
            i += 1
        elif s == "" or s.startswith((".locals", ".registers", ".param", ".end param", ".prologue")):
            i += 1
        else:
            break
    lines[i:i] = [f"    # {MARK}_{tag}", ""] + code.rstrip("\n").split("\n") + [""]
    path.write_text(text[:a] + "\n".join(lines) + text[b:], encoding="utf-8")
    print(f"{path.name} {tag}: hooked")


THEME_HOOK = (
    "    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;"
    "->bindThemeSwitch(Landroid/app/Activity;Landroid/view/View;)V\n"
)
BAND_HOOK = (
    "\n    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;"
    "->attach(Landroid/app/Activity;Landroid/view/View;)V\n"
)
BT_SETTINGS_HOOK = (
    "\n    invoke-static {v1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection;"
    "->attach(Landroid/app/Activity;Landroid/view/View;)V\n"
)


def patch_settings() -> None:
    f = APP / "fragment" / "SettingFragment.smali"
    text = f.read_text(encoding="utf-8")
    if "BtSettingsSection;->attach" in text:
        print("SettingFragment: bodytech section already hooked")
        return
    anchor = THEME_HOOK + BAND_HOOK if (THEME_HOOK + BAND_HOOK) in text else THEME_HOOK
    if anchor not in text:
        sys.exit("apply-bodytech: SettingFragment bindThemeSwitch hook not found (apply-theme-toggle.py changed?)")
    f.write_text(text.replace(anchor, anchor + BT_SETTINGS_HOOK, 1), encoding="utf-8")
    print("SettingFragment: Settings → Костюм bodytech hooked")


LOAD = "Lcom/isaigu/gymapp/bodytech/BtLoad;"
TI = "Lcom/isaigu/gymapp/train/model/TrainItem;"
TVH = "Lcom/isaigu/gymapp/train/TrainViewHolder;"
BIND = "Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;"
SR_MARK = f"->mark({TI}Landroid/view/View;)V\n"


def patch_load_banner() -> None:
    """TrainViewHolder.updateUI: BtLoad.mark(item, row) right after SuitReconnect.mark (or before the return)."""
    f = APP / "train/TrainViewHolder.smali"
    text = f.read_text(encoding="utf-8")
    if f"{LOAD}->mark(" in text:
        print("TrainViewHolder: load banner already hooked")
        return
    a = text.find(".method private updateUI()V")
    if a < 0:
        sys.exit("apply-bodytech: TrainViewHolder.updateUI not found")
    b = text.find(".end method", a)
    body = text[a:b]
    call = f"    invoke-static {{v1, v0}}, {LOAD}->mark({TI}Landroid/view/View;)V\n\n"
    sr = f"    invoke-static {{v1, v0}}, Lcom/isaigu/gymapp/wearable/SuitReconnect;{SR_MARK}"
    if sr in body:
        body = body.replace(sr, sr + "\n" + call, 1)
    else:
        if body.count("    return-void\n") != 1:
            sys.exit("apply-bodytech: TrainViewHolder.updateUI has not exactly one return-void")
        add = (
            f"    iget-object v0, p0, {TVH}->binding:{BIND}\n\n"
            f"    invoke-virtual {{v0}}, {BIND}->getRoot()Landroid/widget/LinearLayout;\n\n"
            "    move-result-object v0\n\n"
            f"    iget-object v1, p0, {TVH}->item:{TI}\n\n" + call
        )
        body = body.replace("    return-void\n", add + "    return-void\n", 1)
    f.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("TrainViewHolder.updateUI: the program-load banner")


def main() -> None:
    install_classes()
    patch_load_banner()
    patch_settings()
    insert_at_start(
        APP / "train/ble/BleDeviceManager.smali",
        ".method private static getConfig(" + DEV + ")" + CFG,
        f"    invoke-static {{p0}}, {BB}->config({DEV}){CFG}\n\n    move-result-object v0\n\n"
        f"    if-eqz v0, :cond_{MARK}_cfg\n\n    return-object v0\n\n    :cond_{MARK}_cfg\n",
        "cfg",
    )
    insert_at_start(
        APP / "train/ble/BleDeviceManager.smali",
        ".method public static write(" + DEV + "[B" + CB + ")V",
        f"    invoke-static {{p0, p1, p2}}, {BB}->write({DEV}[B{CB})Z\n\n    move-result v0\n\n"
        f"    if-eqz v0, :cond_{MARK}_write\n\n    return-void\n\n    :cond_{MARK}_write\n",
        "write",
    )
    insert_at_start(
        APP / "train/model/CommandReceiver.smali",
        ".method private onReceiveData([B)V",
        f"    iget-object v0, p0, {CR}->device:{DEV}\n\n"
        f"    iget-object v1, p0, {CR}->commandListener:{LIS}\n\n"
        f"    invoke-static {{v0, p1, v1}}, {BB}->reply({DEV}[B{LIS})Z\n\n    move-result v0\n\n"
        f"    if-eqz v0, :cond_{MARK}_reply\n\n    return-void\n\n    :cond_{MARK}_reply\n",
        "reply",
    )
    insert_at_start(
        APP / "train/TrainViewHolder$1.smali",
        ".method public onNoDoubleClick(Landroid/view/View;)V",
        "    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;\n\n"
        "    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;\n\n"
        f"    invoke-static {{v0, p1}}, Lcom/isaigu/gymapp/bodytech/BtGear;->open(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)Z\n\n"
        f"    move-result v0\n\n    if-eqz v0, :cond_{MARK}_gear\n\n    return-void\n\n    :cond_{MARK}_gear\n",
        "gear",
    )
    insert_at_start(
        APP / "train/model/TrainItem.smali",
        ".method public reset()V",
        f"    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:{DEV}\n\n"
        f"    invoke-static {{v0}}, {BB}->reset({DEV})V\n",
        "reset",
    )
    insert_at_start(
        APP / "train/model/TrainItem.smali",
        ".method public start()V",
        f"    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->device:{DEV}\n\n"
        f"    invoke-static {{p0, v0}}, {LOAD}->hold({TI}{DEV})Z\n\n    move-result v0\n\n"
        f"    if-eqz v0, :cond_{MARK}_hold\n\n    return-void\n\n    :cond_{MARK}_hold\n",
        "hold",
    )
    for sig, ph in (
        (".method public sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V", 1),
        (".method public sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V", 2),
        (".method public sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V", 0),
    ):
        insert_at_start(
            APP / "train/model/CommandSender.smali",
            sig,
            f"    iget-object v0, p0, {CS}->device:{DEV}\n\n    const/4 v1, 0x{ph}\n\n"
            f"    invoke-static {{v0, v1}}, {BB}->phase({DEV}I)V\n",
            f"phase{ph}",
        )


if __name__ == "__main__":
    main()
