#!/usr/bin/env python3
"""XEMS Smart Session ("AI" button): install ai smali, check the device-cycle hook, Settings → Band.

- branding/smali/ai → smali_classes2/com/isaigu/gymapp/ai
- TrainItem$2.onFinish (ON phase starts): AiSession.onPulseCycle(item) — put there by apply-pulse-cycle-hook.py
- The PDU ramp bytes stay 0 (remove-ramp.py): the suit ignores them; the soft rise / fall is the tablet's own
  (train.model.SoftRamp, values from ai/AiRamp — the program's ramp, or the Smart Session's while it runs).
- SettingFragment.onCreateView: WearableSettingsSection.attach(activity, root) after the theme
  switch — Settings → Band is the only place for the band MAC and auth key.
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
SETTING_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/SettingFragment.smali"

THEME_HOOK = (
    "    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;"
    "->bindThemeSwitch(Landroid/app/Activity;Landroid/view/View;)V\n"
)
BAND_SETTINGS_HOOK = (
    "\n    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;"
    "->attach(Landroid/app/Activity;Landroid/view/View;)V\n"
)

def install_smali() -> None:
    if not SRC_SMALI.is_dir():
        raise SystemExit(f"missing {SRC_SMALI} — run scripts/compile-ai-java.sh")
    if DEST.exists():
        shutil.rmtree(DEST)
    shutil.copytree(SRC_SMALI, DEST)
    print(f"installed {sum(1 for _ in DEST.rglob('*.smali'))} ai smali files")


def patch_cycle_hook() -> None:
    text = TRAIN_ITEM_2.read_text(encoding="utf-8")
    if "AiSession;->onPulseCycle" not in text:
        raise SystemExit("TrainItem$2: AI cycle hook missing (run apply-pulse-cycle-hook.py first)")
    print("TrainItem$2: AI cycle hook present")


def patch_settings() -> None:
    text = SETTING_FRAGMENT.read_text(encoding="utf-8")
    if "WearableSettingsSection;->attach" in text:
        print("SettingFragment: band section already hooked")
        return
    if THEME_HOOK not in text:
        raise SystemExit("SettingFragment: bindThemeSwitch hook not found (apply-theme-toggle.py changed?)")
    text = text.replace(THEME_HOOK, THEME_HOOK + BAND_SETTINGS_HOOK, 1)
    SETTING_FRAGMENT.write_text(text, encoding="utf-8")
    print("SettingFragment: Settings → Band section hooked")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh", file=sys.stderr)
        return 1
    install_smali()
    patch_cycle_hook()
    patch_settings()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
