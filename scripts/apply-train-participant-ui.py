#!/usr/bin/env python3
"""Single compact add-participant control; hide sector/minus sidebar buttons."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
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


def patch_fragment(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    changed = False
    if "@id/allAdd" in text and "layout_alignParentBottom" not in text:
        if RECYCLER_RE.search(text):
            text = RECYCLER_RE.sub(RECYCLER_REPLACEMENT, text, count=1)
            changed = True
        if SIDEBAR_BLOCK_RE.search(text):
            text = SIDEBAR_BLOCK_RE.sub("\n        ", text, count=1)
            changed = True
        elif SIDEBAR_BLOCK_ALT_RE.search(text):
            text = SIDEBAR_BLOCK_ALT_RE.sub("\n        ", text, count=1)
            changed = True
    if changed:
        path.write_text(text, encoding="utf-8")
        print(f"{path.name}: compact add-participant button, hid sidebar add/sector/minus")


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
    print("Train participant UI patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
