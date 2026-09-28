#!/usr/bin/env python3
"""Fail the build when app smali references a com.isaigu.gymapp class that no smali file defines.

A class that is compiled into branding/smali but never installed (e.g. XemsDossier, XemsSearch) only fails at
run time with NoClassDefFoundError — often inside a try/catch, so screens silently stay empty.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
REF = re.compile(r"L(com/isaigu/gymapp/[A-Za-z0-9_/$]+);")


def main() -> int:
    defined: set[str] = set()
    files = []
    for d in DECOMPILED.glob("smali*"):
        for f in d.rglob("*.smali"):
            defined.add(str(f.relative_to(d))[:-6])
            files.append(f)
    missing: dict[str, str] = {}
    for f in files:
        for m in REF.finditer(f.read_text(encoding="utf-8", errors="replace")):
            name = m.group(1)
            if name not in defined and name not in missing:
                missing[name] = str(f.relative_to(DECOMPILED))
    if missing:
        for name, where in sorted(missing.items()):
            print(f"FAIL: {name} referenced in {where} but not installed", file=sys.stderr)
        return 1
    print(f"verify-no-missing-classes: OK ({len(defined)} classes)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
