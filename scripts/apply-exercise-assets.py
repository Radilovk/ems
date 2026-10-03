#!/usr/bin/env python3
"""Ship the exercise figures: branding/exercises/exercises.json → assets/xems/exercises.json, and the program
pictures: branding/programs/*.webp → assets/xems/programs/ (ai/ProgramArt).
ai/ExerciseFigure reads it (paths already normalized to absolute M/L/C/Z by scripts/exercise-paths.py);
ai/AutoTemplateData holds the names and program stations (scripts/gen-exercises.py). docs/xems-exercise-templates.md
"""

from __future__ import annotations

import json
import re
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
    lib = SRC.parent / "library.json"
    libd = json.loads(lib.read_text(encoding="utf-8"))
    if len(libd["exercises"]) < 300 or "{id}" not in libd["frames"]:
        raise SystemExit("library.json: incomplete — run scripts/gen-exercise-library.py")
    shutil.copy2(lib, DEST.parent / "library.json")
    fixes = {}                                    # redrawn bolder frames (scripts/exercise-line-width.py)
    for f in sorted((SRC.parent / "fixed").glob("*.svg")):
        d = re.search(r' d="([^"]+)"', f.read_text(encoding="utf-8")).group(1)
        i, n = f.stem.rsplit("-", 1)
        fixes[f"{i}/{n}"] = d
    if sorted(fixes) != sorted(libd.get("fixed", [])):
        raise SystemExit("library.json 'fixed' is stale — run scripts/gen-exercise-library.py")
    (DEST.parent / "frames-fix.json").write_text(json.dumps(fixes, separators=(",", ":")), encoding="utf-8")
    print(f"assets/xems/frames-fix.json ({len(fixes)} frames)")
    print(f"assets/xems/library.json ({len(libd['exercises'])} exercises)")
    print(f"assets/xems/exercises.json ({len(exs)} exercises, {DEST.stat().st_size} B)")
    art = ROOT / "branding" / "programs"
    java_art = (ROOT / "branding" / "java" / "src" / "com" / "isaigu" / "gymapp" / "ai" / "ProgramArt.java").read_text(encoding="utf-8")
    keys = set(re.findall(r'"((?:f|m|passive)-[a-z-]+)"', java_art))
    have = {p.stem.split("@")[0] for p in art.glob("*@*.webp")}
    if keys - have:
        raise SystemExit(f"branding/programs: missing {sorted(keys - have)} (ProgramArt uses them)")
    out = DEST.parent / "programs"
    out.mkdir(parents=True, exist_ok=True)
    size = 0
    for p in sorted(art.glob("*@*.webp")):
        shutil.copy2(p, out / p.name)
        size += p.stat().st_size
    print(f"assets/xems/programs/ ({len(have)} pictures, {size} B)")
    body = ROOT / "branding" / "body"                # Auto live board figures (scripts/gen-body-figures.py)
    figs = sorted(body.glob("*.webp"))                # + the scale's segment maps (scripts/gen-scale-segments.py)
    if len(figs) != 12:
        raise SystemExit("branding/body: expected 12 figures — run scripts/gen-body-figures.py "
                         "and scripts/gen-scale-segments.py")
    bout = DEST.parent / "body"
    bout.mkdir(parents=True, exist_ok=True)
    for p in figs:
        shutil.copy2(p, bout / p.name)
    print(f"assets/xems/body/ ({len(figs)} files, {sum(p.stat().st_size for p in figs)} B)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
