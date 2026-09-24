#!/usr/bin/env python3
"""Soft rise / fall (ramp) back in the program parameters dialog, in seconds (0.0–2.0 s).

- Installs branding/smali/RampSetting*.smali → dialog/.
- EditUserProgramDataDialog.initSetData(): RampSetting.attach(inputramp, outputramp, trainProgram)
  before its return (shows the column hidden by remove-ramp.py, seconds instead of ms).
The ramp bytes reach the device through AiRamp (apply-ai-session.py).
"""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
EDIT = DIALOG / "EditUserProgramDataDialog.smali"
SRC = ROOT / "branding" / "smali"

CLS = "Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;"
HOOK = f"""    iget-object v0, p0, {CLS}->inputramp:Landroid/widget/TextView;

    iget-object v1, p0, {CLS}->outputramp:Landroid/widget/TextView;

    iget-object v2, p0, {CLS}->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {{v0, v1, v2}}, Lcom/isaigu/gymapp/dialog/RampSetting;->attach(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;)V

"""


def main() -> int:
    files = sorted(SRC.glob("RampSetting*.smali"))
    if not files:
        raise SystemExit("Missing branding/smali/RampSetting.smali")
    for f in files:
        shutil.copy2(f, DIALOG / f.name)
    print(f"installed dialog/RampSetting ({len(files)} files)")

    text = EDIT.read_text(encoding="utf-8")
    if "RampSetting;->attach" in text:
        print("EditUserProgramDataDialog: ramp hook already present")
        return 0
    start = text.find(".method private initSetData()V")
    if start < 0:
        raise SystemExit("EditUserProgramDataDialog.initSetData not found")
    end = text.find(".end method", start)
    body = text[start:end]
    if ".locals 0" in body or ".locals 1" in body or ".locals 2" in body:
        raise SystemExit("initSetData has fewer than 3 locals")
    idx = body.rfind("    return-void")
    if idx < 0:
        raise SystemExit("initSetData: return-void not found")
    body = body[:idx] + HOOK + body[idx:]
    EDIT.write_text(text[:start] + body + text[end:], encoding="utf-8")
    print("EditUserProgramDataDialog: ramp setting hook added")
    return 0


if __name__ == "__main__":
    sys.exit(main())
