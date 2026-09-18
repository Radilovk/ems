#!/usr/bin/env python3
"""Apply branding/design-config.yaml to train row layouts in branding/design/.

Only numeric sizes/margins/weights are changed — never view ids or XML structure.
Values outside safe bounds are clamped automatically.
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

try:
    import yaml
except ImportError:
    print("PyYAML required: pip install pyyaml", file=sys.stderr)
    sys.exit(1)

from design_config_schema import sanitize, verify_layout_structure

ROOT = Path(__file__).resolve().parents[1]
CONFIG = ROOT / "branding" / "design-config.yaml"
PRESETS = ROOT / "branding" / "design-presets.yaml"
DESIGN = ROOT / "branding" / "design"

ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)


def _fmt_dp(value: float | int) -> str:
    if isinstance(value, float) and value.is_integer():
        value = int(value)
    return f"{value}.0dip"


def _fmt_sp(value: float | int) -> str:
    if isinstance(value, float) and value.is_integer():
        value = int(value)
    return f"{value}.0sp"


def _sub_once(pattern: str, repl: str, text: str, label: str) -> tuple[str, bool]:
    updated, count = re.subn(pattern, repl, text, count=1)
    if count and updated != text:
        if label:
            print(f"  {label}")
        return updated, True
    return text, False


def apply_row_layout(text: str, cfg: dict) -> tuple[str, int]:
    changes = 0
    row = cfg.get("row", {})
    cols = cfg.get("columns", {})
    avatar = cfg.get("avatar", {})
    mode = cfg.get("mode_buttons", {})
    sliders = cfg.get("sliders", {})

    if "height_dp" in row:
        text, ok = _sub_once(
            r'(<LinearLayout android:orientation="horizontal" android:background="@drawable/ui_card_background" '
            r'android:layout_width="fill_parent" android:layout_height=")[\d.]+dip',
            rf"\g<1>{_fmt_dp(row['height_dp'])}",
            text,
            f"row height -> {row['height_dp']}dp",
        )
        changes += ok

    column_patterns = (
        ("mode_buttons", r'(<LinearLayout android:gravity="center" android:orientation="vertical" '
         r'android:layout_width="0\.0dip" android:layout_height="fill_parent" android:layout_weight=")[\d.]+'
         r'(?=\s*>\s*\n\s*<com\.isaigu\.gymapp\.widget\.MyButton[^>]*@id/strenthExist)'),
        ("muscle_sliders", r'(<LinearLayout android:orientation="horizontal" android:layout_width="0\.0dip" '
         r'android:layout_height="fill_parent" android:layout_weight=")[\d.]+'
         r'(?=\s*>\s*\n\s*<LinearLayout android:gravity="center" android:orientation="vertical" '
         r'android:layout_width="0\.0dip" android:layout_height="wrap_content" android:layout_weight="0\.2">\s*\n'
         r'\s*<TextView android:textSize="12\.0sp")'),
        ("avatar", r'(<RelativeLayout android:layout_width="0\.0dip" android:layout_height="fill_parent" '
         r'android:layout_weight=")[\d.]+(?=\s*>\s*\n\s*<TextView android:textSize="@dimen/ui_ma_text_size")'),
        ("user_info", r'(<LinearLayout android:layout_gravity="center_vertical" android:orientation="vertical" '
         r'android:layout_width="0\.0dip" android:layout_height="wrap_content" android:layout_weight=")[\d.]+'),
        ("action_buttons", r'(<LinearLayout android:gravity="center" android:orientation="vertical" '
         r'android:layout_width="0\.0dip" android:layout_height="fill_parent" android:layout_weight=")[\d.]+'
         r'(?=\s*>\s*\n\s*<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/stop")'),
    )
    for key, pattern in column_patterns:
        if key not in cols:
            continue
        weight = cols[key]
        text, ok = _sub_once(
            pattern,
            rf"\g<1>{weight}",
            text,
            f"column {key} weight -> {weight}",
        )
        changes += ok

    index_ids = ("ma", "pauseMaValue", "hzValue", "pauseHzValue")
    if "index_button_size_dp" in avatar:
        size = _fmt_dp(avatar["index_button_size_dp"])
        for view_id in index_ids:
            text, ok = _sub_once(
                rf'(@id/{view_id}"[^>]*android:layout_width=")[\d.]+dip',
                rf"\g<1>{size}",
                text,
                f"@{view_id} width -> {avatar['index_button_size_dp']}dp",
            )
            changes += ok
            text, ok = _sub_once(
                rf'(@id/{view_id}"[^>]*android:layout_height=")[\d.]+dip',
                rf"\g<1>{size}",
                text,
                f"@{view_id} height -> {avatar['index_button_size_dp']}dp",
            )
            changes += ok

    if "index_button_edge_dp" in avatar:
        edge = _fmt_dp(avatar["index_button_edge_dp"])
        for view_id, sides in (
            ("ma", ("Left",)),
            ("pauseMaValue", ("Right",)),
            ("hzValue", ("Left",)),
            ("pauseHzValue", ("Right",)),
        ):
            for side in sides:
                text, ok = _sub_once(
                    rf'(@id/{view_id}"[^>]*android:layout_margin{side}=")[\d.]+dip',
                    rf"\g<1>{edge}",
                    text,
                    f"@{view_id} margin{side} -> {avatar['index_button_edge_dp']}dp",
                )
                changes += ok

    if "index_button_vertical_dp" in avatar:
        vert = _fmt_dp(avatar["index_button_vertical_dp"])
        for view_id, attr in (
            ("ma", "Top"),
            ("pauseMaValue", "Top"),
            ("hzValue", "Bottom"),
            ("pauseHzValue", "Bottom"),
        ):
            text, ok = _sub_once(
                rf'(@id/{view_id}"[^>]*android:layout_margin{attr}=")[\d.]+dip',
                rf"\g<1>{vert}",
                text,
                f"@{view_id} margin{attr} -> {avatar['index_button_vertical_dp']}dp",
            )
            changes += ok

    if "icon_padding_dp" in avatar:
        pad = _fmt_dp(avatar["icon_padding_dp"])
        text, ok = _sub_once(
            r'(@id/userIcon" android:padding=")[\d.]+dip',
            rf"\g<1>{pad}",
            text,
            f"avatar icon padding -> {avatar['icon_padding_dp']}dp",
        )
        changes += ok

    if "timer_text_sp" in avatar:
        sp = _fmt_sp(avatar["timer_text_sp"])
        text, ok = _sub_once(
            r'(<TextView android:textSize=")[\d.]+sp(" android:textStyle="bold" android:textColor="@color/text_primary" '
            r'android:id="@id/wave_ball_progress_value")',
            rf"\g<1>{sp}\2",
            text,
            f"timer text -> {avatar['timer_text_sp']}sp",
        )
        changes += ok

    if "wave_margin_dp" in avatar:
        margin = _fmt_dp(avatar["wave_margin_dp"])
        text, ok = _sub_once(
            r'(@id/wave_ball_progress_act_view"[^>]*android:layout_margin=")[\d.]+dip',
            rf"\g<1>{margin}",
            text,
            f"wave margin -> {avatar['wave_margin_dp']}dp",
        )
        changes += ok

    if "slider_padding_dp" in avatar:
        pad = _fmt_dp(avatar["slider_padding_dp"])
        text, ok = _sub_once(
            r'(@id/circleSeekBar" android:paddingLeft=")[\d.]+dip',
            rf"\g<1>{pad}",
            text,
            "slider paddingLeft",
        )
        changes += ok
        text, ok = _sub_once(
            r'(@id/circleSeekBar" android:paddingLeft="[\d.]+dip" android:paddingTop=")[\d.]+dip',
            rf"\g<1>{pad}",
            text,
            "slider paddingTop",
        )
        changes += ok
        text, ok = _sub_once(
            r'(@id/circleSeekBar" android:paddingLeft="[\d.]+dip" android:paddingTop="[\d.]+dip" '
            r'android:paddingRight=")[\d.]+dip',
            rf"\g<1>{pad}",
            text,
            "slider paddingRight",
        )
        changes += ok

    if "slider_padding_bottom_dp" in avatar:
        bottom = _fmt_dp(avatar["slider_padding_bottom_dp"])
        text, ok = _sub_once(
            r'(@id/circleSeekBar" android:paddingLeft="[\d.]+dip" android:paddingTop="[\d.]+dip" '
            r'android:paddingRight="[\d.]+dip" android:paddingBottom=")[\d.]+dip',
            rf"\g<1>{bottom}",
            text,
            f"slider paddingBottom -> {avatar['slider_padding_bottom_dp']}dp",
        )
        changes += ok

    if "slider_track_width_dp" in avatar:
        track = _fmt_dp(avatar["slider_track_width_dp"])
        text, ok = _sub_once(
            r'(@id/circleSeekBar"[^>]*app:wheel_reached_width=")[\d.]+dip',
            rf"\g<1>{track}",
            text,
            f"slider track width -> {avatar['slider_track_width_dp']}dp",
        )
        changes += ok
        text, ok = _sub_once(
            r'(@id/circleSeekBar"[^>]*app:wheel_unreached_width=")[\d.]+dip',
            rf"\g<1>{track}",
            text,
            "slider unreached width",
        )
        changes += ok

    if "slider_pointer_radius_dp" in avatar:
        pointer = _fmt_dp(avatar["slider_pointer_radius_dp"])
        text, ok = _sub_once(
            r'(@id/circleSeekBar"[^>]*app:wheel_pointer_radius=")[\d.]+dip',
            rf"\g<1>{pointer}",
            text,
            f"slider pointer -> {avatar['slider_pointer_radius_dp']}dp",
        )
        changes += ok

    if "width_dp" in mode:
        width = _fmt_dp(mode["width_dp"])
        for btn_id in ("strenthExist", "youyangyundong", "anmo"):
            text, ok = _sub_once(
                rf'(@id/{btn_id}"[^>]*android:layout_width=")[\d.]+dip',
                rf"\g<1>{width}",
                text,
                f"@{btn_id} width -> {mode['width_dp']}dp",
            )
            changes += ok

    if "height_dp" in mode:
        height = _fmt_dp(mode["height_dp"])
        for btn_id in ("strenthExist", "youyangyundong", "anmo"):
            text, ok = _sub_once(
                rf'(@id/{btn_id}"[^>]*android:layout_height=")[\d.]+dip',
                rf"\g<1>{height}",
                text,
                f"@{btn_id} height -> {mode['height_dp']}dp",
            )
            changes += ok

    if "channel_width_dp" in sliders:
        width = _fmt_dp(sliders["channel_width_dp"])
        updated, count = re.subn(
            r'(<com\.isaigu\.gymapp\.widget\.VerticalColorSeekBar android:id="@id/vpb_brightness\d+" '
            r'android:paddingTop="[\d.]+dip" android:paddingBottom="[\d.]+dip" android:layout_width=")[\d.]+dip',
            rf"\g<1>{width}",
            text,
        )
        if count and updated != text:
            print(f"  muscle slider width -> {sliders['channel_width_dp']}dp ({count}x)")
            text = updated
            changes += 1

    return text, changes


def load_raw_config() -> dict:
    if not CONFIG.is_file():
        return {}
    cfg = yaml.safe_load(CONFIG.read_text(encoding="utf-8")) or {}
    if not isinstance(cfg, dict):
        raise ValueError("design-config.yaml must be a mapping")
    return cfg


def load_preset(name: str) -> dict:
    if not PRESETS.is_file():
        raise FileNotFoundError(PRESETS)
    data = yaml.safe_load(PRESETS.read_text(encoding="utf-8")) or {}
    presets = data.get("presets", {})
    if name not in presets:
        known = ", ".join(sorted(presets))
        raise ValueError(f"unknown preset {name!r} (available: {known})")
    preset = presets[name]
    merged = {}
    for section in ("row", "columns", "avatar", "mode_buttons", "sliders"):
        if section in preset:
            merged[section] = preset[section]
    merged["active_preset"] = name
    return merged


def prepare_config(raw: dict) -> tuple[dict, list[str]]:
    safe, warnings = sanitize(raw)
    return safe, warnings


def check_layouts() -> list[str]:
    errors: list[str] = []
    for name in ROW_LAYOUTS:
        path = DESIGN / name
        if not path.is_file():
            errors.append(f"missing layout template {path.relative_to(ROOT)}")
            continue
        missing = verify_layout_structure(path.read_text(encoding="utf-8"))
        if missing:
            errors.append(f"{name}: missing required markers: {', '.join(missing)}")
    return errors


def write_config(raw: dict) -> None:
    CONFIG.write_text(yaml.safe_dump(raw, sort_keys=False, allow_unicode=True), encoding="utf-8")


def run_apply(cfg: dict, dry_run: bool = False) -> int:
    layout_errors = check_layouts()
    if layout_errors:
        for err in layout_errors:
            print(f"ERROR: {err}", file=sys.stderr)
        return 1

    total = 0
    for name in ROW_LAYOUTS:
        path = DESIGN / name
        original = path.read_text(encoding="utf-8")
        updated, count = apply_row_layout(original, cfg)
        if updated != original:
            if not dry_run:
                path.write_text(updated, encoding="utf-8")
            print(f"{name}: {count} design tweak(s){' (dry-run)' if dry_run else ''}")
            total += count
        else:
            print(f"{name}: already matches design-config.yaml")

    if total:
        print(f"Design config applied ({total} tweak(s){', dry-run' if dry_run else ''}).")
    else:
        print("Design config: no layout changes needed.")
    return 0


def main() -> None:
    parser = argparse.ArgumentParser(description="Apply safe train UI design config")
    parser.add_argument("--check", action="store_true", help="Validate YAML and layouts only")
    parser.add_argument("--preset", metavar="ID", help="Write a preset to design-config.yaml")
    parser.add_argument("--dry-run", action="store_true", help="Show changes without writing XML")
    args = parser.parse_args()

    if args.preset:
        raw = load_preset(args.preset)
        safe, warnings = prepare_config(raw)
        write_config({**safe, "active_preset": args.preset})
        print(f"Wrote preset '{args.preset}' -> {CONFIG.relative_to(ROOT)}")
        for w in warnings:
            print(f"  warn: {w}")
        if args.check:
            sys.exit(run_apply(safe, dry_run=True))
        sys.exit(run_apply(safe, dry_run=args.dry_run))

    if not CONFIG.is_file():
        print(f"Missing {CONFIG.relative_to(ROOT)} — skipping design config")
        return

    raw = load_raw_config()
    safe, warnings = prepare_config(raw)
    for w in warnings:
        print(f"warn: {w}")

    if args.check:
        layout_errors = check_layouts()
        for err in layout_errors:
            print(f"ERROR: {err}", file=sys.stderr)
        if layout_errors:
            sys.exit(1)
        print("OK: design-config.yaml is valid and layouts are compatible.")
        sys.exit(0)

    sys.exit(run_apply(safe, dry_run=args.dry_run))


if __name__ == "__main__":
    main()
