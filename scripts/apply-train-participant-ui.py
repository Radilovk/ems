#!/usr/bin/env python3
"""Single compact add-participant control; no empty slots; hide sector/minus sidebar."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
TRAIN_ITEM_MANAGER = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainItemManager.smali"
)
PUBLIC_XML = RES / "values/public.xml"
VALUES_DEFAULT = RES / "values/strings.xml"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VALUES_BG_DECOMPILED = RES / "values-bg/strings.xml"

STRING_ID = 0x7F0D0174
STRING_NAME = "train_add_participant"

FRAGMENT_LAYOUTS = (
    RES / "layout/new_train_fragment_layout.xml",
    RES / "layout-night/new_train_fragment_layout.xml",
    RES / "layout/train_fragment_layout.xml",
    RES / "layout-night/train_fragment_layout.xml",
)

EMPTY_LAYOUTS = (
    RES / "layout/train_empty_item_layout.xml",
    RES / "layout-night/train_empty_item_layout.xml",
)

RECYCLER_RE = re.compile(
    r"\s*<com\.yanzhenjie\.recyclerview\.swipe\.SwipeMenuRecyclerView "
    r'android:id="@id/recyclerView" android:layout_width="fill_parent" '
    r'android:layout_height="fill_parent" />\s*',
    re.MULTILINE,
)

RECYCLER_REPLACEMENT = """
        <RelativeLayout android:layout_width="fill_parent" android:layout_height="fill_parent">
            <com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView android:id="@id/recyclerView" android:layout_width="fill_parent" android:layout_height="fill_parent" />
            <com.isaigu.gymapp.widget.MyButton android:textSize="12.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/allAdd" android:background="@drawable/shape_bg_white" android:paddingLeft="10.0dip" android:paddingRight="12.0dip" android:layout_width="wrap_content" android:layout_height="34.0dip" android:layout_marginRight="10.0dip" android:layout_marginBottom="8.0dip" android:layout_alignParentRight="true" android:layout_alignParentBottom="true" android:text="@string/train_add_participant" android:textAllCaps="false" />
        </RelativeLayout>
"""

SIDEBAR_BLOCK_RE = re.compile(
    r"\s*<View android:layout_width=\"fill_parent\" android:layout_height=\"0\.0dip\" "
    r'android:layout_weight="0\.15" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/allAdd"[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.1" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton[^>]*@id/allPerson[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.1" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/allminus"[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.3" />\s*',
    re.MULTILINE,
)

SIDEBAR_BLOCK_ALT_RE = re.compile(
    r"\s*<View android:layout_width=\"fill_parent\" android:layout_height=\"0\.0dip\" "
    r'android:layout_weight="1\.0" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/allAdd"[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.1" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton[^>]*@id/allPerson[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.1" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/allminus"[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.3" />\s*',
    re.MULTILINE,
)

EMPTY_CENTER_RE = re.compile(
    r'(<LinearLayout android:gravity="center" android:orientation="vertical" '
    r'android:layout_width="wrap_content" android:layout_height="wrap_content" '
    r'android:layout_centerInParent="true")',
)

EN_STRING = f'    <string name="{STRING_NAME}">+ Add participant</string>'
BG_STRING = f'    <string name="{STRING_NAME}">+ Добави участник</string>'

BINDING_STUBS = """
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allPerson" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allminus" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
"""

ADD_EMPTY_ITEM_RE = re.compile(
    r"\.method private addEmptyItem\(\)V\n.*?\.end method\n",
    re.DOTALL,
)

ADD_EMPTY_ITEM_NOOP = """.method private addEmptyItem()V
    .locals 0

    return-void
.end method
"""


def patch_public_xml(text: str) -> str:
    if STRING_NAME not in text:
        text = text.replace(
            "</resources>",
            f'    <public type="string" name="{STRING_NAME}" id="{STRING_ID:#x}" />\n</resources>',
            1,
        )
    return text


def merge_string(path: Path, line: str) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if f'name="{STRING_NAME}"' in text:
        return
    path.write_text(text.replace("</resources>", line + "\n</resources>", 1), encoding="utf-8")
    print(f"added {STRING_NAME} to {path.name}")


def ensure_binding_stubs(text: str) -> tuple[str, bool]:
    if '@id/allPerson' in text:
        return text, False
    close = text.rfind("</LinearLayout>")
    if close == -1:
        return text, False
    return text[:close] + BINDING_STUBS + text[close:], True


def patch_fragment(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    overlay_changed = False
    if "@id/allAdd" in text and "layout_alignParentBottom" not in text:
        if RECYCLER_RE.search(text):
            text = RECYCLER_RE.sub(RECYCLER_REPLACEMENT, text, count=1)
            overlay_changed = True
        if SIDEBAR_BLOCK_RE.search(text):
            text = SIDEBAR_BLOCK_RE.sub(BINDING_STUBS, text, count=1)
            overlay_changed = True
        elif SIDEBAR_BLOCK_ALT_RE.search(text):
            text = SIDEBAR_BLOCK_ALT_RE.sub(BINDING_STUBS, text, count=1)
            overlay_changed = True
    text, stub_added = ensure_binding_stubs(text)
    if overlay_changed or stub_added:
        path.write_text(text, encoding="utf-8")
        notes: list[str] = []
        if overlay_changed:
            notes.append("compact add button, hid sidebar controls")
        if stub_added:
            notes.append("binding stubs for allPerson/allminus")
        print(f"{path.name}: {', '.join(notes)}")


def patch_train_item_manager() -> None:
    if not TRAIN_ITEM_MANAGER.is_file():
        print("TrainItemManager.smali missing; skipping empty-slot removal")
        return
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    if "addEmptyItem()V\n    .locals 0\n\n    return-void" in text:
        print("TrainItemManager: empty participant slots already disabled")
        return
    if not ADD_EMPTY_ITEM_RE.search(text):
        raise RuntimeError("TrainItemManager.addEmptyItem marker not found")
    text = ADD_EMPTY_ITEM_RE.sub(ADD_EMPTY_ITEM_NOOP + "\n", text, count=1)
    TRAIN_ITEM_MANAGER.write_text(text, encoding="utf-8")
    print("TrainItemManager: disabled empty participant slot rows")


def patch_empty_layout(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if 'android:visibility="gone"' in text and "@id/typeButton" in text:
        print(f"{path.name}: empty slot add UI already hidden")
        return
    text = EMPTY_CENTER_RE.sub(r'\1 android:visibility="gone"', text, count=1)
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: hid empty-slot add prompt")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    PUBLIC_XML.write_text(
        patch_public_xml(PUBLIC_XML.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    merge_string(VALUES_DEFAULT, EN_STRING)
    merge_string(VALUES_BG, BG_STRING)
    merge_string(VALUES_BG_DECOMPILED, BG_STRING)
    for path in FRAGMENT_LAYOUTS:
        patch_fragment(path)
    for path in EMPTY_LAYOUTS:
        patch_empty_layout(path)
    patch_train_item_manager()
    print("Train participant UI patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
