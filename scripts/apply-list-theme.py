#!/usr/bin/env python3
"""Fix connect-dialog list row colors set programmatically in adapters."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SMALI_DIR = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "dialog"

# white_color used as list row background -> light_gray_2 (theme-aware via ui_colors)
LIST_BG_OLD = "const v4, 0x7f0600be"
LIST_BG_NEW = "const v4, 0x7f060065"

ADAPTER_FILES = (
    "NewUserProgramDeviceConnectDialogFragment$UserAdapter.smali",
    "NewUserProgramDeviceConnectDialogFragment$DeviceAdapter.smali",
    "NewUserProgramDeviceConnectDialogFragment$ProgramAdapter.smali",
    "UserProgramDeviceConnectDialogFragment$UserAdapter.smali",
    "UserProgramDeviceConnectDialogFragment$DeviceAdapter.smali",
    "UserProgramDeviceConnectDialogFragment$ProgramAdapter.smali",
)


def patch_adapters() -> None:
    for name in ADAPTER_FILES:
        path = SMALI_DIR / name
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if LIST_BG_NEW in text:
            print(f"{name}: list bg already patched")
            continue
        count = text.count(LIST_BG_OLD)
        if count:
            text = text.replace(LIST_BG_OLD, LIST_BG_NEW)
            path.write_text(text, encoding="utf-8")
            print(f"{name}: list bg -> light_gray_2 ({count}x)")


def main() -> None:
    patch_adapters()
    print("List theme patches applied.")


if __name__ == "__main__":
    main()
