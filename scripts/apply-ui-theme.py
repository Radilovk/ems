#!/usr/bin/env python3
"""Apply safe UI theme resources and layout polish to decompiled APK."""

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING = ROOT / "branding"

TRAIN_LAYOUTS = (
    "new_train_fragment_layout.xml",
    "train_fragment_layout.xml",
)

USER_ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

UI_STRINGS = {
    "values/strings.xml": "Add",
    "values-en/strings.xml": "Add",
    "values-bg/strings.xml": "Добави",
}


def copy_theme_resources() -> None:
    res = DECOMPILED / "res"
    copies = (
        (BRANDING / "theme" / "colors.xml", res / "values" / "ui_colors.xml"),
        (BRANDING / "theme" / "dimens.xml", res / "values" / "ui_dimens.xml"),
        (BRANDING / "theme" / "colors-night.xml", res / "values-night" / "ui_colors.xml"),
        (BRANDING / "drawable" / "ui_card_background.xml", res / "drawable" / "ui_card_background.xml"),
    )
    for src, dest in copies:
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.write_bytes(src.read_bytes())
        print(f"copied {src.name} -> {dest.relative_to(DECOMPILED)}")


def patch_app_theme() -> None:
    path = DECOMPILED / "res" / "values" / "styles.xml"
    text = path.read_text(encoding="utf-8")
    updated = text.replace(
        '<style name="AppBaseTheme" parent="@style/Theme.AppCompat.Light" />',
        '<style name="AppBaseTheme" parent="@style/Theme.AppCompat.DayNight" />',
    )
    if updated == text:
        raise RuntimeError("failed to patch AppBaseTheme to DayNight")
    path.write_text(updated, encoding="utf-8")
    print("patched AppBaseTheme -> Theme.AppCompat.DayNight")


def patch_train_layouts() -> None:
    layout_dir = DECOMPILED / "res" / "layout"
    replacements = [
        ('android:background="@color/light_gray_1"', 'android:background="@color/bg_screen"'),
        ('android:textSize="11.0sp" android:textColor="@color/light_black_color"', 'android:textSize="@dimen/ui_muscle_label_text_size" android:textColor="@color/text_primary"'),
        (
            'android:layout_width="200.0dip" android:layout_height="76.0dip" android:src="@mipmap/logo2"',
            'android:layout_width="@dimen/ui_logo_width" android:layout_height="@dimen/ui_logo_height" android:src="@mipmap/logo2" android:scaleType="centerInside"',
        ),
    ]

    for name in TRAIN_LAYOUTS:
        path = layout_dir / name
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        original = text
        for old, new in replacements:
            text = text.replace(old, new)
        if text != original:
            path.write_text(text, encoding="utf-8")
            print(f"patched train layout {name}")


def patch_user_row_layouts() -> None:
    layout_dir = DECOMPILED / "res" / "layout"
    root_old = (
        '<LinearLayout android:orientation="horizontal" android:background="@color/white_color" '
        'android:layout_width="fill_parent" android:layout_height="170.0dip"'
    )
    root_new = (
        '<LinearLayout android:orientation="horizontal" android:background="@drawable/ui_card_background" '
        'android:layout_width="fill_parent" android:layout_height="170.0dip" '
        'android:layout_margin="@dimen/ui_card_margin"'
    )

    for name in USER_ROW_LAYOUTS:
        path = layout_dir / name
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        updated = text.replace(root_old, root_new)
        updated = updated.replace(
            'android:textColor="@color/light_black_color"',
            'android:textColor="@color/text_primary"',
        )
        if updated != text:
            path.write_text(updated, encoding="utf-8")
            print(f"patched user row layout {name}")


def patch_ui_strings() -> None:
    for rel, value in UI_STRINGS.items():
        path = DECOMPILED / "res" / rel
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if 'name="ui_add_slot"' in text:
            continue
        insert = f'    <string name="ui_add_slot">{value}</string>\n'
        updated = text.replace("</resources>", f"{insert}</resources>")
        path.write_text(updated, encoding="utf-8")
        print(f"added ui_add_slot to {rel}")


def copy_branding_layouts() -> None:
    src_dir = BRANDING / "layouts"
    dest_dir = DECOMPILED / "res" / "layout"
    for path in src_dir.glob("*.xml"):
        dest = dest_dir / path.name
        dest.write_bytes(path.read_bytes())
        print(f"copied layout {path.name}")


def main() -> None:
    copy_theme_resources()
    patch_app_theme()
    copy_branding_layouts()
    patch_train_layouts()
    patch_user_row_layouts()
    patch_ui_strings()
    print("UI theme applied.")


if __name__ == "__main__":
    main()
