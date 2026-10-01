#!/usr/bin/env python3
"""Make library exercises built-in: their figures ship in the APK (branding/exercises/exercises.json), so the ready
programs (programs.json stations) can use them on any tablet without a download.

Takes the library entry (library-src.json: names, steps; library.json: position, cost, muscles, view box) and the
first + last source frame (the working and the rest pose; the middle one confuses), the redrawn copy from
branding/exercises/fixed/ when there is one, normalized to M/L/C/Z. Then run scripts/gen-exercise-library.py and
scripts/gen-exercises.py.

  python3 scripts/add-builtin-exercise.py push-up bicep-curl …
"""
from __future__ import annotations

import importlib.util
import json
import re
import sys
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
EX = ROOT / "branding" / "exercises"
_spec = importlib.util.spec_from_file_location("ep", ROOT / "scripts" / "exercise-paths.py")
ep = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(ep)


def frame(lib: dict, ex_id: str, n: int) -> str:
    fixed = EX / "fixed" / f"{ex_id}-{n}.svg"
    if fixed.exists():
        svg = fixed.read_text(encoding="utf-8")
    else:
        url = lib["frames"].replace("{id}", ex_id).replace("{n}", str(n))
        svg = urllib.request.urlopen(url, timeout=30).read().decode("utf-8")
    return "".join(ep.normalize(d) for d in re.findall(r'\sd="([^"]+)"', svg))


def main() -> None:
    doc = json.loads((EX / "exercises.json").read_text(encoding="utf-8"))
    have = {e["id"] for e in doc["exercises"]}
    src = {e["id"]: e for e in json.loads((EX / "library-src.json").read_text(encoding="utf-8"))["exercises"]}
    lib = json.loads((EX / "library.json").read_text(encoding="utf-8"))
    meta = {e["id"]: e for e in lib["exercises"]}
    for ex_id in sys.argv[1:]:
        if ex_id in have:
            print(f"{ex_id}: already built in")
            continue
        s, m = src[ex_id], meta[ex_id]
        n = int(m["n"])
        frames = [1] if n == 1 else [1, n]
        gear = [] if s["eq"] == "собствено тегло" else [s["eq"]]
        doc["exercises"].append({
            "id": ex_id, "bg": s["bg"], "en": s["en"], "muscle": s["tg"], "equip": s["eq"], "how": s["how"],
            "pos": m["pos"], "gear": gear, "vb": m["vb"], "paths": [frame(lib, ex_id, k) for k in frames],
            "met": m["met"], "mus": m["mus"]})
        print(f"{ex_id}: built in ({len(frames)} frames)")
    doc["exercises"].sort(key=lambda e: e["id"])
    (EX / "exercises.json").write_text(json.dumps(doc, ensure_ascii=False, separators=(",", ":")), encoding="utf-8")


if __name__ == "__main__":
    main()
