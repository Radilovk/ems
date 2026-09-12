#!/usr/bin/env python3
"""Apply comprehensive UI theme across all app screens."""

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING = ROOT / "branding"
LAYOUT_DIR = DECOMPILED / "res" / "layout"

SKIP_LAYOUT_PREFIXES = ("abc_", "design_", "notification_", "select_dialog_", "jz_")

LAYOUT_REPLACEMENTS = (
    ('android:background="@color/light_gray_1"', 'android:background="@color/bg_screen"'),
    ('android:background="@color/light_gray_background"', 'android:background="@color/bg_screen"'),
    ('android:background="@color/light_gray_2"', 'android:background="@color/bg_card"'),
    ('android:background="@color/light_gray_6"', 'android:background="@color/table_cell_bg"'),
    ('android:background="@color/white_color"', 'android:background="@color/bg_card"'),
    ('android:background="@android:color/white"', 'android:background="@color/bg_card"'),
    ('android:textColor="@color/light_black_color"', 'android:textColor="@color/text_primary"'),
    ('android:textColor="@color/light_gray_select_text"', 'android:textColor="@color/text_primary"'),
    ('android:textColor="@color/light_gray_3"', 'android:textColor="@color/text_primary"'),
    ('android:textColor="@color/gray_color"', 'android:textColor="@color/text_secondary"'),
    ('android:textColor="@color/black_color"', 'android:textColor="@color/text_primary"'),
    ('android:textColor="#ff000000"', 'android:textColor="@color/text_primary"'),
    ('android:textColor="#ff333333"', 'android:textColor="@color/text_primary"'),
    ('android:textColor="#ff666666"', 'android:textColor="@color/text_secondary"'),
    ('android:background="@color/light_gray_save"', 'android:background="@color/section_header_bg"'),
    ('android:background="@color/light_gray_3"', 'android:background="@color/divider"'),
    ('android:background="@color/light_gray_4"', 'android:background="@color/divider"'),
    ('android:background="@color/light_gray_5"', 'android:background="@color/bg_elevated"'),
    ('android:background="@color/light_gray_line"', 'android:background="@color/divider"'),
)

# Only replace white backgrounds on container views, not button text colors.
WHITE_BG_REPLACEMENTS = (
    ('<LinearLayout android:gravity="center" android:orientation="horizontal" android:background="@color/white_color"',
     '<LinearLayout android:gravity="center" android:orientation="horizontal" android:background="@color/bg_card"'),
    ('<LinearLayout android:gravity="center" android:orientation="vertical" android:background="@color/white_color"',
     '<LinearLayout android:gravity="center" android:orientation="vertical" android:background="@color/bg_card"'),
    ('<LinearLayout android:orientation="horizontal" android:background="@color/white_color"',
     '<LinearLayout android:orientation="horizontal" android:background="@color/bg_card"'),
    ('<RelativeLayout android:layout_width="fill_parent" android:layout_height="180.0dip" android:background="@color/white_color"',
     '<RelativeLayout android:layout_width="fill_parent" android:layout_height="180.0dip" android:background="@color/bg_card"'),
)

TRAIN_LAYOUTS = (
    "new_train_fragment_layout.xml",
    "train_fragment_layout.xml",
)

USER_ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

WAVE_BALL_HIDE = (
    '<com.isaigu.gymapp.widget.WaveBallProgress android:id="@id/wave_ball_progress_act_view"',
    '<com.isaigu.gymapp.widget.WaveBallProgress android:id="@id/wave_ball_progress_act_view" '
    'android:visibility="gone"',
)

UI_STRINGS = {
    "values/strings.xml": "Add",
    "values-en/strings.xml": "Add",
    "values-bg/strings.xml": "Добави",
}

# So adapter-driven list/device colors look modern in light theme too.
DAY_LEGACY_COLOR_REPLACEMENTS = (
    ('<color name="cpb_red2">#ffff2222</color>', '<color name="cpb_red2">#ff3a3a3a</color>'),
    (
        '<color name="select_color_user_device_program">#ffe0f8f8</color>',
        '<color name="select_color_user_device_program">#ffd8f0ee</color>',
    ),
    ('<color name="light_blue_exister">#ff1aa7c2</color>', '<color name="light_blue_exister">#ffe3f2fd</color>'),
    ('<color name="white_color">#ffffffff</color>', '<color name="white_color">#fff5f5f5</color>'),
)


def copy_theme_resources() -> None:
    import shutil

    copies = (
        (BRANDING / "theme" / "colors.xml", DECOMPILED / "res" / "values" / "ui_colors.xml"),
        (BRANDING / "theme" / "dimens.xml", DECOMPILED / "res" / "values" / "ui_dimens.xml"),
        (BRANDING / "theme" / "colors-night.xml", DECOMPILED / "res" / "values-night" / "ui_colors.xml"),
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

    drawable_night_src = BRANDING / "drawable-night"
    if drawable_night_src.is_dir():
        drawable_night_dest = DECOMPILED / "res" / "drawable-night"
        drawable_night_dest.mkdir(parents=True, exist_ok=True)
        for src in drawable_night_src.glob("*.xml"):
            shutil.copy2(src, drawable_night_dest / src.name)
            print(f"copied drawable-night {src.name}")


def patch_app_theme() -> None:
    styles_path = DECOMPILED / "res" / "values" / "styles.xml"
    text = styles_path.read_text(encoding="utf-8")
    if "Theme.AppCompat.DayNight" not in text or 'name="AppBaseTheme"' not in text:
        updated = text.replace(
            '<style name="AppBaseTheme" parent="@style/Theme.AppCompat.Light" />',
            '<style name="AppBaseTheme" parent="@style/Theme.AppCompat.DayNight" />',
        )
        if updated == text:
            raise RuntimeError("failed to patch AppBaseTheme to DayNight")
        text = updated
        print("patched AppBaseTheme -> Theme.AppCompat.DayNight")
    else:
        print("AppBaseTheme already uses DayNight")

    app_theme_old = '    <style name="AppTheme" parent="@style/AppBaseTheme" />'
    app_theme_new = """    <style name="AppTheme" parent="@style/AppBaseTheme">
        <item name="android:textColor">@color/text_primary</item>
        <item name="android:textColorPrimary">@color/text_primary</item>
        <item name="android:textColorSecondary">@color/text_secondary</item>
        <item name="android:textColorHint">@color/text_hint</item>
        <item name="android:colorBackground">@color/bg_screen</item>
        <item name="android:windowBackground">@color/bg_screen</item>
    </style>"""
    if '@color/text_primary' not in text.split('name="AppTheme"')[1].split("</style>")[0]:
        if app_theme_old not in text:
            raise RuntimeError("AppTheme style marker not found for theme patch")
        text = text.replace(app_theme_old, app_theme_new, 1)
        print("patched AppTheme default text/background colors")

    styles_path.write_text(text, encoding="utf-8")


def patch_version_name() -> None:
    apktool_yml = DECOMPILED / "apktool.yml"
    text = apktool_yml.read_text(encoding="utf-8")
    updated, count = re.subn(
        r"versionName: .+",
        "versionName: 1.0.19-xems-pro",
        text,
        count=1,
    )
    if count != 1:
        raise RuntimeError("failed to patch versionName in apktool.yml")
    apktool_yml.write_text(updated, encoding="utf-8")
    print("patched versionName -> 1.0.19-xems-pro")


def copy_branding_layouts() -> None:
    src_dir = BRANDING / "layouts"
    dest_dir = LAYOUT_DIR
    for path in sorted(src_dir.glob("*.xml")):
        dest = dest_dir / path.name
        dest.write_bytes(path.read_bytes())
        print(f"copied layout {path.name}")


SKIP_TEXTVIEW_COLOR_TAGS = (
    "textColor=",
    "@color/white_color",
    "MyButton",
    "AppCompatCheckBox",
    "light_red_exister",
    "light_orange_exister",
    "light_blue_exister",
    "light_black_color",
    "red_button",
    "black_button",
)


def add_text_color_to_textviews(content: str) -> str:
    result: list[str] = []
    index = 0
    while True:
        start = content.find("<TextView", index)
        if start == -1:
            result.append(content[index:])
            break
        result.append(content[index:start])
        end = content.find(">", start)
        if end == -1:
            result.append(content[start:])
            break
        tag = content[start : end + 1]
        if not any(marker in tag for marker in SKIP_TEXTVIEW_COLOR_TAGS):
            color = "@color/text_primary" if "android:id=" in tag else "@color/text_secondary"
            tag = tag.replace("<TextView ", f'<TextView android:textColor="{color}" ', 1)
        result.append(tag)
        index = end + 1
    return "".join(result)


def add_checkbox_theme_attrs(content: str) -> str:
    tags = ("<CheckBox", "<android.support.v7.widget.AppCompatCheckBox")
    result: list[str] = []
    index = 0
    while index < len(content):
        earliest = -1
        tag_name = ""
        for tag in tags:
            pos = content.find(tag, index)
            if pos != -1 and (earliest == -1 or pos < earliest):
                earliest = pos
                tag_name = tag
        if earliest == -1:
            result.append(content[index:])
            break
        result.append(content[index:earliest])
        end = content.find(">", earliest)
        if end == -1:
            result.append(content[earliest:])
            break
        tag = content[earliest : end + 1]
        if "textColor=" not in tag:
            tag = tag.replace(tag_name + " ", f'{tag_name} android:textColor="@color/text_primary" ', 1)
        result.append(tag)
        index = end + 1
    return "".join(result)


def add_button_text_color(content: str) -> str:
    result: list[str] = []
    index = 0
    while True:
        start = content.find("<Button", index)
        if start == -1:
            result.append(content[index:])
            break
        result.append(content[index:start])
        end = content.find(">", start)
        if end == -1:
            result.append(content[start:])
            break
        tag = content[start : end + 1]
        if "textColor=" not in tag and "MyButton" not in tag:
            tag = tag.replace("<Button ", '<Button android:textColor="@color/text_primary" ', 1)
        result.append(tag)
        index = end + 1
    return "".join(result)


def add_edittext_theme_attrs(content: str) -> str:
    result: list[str] = []
    index = 0
    while True:
        start = content.find("<EditText", index)
        if start == -1:
            result.append(content[index:])
            break
        result.append(content[index:start])
        end = content.find(">", start)
        if end == -1:
            result.append(content[start:])
            break
        tag = content[start : end + 1]
        if "textColor=" not in tag:
            tag = tag.replace("<EditText ", '<EditText android:textColor="@color/text_primary" ', 1)
        if "textColorHint=" not in tag and "android:hint=" in tag:
            tag = tag.replace("<EditText ", '<EditText android:textColorHint="@color/text_hint" ', 1)
        result.append(tag)
        index = end + 1
    return "".join(result)


def patch_all_layouts() -> None:
    changed = 0
    for path in sorted(LAYOUT_DIR.glob("*.xml")):
        if path.name.startswith(SKIP_LAYOUT_PREFIXES):
            continue
        text = path.read_text(encoding="utf-8")
        original = text
        for old, new in LAYOUT_REPLACEMENTS:
            text = text.replace(old, new)
        for old, new in WHITE_BG_REPLACEMENTS:
            text = text.replace(old, new)
        text = add_text_color_to_textviews(text)
        text = add_edittext_theme_attrs(text)
        text = add_checkbox_theme_attrs(text)
        text = add_button_text_color(text)
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


MODE_BUTTON_REPLACEMENTS = (
    (
        'android:id="@id/strenthExist" android:background="@drawable/round_corner_drawable_r10_red" '
        'android:layout_width="120.0dip" android:layout_height="38.0dip" android:layout_margin="5.0dip" '
        'android:text="@string/muscleexist" android:textAllCaps="false"',
        'android:id="@id/strenthExist" android:background="@drawable/round_corner_drawable_r10_red" '
        'android:layout_width="120.0dip" android:layout_height="42.0dip" android:layout_margin="5.0dip" '
        'android:text="@string/muscleexist" android:textAllCaps="true" '
        'android:textSize="@dimen/ui_mode_button_text_size" android:textColor="@color/mode_button_text" '
        'android:textStyle="bold"',
    ),
    (
        'android:id="@id/youyangyundong" android:background="@drawable/round_corner_drawable_r10_orange" '
        'android:layout_width="120.0dip" android:layout_height="38.0dip" android:layout_marginLeft="5.0dip" '
        'android:layout_marginRight="5.0dip" android:text="@string/youyangyundong" android:textAllCaps="false"',
        'android:id="@id/youyangyundong" android:background="@drawable/round_corner_drawable_r10_orange" '
        'android:layout_width="120.0dip" android:layout_height="42.0dip" android:layout_marginLeft="5.0dip" '
        'android:layout_marginRight="5.0dip" android:text="@string/youyangyundong" android:textAllCaps="true" '
        'android:textSize="@dimen/ui_mode_button_text_size" android:textColor="@color/mode_button_text" '
        'android:textStyle="bold"',
    ),
    (
        'android:id="@id/anmo" android:background="@drawable/round_corner_drawable_r10_blue" '
        'android:layout_width="120.0dip" android:layout_height="38.0dip" android:layout_margin="5.0dip" '
        'android:text="@string/anmo"',
        'android:id="@id/anmo" android:background="@drawable/round_corner_drawable_r10_blue" '
        'android:layout_width="120.0dip" android:layout_height="42.0dip" android:layout_margin="5.0dip" '
        'android:text="@string/anmo" android:textAllCaps="true" '
        'android:textSize="@dimen/ui_mode_button_text_size" android:textColor="@color/mode_button_text" '
        'android:textStyle="bold"',
    ),
    (
        'android:id="@id/strenthExist" android:background="@drawable/round_corner_drawable_r10_red" '
        'android:layout_width="100.0dip" android:layout_height="40.0dip" android:layout_margin="20.0dip" '
        'android:text="@string/strenthtrain" android:textAllCaps="false"',
        'android:id="@id/strenthExist" android:background="@drawable/round_corner_drawable_r10_red" '
        'android:layout_width="100.0dip" android:layout_height="42.0dip" android:layout_margin="20.0dip" '
        'android:text="@string/strenthtrain" android:textAllCaps="true" '
        'android:textSize="@dimen/ui_mode_button_text_size" android:textColor="@color/mode_button_text" '
        'android:textStyle="bold"',
    ),
    (
        'android:id="@id/youyangyundong" android:background="@drawable/round_corner_drawable_r10_orange" '
        'android:layout_width="100.0dip" android:layout_height="40.0dip" android:layout_marginLeft="10.0dip" '
        'android:layout_marginRight="10.0dip" android:text="@string/youyangyundong" android:textAllCaps="false"',
        'android:id="@id/youyangyundong" android:background="@drawable/round_corner_drawable_r10_orange" '
        'android:layout_width="100.0dip" android:layout_height="42.0dip" android:layout_marginLeft="10.0dip" '
        'android:layout_marginRight="10.0dip" android:text="@string/youyangyundong" android:textAllCaps="true" '
        'android:textSize="@dimen/ui_mode_button_text_size" android:textColor="@color/mode_button_text" '
        'android:textStyle="bold"',
    ),
    (
        'android:id="@id/anmo" android:background="@drawable/round_corner_drawable_r10_blue" '
        'android:layout_width="100.0dip" android:layout_height="40.0dip" android:layout_margin="20.0dip" '
        'android:text="@string/anmo"',
        'android:id="@id/anmo" android:background="@drawable/round_corner_drawable_r10_blue" '
        'android:layout_width="100.0dip" android:layout_height="42.0dip" android:layout_margin="20.0dip" '
        'android:text="@string/anmo" android:textAllCaps="true" '
        'android:textSize="@dimen/ui_mode_button_text_size" android:textColor="@color/mode_button_text" '
        'android:textStyle="bold"',
    ),
)

ARROW_NIGHT = (
    'android:background="@mipmap/sanjiaoxing" android:layout_width="wrap_content" android:layout_height="wrap_content"',
    'android:background="@mipmap/sanjiaoxing" android:layout_width="18.0dip" android:layout_height="18.0dip" '
    'android:tint="@color/accent_primary"',
)

LAYOUT_NIGHT_SOURCES = {
    "new_train_fragment_layout.xml": (
        ('android:background="@mipmap/verticalbar"', 'android:background="@drawable/ui_sidebar_background"'),
        ARROW_NIGHT,
    ),
    "train_fragment_layout.xml": (
        ('android:background="@mipmap/verticalbar"', 'android:background="@drawable/ui_sidebar_background"'),
        ARROW_NIGHT,
    ),
    "user_fragment_layout.xml": (
        ('android:background="@mipmap/titlebar2"', 'android:background="@drawable/ui_header_background"'),
    ),
    "user_item_layout.xml": (
        ('android:background="@mipmap/people"', 'android:background="@mipmap/people" android:tint="@color/tab_icon_unselected"'),
        ('android:background="@mipmap/register"', 'android:background="@mipmap/register" android:tint="@color/tab_icon_unselected"'),
        ('android:background="@mipmap/high"', 'android:background="@mipmap/high" android:tint="@color/tab_icon_unselected"'),
        ('android:background="@mipmap/weight"', 'android:background="@mipmap/weight" android:tint="@color/tab_icon_unselected"'),
        ('android:background="@mipmap/setting"', 'android:background="@mipmap/setting" android:tint="@color/tab_icon_unselected"'),
        ('android:background="@mipmap/trainrecord"', 'android:background="@mipmap/trainrecord" android:tint="@color/tab_icon_unselected"'),
        ('android:background="@mipmap/orderpic"', 'android:background="@mipmap/orderpic" android:tint="@color/tab_icon_unselected"'),
    ),
    "amount_layout2.xml": (
        ('app:appBorderColor="@color/gray_color"', 'app:appBorderColor="@color/card_stroke"'),
        (
            'android:textColor="@color/white_color" android:gravity="center" android:id="@id/btnDecrease"',
            'android:textColor="@color/text_on_accent" android:textStyle="bold" android:gravity="center" '
            'android:id="@id/btnDecrease"',
        ),
        (
            'android:textColor="@color/white_color" android:gravity="center" android:id="@id/btnIncrease"',
            'android:textColor="@color/text_on_accent" android:textStyle="bold" android:gravity="center" '
            'android:id="@id/btnIncrease"',
        ),
    ),
    "new_user_train_control_item_layout.xml": (
        (
            'android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_margin="25.0dip" '
            'android:layout_centerInParent="true" />',
            'android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_margin="42.0dip" '
            'android:layout_centerInParent="true" />',
        ),
        ('android:textColor="@color/mode_button_text"', 'android:textColor="@color/mode_button_text_active"'),
        ('android:textSize="12.0sp" android:textColor="@color/text_primary" android:id="@id/textview',
         'android:textSize="@dimen/ui_channel_value_text_size" android:textStyle="bold" '
         'android:textColor="@color/text_primary" android:id="@id/textview'),
        ('android:textColor="@color/white_color" android:gravity="center" android:id="@id/ma"',
         'android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" '
         'android:textStyle="bold" android:gravity="center" android:id="@id/ma"'),
        ('android:textSize="14.0sp" android:textColor="@color/green_color"',
         'android:textSize="15.0sp" android:textStyle="bold" android:textColor="@color/impulse_accent"'),
        ('android:textSize="14.0sp" android:textColor="@color/wave_color_red"',
         'android:textSize="15.0sp" android:textStyle="bold" android:textColor="@color/pause_accent"'),
    ),
    "user_train_control_item_layout.xml": (
        (
            'android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_margin="25.0dip" '
            'android:layout_centerInParent="true" />',
            'android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_margin="42.0dip" '
            'android:layout_centerInParent="true" />',
        ),
        ('android:textColor="@color/mode_button_text"', 'android:textColor="@color/mode_button_text_active"'),
        ('android:textSize="12.0sp" android:textColor="@color/text_primary" android:id="@id/textview',
         'android:textSize="@dimen/ui_channel_value_text_size" android:textStyle="bold" '
         'android:textColor="@color/text_primary" android:id="@id/textview'),
        ('android:textColor="@color/white_color" android:gravity="center" android:id="@id/ma"',
         'android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" '
         'android:textStyle="bold" android:gravity="center" android:id="@id/ma"'),
        ('android:textSize="14.0sp" android:textColor="@color/green_color"',
         'android:textSize="15.0sp" android:textStyle="bold" android:textColor="@color/impulse_accent"'),
        ('android:textSize="14.0sp" android:textColor="@color/wave_color_red"',
         'android:textSize="15.0sp" android:textStyle="bold" android:textColor="@color/pause_accent"'),
    ),
}


def patch_mode_buttons() -> None:
    for name in USER_ROW_LAYOUTS:
        path = LAYOUT_DIR / name
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        original = text
        for old, new in MODE_BUTTON_REPLACEMENTS:
            text = text.replace(old, new)
        if text != original:
            path.write_text(text, encoding="utf-8")
            print(f"patched mode buttons in {name}")


def copy_layout_night() -> None:
    layout_night_dest = DECOMPILED / "res" / "layout-night"
    layout_night_dest.mkdir(parents=True, exist_ok=True)
    for stale in layout_night_dest.glob("*.xml"):
        if stale.name not in LAYOUT_NIGHT_SOURCES:
            stale.unlink()
            print(f"removed stale layout-night/{stale.name}")
    for name, replacements in LAYOUT_NIGHT_SOURCES.items():
        src = LAYOUT_DIR / name
        if not src.exists():
            continue
        text = src.read_text(encoding="utf-8")
        for old, new in replacements:
            text = text.replace(old, new)
        dest = layout_night_dest / name
        dest.write_text(text, encoding="utf-8")
        print(f"created layout-night/{name}")


def patch_wave_ball_hidden() -> None:
    for name in USER_ROW_LAYOUTS:
        path = LAYOUT_DIR / name
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if 'wave_ball_progress_act_view" android:visibility="gone"' in text:
            continue
        updated = text.replace(WAVE_BALL_HIDE[0], WAVE_BALL_HIDE[1], 1)
        if updated != text:
            path.write_text(updated, encoding="utf-8")
            print(f"hid wave fill view in {name}")


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


def patch_legacy_day_colors() -> None:
    path = DECOMPILED / "res" / "values" / "colors.xml"
    text = path.read_text(encoding="utf-8")
    changed = 0
    for old, new in DAY_LEGACY_COLOR_REPLACEMENTS:
        if old in text:
            text = text.replace(old, new, 1)
            changed += 1
    if changed:
        path.write_text(text, encoding="utf-8")
    print(f"patched {changed} legacy day colors in colors.xml")


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
    patch_wave_ball_hidden()
    patch_mode_buttons()
    copy_layout_night()
    patch_legacy_day_colors()
    patch_ui_strings()
    print("UI theme applied.")


if __name__ == "__main__":
    main()
