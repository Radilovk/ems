"""Build pixel-accurate train screen mockup spec from branding/design/ XML."""

from __future__ import annotations

import hashlib
import re
import xml.etree.ElementTree as ET
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[1]
DESIGN = ROOT / "branding" / "design"
THEME = ROOT / "branding" / "theme"
STRINGS_BG = ROOT / "translations" / "values-bg" / "strings.xml"

ROW_LAYOUT = DESIGN / "new_user_train_control_item_layout.xml"
FRAGMENT_LAYOUT = DESIGN / "new_train_fragment_layout.xml"

MUSCLE_IDS = ("buwei4", "buwei3", "buwei10", "buwei9", "buwei2", "buwei8", "buwei7", "buwei6", "buwei1", "buwei5")
SLIDER_IDS = tuple(f"vpb_brightness{i}" for i in (4, 3, 10, 9, 2, 8, 7, 6, 1, 5))
CHANNEL_LABEL_IDS = tuple(f"textview{i}" for i in (4, 3, 10, 9, 2, 8, 7, 6, 1, 5))

SIDEBAR_IDS = ("allStop", "allStartPause", "allAdd", "allPerson", "allminus")


def _parse_dimen_value(raw: str, dimens: dict[str, float]) -> float | None:
    if not raw:
        return None
    m = re.match(r"^([\d.]+)(dip|sp)$", raw)
    if m:
        return float(m.group(1))
    m = re.match(r"^@dimen/(\w+)$", raw)
    if m and m.group(1) in dimens:
        return dimens[m.group(1)]
    return None


def load_dimens() -> dict[str, float]:
    out: dict[str, float] = {}
    path = THEME / "dimens.xml"
    if not path.is_file():
        return out
    for item in ET.parse(path).getroot().findall("dimen"):
        name = item.get("name")
        text = (item.text or "").strip()
        m = re.match(r"^([\d.]+)(dip|sp)$", text)
        if name and m:
            out[name] = float(m.group(1))
    return out


def load_colors() -> dict[str, str]:
    out: dict[str, str] = {}
    for path in (THEME / "colors.xml", THEME / "colors-night.xml"):
        if not path.is_file():
            continue
        for item in ET.parse(path).getroot().findall("color"):
            name = item.get("name")
            val = (item.text or "").strip()
            if name and val:
                out[name] = val
    # Legacy layout colors not in theme bundle
    out.setdefault("white_color", "#ffffffff")
    out.setdefault("green_color", "#ff4caf50")
    out.setdefault("wave_color_red", "#ffe53935")
    out.setdefault("blume_color", "#ffe0ddde")
    out.setdefault("grown_color", "#ff9a8073")
    out.setdefault("seekbar_back_gray", "#ffcfcfcf")
    return out


def load_strings_bg() -> dict[str, str]:
    out: dict[str, str] = {}
    if not STRINGS_BG.is_file():
        return out
    for item in ET.parse(STRINGS_BG).getroot().findall("string"):
        name = item.get("name")
        if name and item.text:
            out[name] = item.text
    return out


def _view_tag(text: str, view_id: str) -> str | None:
    pattern = rf'<[^>]+android:id="@id/{re.escape(view_id)}"[^>]*/>'
    m = re.search(pattern, text)
    return m.group(0) if m else None


def _attrs(tag: str) -> dict[str, str]:
    return dict(re.findall(r'android:(\w+)="([^"]*)"', tag))


def _num(attrs: dict[str, str], key: str, dimens: dict[str, float]) -> float | None:
    return _parse_dimen_value(attrs.get(key, ""), dimens)


def _string_ref(raw: str | None, strings: dict[str, str]) -> str | None:
    if not raw:
        return None
    m = re.match(r"^@string/(\w+)$", raw)
    if m:
        return strings.get(m.group(1), m.group(1))
    return raw.strip('"')


def _layout_hash(*paths: Path) -> str:
    h = hashlib.sha256()
    for p in paths:
        h.update(p.name.encode())
        h.update(p.read_bytes())
    return h.hexdigest()[:12]


def extract_row_column_weights(text: str) -> dict[str, float]:
    """Match apply-design-config.py column weight patterns."""
    weights: dict[str, float] = {}

    patterns = (
        ("mode_buttons", r'(<LinearLayout android:gravity="center" android:orientation="vertical" '
         r'android:layout_width="0\.0dip" android:layout_height="fill_parent" android:layout_weight=")([\d.]+)'),
        ("muscle_sliders", r'(<LinearLayout android:orientation="horizontal" android:layout_width="0\.0dip" '
         r'android:layout_height="fill_parent" android:layout_weight=")([\d.]+)'),
        ("avatar", r'(<RelativeLayout android:layout_width="0\.0dip" android:layout_height="fill_parent" '
         r'android:layout_weight=")([\d.]+)(?=\s*>\s*\n\s*<TextView[^>]*@id/ma")'),
        ("user_info", r'(<LinearLayout android:layout_gravity="center_vertical" android:orientation="vertical" '
         r'android:layout_width="0\.0dip" android:layout_height="wrap_content" android:layout_weight=")([\d.]+)'),
        ("action_buttons", r'(<LinearLayout android:gravity="center" android:orientation="vertical" '
         r'android:layout_width="0\.0dip" android:layout_height="fill_parent" android:layout_weight=")([\d.]+)'
         r'(?=\s*>\s*\n\s*<com\.isaigu\.gymapp\.widget\.MyButton[^>]*@id/stop)'),
    )
    for key, pat in patterns:
        m = re.search(pat, text)
        if m:
            weights[key] = float(m.group(2))
    return weights


def build_train_mockup_spec() -> dict[str, Any]:
    dimens = load_dimens()
    colors = load_colors()
    strings = load_strings_bg()
    row_xml = ROW_LAYOUT.read_text(encoding="utf-8")
    frag_xml = FRAGMENT_LAYOUT.read_text(encoding="utf-8")

    root_row_h = re.search(r'android:layout_height="([\d.]+)dip"', row_xml)
    row_height = float(root_row_h.group(1)) if root_row_h else 170.0

    columns = extract_row_column_weights(row_xml)
    defaults = {
        "mode_buttons": 0.4,
        "muscle_sliders": 2.0,
        "avatar": 0.6,
        "user_info": 0.5,
        "action_buttons": 0.2,
    }
    for key, val in defaults.items():
        columns.setdefault(key, val)

    def view_spec(view_id: str) -> dict[str, Any]:
        tag = _view_tag(row_xml, view_id)
        if not tag:
            return {}
        a = _attrs(tag)
        spec: dict[str, Any] = {"id": view_id}
        for key in (
            "layout_width", "layout_height", "layout_margin", "layout_marginLeft",
            "layout_marginRight", "layout_marginTop", "layout_marginBottom",
            "padding", "paddingLeft", "paddingTop", "paddingRight", "paddingBottom",
            "textSize",
        ):
            if key in a:
                n = _num(a, key, dimens)
                if n is not None:
                    spec[key] = n
                elif a[key] in ("fill_parent", "wrap_content"):
                    spec[key] = a[key]
        if "text" in a:
            spec["text"] = _string_ref(a["text"], strings) or a["text"]
        if "background" in a:
            spec["background"] = a["background"]
        if "textColor" in a:
            spec["textColor"] = colors.get(a["textColor"].replace("@color/", ""), a["textColor"])
        # app: namespace attrs on CircleSeekBar
        for app_key in ("wheel_pointer_radius", "wheel_reached_width", "wheel_unreached_width"):
            m = re.search(rf'app:{app_key}="([\d.]+)dip"', tag)
            if m:
                spec[app_key] = float(m.group(1))
        return spec

    row_views = {vid: view_spec(vid) for vid in (
        "strenthExist", "youyangyundong", "anmo", "ma", "pauseMaValue", "hzValue", "pauseHzValue",
        "userIcon", "wave_ball_progress_value", "circleSeekBar", "name", "time", "signalImage",
        "MyBatterView", "batteryValueTextView", "setting", "paulsecontinue", "paulsestop",
        "pulseContinueLabel", "pulsePauseLabel", "stop", "startpaulse", "save",
        *SLIDER_IDS, *CHANNEL_LABEL_IDS,
    )}

    muscles = []
    for mid in MUSCLE_IDS:
        block_m = re.search(
            rf'(<LinearLayout[^>]*android:id="@id/{mid}"[^>]*>.*?</LinearLayout>)',
            frag_xml,
            re.DOTALL,
        )
        if not block_m:
            continue
        block = block_m.group(1)
        label_m = re.search(r'android:text="(@string/\w+|"[^"]*")', block)
        label = _string_ref(label_m.group(1), strings) if label_m else mid
        icon_m = re.search(r'android:layout_width="([\d.]+)dip" android:layout_height="([\d.]+)dip"', block)
        muscles.append({
            "id": mid,
            "label": label,
            "icon_dp": float(icon_m.group(1)) if icon_m else 36.0,
        })

    sidebar = []
    for sid in SIDEBAR_IDS:
        tag = _view_tag(frag_xml, sid)
        if not tag:
            continue
        a = _attrs(tag)
        sidebar.append({
            "id": sid,
            "width_dp": _num(a, "layout_width", dimens) or 50,
            "height_dp": _num(a, "layout_height", dimens) or 50,
            "paddingTop_dp": _num(a, "paddingTop", dimens) or 0,
            "text": _string_ref(a.get("text"), strings),
            "textSize_sp": _num(a, "textSize", dimens),
        })

    logo_tag = _view_tag(frag_xml, "logoImage")
    logo = _attrs(logo_tag) if logo_tag else {}

    left_m = re.search(
        r'@id/leftLayout"[^>]*android:layout_marginLeft="([\d.]+)dip"[^>]*'
        r'android:layout_marginTop="([\d.]+)dip"[^>]*android:layout_marginRight="([\d.]+)dip"',
        frag_xml,
    )
    if not left_m:
        left_m = re.search(r'@id/leftLayout"[^>]*android:layout_marginLeft="([\d.]+)dip"', frag_xml)

    left_weight_m = re.search(r'@id/leftLayout"[^>]*android:layout_weight="([\d.]+)"', frag_xml)
    right_weight_m = re.search(r'@id/rightLayout"[^>]*android:layout_weight="([\d.]+)"', frag_xml)

    return {
        "version": 2,
        "source": {
            "row_layout": str(ROW_LAYOUT.relative_to(ROOT)),
            "fragment_layout": str(FRAGMENT_LAYOUT.relative_to(ROOT)),
            "hash": _layout_hash(ROW_LAYOUT, FRAGMENT_LAYOUT),
        },
        "scale": {
            "dp_to_px": 1.0,
            "sp_to_px": 1.0,
            "note": "1dp=1px mockup scale (mdpi reference). Proportions and weights match XML exactly.",
        },
        "colors": {
            "bg_screen": colors.get("bg_screen", "#ffeeeeee"),
            "bg_card": colors.get("bg_card", "#ffffffff"),
            "text_primary": colors.get("text_primary", "#ff3a3a3a"),
            "mode_button_text": colors.get("mode_button_text", "#ff3a3a3a"),
            "card_stroke": colors.get("card_stroke", "#ffc8c8c8"),
            "mode_red": "#ffe53935",
            "mode_orange": "#fffb8c00",
            "mode_blue": "#ff1e88e5",
            "index_badge": colors.get("ma_badge_bg", "#ff3a3a3a"),
            "index_text": colors.get("white_color", "#ffffffff"),
            "ring_track": colors.get("seekbar_back_gray", "#ffcfcfcf"),
            "ring_active": colors.get("grown_color", "#ff9a8073"),
            "channel_active": colors.get("channel_active", "#ff2e7d32"),
            "impulse_green": colors.get("green_color", "#ff4caf50"),
            "pause_red": colors.get("wave_color_red", "#ffe53935"),
            "sidebar_bg": "#ff455a64",
        },
        "dimens": dimens,
        "fragment": {
            "left_weight": float(left_weight_m.group(1)) if left_weight_m else 10.0,
            "right_weight": float(right_weight_m.group(1)) if right_weight_m else 0.7,
            "left_margin_dp": {
                "left": float(left_m.group(1)) if left_m else 10.0,
                "top": float(left_m.group(2)) if left_m and left_m.lastindex >= 2 else 5.0,
                "right": float(left_m.group(3)) if left_m and left_m.lastindex >= 3 else 15.0,
            },
            "muscle_bar_weights": {"spacer1": 0.51, "groups": 2.5, "spacer2": 0.8, "logo": 0.8},
            "logo": {
                "width_dp": _parse_dimen_value(logo.get("layout_width", ""), dimens) or dimens.get("ui_logo_width", 160),
                "height_dp": _parse_dimen_value(logo.get("layout_height", ""), dimens) or dimens.get("ui_logo_height", 60),
            },
            "muscles": muscles,
            "sidebar": sidebar,
            "sidebar_spacers": [0.3, 0.1, 1.0, 0.1, 0.1, 0.3],
        },
        "row": {
            "height_dp": row_height,
            "card_margin_dp": dimens.get("ui_card_margin", 4.0),
            "card_corner_dp": dimens.get("ui_card_corner", 8.0),
            "columns": columns,
            "views": row_views,
        },
        "strings": {k: strings[k] for k in (
            "muscleexist", "youyangyundong", "anmo", "paulsecontinue", "paulsestop", "maincontrol",
        ) if k in strings},
    }
