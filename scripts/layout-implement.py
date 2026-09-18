#!/usr/bin/env python3
"""Generate Android layout XML from approved layout brief."""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from layout_brief_schema import SCREENS
from layout_brief_lib import load_brief, validate

ROOT = Path(__file__).resolve().parents[1]
STAGING = ROOT / "branding" / "layouts" / "staging"
DESIGN = ROOT / "branding" / "design"


def _fmt_dp(v: float | int) -> str:
    v = int(v) if isinstance(v, float) and v.is_integer() else v
    return f"{v}.0dip"


def _button_xml(e: dict) -> str:
    eid = e.get("id", "btn")
    label = e.get("label", "Button")
    w = _fmt_dp(e.get("width_dp", 120))
    h = _fmt_dp(e.get("height_dp", 42))
    bg = e.get("background", "@drawable/round_corner_drawable_r10_red")
    widget = e.get("widget", "com.isaigu.gymapp.widget.MyButton")
    return (
        f'<{widget} android:id="@id/{eid}" android:layout_width="{w}" android:layout_height="{h}" '
        f'android:background="{bg}" android:text="{label}" android:textAllCaps="true" '
        f'android:textColor="@color/mode_button_text" android:textSize="@dimen/ui_mode_button_text_size" '
        f'android:textStyle="bold" android:layout_margin="5.0dip" />'
    )


def _text_xml(e: dict) -> str:
    eid = e.get("id")
    id_attr = f' android:id="@id/{eid}"' if eid else ""
    size = e.get("text_sp", 14)
    label = e.get("label", "Text")
    return (
        f'<TextView{id_attr} android:layout_width="wrap_content" android:layout_height="wrap_content" '
        f'android:text="{label}" android:textColor="@color/text_primary" android:textSize="{size}.0sp" />'
    )


def _input_xml(e: dict) -> str:
    eid = e.get("id", "field")
    hint = e.get("hint", e.get("label", ""))
    widget = e.get("widget", "EditText")
    cls = widget if "." in widget else f"android.widget.{widget}"
    return (
        f'<{cls} android:id="@id/{eid}" android:layout_width="fill_parent" android:layout_height="wrap_content" '
        f'android:hint="{hint}" android:textColor="@color/text_primary" android:textColorHint="@color/text_hint" '
        f'android:background="@drawable/round_circle_drawable_r20_white" android:paddingLeft="10.0dip" '
        f'android:layout_marginBottom="10.0dip" />'
    )


def _slider_bank_xml(e: dict) -> str:
    width = _fmt_dp(e.get("channel_width_dp", 35))
    parts = []
    ids = e.get("ids") or [f"vpb_brightness{i}" for i in range(1, 11)]
    for i, sid in enumerate(ids):
        parts.append(
            f'<LinearLayout android:gravity="center" android:orientation="vertical" '
            f'android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="0.2">\n'
            f'  <TextView android:textSize="12.0sp" android:textColor="@color/text_primary" '
            f'android:id="@id/textview{i+1}" android:layout_width="wrap_content" '
            f'android:layout_height="wrap_content" android:layout_margin="5.0dip" android:text="37ml" />\n'
            f'  <com.isaigu.gymapp.widget.VerticalColorSeekBar android:id="@id/{sid}" '
            f'android:paddingTop="2.0dip" android:paddingBottom="2.0dip" android:layout_width="{width}" '
            f'android:layout_height="wrap_content" android:layout_marginBottom="10.0dip" />\n'
            f'</LinearLayout>'
        )
    return (
        f'<LinearLayout android:orientation="horizontal" android:layout_width="fill_parent" '
        f'android:layout_height="fill_parent">\n' + "\n".join(parts) + "\n</LinearLayout>"
    )


def _avatar_panel_xml(e: dict) -> str:
    av = e.get("avatar") or {}
    btn = _fmt_dp(av.get("index_button_size_dp", 45))
    edge = _fmt_dp(av.get("index_button_edge_dp", 6))
    vert = _fmt_dp(av.get("index_button_vertical_dp", 16))
    pad = _fmt_dp(av.get("icon_padding_dp", 15))
    timer = av.get("timer_text_sp", 45)
    track = _fmt_dp(av.get("slider_track_width_dp", 14))
    spad = _fmt_dp(av.get("slider_padding_dp", 14))
    sbottom = _fmt_dp(av.get("slider_padding_bottom_dp", 10))
    ptr = _fmt_dp(av.get("slider_pointer_radius_dp", 18))
    wave = _fmt_dp(av.get("wave_margin_dp", 42))
    return f'''<RelativeLayout android:layout_width="fill_parent" android:layout_height="fill_parent">
            <TextView android:id="@id/ma" android:layout_width="{btn}" android:layout_height="{btn}" android:layout_marginTop="{vert}" android:layout_marginLeft="{edge}" android:gravity="center" android:text="35mA" android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:background="@drawable/light_black_button_drawable_r30" />
            <TextView android:id="@id/pauseMaValue" android:layout_width="{btn}" android:layout_height="{btn}" android:layout_alignParentRight="true" android:layout_marginTop="{vert}" android:layout_marginRight="{edge}" android:gravity="center" android:text="0%" android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:background="@drawable/light_black_button_drawable_r30" />
            <ImageView android:id="@id/userIcon" android:padding="{pad}" android:layout_width="fill_parent" android:layout_height="fill_parent" android:src="@mipmap/icon_sample" />
            <TextView android:id="@id/wave_ball_progress_value" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_centerInParent="true" android:text="20:00" android:textColor="@color/text_primary" android:textSize="{timer}.0sp" android:textStyle="bold" />
            <com.isaigu.gymapp.widget.WaveBallProgress android:id="@id/wave_ball_progress_act_view" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_margin="{wave}" android:layout_centerInParent="true" />
            <TextView android:id="@id/hzValue" android:layout_width="{btn}" android:layout_height="{btn}" android:layout_alignParentBottom="true" android:layout_marginBottom="{vert}" android:layout_marginLeft="{edge}" android:gravity="center" android:text="80Hz" android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:background="@drawable/light_black_button_drawable_r30" />
            <TextView android:id="@id/pauseHzValue" android:layout_width="{btn}" android:layout_height="{btn}" android:layout_alignParentRight="true" android:layout_alignParentBottom="true" android:layout_marginBottom="{vert}" android:layout_marginRight="{edge}" android:gravity="center" android:text="7Hz" android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:background="@drawable/light_black_button_drawable_r30" />
            <com.isaigu.gymapp.widget.CircleSeekBar android:id="@id/circleSeekBar" android:paddingLeft="{spad}" android:paddingTop="{spad}" android:paddingRight="{spad}" android:paddingBottom="{sbottom}" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_centerInParent="true" android:rotation="180.0" app:wave_bg_color="@color/blume_color" app:wheel_pointer_color="@color/grown_color" app:wheel_pointer_radius="{ptr}" app:wheel_reached_width="{track}" app:wheel_scroll_only_one_circle="true" app:wheel_unreached_color="@color/seekbar_back_gray" app:wheel_unreached_width="{track}" />
        </RelativeLayout>'''


def _element_xml(e: dict) -> str:
    t = e.get("type")
    if t == "button":
        return _button_xml(e)
    if t == "text":
        return _text_xml(e)
    if t == "input":
        return _input_xml(e)
    if t == "slider_bank":
        return _slider_bank_xml(e)
    if t == "avatar_panel":
        return _avatar_panel_xml(e)
    if t == "spacer":
        return f'<View android:layout_width="fill_parent" android:layout_height="{_fmt_dp(e.get("height_dp", 8))}" />'
    if t == "panel":
        inner = "\n".join(_element_xml(c) for c in e.get("elements") or [])
        orient = e.get("orientation", "vertical")
        return (
            f'<LinearLayout android:orientation="{orient}" android:layout_width="fill_parent" '
            f'android:layout_height="wrap_content">\n{inner}\n</LinearLayout>'
        )
    return ""


def _column_xml(col: dict) -> str:
    weight = col.get("weight", 1)
    name = col.get("name", "")
    elements = col.get("elements") or []
    inner_parts = []
    for e in elements:
        xml = _element_xml(e)
        if not xml:
            continue
        if e.get("type") == "button" and name == "mode_buttons":
            inner_parts.append(
                f'<LinearLayout android:gravity="center" android:orientation="vertical" '
                f'android:layout_width="fill_parent" android:layout_height="fill_parent">\n{xml}\n</LinearLayout>'
            )
        elif e.get("type") in ("slider_bank", "avatar_panel"):
            inner_parts.append(xml)
        else:
            inner_parts.append(xml)

    inner = "\n".join(inner_parts)
    orient = col.get("orientation", "vertical")
    gravity = ' android:gravity="center"' if col.get("center") else ""

    if any(e.get("type") == "avatar_panel" for e in elements):
        wrapper = "RelativeLayout"
        size = f'android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="{weight}"'
    elif any(e.get("type") == "slider_bank" for e in elements):
        return (
            f'<LinearLayout android:orientation="horizontal" android:layout_width="0.0dip" '
            f'android:layout_height="fill_parent" android:layout_weight="{weight}">\n{inner}\n</LinearLayout>'
        )
    elif name == "action_buttons":
        return (
            f'<LinearLayout android:gravity="center" android:orientation="vertical" '
            f'android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="{weight}">\n'
            f'<com.isaigu.gymapp.widget.MyButton android:id="@id/stop" android:background="@mipmap/stop" android:layout_width="40.0dip" android:layout_height="40.0dip" android:layout_marginTop="20.0dip" android:layout_marginBottom="20.0dip" />\n'
            f'<com.isaigu.gymapp.widget.MyButton android:id="@id/startpaulse" android:background="@mipmap/start1" android:layout_width="40.0dip" android:layout_height="40.0dip" android:layout_marginBottom="20.0dip" />\n'
            f'<com.isaigu.gymapp.widget.MyButton android:id="@id/save" android:background="@mipmap/save" android:layout_width="40.0dip" android:layout_height="40.0dip" android:layout_marginBottom="20.0dip" />\n'
            f'</LinearLayout>'
        )
    elif name == "user_info":
        return f'''<LinearLayout android:layout_gravity="center_vertical" android:orientation="vertical" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="{weight}">
            <TextView android:id="@id/name" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="Потребител" android:textColor="@color/text_primary" android:textSize="14.0sp" android:layout_marginLeft="10.0dip" />
            <TextView android:id="@id/time" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="20:00" android:textColor="@color/text_primary" android:textSize="18.0sp" android:layout_marginLeft="10.0dip" />
            <RelativeLayout android:layout_width="wrap_content" android:layout_height="36.0dip" android:layout_marginLeft="10.0dip">
                <com.isaigu.gymapp.widget.AmountView2 android:id="@id/paulsecontinue" android:layout_width="wrap_content" android:layout_height="36.0dip" android:layout_centerInParent="true" />
            </RelativeLayout>
            <RelativeLayout android:layout_width="wrap_content" android:layout_height="36.0dip" android:layout_marginLeft="10.0dip">
                <com.isaigu.gymapp.widget.AmountView2 android:id="@id/paulsestop" android:layout_width="wrap_content" android:layout_height="36.0dip" android:layout_centerInParent="true" />
            </RelativeLayout>
        </LinearLayout>'''
    else:
        wrapper = "LinearLayout"
        size = (
            f'android:orientation="{orient}" android:layout_width="0.0dip" '
            f'android:layout_height="fill_parent" android:layout_weight="{weight}"{gravity}'
        )

    if name == "mode_buttons":
        btns = []
        defaults = (
            ("strenthExist", "Мускули", "@drawable/round_corner_drawable_r10_red"),
            ("youyangyundong", "Аеробно", "@drawable/round_corner_drawable_r10_orange"),
            ("anmo", "Масаж", "@drawable/round_corner_drawable_r10_blue"),
        )
        for e in elements:
            if e.get("type") == "button":
                defaults = None
                btns.append(_button_xml(e))
        if defaults:
            for eid, label, bg in defaults:
                btns.append(_button_xml({"id": eid, "label": label, "background": bg}))
        inner = "\n".join(btns)
        return (
            f'<LinearLayout android:gravity="center" android:orientation="vertical" '
            f'android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="{weight}">\n'
            f'{inner}\n</LinearLayout>'
        )

    return f'<{wrapper} {size}>\n{inner}\n</{wrapper}>'


def build_train_row(brief: dict) -> str:
    height = _fmt_dp(brief.get("row_height_dp", 170))
    cols = "\n".join(_column_xml(c) for c in brief.get("columns") or [])
    return f'''<?xml version="1.0" encoding="utf-8"?>
<LinearLayout android:orientation="horizontal" android:background="@drawable/ui_card_background" android:layout_width="fill_parent" android:layout_height="{height}" android:layout_margin="@dimen/ui_card_margin"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <LinearLayout android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="fill_parent">
{cols}
    </LinearLayout>
</LinearLayout>
'''


def build_form_screen(brief: dict) -> str:
    parts = []
    for e in brief.get("elements") or []:
        parts.append(_element_xml(e))
    body = "\n".join(parts)
    return f'''<?xml version="1.0" encoding="utf-8"?>
<LinearLayout android:orientation="vertical" android:background="@color/bg_screen" android:padding="24.0dip" android:layout_width="fill_parent" android:layout_height="fill_parent"
  xmlns:android="http://schemas.android.com/apk/res/android">
{body}
</LinearLayout>
'''


def implement(brief: dict, apply: bool = False) -> Path:
    screen = brief.get("screen")
    meta = SCREENS.get(screen or "", {})
    if screen == "train_user_row":
        xml = build_train_row(brief)
        out_name = Path(brief.get("target") or meta["target_new"]).name
    elif screen in ("login", "add_user_form", "custom"):
        xml = build_form_screen(brief)
        out_name = Path(brief.get("target") or meta.get("target", "staging/custom.xml")).name
    else:
        raise ValueError(f"unsupported screen {screen}")

    STAGING.mkdir(parents=True, exist_ok=True)
    staging_path = STAGING / out_name
    staging_path.write_text(xml, encoding="utf-8")
    print(f"Wrote staging/{out_name}")

    if apply:
        if screen == "train_user_row":
            targets = [
                ROOT / meta["target_new"],
                ROOT / meta["target_legacy"],
            ]
        else:
            targets = [ROOT / (brief.get("target") or meta["target"])]
        for dest in targets:
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_text(xml, encoding="utf-8")
            print(f"Applied -> {dest.relative_to(ROOT)}")

    return staging_path


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("brief", help="Path to approved layout brief JSON")
    parser.add_argument("--apply", action="store_true", help="Copy staging XML to target paths")
    parser.add_argument("--allow-draft", action="store_true")
    args = parser.parse_args()

    path = Path(args.brief)
    brief = load_brief(path)
    if args.allow_draft:
        brief["allow_draft"] = True
    errors = validate(brief)
    if errors:
        for e in errors:
            print(f"ERROR: {e}", file=sys.stderr)
        return 1

    implement(brief, apply=args.apply)
    print("\nNext: review branding/layouts/staging/ then DESIGN_PIPELINE=1 bash build-apk.sh")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
