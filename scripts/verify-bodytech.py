#!/usr/bin/env python3
"""Verify the bodytech suit hooks and classes are in the decompiled app (apply-bodytech.py ran, once each)."""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
APP = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
BB = "Lcom/isaigu/gymapp/bodytech/BtBridge;"

CLASSES = ["BtBridge", "BtBridge$Ack", "BtBridge$Beat", "BtBridge$Dev", "BtBridge$Item", "BtProto", "BtSettings",
           "BtTranslator", "BtSettingsSection", "BtGear", "BtTest", "BtFull", "DeviceAlias", "BtBeep", "BtAus", "BtAusRun", "BtAusScreen",
           "BtLoad", "BtLoad$Tick", "BtLoad$Wait", "BtLoad$Banner"]
# (file, method signature, the call that must be in it, how many times)
HOOKS = [
    ("train/ble/BleDeviceManager.smali", ".method private static getConfig(", f"{BB}->config(", 1),
    ("train/ble/BleDeviceManager.smali", ".method public static write(", f"{BB}->write(", 1),
    ("train/ble/BleDeviceManager$2.smali", ".method public onConnectSuccess(", f"{BB}->linked(", 1),
    ("train/ble/BleDeviceManager$2.smali", ".method public onDisConnected(", f"{BB}->dropped(", 1),
    ("train/model/CommandReceiver.smali", ".method private onReceiveData(", f"{BB}->reply(", 1),
    ("train/TrainViewHolder$1.smali", ".method public onNoDoubleClick(", "bodytech/BtGear;->open(", 1),
    ("train/model/CommandSender.smali", ".method public sendDuration(", f"{BB}->phase(", 1),
    ("train/model/CommandSender.smali", ".method public sendActivePause(", f"{BB}->phase(", 1),
    ("train/model/CommandSender.smali", ".method public sendPause(", f"{BB}->phase(", 1),
    ("train/model/CommandSender.smali", ".method public sendCommend(", f"{BB}->tag(", 1),
    ("train/model/CommandSender.smali", ".method private writeCommend(", f"{BB}->sending(", 1),
    ("train/model/TrainItem.smali", ".method public reset()V", f"{BB}->reset(", 1),
    ("train/model/TrainItem.smali", ".method public start()V", "bodytech/BtLoad;->hold(", 1),
    ("train/TrainViewHolder.smali", ".method private updateUI()V", "bodytech/BtLoad;->mark(", 1),
]


def main() -> None:
    errs: list[str] = []
    for c in CLASSES:
        if not (APP / "bodytech" / f"{c}.smali").is_file():
            errs.append(f"class {c} not installed")
    for rel, sig, call, n in HOOKS:
        text = (APP / rel).read_text(encoding="utf-8")
        a = text.find(sig)
        if a < 0:
            errs.append(f"{rel}: {sig} missing")
            continue
        body = text[a : text.find(".end method", a)]
        got = body.count(call)
        if got != n:
            errs.append(f"{rel} {sig}: {call} x{got}, want {n}")
    if errs:
        sys.exit("verify-bodytech FAILED:\n  " + "\n  ".join(errs))
    text = (APP / "fragment/SettingFragment.smali").read_text(encoding="utf-8")
    if "Lcom/isaigu/gymapp/bodytech/BtSettingsSection;->attach" not in text:
        sys.exit("verify-bodytech FAILED: SettingFragment does not attach BtSettingsSection")
    print(f"verify-bodytech: OK ({len(CLASSES)} classes, {len(HOOKS)} hooks + settings)")


if __name__ == "__main__":
    main()
