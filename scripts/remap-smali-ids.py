#!/usr/bin/env python3
"""Remap resource ID constants from XEMS single-dex build to xems27 IDs."""

import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path


def load_public(path: Path) -> dict:
    mapping = {}
    tree = ET.parse(path)
    for pub in tree.findall("public"):
        mapping[(pub.attrib["type"], pub.attrib["name"])] = int(pub.attrib["id"], 16)
    return mapping


def build_id_map(src_public: Path, dst_public: Path) -> dict[int, int]:
    src = load_public(src_public)
    dst = load_public(dst_public)
    id_map: dict[int, int] = {}
    for key, old_id in src.items():
        new_id = dst.get(key)
        if new_id is not None:
            id_map[old_id] = new_id
    return id_map


def remap_file(path: Path, id_map: dict[int, int]) -> int:
    text = path.read_text()
    pat = re.compile(r"0x7f[0-9a-f]{6}")

    def repl(match: re.Match[str]) -> str:
        old = int(match.group(0), 16)
        return f"0x{id_map.get(old, old):08x}"

    new = pat.sub(repl, text)
    changes = sum(1 for a, b in zip(pat.findall(text), pat.findall(new)) if a != b)
    path.write_text(new)
    return changes


def main() -> int:
    if len(sys.argv) < 2:
        print("Usage: remap-smali-ids.py <smali-file> [smali-file...]", file=sys.stderr)
        return 1

    id_map = build_id_map(
        Path("/workspace/analysis/decompiled/res/values/public.xml"),
        Path("/tmp/xems27-fresh/res/values/public.xml"),
    )

    for arg in sys.argv[1:]:
        path = Path(arg)
        count = remap_file(path, id_map)
        print(f"{path}: {count} ID(s) remapped")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
