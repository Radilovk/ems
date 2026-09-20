#!/usr/bin/env python3
"""Remove per-program segment UI from gear dialog (block program is in interval timer)."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
LAYOUT = DECOMPILED / "res/layout/edit_parameter_dialog.xml"
EDIT_DIALOG = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog/EditUserProgramDataDialog.smali"
MAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/MainFragment.smali"
MAIN_FRAGMENT_9 = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/MainFragment$9.smali"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"

SEGMENT_UI = re.compile(
    r"\n\s*<LinearLayout android:gravity=\"center_vertical\" android:orientation=\"vertical\" "
    r"android:paddingLeft=\"5\.0dip\" android:paddingRight=\"5\.0dip\" "
    r"android:layout_width=\"fill_parent\" android:layout_height=\"wrap_content\" "
    r"android:layout_marginTop=\"4\.0dip\">"
    r"\s*<LinearLayout android:gravity=\"center_vertical\" android:orientation=\"horizontal\".*?"
    r"@id/segmentProgramSwitch.*?</LinearLayout>\s*</LinearLayout>",
    re.DOTALL,
)

LEGACY_SMALI = (
    "SegmentProgramUiHelper.smali",
    "SegmentProgramStorage.smali",
    "SegmentProgramEntry.smali",
    "SegmentProgramRunner.smali",
)


def patch_layout(text: str) -> str:
    if "segmentProgramSwitch" not in text:
        print("edit_parameter_dialog: segment gear UI already removed")
        return text
    updated, count = SEGMENT_UI.subn("", text, count=1)
    if count != 1:
        raise RuntimeError("segment program gear UI block not found")
    print("edit_parameter_dialog: removed segment program gear UI")
    return updated


def patch_edit_dialog(text: str) -> str:
    hooks = (
        "    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V\n\n",
        "    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V\n\n",
    )
    changed = False
    for hook in hooks:
        if hook in text:
            text = text.replace(hook, "", 1)
            changed = True
    method = ".method public getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;"
    if method in text and "SegmentProgram" not in text:
        pass
    if changed:
        print("EditUserProgramDataDialog: removed segment program hooks")
    return text


def patch_merge_list(path: Path, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    hook = "invoke-static {v2}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->mergeList(Ljava/util/List;)V\n\n    "
    hook0 = hook.replace("{v2}", "{v0}")
    hook1 = hook.replace("{v2}", "{v1}")
    for snippet in (hook, hook0, hook1):
        if snippet in text:
            text = text.replace(snippet, "", 1)
            path.write_text(text, encoding="utf-8")
            print(f"{label}: removed SegmentProgramStorage.mergeList")
            return


def remove_legacy_smali() -> None:
    for name in LEGACY_SMALI:
        path = DIALOG_DIR / name
        if path.exists():
            path.unlink()
            print(f"removed dialog/{name}")
    for path in DIALOG_DIR.glob("SegmentProgram*.smali"):
        path.unlink()
        print(f"removed dialog/{path.name}")


def main() -> int:
    if not DECOMPILED.is_dir():
        return 0
    LAYOUT.write_text(patch_layout(LAYOUT.read_text(encoding="utf-8")), encoding="utf-8")
    if EDIT_DIALOG.is_file():
        EDIT_DIALOG.write_text(patch_edit_dialog(EDIT_DIALOG.read_text(encoding="utf-8")), encoding="utf-8")
    if MAIN_FRAGMENT.is_file():
        patch_merge_list(MAIN_FRAGMENT, "MainFragment")
    if MAIN_FRAGMENT_9.is_file():
        patch_merge_list(MAIN_FRAGMENT_9, "MainFragment$9")
    remove_legacy_smali()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
