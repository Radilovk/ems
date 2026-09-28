#!/usr/bin/env python3
"""Example settings for the manual mode in the program parameters dialog (Лек / Стандарт / Интензивен).

- Installs branding/smali/ManualPresets*.smali → dialog/.
- EditUserProgramDataDialog.initSetData(): ManualPresets.attach(this) before its return
  (after the ramp hook; the panel is added once, a re-run of initSetData only refreshes values).
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

HOOK = """    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ManualPresets;->attach(Ljava/lang/Object;)V

"""


def main() -> int:
    files = sorted(SRC.glob("ManualPresets*.smali"))
    if not files:
        raise SystemExit("Missing branding/smali/ManualPresets.smali")
    for f in files:
        shutil.copy2(f, DIALOG / f.name)
    print(f"installed dialog/ManualPresets ({len(files)} files)")

    text = EDIT.read_text(encoding="utf-8")
    if "ManualPresets;->attach" in text:
        print("EditUserProgramDataDialog: presets hook already present")
        return 0
    start = text.find(".method private initSetData()V")
    if start < 0:
        raise SystemExit("EditUserProgramDataDialog.initSetData not found")
    end = text.find(".end method", start)
    body = text[start:end]
    idx = body.rfind("    return-void")
    if idx < 0:
        raise SystemExit("initSetData: return-void not found")
    body = body[:idx] + HOOK + body[idx:]
    EDIT.write_text(text[:start] + body + text[end:], encoding="utf-8")
    print("EditUserProgramDataDialog: manual presets hook added")
    return 0


if __name__ == "__main__":
    sys.exit(main())
