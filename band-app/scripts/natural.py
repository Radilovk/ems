#!/usr/bin/env python3
"""Natural colours for the band app (5.9.45): undoes the parts of the neon palette (scripts/neon.py, 5.9.39)
that read as a pink / violet filter over every screen:
- the neutral greys had a cool blue-violet tint (text, tiles, buttons) → true neutral greys again;
- the brand hot pink and the pink-red "hot red" → the natural XEMS red and red.
The module accents (mint green, cyan, neon yellow, orange, violet for music) stay. Idempotent. Run with:

  python3 scripts/natural.py && python3 scripts/gen-art.py && python3 scripts/gen-bg.py \\
    && python3 scripts/gen-all-btn.py && python3 scripts/gen-pages.py
"""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

HEX = {
    # neutrals: back to plain greys
    "#15171F": "#1C1C1E",
    "#222532": "#2C2C2E",
    "#2D3142": "#3A3A3C",
    "#3A3F55": "#48484A",
    "#5A6078": "#636366",
    "#8C93AB": "#8E8E93",
    "#ADB3C7": "#AEAEB2",
    "#C9CEDD": "#C7C7CC",
    "#131520": "#17181C",
    # brand and reds: no pink
    "#FF2E88": "#FF3B5C",
    "#FF2E63": "#FF453A",
    "#E0194F": "#C62828",
    "#D81B4F": "#D93B30",
    "#5C0C24": "#5C1A16",
    "#2E0616": "#2E0F0D",
    "#3A0A1C": "#3A0F0D",
    "#4A0E30": "#4A1A26",
}

RGB = {
    "(45, 49, 66)": "(58, 58, 62)",
    "(255, 46, 136)": "(255, 59, 92)",
    "(255, 46, 99)": "(255, 69, 58)",
    "(214, 28, 82)": "(224, 52, 43)",
    "[66, 71, 88]": "[66, 66, 70]",
}


def hexes(text: str) -> str:
    def sub(m):
        return HEX.get(m.group(0).upper(), m.group(0))
    return re.sub(r"#[0-9A-Fa-f]{6}\b", sub, text)


def main() -> int:
    files = list((ROOT / "src").rglob("*.ux")) + list((ROOT / "src" / "common").glob("*.js")) \
        + [ROOT / "scripts" / "common.css"] + list((ROOT / "preview").glob("*.mjs"))
    n = 0
    for f in files:
        t = f.read_text(encoding="utf-8")
        u = hexes(t)
        for a, b in RGB.items():
            u = u.replace(a, b)
        if u != t:
            f.write_text(u, encoding="utf-8")
            n += 1
    for f in (ROOT / "scripts" / "gen-art.py", ROOT / "scripts" / "gen-bg.py", ROOT / "scripts" / "gen-all-btn.py"):
        t = f.read_text(encoding="utf-8")
        u = t
        for a, b in RGB.items():
            u = u.replace(a, b)
        if u != t:
            f.write_text(u, encoding="utf-8")
            n += 1
    print(f"natural: {n} files")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
