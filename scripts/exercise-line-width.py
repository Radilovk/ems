#!/usr/bin/env python3
"""Even line weight for the exercise figures. Some frames of the source drawings (mostly the middle one) are traced
with much bolder lines than the others, so the animation pulses thick–thin. This redraws only those frames:

  1. rasterize the frame (even-odd, 2 px per drawing unit) and measure its line width (twice the median distance
     from the lines' ridge to their edge);
  2. frames bolder than TARGET + SLACK: skeleton (Zhang–Suen, with small holes filled first), keep only the part of
     the drawing within TARGET/2 of the skeleton core. Thick strokes come down to TARGET, strokes already thinner stay
     exactly as drawn, so no line is cut (a plain erosion breaks every stroke thinner than the cut);
  3. trace back to a vector path (potrace) → absolute M/L/C/Z in the drawing's own units.

Writes:
  branding/exercises/fixed/<id>-<n>.svg  the redrawn library frames (512-unit box like the source). The admin page
                                       loads them from jsDelivr (this repo, main) in place of the source frame;
                                       apply-exercise-assets.py packs them into assets/xems/frames-fix.json for
                                       ExerciseLibrary; gen-exercise-library.py lists them in library.json "fixed".
  branding/exercises/exercises.json    the built-in figures' bolder paths replaced in place (a redrawn frame is
                                       at TARGET, so a re-run leaves it alone)

Needs numpy, scipy, Pillow, potracer (pip install potracer). The frames are downloaded once into --cache.

  python3 scripts/exercise-line-width.py --cache /tmp/xems-svg
"""
from __future__ import annotations

import argparse
import importlib.util
import json
import re
import urllib.request
from pathlib import Path

import numpy as np
import potrace
from PIL import Image, ImageChops, ImageDraw
from scipy import ndimage as nd

ROOT = Path(__file__).resolve().parents[1]
EX = ROOT / "branding" / "exercises"
TARGET = 4.4     # line width the bolder frames come down to (drawing units; most frames draw 3.5–4.5)
SLACK = 0.5      # frames up to TARGET + SLACK stay as drawn
RES = 2.0        # raster pixels per drawing unit

_spec = importlib.util.spec_from_file_location("ep", ROOT / "scripts" / "exercise-paths.py")
ep = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(ep)
TOK = re.compile(r"[MLCZ]|[-+]?(?:\d+\.\d*|\.\d+|\d+)(?:[eE][-+]?\d+)?")


def polygons(d: str) -> list[list[tuple[float, float]]]:
    """Normalized M/L/C/Z → closed polygons (cubics flattened to 8 segments)."""
    t = TOK.findall(d)
    i, out, cur, x, y, cmd = 0, [], [], 0.0, 0.0, "M"
    while i < len(t):
        if t[i] in "MLCZ":
            cmd = t[i]
            i += 1
        if cmd == "Z":
            if cur:
                out.append(cur)
                cur = []
            continue
        n = 6 if cmd == "C" else 2
        a = [float(v) for v in t[i:i + n]]
        i += n
        if cmd == "M":
            if cur:
                out.append(cur)
            cur, (x, y), cmd = [(a[0], a[1])], a, "L"
        elif cmd == "L":
            cur.append((a[0], a[1]))
            x, y = a
        else:
            for k in range(1, 9):
                s = k / 8
                u = 1 - s
                cur.append((u ** 3 * x + 3 * u * u * s * a[0] + 3 * u * s * s * a[2] + s ** 3 * a[4],
                            u ** 3 * y + 3 * u * u * s * a[1] + 3 * u * s * s * a[3] + s ** 3 * a[5]))
            x, y = a[4], a[5]
    if cur:
        out.append(cur)
    return out


def raster(ds: list[str], vb: list[float]) -> np.ndarray:
    w, h = int(vb[2] * RES) + 2, int(vb[3] * RES) + 2
    m = Image.new("1", (w, h), 0)
    for d in ds:
        for p in polygons(d):
            if len(p) < 3:
                continue
            layer = Image.new("1", (w, h), 0)
            ImageDraw.Draw(layer).polygon([((px - vb[0]) * RES, (py - vb[1]) * RES) for px, py in p], fill=1)
            m = ImageChops.logical_xor(m, layer)
    return np.asarray(m, dtype=bool)


def width(m: np.ndarray) -> float:
    dt = nd.distance_transform_edt(m)
    ridge = (dt == nd.maximum_filter(dt, 3)) & (dt > 0.5)
    return float(2 * np.median(dt[ridge]) / RES) if ridge.any() else 0.0


def skeleton(m: np.ndarray) -> np.ndarray:
    """Zhang–Suen thinning (vectorized)."""
    img = np.pad(m.astype(np.uint8), 1)
    while True:
        changed = False
        for step in (0, 1):
            p = img
            p2, p3, p4, p5 = p[:-2, 1:-1], p[:-2, 2:], p[1:-1, 2:], p[2:, 2:]
            p6, p7, p8, p9 = p[2:, 1:-1], p[2:, :-2], p[1:-1, :-2], p[:-2, :-2]
            c = p[1:-1, 1:-1]
            b = p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9
            seq = [p2, p3, p4, p5, p6, p7, p8, p9, p2]
            a = sum(((seq[i] == 0) & (seq[i + 1] == 1)).astype(np.uint8) for i in range(8))
            c1, c2 = (p2 * p4 * p6, p4 * p6 * p8) if step == 0 else (p2 * p4 * p8, p2 * p6 * p8)
            rm = (c == 1) & (b >= 2) & (b <= 6) & (a == 1) & (c1 == 0) & (c2 == 0)
            if rm.any():
                img[1:-1, 1:-1][rm] = 0
                changed = True
        if not changed:
            return img[1:-1, 1:-1].astype(bool)


def cap(m: np.ndarray) -> np.ndarray:
    """The drawing with its strokes capped at TARGET: what lies within TARGET/2 of the skeleton's core."""
    r = TARGET / 2 * RES
    lab, _ = nd.label(~m)
    area = np.bincount(lab.ravel())
    m = m | ((area < (3 * r) ** 2)[lab] & (lab > 0))            # specks inside the bold strokes
    sk = skeleton(m)
    dt = nd.distance_transform_edt(m)
    loc = nd.maximum_filter(np.where(sk, dt, 0), size=int(4 * r) | 1)
    core = sk & (dt >= np.minimum(r, 0.8 * loc))                 # no spurs out to a bumpy edge
    return m & (nd.distance_transform_edt(~core) <= r)


def num(v: float) -> str:
    s = f"{v:.1f}".rstrip("0").rstrip(".")
    return "0" if s in ("-0", "") else s


def trace(m: np.ndarray, vb: list[float]) -> str:
    def pt(p):
        return f"{num(p.x / RES + vb[0])} {num(p.y / RES + vb[1])}"

    out = []
    for cu in potrace.Bitmap(~m).trace(turdsize=4, alphamax=1.0, opticurve=True, opttolerance=0.2):
        out.append("M" + pt(cu.start_point))
        for s in cu.segments:
            if s.is_corner:
                out.append("L" + pt(s.c) + "L" + pt(s.end_point))
            else:
                out.append("C" + pt(s.c1) + " " + pt(s.c2) + " " + pt(s.end_point))
        out.append("Z")
    return "".join(out)


def fix(ds: list[str], vb: list[float]) -> str | None:
    m = raster(ds, vb)
    return trace(cap(m), vb) if width(m) > TARGET + SLACK else None


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--cache", default="/tmp/xems-svg", help="folder for the downloaded frame SVGs")
    args = ap.parse_args()
    cache = Path(args.cache)
    cache.mkdir(parents=True, exist_ok=True)

    lib = json.loads((EX / "library.json").read_text(encoding="utf-8"))
    out = EX / "fixed"
    out.mkdir(exist_ok=True)
    for old in out.glob("*.svg"):
        old.unlink()
    fixed = 0
    total = 0
    for e in lib["exercises"]:
        for n in range(1, int(e["n"]) + 1):
            f = cache / f"{e['id']}-{n}.svg"
            if not f.exists():
                url = lib["frames"].replace("{id}", e["id"]).replace("{n}", str(n))
                f.write_bytes(urllib.request.urlopen(url, timeout=30).read())
            svg = f.read_text(encoding="utf-8")
            vb = [float(v) for v in re.search(r'viewBox="([^"]+)"', svg).group(1).split()]
            p = fix([ep.normalize(d) for d in re.findall(r'\sd="([^"]+)"', svg)], vb)
            total += 1
            if p:
                fixed += 1
                (out / f"{e['id']}-{n}.svg").write_text(
                    '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="#fff" '
                    f'fill-rule="evenodd" d="{p}"/></svg>\n', encoding="utf-8")

    doc = json.loads((EX / "exercises.json").read_text(encoding="utf-8"))
    built = 0
    for e in doc["exercises"]:
        new = [fix([p], e["vb"]) for p in e["paths"]]
        e["paths"] = [q or p for p, q in zip(e["paths"], new)]
        built += sum(1 for q in new if q)
    (EX / "exercises.json").write_text(json.dumps(doc, ensure_ascii=False, separators=(",", ":")), encoding="utf-8")
    print(f"fixed/: {fixed} of {total} library frames redrawn; built-in frames redrawn: {built}. "
          "Now run scripts/gen-exercise-library.py")


if __name__ == "__main__":
    main()
