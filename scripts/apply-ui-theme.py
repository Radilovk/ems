#!/usr/bin/env python3
"""Apply comprehensive UI theme across all app screens."""

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING = ROOT / "branding"
LAYOUT_DIR = DECOMPILED / "res" / "layout"

SKIP_LAYOUT_PREFIXES = ("abc_", "design_", "notification_", "select_dialog_")

LAYOUT_REPLACEMENTS = (
    ('android:background="@color/light_gray_1"', 'android:background="@color/bg_screen"'),
    ('android:background="@color/light_gray_background"', 'android:background="@color/bg_screen"'),
    ('android:background="@color/white_color"', 'android:background="@color/bg_card"'),
    ('android:background="@color/light_gray_2"', 'android:background="@color/bg_card"'),
    ('android:background="@color/light_gray_6"', 'android:background="@color/table_cell_bg"'),
    ('android:textColor="@color/light_black_color"', 'android:textColor="@color/text_primary"'),
    ('android:textColor="@color/light_gray_select_text"', 'android:textColor="@color/text_primary"'),
    ('android:textColor="@color/gray_color"', 'android:textColor="@color/text_secondary"'),
    ('android:textColor="#ff000000"', 'android:textColor="@color/text_primary"'),
)

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
    import shutil

    copies = (
        (BRANDING / "theme" / "colors.xml", DECOMPILED / "res" / "values" / "ui_colors.xml"),
        (BRANDING / "theme" / "dimens.xml", DECOMPILED / "res" / "values" / "ui_dimens.xml"),
        (BRANDING / "theme" / "colors-night.xml", DECOMPILED / "res" / "values-night" / "ui_colors.xml"),
        (BRANDING / "theme" / "ids.xml", DECOMPILED / "res" / "values" / "ui_ids.xml"),
    )
    for src, dest in copies:
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dest)
        print(f"copied {src.name} -> {dest.relative_to(DECOMPILED)}")

    drawable_dest = DECOMPILED / "res" / "drawable"
    drawable_dest.mkdir(parents=True, exist_ok=True)
    for src in (BRANDING / "drawable").glob("*.xml"):
        shutil.copy2(src, drawable_dest / src.name)
        print(f"copied drawable {src.name}")


def patch_app_theme() -> None:
    path = DECOMPILED / "res" / "values" / "styles.xml"
    text = path.read_text(encoding="utf-8")
    if "Theme.AppCompat.DayNight" in text and 'name="AppBaseTheme"' in text:
        print("AppBaseTheme already uses DayNight")
        return
    updated = text.replace(
        '<style name="AppBaseTheme" parent="@style/Theme.AppCompat.Light" />',
        '<style name="AppBaseTheme" parent="@style/Theme.AppCompat.DayNight" />',
    )
    if updated == text:
        raise RuntimeError("failed to patch AppBaseTheme to DayNight")
    path.write_text(updated, encoding="utf-8")
    print("patched AppBaseTheme -> Theme.AppCompat.DayNight")


def patch_version_name() -> None:
    apktool_yml = DECOMPILED / "apktool.yml"
    text = apktool_yml.read_text(encoding="utf-8")
    updated, count = re.subn(
        r"versionName: .+",
        "versionName: 1.0.6-xems-pro",
        text,
        count=1,
    )
    if count != 1:
        raise RuntimeError("failed to patch versionName in apktool.yml")
    apktool_yml.write_text(updated, encoding="utf-8")
    print("patched versionName -> 1.0.6-xems-pro")


def copy_branding_layouts() -> None:
    src_dir = BRANDING / "layouts"
    dest_dir = LAYOUT_DIR
    for path in sorted(src_dir.glob("*.xml")):
        dest = dest_dir / path.name
        dest.write_bytes(path.read_bytes())
        print(f"copied layout {path.name}")


def patch_all_layouts() -> None:
    changed = 0
    for path in sorted(LAYOUT_DIR.glob("*.xml")):
        if path.name.startswith(SKIP_LAYOUT_PREFIXES):
            continue
        text = path.read_text(encoding="utf-8")
        original = text
        for old, new in LAYOUT_REPLACEMENTS:
            text = text.replace(old, new)
        if text != original:
            path.write_text(text, encoding="utf-8")
            changed += 1
    print(f"patched semantic colors in {changed} layout files")


def patch_train_layouts() -> None:
    replacements = (
        (
            'android:layout_width="200.0dip" android:layout_height="76.0dip" android:src="@mipmap/logo2"',
            'android:layout_width="@dimen/ui_logo_width" android:layout_height="@dimen/ui_logo_height" '
            'android:src="@mipmap/logo2" android:scaleType="centerInside"',
        ),
        ('android:textSize="11.0sp"', 'android:textSize="@dimen/ui_muscle_label_text_size"'),
    )
    for name in TRAIN_LAYOUTS:
        path = LAYOUT_DIR / name
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
    root_old = (
        '<LinearLayout android:orientation="horizontal" android:background="@color/white_color" '
        'android:layout_width="fill_parent" android:layout_height="170.0dip"'
    )
    root_new = (
        '<LinearLayout android:orientation="horizontal" android:background="@drawable/ui_card_background" '
        'android:layout_width="fill_parent" android:layout_height="170.0dip" '
        'android:layout_margin="@dimen/ui_card_margin"'
    )
    root_card = (
        '<LinearLayout android:orientation="horizontal" android:background="@drawable/ui_card_background" '
        'android:layout_width="fill_parent" android:layout_height="170.0dip"'
    )
    root_card_margin = (
        '<LinearLayout android:orientation="horizontal" android:background="@drawable/ui_card_background" '
        'android:layout_width="fill_parent" android:layout_height="170.0dip" '
        'android:layout_margin="@dimen/ui_card_margin"'
    )

    for name in USER_ROW_LAYOUTS:
        path = LAYOUT_DIR / name
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        updated = text.replace(root_old, root_new)
        if updated == text and root_card in text and root_card_margin not in text:
            updated = text.replace(root_card, root_card_margin, 1)
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
        text = text.replace("</resources>", f'    <string name="ui_add_slot">{value}</string>\n</resources>')
        path.write_text(text, encoding="utf-8")
        print(f"added ui_add_slot to {rel}")


def main() -> None:
    copy_theme_resources()
    patch_app_theme()
    patch_version_name()
    copy_branding_layouts()
    patch_all_layouts()
    patch_train_layouts()
    patch_user_row_layouts()
    patch_ui_strings()
    print("UI theme applied.")


if __name__ == "__main__":
    main()
