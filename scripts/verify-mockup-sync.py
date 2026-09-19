#!/usr/bin/env python3
"""Verify train-screen-mockup.html matches branding/design/ XML source."""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MOCKUP = ROOT / "branding" / "train-screen-mockup.html"

sys.path.insert(0, str(ROOT / "scripts"))
from train_mockup_lib import build_train_mockup_spec  # noqa: E402


def _extract_spec_hash(html: str) -> str | None:
    m = re.search(r"window\.TRAIN_MOCKUP_SPEC\s*=\s*(\{.*?\});", html, re.DOTALL)
    if not m:
        return None
    spec = json.loads(m.group(1))
    return spec.get("source", {}).get("hash")


def main() -> int:
    if not MOCKUP.is_file():
        print(f"Missing {MOCKUP.relative_to(ROOT)} — run generate-train-mockup.py", file=sys.stderr)
        return 1

    html = MOCKUP.read_text(encoding="utf-8")
    embedded = _extract_spec_hash(html)
    if not embedded:
        print("Could not parse TRAIN_MOCKUP_SPEC from mockup HTML", file=sys.stderr)
        return 1

    live = build_train_mockup_spec()["source"]["hash"]
    if embedded != live:
        print(f"OUT OF SYNC: mockup hash {embedded} != XML hash {live}", file=sys.stderr)
        print("Fix: python3 scripts/generate-train-mockup.py", file=sys.stderr)
        return 1

    print(f"OK: train-screen-mockup.html matches XML (hash {live})")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
