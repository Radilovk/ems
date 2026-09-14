#!/usr/bin/env python3
"""Make the impulse/parameter settings dialog scrollable on smaller tablet viewports."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LAYOUT = ROOT / "build" / "decompiled" / "res" / "layout" / "edit_parameter_dialog.xml"

CARD_OPEN_OLD = (
    '        <LinearLayout android:orientation="vertical" android:background="@color/bg_card" '
    'android:layout_width="fill_parent" android:layout_height="fill_parent" '
    'android:layout_marginLeft="20.0dip" android:layout_marginTop="30.0dip" '
    'android:layout_marginRight="30.0dip" android:layout_marginBottom="30.0dip">'
)

CARD_OPEN_SCROLL = (
    '        <ScrollView android:scrollbars="vertical" android:layout_width="fill_parent" '
    'android:layout_height="fill_parent" android:layout_above="@id/save" '
    'android:layout_marginLeft="20.0dip" android:layout_marginTop="30.0dip" '
    'android:layout_marginRight="30.0dip" android:layout_marginBottom="8.0dip" '
    'android:fillViewport="true">\n'
    '            <LinearLayout android:orientation="vertical" android:background="@color/bg_card" '
    'android:layout_width="fill_parent" android:layout_height="wrap_content" '
    'android:paddingBottom="16.0dip">'
)

CARD_CLOSE_OLD = (
    '        </LinearLayout>\n'
    '        <com.isaigu.gymapp.widget.MyButton android:textSize="45.0sp" '
    'android:textColor="@color/white_color" android:id="@id/close"'
)

CARD_CLOSE_SCROLL = (
    '            </LinearLayout>\n'
    '        </ScrollView>\n'
    '        <com.isaigu.gymapp.widget.MyButton android:textSize="45.0sp" '
    'android:textColor="@color/white_color" android:id="@id/close"'
)


def main() -> int:
    if not LAYOUT.is_file():
        print("edit_parameter_dialog.xml missing", file=sys.stderr)
        return 1

    text = LAYOUT.read_text(encoding="utf-8")
    if 'android:layout_above="@id/save"' in text and "android:fillViewport=\"true\"" in text:
        print("edit_parameter_dialog.xml: scroll wrapper already applied")
        return 0

    if CARD_OPEN_OLD not in text:
        raise SystemExit("edit_parameter_dialog.xml card open marker not found")
    if CARD_CLOSE_OLD not in text:
        raise SystemExit("edit_parameter_dialog.xml card close marker not found")

    text = text.replace(CARD_OPEN_OLD, CARD_OPEN_SCROLL, 1)
    text = text.replace(CARD_CLOSE_OLD, CARD_CLOSE_SCROLL, 1)
    LAYOUT.write_text(text, encoding="utf-8")
    print("edit_parameter_dialog.xml: wrapped content in ScrollView")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
