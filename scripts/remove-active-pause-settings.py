#!/usr/bin/env python3
"""Remove active pause controls from program settings; operational screen only."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
LAYOUT = DECOMPILED / "res/layout/edit_parameter_dialog.xml"
EDIT_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog.smali"

SETTINGS_UI = re.compile(
    r"\n\s*<LinearLayout android:gravity=\"center_vertical\" android:orientation=\"vertical\" "
    r"android:paddingLeft=\"5\.0dip\" android:paddingRight=\"5\.0dip\" "
    r"android:layout_width=\"fill_parent\" android:layout_height=\"wrap_content\" "
    r"android:layout_marginTop=\"4\.0dip\">"
    r"\s*<LinearLayout android:gravity=\"center_vertical\" android:orientation=\"horizontal\".*?"
    r"@id/activePausePanel.*?</LinearLayout>\s*</LinearLayout>",
    re.DOTALL,
)

HELPER_FILES = (
    "ActivePauseSettingsHelper.smali",
    "ActivePauseSettingsHelper$1.smali",
    "ActivePauseSettingsHelper$2.smali",
    "ActivePauseSettingsHelper$3.smali",
    "ActivePauseSettingsHelper$PauseHzTextWatcher.smali",
)


def patch_layout(xml: str) -> str:
    if "activePauseSwitch" not in xml:
        print("edit_parameter_dialog.xml: active pause settings already removed")
        return xml
    updated, count = SETTINGS_UI.subn("", xml, count=1)
    if count != 1:
        raise RuntimeError("active pause settings UI block not found in edit_parameter_dialog.xml")
    orphan_close = (
        '                </LinearLayout>\n'
        '                </LinearLayout>\n'
        '                <View android:background="@color/gray_color"'
    )
    fixed_close = (
        '                </LinearLayout>\n'
        '                <View android:background="@color/gray_color"'
    )
    if orphan_close in updated:
        updated = updated.replace(orphan_close, fixed_close, 1)
    print("edit_parameter_dialog.xml: removed active pause settings UI")
    return updated


def patch_edit_dialog(text: str) -> str:
    bind = (
        "\n    invoke-static {p0, v0}, "
        "Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->bind"
        "(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V"
    )
    refresh = (
        "\n    invoke-static {p0}, "
        "Lcom/isaigu/gymapp/dialog/ActivePauseSettingsHelper;->refresh"
        "(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V"
    )
    changed = False
    if bind in text:
        text = text.replace(bind, "", 1)
        changed = True
    if refresh in text:
        text = text.replace(refresh, "", 1)
        changed = True
    if changed:
        print("EditUserProgramDataDialog: removed active pause settings hooks")
    elif "ActivePauseSettingsHelper" not in text:
        print("EditUserProgramDataDialog: active pause settings hooks already removed")
    else:
        raise RuntimeError("EditUserProgramDataDialog active pause hook marker not found")
    return text


def remove_helper_files() -> None:
    for name in HELPER_FILES:
        path = DIALOG_DIR / name
        if path.exists():
            path.unlink()
            print(f"removed {name}")


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    LAYOUT.write_text(patch_layout(LAYOUT.read_text(encoding="utf-8")), encoding="utf-8")
    EDIT_DIALOG.write_text(patch_edit_dialog(EDIT_DIALOG.read_text(encoding="utf-8")), encoding="utf-8")
    remove_helper_files()
    print("Active pause settings removed from program editor.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
