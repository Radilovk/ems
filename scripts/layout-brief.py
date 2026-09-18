#!/usr/bin/env python3
"""Validate and summarize layout briefs for user↔agent coordination."""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

from layout_brief_lib import load_brief, summarize, validate
from layout_brief_schema import SCREENS

ROOT = Path(__file__).resolve().parents[1]
BRIEFS = ROOT / "branding" / "layout-briefs"


def main() -> int:
    parser = argparse.ArgumentParser(description="Layout brief validator")
    parser.add_argument("brief", nargs="?", help="Path to brief JSON/YAML")
    parser.add_argument("--check", action="store_true")
    parser.add_argument("--allow-draft", action="store_true")
    parser.add_argument("--list-screens", action="store_true")
    args = parser.parse_args()

    if args.list_screens:
        for sid, meta in SCREENS.items():
            print(f"{sid}: {meta['label']}")
        return 0

    path = Path(args.brief) if args.brief else None
    if not path:
        files = sorted(BRIEFS.glob("*.json")) + sorted(BRIEFS.glob("*.yaml"))
        if not files:
            print("No brief files in branding/layout-briefs/")
            return 0
        path = files[-1]

    brief = load_brief(path)
    if args.allow_draft:
        brief["allow_draft"] = True
    print(summarize(brief))
    errors = validate(brief)
    if errors:
        print("\nVALIDATION FAILED:", file=sys.stderr)
        for e in errors:
            print(f"  - {e}", file=sys.stderr)
        return 1
    print("\nOK: brief is valid and ready for implement.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
