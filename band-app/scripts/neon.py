#!/usr/bin/env python3
"""Neon palette for the band app (5.9.39): one table old → new, applied to every page, the shared
CSS/JS and the art generators (idempotent: new colours are not in the table). Accents become electric (cyan, mint, neon yellow, orange, hot red,
violet); the neutral greys get a slight cool tint. Run once; kept as the record of the mapping.

  python3 scripts/neon.py && python3 scripts/gen-art.py && python3 scripts/gen-bg.py \\
    && python3 scripts/gen-body.py && python3 scripts/gen-pages.py
"""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

HEX = {
    # accents
    "#FF453A": "#FF2E63",   # red: pulse, stop, +, zone 5
    "#FF3B5C": "#FF2E88",   # XEMS brand: hot pink
    "#30D158": "#00F59B",   # green: start, zone 2
    "#FF9F0A": "#FF8A1F",   # amber / orange: timer, zone 4
    "#FFD60A": "#FFEA00",   # yellow: AI, zone 3
    "#5AC8FA": "#00E5FF",   # blue → electric cyan: zone 1
    "#BF5AF2": "#B44DFF",   # purple → neon violet: music
    "#C62828": "#E0194F",   # stop core
    "#24A04C": "#00C27A",   # pressed green
    "#D9860C": "#E06A00",   # pressed orange
    "#D93B30": "#D81B4F",   # pressed red
    # neutrals, slightly cool
    "#1C1C1E": "#15171F",
    "#2C2C2E": "#222532",
    "#3A3A3C": "#2D3142",
    "#48484A": "#3A3F55",
    "#636366": "#5A6078",
    "#8E8E93": "#8C93AB",
    "#AEAEB2": "#ADB3C7",
    "#C7C7CC": "#C9CEDD",
    "#17181C": "#131520",
    # deep tints of the accents (pressed / filled / dim states)
    "#17462A": "#063D2C",   # dim green fill
    "#0E2A17": "#052A1F",
    "#5A3A0C": "#5A2A08",   # dim orange fill
    "#2E1F07": "#2E1405",
    "#5C1A16": "#5C0C24",   # dim red fill
    "#2E0F0D": "#2E0616",
    "#3A0F0D": "#3A0A1C",
    "#4A1A26": "#4A0E30",   # brand
    "#2E2607": "#2E2A00",   # yellow
    "#3A1F4A": "#361457",   # violet
    "#24122E": "#200B36",
}

RGB = {
    "(48, 209, 88)": "(0, 245, 155)",
    "(255, 159, 10)": "(255, 138, 31)",
    "(255, 214, 10)": "(255, 234, 0)",
    "(191, 90, 242)": "(180, 77, 255)",
    "(255, 69, 58)": "(255, 46, 99)",
    "(255, 59, 92)": "(255, 46, 136)",
    "(255, 190, 30)": "(255, 214, 0)",
    "(58, 58, 62)": "(45, 49, 66)",
    "(31, 157, 70)": "(0, 178, 112)",
    "(224, 52, 43)": "(214, 28, 82)",
}


def hexes(text: str) -> str:
    def sub(m):
        return HEX.get(m.group(0).upper(), m.group(0))
    text = re.sub(r"#[0-9A-Fa-f]{6}\b", sub, text)
    return re.sub(r"rgba\(48,\s*209,\s*88,", "rgba(0,245,155,", text, flags=re.I)


def main() -> int:
    files = list((ROOT / "src").rglob("*.ux")) + list((ROOT / "src" / "common").glob("*.js")) \
        + [ROOT / "scripts" / "common.css"]
    n = 0
    for f in files:
        t = f.read_text(encoding="utf-8")
        u = hexes(t)
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
    print(f"neon: {n} files")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
