#!/usr/bin/env python3
"""Radial avatar hub: slider ring outside core, wedge index buttons at 45/135/225/315°."""

from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
BRANDING = ROOT / "branding"
BRANDING_THEME = BRANDING / "theme"
BRANDING_DRAWABLE = BRANDING / "drawable"
BRANDING_DRAWABLE_NIGHT = BRANDING / "drawable-night"
PUBLIC_XML = DECOMPILED / "res" / "values" / "public.xml"
R_DRAWABLE = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "R$drawable.smali"
TRAIN_VIEW_HOLDER = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "TrainViewHolder.smali"
)

ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

WEIGHTS_DEFAULT = {
    "mode": "0.4",
    "channels": "1.75",
    "avatar": "0.85",
    "info": "0.45",
    "actions": "0.2",
}

WEIGHTS_TABLET = {
    "mode": "0.35",
    "channels": "1.55",
    "avatar": "1.05",
    "info": "0.45",
    "actions": "0.2",
}

WEDGE_DRAWABLES = (
    "ui_avatar_wedge_cap_active",
    "ui_avatar_wedge_cap_dark",
    "ui_avatar_wedge_cap_pause",
)

AVATAR_BLOCK_OLD = re.compile(
    r"<RelativeLayout android:layout_width=\"0\.0dip\" android:layout_height=\"fill_parent\" "
    r"android:layout_weight=\"[\d.]+\"[\s\S]*?"
    r"<com\.isaigu\.gymapp\.widget\.CircleSeekBar android:id=\"@id/circleSeekBar\"[\s\S]*?/>"
    r"\s*</RelativeLayout>",
)

AVATAR_BLOCK_RADIAL = re.compile(
    r"<RelativeLayout android:layout_width=\"0\.0dip\" android:layout_height=\"fill_parent\" "
    r"android:layout_weight=\"[\d.]+\"[\s\S]*?"
    r"@id/pauseHzValue[\s\S]*?</FrameLayout>\s*</RelativeLayout>",
)

AVATAR_WEIGHT = re.compile(
    r"(<RelativeLayout android:layout_width=\"0\.0dip\" android:layout_height=\"fill_parent\" "
    r"android:layout_weight=\")[\d.]+(\">[\s\S]*?@id/circleSeekBar)",
)

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

TEXTVIEW_BG_OLD = re.compile(
    r"(const v\d, )0x7f080090(\n\n    invoke-virtual \{v\d+, v\d+\}, "
    r"Landroid/widget/TextView;->setBackgroundResource\(I\)V)"
)
TEXTVIEW_BG_ACTIVE_OLD = re.compile(
    r"(const v\d, )0x7f080091(\n\n    invoke-virtual \{v\d+, v\d+\}, "
    r"Landroid/widget/TextView;->setBackgroundResource\(I\)V)"
)
TEXTVIEW_BG_PAUSE_OLD = re.compile(
    r"(const v\d, )0x7f0800e4(\n\n    invoke-virtual \{v\d+, v\d+\}, "
    r"Landroid/widget/TextView;->setBackgroundResource\(I\)V)"
)


def wedge_orbit(rotation: str, counter_rotation: str, view_id: str, sample_text: str) -> str:
    return f"""            <FrameLayout android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_centerInParent="true" android:rotation="{rotation}">
                <TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_avatar_index_text_size" android:textStyle="bold" android:gravity="center" android:id="@id/{view_id}" android:background="@drawable/ui_avatar_wedge_cap_dark" android:layout_width="@dimen/ui_avatar_wedge_width" android:layout_height="@dimen/ui_avatar_wedge_height" android:layout_gravity="top|center_horizontal" android:layout_marginTop="@dimen/ui_avatar_wedge_radius_offset" android:rotation="{counter_rotation}" android:text="{sample_text}" />
            </FrameLayout>"""


def avatar_hub_xml(weights: dict[str, str]) -> str:
    wedges = "\n".join(
        [
            wedge_orbit("-45", "45", "ma", "35mA"),
            wedge_orbit("45", "-45", "pauseMaValue", "0%"),
            wedge_orbit("-135", "135", "hzValue", "80Hz"),
            wedge_orbit("135", "-135", "pauseHzValue", "7Hz"),
        ]
    )
    return f"""<RelativeLayout android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="{weights["avatar"]}">
            <com.isaigu.gymapp.widget.CircleSeekBar android:id="@id/circleSeekBar" android:padding="@dimen/ui_avatar_ring_margin" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_centerInParent="true" android:rotation="180.0" app:wave_bg_color="@color/blume_color" app:wheel_pointer_color="@color/grown_color" app:wheel_pointer_radius="@dimen/ui_avatar_wheel_pointer_radius" app:wheel_reached_width="@dimen/ui_avatar_wheel_track_width" app:wheel_scroll_only_one_circle="true" app:wheel_unreached_color="@color/seekbar_back_gray" app:wheel_unreached_width="@dimen/ui_avatar_wheel_track_width" />
            <FrameLayout android:layout_width="@dimen/ui_avatar_core_size" android:layout_height="@dimen/ui_avatar_core_size" android:layout_centerInParent="true">
                <ImageView android:id="@id/userIcon" android:padding="@dimen/ui_avatar_icon_padding" android:layout_width="fill_parent" android:layout_height="fill_parent" android:src="@mipmap/icon_sample" android:scaleType="fitCenter" />
                <TextView android:textColor="@color/text_primary" android:textSize="@dimen/ui_avatar_timer_text_size" android:textStyle="bold" android:id="@id/wave_ball_progress_value" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_gravity="center" />
                <com.isaigu.gymapp.widget.WaveBallProgress android:id="@id/wave_ball_progress_act_view" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_margin="@dimen/ui_avatar_wave_margin" android:layout_gravity="center" />
            </FrameLayout>
{wedges}
        </RelativeLayout>"""


def next_drawable_id() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_DRAWABLE):
        if path.exists():
            ids.extend(int(value, 16) for value in re.findall(r"0x7f08[0-9a-f]+", path.read_text(encoding="utf-8")))
    return max(ids) + 1 if ids else 0x7f0800e5


def register_drawables() -> dict[str, int]:
    assigned: dict[str, int] = {}
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    r_text = R_DRAWABLE.read_text(encoding="utf-8")
    next_id = next_drawable_id()

    for name in WEDGE_DRAWABLES:
        match = re.search(rf'name="{name}" id="(0x[0-9a-f]+)"', public_text)
        if match:
            assigned[name] = int(match.group(1), 16)
            continue
        resource_hex = f"0x{next_id:08x}"
        assigned[name] = next_id
        next_id += 1
        public_text = public_text.replace(
            "</resources>",
            f'    <public type="drawable" name="{name}" id="{resource_hex}" />\n</resources>',
            1,
        )
        if f".field public static final {name}:I" not in r_text:
            r_text = r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {name}:I = {resource_hex}\n\n\n# direct methods",
                1,
            )
        print(f"registered drawable {name} -> {resource_hex}")

    PUBLIC_XML.write_text(public_text, encoding="utf-8")
    R_DRAWABLE.write_text(r_text, encoding="utf-8")
    return assigned


def copy_wedge_drawables() -> None:
    for name in WEDGE_DRAWABLES:
        for src_dir, dest_dir_name in (
            (BRANDING_DRAWABLE, "drawable"),
            (BRANDING_DRAWABLE_NIGHT, "drawable-night"),
        ):
            src = src_dir / f"{name}.xml"
            if not src.exists():
                continue
            dest = RES / dest_dir_name / f"{name}.xml"
            dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dest)


def copy_tablet_dimens() -> None:
    sw_dir = RES / "values-sw600dp"
    sw_dir.mkdir(parents=True, exist_ok=True)
    shutil.copy2(BRANDING_THEME / "dimens-sw600dp.xml", sw_dir / "ui_dimens.xml")
    print(f"copied tablet dimens -> {sw_dir.relative_to(DECOMPILED)}/ui_dimens.xml")


def patch_index_button_backgrounds(drawable_ids: dict[str, int]) -> None:
    if not TRAIN_VIEW_HOLDER.exists():
        return
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    dark = drawable_ids["ui_avatar_wedge_cap_dark"]
    active = drawable_ids["ui_avatar_wedge_cap_active"]
    pause = drawable_ids["ui_avatar_wedge_cap_pause"]
    updated = text
    updated = TEXTVIEW_BG_OLD.sub(rf"\g<1>{dark:#x}\2", updated)
    updated = TEXTVIEW_BG_ACTIVE_OLD.sub(rf"\g<1>{active:#x}\2", updated)
    updated = TEXTVIEW_BG_PAUSE_OLD.sub(rf"\g<1>{pause:#x}\2", updated)
    if updated != text:
        TRAIN_VIEW_HOLDER.write_text(updated, encoding="utf-8")
        print("TrainViewHolder: index buttons use wedge drawable backgrounds")
    else:
        print("TrainViewHolder: wedge drawable backgrounds already patched")


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
        body = f"{match.group(1)}0.0dip{match.group(2)}"
        return body.replace(" />", ' android:layout_weight="1.0" />', 1)

    return CHANNEL_SEEKBAR.sub(seekbar_repl, text)


def patch_avatar_weight(text: str, avatar_weight: str) -> str:
    return AVATAR_WEIGHT.sub(rf"\g<1>{avatar_weight}\2", text, count=1)


def patch_avatar_hub(text: str, weights: dict[str, str]) -> tuple[str, bool]:
    radial = 'android:rotation="-45"' in text and "@drawable/ui_avatar_wedge_cap_dark" in text
    if radial:
        if f'android:layout_weight="{weights["avatar"]}"' in text:
            return text, False
        return patch_avatar_weight(text, weights["avatar"]), True
    block = AVATAR_BLOCK_OLD if AVATAR_BLOCK_OLD.search(text) else AVATAR_BLOCK_RADIAL
    if not block.search(text):
        raise RuntimeError("avatar hub block not found")
    return block.sub(avatar_hub_xml(weights), text, count=1), True


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
            parts.append("radial avatar hub")
        if "@dimen/ui_train_row_height" in text:
            parts.append("row height")
        print(f"patched {path.relative_to(DECOMPILED)} ({', '.join(parts) or 'weights'})")
    else:
        print(f"{path.relative_to(DECOMPILED)}: radial avatar layout already applied")


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
        text = patch_avatar_weight(text, WEIGHTS_TABLET["avatar"])
        dest.write_text(text, encoding="utf-8")
        print(f"created {dest.relative_to(DECOMPILED)} (tablet weights)")


def main() -> None:
    if not DECOMPILED.is_dir():
        raise SystemExit("Decompiled tree missing; run build-apk.sh first")
    copy_wedge_drawables()
    drawable_ids = register_drawables()
    copy_tablet_dimens()
    patch_layouts()
    patch_index_button_backgrounds(drawable_ids)
    print("Radial avatar layout patches applied.")


if __name__ == "__main__":
    main()
