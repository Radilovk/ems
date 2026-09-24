#!/usr/bin/env python3
"""Stamp scripts/common.css into each page under src/pages/*/index.ux."""
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
COMMON = (ROOT / "scripts" / "common.css").read_text(encoding="utf-8").strip()
MARKER = "/* ---- page ---- */"
COMMON_HDR = "/* ---- common (scripts/gen-pages.py stamps this into every page) ---- */"


def patch_page(path: Path) -> bool:
    text = path.read_text(encoding="utf-8")
    if MARKER not in text:
        print(f"skip {path}: no page marker")
        return False
    head, tail = text.split(MARKER, 1)
    style_start = head.rfind("<style>")
    if style_start < 0:
        print(f"skip {path}: no <style>")
        return False
    before = head[: style_start + len("<style>\n")]
    out = before + COMMON_HDR + "\n" + COMMON + "\n" + MARKER + tail
    path.write_text(out, encoding="utf-8")
    return True


def main() -> None:
    n = 0
    for page in sorted((ROOT / "src" / "pages").glob("*/index.ux")):
        if patch_page(page):
            n += 1
    print(f"gen-pages: stamped common.css into {n} pages")


if __name__ == "__main__":
    main()
