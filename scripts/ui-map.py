#!/usr/bin/env python3
"""UI map utilities — validate layouts, explain structure, guide safe edits."""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

try:
    import yaml
except ImportError:
    yaml = None  # type: ignore

ROOT = Path(__file__).resolve().parents[1]
MAP_FILE = ROOT / "branding" / "ui-map.yaml"
DESIGN = ROOT / "branding" / "design"
ROW_FILES = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

CRITICAL_IDS = (
    "@id/strenthExist",
    "@id/circleSeekBar",
    "@id/ma",
    "@id/pauseMaValue",
    "@id/hzValue",
    "@id/pauseHzValue",
    "@id/stop",
    "@id/vpb_brightness1",
)


def load_map() -> dict:
    if yaml is None:
        print("PyYAML required: pip install pyyaml", file=sys.stderr)
        sys.exit(1)
    if not MAP_FILE.is_file():
        print(f"Missing {MAP_FILE}", file=sys.stderr)
        sys.exit(1)
    return yaml.safe_load(MAP_FILE.read_text(encoding="utf-8"))


def check_layouts() -> list[str]:
    errors: list[str] = []
    for name in ROW_FILES:
        path = DESIGN / name
        if not path.is_file():
            errors.append(f"missing {path.relative_to(ROOT)}")
            continue
        text = path.read_text(encoding="utf-8")
        for marker in CRITICAL_IDS:
            if marker not in text:
                errors.append(f"{path.name}: missing critical {marker}")
    return errors


def print_summary(data: dict) -> None:
    print("XEMS UI map\n")
    print("Train row columns (left → right):")
    for col in data.get("train_row", {}).get("columns", []):
        cid = col.get("id", "?")
        key = col.get("editor_key", "")
        print(f"  • {cid}  ({key})")
        for item in col.get("contains", []):
            if "id" in item:
                print(f"      @{item['id']} — {item.get('label_bg', '')}")
        for item in col.get("critical_ids", []):
            print(f"      @{item['id']} — {item.get('label_bg', '')}")
    print("\nSafe workflow (train UI only):")
    print("  1. branding/design-studio.html  OR  edit design-config.yaml")
    print("  2. python3 scripts/apply-design-config.py --check")
    print("  3. python3 scripts/apply-design-config.py")
    print("  4. DESIGN_PIPELINE=1 bash build-apk.sh  (opt-in; off by default)")
    print("\nDesign Studio (open in browser): branding/design-studio.html")
    print("Apply changes: bash scripts/design-apply.sh [--preset tablet] [--import FILE]")
    print("Agents cannot see the device — ask user for screenshot + @id name.")
    print("\nLogin freeze was NOT from design module — see ui-map.yaml header.")


def export_json(data: dict, out: Path) -> None:
    out.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")
    print(f"Exported {out.relative_to(ROOT)}")


def main() -> int:
    parser = argparse.ArgumentParser(description="XEMS UI map")
    parser.add_argument("--check", action="store_true", help="Validate train layouts against map")
    parser.add_argument("--export-json", metavar="PATH", help="Export map as JSON for tools")
    parser.add_argument("--json", action="store_true", help="Print map as JSON")
    args = parser.parse_args()

    data = load_map()
    errors = check_layouts() if args.check or not (args.json or args.export_json) else []

    if args.export_json:
        export_json(data, Path(args.export_json))

    if args.check:
        if errors:
            print("UI map check FAILED:", file=sys.stderr)
            for e in errors:
                print(f"  - {e}", file=sys.stderr)
            return 1
        print("UI map check passed (train layouts contain critical @id markers).")
        return 0

    if args.json:
        print(json.dumps(data, ensure_ascii=False, indent=2))
        return 0

    print_summary(data)
    if errors:
        print("\nWarnings:")
        for e in errors:
            print(f"  - {e}")
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
