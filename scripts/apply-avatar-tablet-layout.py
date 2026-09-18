#!/usr/bin/env python3
"""Responsive avatar hub: ring zone inset, index buttons in corners, tablet dimens."""

from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
BRANDING = ROOT / "branding" / "theme"

ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

# Default column weights (total 3.65) — wider avatar, slightly narrower channel strip.
WEIGHTS_DEFAULT = {
    "mode": "0.4",
    "channels": "1.75",
    "avatar": "0.85",
    "info": "0.45",
    "actions": "0.2",
}

# Tablet (sw600dp): even more room for avatar ring + index buttons.
WEIGHTS_TABLET = {
    "mode": "0.35",
    "channels": "1.55",
    "avatar": "1.05",
    "info": "0.45",
    "actions": "0.2",
}

AVATAR_BLOCK = re.compile(
    r"<RelativeLayout android:layout_width=\"0\.0dip\" android:layout_height=\"fill_parent\" "
    r"android:layout_weight=\"[\d.]+\"[\s\S]*?"
    r"<com\.isaigu\.gymapp\.widget\.CircleSeekBar android:id=\"@id/circleSeekBar\"[\s\S]*?/>"
    r"\s*</RelativeLayout>",
)

AVATAR_HUB = """<RelativeLayout android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="{avatar_weight}">
            <FrameLayout android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_centerInParent="true" android:paddingLeft="@dimen/ui_avatar_content_inset" android:paddingTop="@dimen/ui_avatar_content_inset" android:paddingRight="@dimen/ui_avatar_content_inset" android:paddingBottom="@dimen/ui_avatar_content_inset">
                <ImageView android:id="@id/userIcon" android:padding="@dimen/ui_avatar_icon_padding" android:layout_width="fill_parent" android:layout_height="fill_parent" android:src="@mipmap/icon_sample" android:scaleType="fitCenter" />
                <TextView android:textColor="@color/text_primary" android:textSize="@dimen/ui_avatar_timer_text_size" android:textStyle="bold" android:id="@id/wave_ball_progress_value" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_gravity="center" />
                <com.isaigu.gymapp.widget.WaveBallProgress android:id="@id/wave_ball_progress_act_view" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_margin="@dimen/ui_avatar_wave_margin" android:layout_gravity="center" />
                <com.isaigu.gymapp.widget.CircleSeekBar android:id="@id/circleSeekBar" android:padding="@dimen/ui_avatar_ring_padding" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_gravity="center" android:rotation="180.0" app:wave_bg_color="@color/blume_color" app:wheel_pointer_color="@color/grown_color" app:wheel_pointer_radius="@dimen/ui_avatar_wheel_pointer_radius" app:wheel_reached_width="@dimen/ui_avatar_wheel_track_width" app:wheel_scroll_only_one_circle="true" app:wheel_unreached_color="@color/seekbar_back_gray" app:wheel_unreached_width="@dimen/ui_avatar_wheel_track_width" />
            </FrameLayout>
            <TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:gravity="center" android:id="@id/ma" android:background="@drawable/light_black_button_drawable_r30" android:layout_width="@dimen/ui_avatar_index_button_size" android:layout_height="@dimen/ui_avatar_index_button_size" android:layout_alignParentLeft="true" android:layout_alignParentTop="true" android:layout_marginLeft="@dimen/ui_avatar_index_inset_h" android:layout_marginTop="@dimen/ui_avatar_index_inset_v" android:text="35mA" />
            <TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:gravity="center" android:id="@id/pauseMaValue" android:background="@drawable/light_black_button_drawable_r30" android:layout_width="@dimen/ui_avatar_index_button_size" android:layout_height="@dimen/ui_avatar_index_button_size" android:layout_alignParentRight="true" android:layout_alignParentTop="true" android:layout_marginRight="@dimen/ui_avatar_index_inset_h" android:layout_marginTop="@dimen/ui_avatar_index_inset_v" android:text="0%" />
            <TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:gravity="center" android:id="@id/hzValue" android:background="@drawable/light_black_button_drawable_r30" android:layout_width="@dimen/ui_avatar_index_button_size" android:layout_height="@dimen/ui_avatar_index_button_size" android:layout_alignParentLeft="true" android:layout_alignParentBottom="true" android:layout_marginLeft="@dimen/ui_avatar_index_inset_h" android:layout_marginBottom="@dimen/ui_avatar_index_inset_v" android:text="80Hz" />
            <TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:gravity="center" android:id="@id/pauseHzValue" android:background="@drawable/light_black_button_drawable_r30" android:layout_width="@dimen/ui_avatar_index_button_size" android:layout_height="@dimen/ui_avatar_index_button_size" android:layout_alignParentRight="true" android:layout_alignParentBottom="true" android:layout_marginRight="@dimen/ui_avatar_index_inset_h" android:layout_marginBottom="@dimen/ui_avatar_index_inset_v" android:text="7Hz" />
        </RelativeLayout>"""

ROW_HEIGHT_MARKERS = (
    'android:layout_height="170.0dip"',
    'android:layout_height="@dimen/ui_train_row_height"',
)

CHANNEL_COLUMN_OLD = (
    'android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="0.2">'
)
CHANNEL_COLUMN_NEW = (
    'android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="0.2">'
)
CHANNEL_SEEKBAR = re.compile(
    r'(<com\.isaigu\.gymapp\.widget\.VerticalColorSeekBar android:id="@id/vpb_brightness\d+" '
    r'android:paddingTop="2\.0dip" android:paddingBottom="2\.0dip" android:layout_width="35\.0dip" '
    r'android:layout_height=")wrap_content(" android:layout_marginBottom="10\.0dip" />)'
)


def copy_tablet_dimens() -> None:
    sw_dir = RES / "values-sw600dp"
    sw_dir.mkdir(parents=True, exist_ok=True)
    dest = sw_dir / "ui_dimens.xml"
    shutil.copy2(BRANDING / "dimens-sw600dp.xml", dest)
    print(f"copied tablet dimens -> {dest.relative_to(DECOMPILED)}")


def avatar_hub_xml(weights: dict[str, str]) -> str:
    return AVATAR_HUB.format(avatar_weight=weights["avatar"])


def apply_weights(text: str, weights: dict[str, str]) -> str:
    text = re.sub(
        r'(<LinearLayout android:gravity="center" android:orientation="vertical" '
        r'android:layout_width="0\.0dip" android:layout_height="fill_parent" '
        r'android:layout_weight=")[\d.]+(")',
        rf"\g<1>{weights['mode']}\2",
        text,
        count=1,
    )
    text = re.sub(
        r'(<LinearLayout android:orientation="horizontal" android:layout_width="0\.0dip" '
        r'android:layout_height="fill_parent" android:layout_weight=")[\d.]+(">)',
        rf"\g<1>{weights['channels']}\2",
        text,
        count=1,
    )
    text = re.sub(
        r'(<LinearLayout android:layout_gravity="center_vertical" android:orientation="vertical" '
        r'android:layout_width="0\.0dip" android:layout_height="wrap_content" '
        r'android:layout_weight=")[\d.]+(">)',
        rf"\g<1>{weights['info']}\2",
        text,
        count=1,
    )
    # Avatar weight is set inside AVATAR_HUB replacement.
    text = re.sub(
        r'(<LinearLayout android:gravity="center" android:orientation="vertical" '
        r'android:layout_width="0\.0dip" android:layout_height="fill_parent" '
        r'android:layout_weight=")[\d.]+(">\s*<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/stop")',
        rf"\g<1>{weights['actions']}\2",
        text,
        count=1,
    )
    return text


def patch_row_height(text: str) -> str:
    for marker in ROW_HEIGHT_MARKERS:
        if marker in text:
            return text.replace(marker, 'android:layout_height="@dimen/ui_train_row_height"', 1)
    return text


def patch_channel_sliders(text: str) -> str:
    if CHANNEL_COLUMN_OLD in text:
        text = text.replace(CHANNEL_COLUMN_OLD, CHANNEL_COLUMN_NEW)
    def seekbar_repl(match: re.Match[str]) -> str:
        body = f'{match.group(1)}0.0dip{match.group(2)}'
        return body.replace(" />", ' android:layout_weight="1.0" />', 1)

    text = CHANNEL_SEEKBAR.sub(seekbar_repl, text)
    return text


def patch_avatar_hub(text: str, weights: dict[str, str]) -> tuple[str, bool]:
    if 'android:paddingLeft="@dimen/ui_avatar_content_inset"' in text:
        if f'android:layout_weight="{weights["avatar"]}"' in text:
            return text, False
    hub = avatar_hub_xml(weights)
    if not AVATAR_BLOCK.search(text):
        raise RuntimeError("avatar hub block not found")
    return AVATAR_BLOCK.sub(hub, text, count=1), True


def patch_layout_file(path: Path, weights: dict[str, str]) -> None:
    text = path.read_text(encoding="utf-8")
    original = text
    text = patch_row_height(text)
    text = apply_weights(text, weights)
    text = patch_channel_sliders(text)
    text, avatar_changed = patch_avatar_hub(text, weights)
    if text != original:
        path.write_text(text, encoding="utf-8")
        parts = []
        if avatar_changed:
            parts.append("avatar hub")
        if "@dimen/ui_train_row_height" in text and 'android:layout_height="170.0dip"' not in text:
            parts.append("row height")
        if "layout_weight=\"1.0\"" in text:
            parts.append("channel sliders")
        print(f"patched {path.relative_to(DECOMPILED)} ({', '.join(parts) or 'weights'})")
    else:
        print(f"{path.relative_to(DECOMPILED)}: avatar tablet layout already applied")


def patch_layouts() -> None:
    for layout_dir in ("layout", "layout-night"):
        for name in ROW_LAYOUTS:
            path = RES / layout_dir / name
            if path.exists():
                patch_layout_file(path, WEIGHTS_DEFAULT)

    sw_dir = RES / "layout-sw600dp"
    sw_dir.mkdir(parents=True, exist_ok=True)
    for name in ROW_LAYOUTS:
        src = RES / "layout" / name
        if not src.exists():
            continue
        dest = sw_dir / name
        text = src.read_text(encoding="utf-8")
        text = apply_weights(text, WEIGHTS_TABLET)
        text, _ = patch_avatar_hub(text, WEIGHTS_TABLET)
        dest.write_text(text, encoding="utf-8")
        print(f"created {dest.relative_to(DECOMPILED)} (tablet weights)")


def main() -> None:
    if not DECOMPILED.is_dir():
        raise SystemExit("Decompiled tree missing; run build-apk.sh first")
    copy_tablet_dimens()
    patch_layouts()
    print("Avatar tablet layout patches applied.")


if __name__ == "__main__":
    main()
