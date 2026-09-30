#!/usr/bin/env python3
"""Client / program / device picker in the app's colours.

- The selected client / device row: the vendor painted it with light_blue_exister (#1976D2 at night — a
  loud blue that fights the dark theme) → select_color_user_device_program, the colour meant for it
  (a calm dark teal at night, a pale mint by day). Both connect dialogs, users and devices.
The white icons (program, +, device, pencil) get dark variants in scripts/apply-branding.py.
"""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
D = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "dialog"
BLUE = "    const v4, 0x7f060063\n"
SELECT = "    const v4, 0x7f0600ad\n"


def main() -> None:
    n = 0
    for dlg in ("NewUserProgramDeviceConnectDialogFragment", "UserProgramDeviceConnectDialogFragment"):
        for part in ("UserAdapter", "DeviceAdapter"):
            f = D / f"{dlg}${part}.smali"
            if not f.is_file():
                continue
            text = f.read_text(encoding="utf-8")
            if BLUE not in text:
                continue
            n += text.count(BLUE)
            f.write_text(text.replace(BLUE, SELECT), encoding="utf-8")
    if n == 0:
        print("apply-picker-colors: no blue selection left (already patched?)")
        return
    print(f"apply-picker-colors: {n} selected-row colour(s) → select_color_user_device_program")


if __name__ == "__main__":
    sys.exit(main())
