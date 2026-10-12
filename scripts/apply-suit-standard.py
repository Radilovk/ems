#!/usr/bin/env python3
"""Suit standard XEMS / X-Body: the same sliders, the muscles go out on other suit channels (X-Body).

CommandUtil.getPartsParamsPduWithStrength end → bodytech/SuitStandard.toSuit(pdu): every parts PDU (main, second
impulse, music, AI) is reordered to the suit's channels. SettingFragment.onCreateView → SuitStandard.attach right
before the bodytech card: Settings → "Стандарт на костюма" (XEMS | X-Body, one tap). BtBridge undoes the order for a
bodytech suit. Runs after apply-bodytech.py (which installs the bodytech smali, SuitStandard among it).
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
APP = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
CLS = "Lcom/isaigu/gymapp/bodytech/SuitStandard;"
PDU_MARKER = f"{CLS}->toSuit([B)V"
SET_MARKER = f"{CLS}->attach(Landroid/app/Activity;Landroid/view/View;)V"
BT_SETTINGS_HOOK = (
    "\n    invoke-static {v1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection;"
    "->attach(Landroid/app/Activity;Landroid/view/View;)V\n"
)


def patch_pdu() -> None:
    f = APP / "train/utils/CommandUtil.smali"
    text = f.read_text(encoding="utf-8")
    if PDU_MARKER in text:
        print("CommandUtil: suit standard already hooked")
        return
    m = re.search(r"\.method public static getPartsParamsPduWithStrength\(.*?\n\.end method", text, re.S)
    if not m:
        sys.exit("apply-suit-standard: getPartsParamsPduWithStrength not found")
    body = m.group(0)
    tail = "\n    return-object v3\n.end method"
    if not body.endswith(tail) or body.count("return-object") != 1:
        sys.exit("apply-suit-standard: getPartsParamsPduWithStrength tail not as expected (return-object v3)")
    new = body[: -len(tail)] + f"\n    invoke-static {{v3}}, {PDU_MARKER}\n" + tail
    f.write_text(text.replace(body, new, 1), encoding="utf-8")
    print("CommandUtil.getPartsParamsPduWithStrength: → SuitStandard.toSuit")


def patch_settings() -> None:
    f = APP / "fragment" / "SettingFragment.smali"
    text = f.read_text(encoding="utf-8")
    if SET_MARKER in text:
        print("SettingFragment: suit standard already hooked")
        return
    if text.count(BT_SETTINGS_HOOK) != 1:
        sys.exit("apply-suit-standard: BtSettingsSection hook not found (apply-bodytech.py changed?)")
    hook = f"\n    invoke-static {{v1, v0}}, {SET_MARKER}\n"
    f.write_text(text.replace(BT_SETTINGS_HOOK, hook + BT_SETTINGS_HOOK, 1), encoding="utf-8")
    print("SettingFragment: Settings → Стандарт на костюма hooked")


def main() -> None:
    if not (APP / "bodytech/SuitStandard.smali").is_file():
        sys.exit("apply-suit-standard: SuitStandard.smali not installed (run apply-bodytech.py first)")
    patch_pdu()
    patch_settings()


if __name__ == "__main__":
    main()
