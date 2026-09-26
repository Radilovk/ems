#!/usr/bin/env python3
"""Image budget for the band app — keeps the look rich without making the band slow.

For every page: each image it can show (<image src>, CSS url()), checked to exist, and the
memory it takes once decoded (width × height × 4 bytes). Fails when a page could hold more than
PAGE_BUDGET at once, or when all images together make the .rpk heavy to send over Bluetooth.

  python3 scripts/check-art.py          # table + exit 1 on a problem
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "src"
PAGE_BUDGET = 480 * 1024      # decoded bytes a page may reference (every state together)
FILES_BUDGET = 200 * 1024     # all PNGs in the app, on disk (goes into each .rpk)
MAX_SIDE = 520                # nothing larger than the screen

REF = re.compile(r"""(?:src="|url\()\s*(/common/[\w./-]+\.png)""")
DYN = re.compile(r"""['"](/common/[\w./-]+\.png)['"]""")          # paths built in the script
PREFIX = re.compile(r"""['"](/common/[\w/-]+-)['"]\s*\+\s*\w+(?:\.\w+)*\s*\+\s*['"]\.png['"]""")


def refs(text: str) -> set[str]:
    out = set(REF.findall(text)) | set(DYN.findall(text))
    for pre in PREFIX.findall(text):  # '/common/art/badge-' + c.id + '.png'
        out |= {"/" + p.relative_to(SRC).as_posix() for p in SRC.glob(pre.lstrip("/") + "*.png")}
    return out


def main() -> int:
    errors: list[str] = []
    rows = []
    for page in sorted((SRC / "pages").glob("*/index.ux")):
        total = 0
        for ref in sorted(refs(page.read_text(encoding="utf-8"))):
            f = SRC / ref.lstrip("/")
            if not f.is_file():
                errors.append(f"{page.parent.name}: missing {ref}")
                continue
            w, h = Image.open(f).size
            if max(w, h) > MAX_SIDE:
                errors.append(f"{ref}: {w}×{h} is larger than the screen")
            total += w * h * 4
        rows.append((page.parent.name, total))
        if total > PAGE_BUDGET:
            errors.append(f"{page.parent.name}: {total // 1024} KB decoded > {PAGE_BUDGET // 1024} KB")
    files = sum(p.stat().st_size for p in (SRC / "common").rglob("*.png"))
    for name, total in rows:
        print(f"  {name:8s} {total // 1024:4d} KB decoded")
    print(f"  images on disk: {files // 1024} KB (budget {FILES_BUDGET // 1024} KB)")
    if files > FILES_BUDGET:
        errors.append(f"images {files // 1024} KB > {FILES_BUDGET // 1024} KB")
    for e in errors:
        print("ERROR:", e)
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
