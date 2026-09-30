#!/usr/bin/env python3
"""Ship the exercise figures: branding/exercises/exercises.json → assets/xems/exercises.json.
ai/ExerciseFigure reads it (paths already normalized to absolute M/L/C/Z by scripts/exercise-paths.py);
ai/AutoTemplateData holds the names and program stations (scripts/gen-exercises.py). docs/xems-exercise-templates.md
"""

from __future__ import annotations

import json
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "branding" / "exercises" / "exercises.json"
DEST = ROOT / "build" / "decompiled" / "assets" / "xems" / "exercises.json"
JAVA = ROOT / "branding" / "java" / "src" / "com" / "isaigu" / "gymapp" / "ai" / "AutoTemplateData.java"


def main() -> int:
    data = json.loads(SRC.read_text(encoding="utf-8"))
    exs = data["exercises"]
    java = JAVA.read_text(encoding="utf-8")
    for e in exs:
        if not e.get("paths") or len(e.get("vb", [])) != 4:
            raise SystemExit(f"exercises.json: {e.get('id')} has no frames / viewBox")
        bad = set("".join(e["paths"])) & set("aAhHvVqQtTsSmlcz")
        if bad:
            raise SystemExit(f"exercises.json: {e['id']} not normalized ({''.join(sorted(bad))}) — run scripts/exercise-paths.py")
        if f'"{e["id"]}"' not in java:
            raise SystemExit(f"AutoTemplateData.java is stale ({e['id']} missing) — run scripts/gen-exercises.py")
    DEST.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(SRC, DEST)
    print(f"assets/xems/exercises.json ({len(exs)} exercises, {DEST.stat().st_size} B)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
