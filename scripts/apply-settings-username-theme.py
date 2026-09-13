#!/usr/bin/env python3
"""Dark-theme username label above avatar in operational settings dialog."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LAYOUT = ROOT / "build" / "decompiled" / "res" / "layout" / "edit_parameter_dialog.xml"

USERNAME_OLD = (
    'android:textSize="22.0dip" android:textColor="@color/white_color" '
    'android:gravity="center" android:id="@id/username" '
    'android:background="@color/light_black_color" '
    'android:layout_width="fill_parent" android:layout_height="40.0dip"'
)
USERNAME_NEW = (
    'android:textSize="18.0sp" android:textStyle="bold" '
    'android:textColor="@color/text_primary" android:gravity="center" '
    'android:id="@id/username" android:background="@android:color/transparent" '
    'android:layout_width="fill_parent" android:layout_height="wrap_content" '
    'android:paddingTop="4.0dip" android:paddingBottom="6.0dip"'
)

MULTI_OLD = (
    'android:textSize="10.0sp" android:textColor="@color/white_color" '
    'android:gravity="center" android:id="@id/username'
)
MULTI_NEW = (
    'android:textSize="10.0sp" android:textColor="@color/text_primary" '
    'android:gravity="center" android:id="@id/username'
)


def main() -> int:
    if not LAYOUT.is_file():
        print("edit_parameter_dialog.xml missing", file=sys.stderr)
        return 1

    text = LAYOUT.read_text(encoding="utf-8")
    if USERNAME_OLD in text:
        text = text.replace(USERNAME_OLD, USERNAME_NEW, 1)
    elif USERNAME_NEW.split('android:id="@id/username"')[0] in text:
        pass
    else:
        raise SystemExit("username TextView marker not found in edit_parameter_dialog.xml")

    text = text.replace(
        'android:background="@color/light_black_color" android:layout_width="fill_parent" '
        'android:layout_height="12.0dip"',
        'android:background="@android:color/transparent" android:layout_width="fill_parent" '
        'android:layout_height="wrap_content"',
    )
    text = text.replace(MULTI_OLD, MULTI_NEW)

    LAYOUT.write_text(text, encoding="utf-8")
    print("Patched operational settings username theme")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
