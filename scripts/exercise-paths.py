#!/usr/bin/env python3
"""SVG path data → absolute M / L / C / Z only, so the app draws it with android.graphics.Path and no SVG library.

H/V → L, Q/T → C, S → C, A (elliptical arc) → C (≤ 90° segments), relative → absolute. Numbers rounded to 0.01.
Used by scripts/gen-exercises.py; `python3 scripts/exercise-paths.py "<d>"` prints the normalized path.
"""
from __future__ import annotations

import math
import re
import sys

TOK = re.compile(r"[MmZzLlHhVvCcSsQqTtAa]|[-+]?(?:\d+\.\d*|\.\d+|\d+)(?:[eE][-+]?\d+)?")
ARGS = {"M": 2, "L": 2, "H": 1, "V": 1, "C": 6, "S": 4, "Q": 4, "T": 2, "A": 7, "Z": 0}


def _arc_flags(tokens, i):
    """Arc flags may be written without separators ("a1 1 0 01.5.5"): split a packed flag token."""
    return tokens, i


def tokens(d: str) -> list[str]:
    out = []
    for t in TOK.findall(d):
        out.append(t)
    return out


def arc_to_cubic(x1, y1, rx, ry, phi, fa, fs, x2, y2):
    """Endpoint arc → list of cubic segments (each 6 numbers). SVG spec F.6."""
    if rx == 0 or ry == 0:
        return [[x1, y1, x2, y2, x2, y2]]
    rx, ry = abs(rx), abs(ry)
    cp, sp = math.cos(math.radians(phi)), math.sin(math.radians(phi))
    dx, dy = (x1 - x2) / 2, (y1 - y2) / 2
    x1p, y1p = cp * dx + sp * dy, -sp * dx + cp * dy
    lam = (x1p / rx) ** 2 + (y1p / ry) ** 2
    if lam > 1:
        s = math.sqrt(lam); rx *= s; ry *= s
    num = rx * rx * ry * ry - rx * rx * y1p * y1p - ry * ry * x1p * x1p
    den = rx * rx * y1p * y1p + ry * ry * x1p * x1p
    co = math.sqrt(max(0.0, num / den)) if den else 0.0
    if fa == fs:
        co = -co
    cxp, cyp = co * rx * y1p / ry, -co * ry * x1p / rx
    cx = cp * cxp - sp * cyp + (x1 + x2) / 2
    cy = sp * cxp + cp * cyp + (y1 + y2) / 2

    def ang(ux, uy, vx, vy):
        a = math.atan2(ux * vy - uy * vx, ux * vx + uy * vy)
        return a

    t1 = ang(1, 0, (x1p - cxp) / rx, (y1p - cyp) / ry)
    dt = ang((x1p - cxp) / rx, (y1p - cyp) / ry, (-x1p - cxp) / rx, (-y1p - cyp) / ry)
    if not fs and dt > 0:
        dt -= 2 * math.pi
    elif fs and dt < 0:
        dt += 2 * math.pi
    n = max(1, int(math.ceil(abs(dt) / (math.pi / 2) - 1e-9)))
    seg = dt / n
    k = 4 / 3 * math.tan(seg / 4)
    out = []
    for i in range(n):
        a1 = t1 + i * seg; a2 = a1 + seg
        c1, s1, c2, s2 = math.cos(a1), math.sin(a1), math.cos(a2), math.sin(a2)
        p1 = (c1 - k * s1, s1 + k * c1)
        p2 = (c2 + k * s2, s2 - k * c2)
        p3 = (c2, s2)
        pts = []
        for (ux, uy) in (p1, p2, p3):
            X, Y = ux * rx, uy * ry
            pts += [cp * X - sp * Y + cx, sp * X + cp * Y + cy]
        out.append(pts)
    return out


def normalize(d: str) -> str:
    t = tokens(d)
    out: list[str] = []
    i = 0; cmd = None
    x = y = sx = sy = 0.0
    lcx = lcy = None     # last cubic control (for S)
    lqx = lqy = None     # last quad control (for T)

    def num():
        nonlocal i
        v = float(t[i]); i += 1
        return v

    def flag():
        """A flag is one digit 0/1, possibly glued to the next number ("01.5")."""
        nonlocal i
        tok = t[i]
        if tok in ("0", "1"):
            i += 1
            return int(tok)
        # glued: take the first char as the flag, put the rest back
        f = int(tok[0]); t[i] = tok[1:]
        return f

    def emit(c, *vals):
        out.append(c + " ".join(fmt(v) for v in vals))

    while i < len(t):
        if t[i].isalpha():
            cmd = t[i]; i += 1
            if cmd in "Zz":
                out.append("Z"); x, y = sx, sy; lcx = lqx = None
                continue
        rel = cmd.islower(); C = cmd.upper()
        if C == "M":
            nx, ny = num(), num()
            if rel: nx += x; ny += y
            x, y = sx, sy = nx, ny
            emit("M", x, y)
            cmd = "l" if rel else "L"; lcx = lqx = None
        elif C == "L":
            nx, ny = num(), num()
            if rel: nx += x; ny += y
            x, y = nx, ny; emit("L", x, y); lcx = lqx = None
        elif C == "H":
            nx = num() + (x if rel else 0); x = nx; emit("L", x, y); lcx = lqx = None
        elif C == "V":
            ny = num() + (y if rel else 0); y = ny; emit("L", x, y); lcx = lqx = None
        elif C == "C":
            v = [num() for _ in range(6)]
            if rel: v = [v[k] + (x if k % 2 == 0 else y) for k in range(6)]
            emit("C", *v); lcx, lcy = v[2], v[3]; x, y = v[4], v[5]; lqx = None
        elif C == "S":
            v = [num() for _ in range(4)]
            if rel: v = [v[k] + (x if k % 2 == 0 else y) for k in range(4)]
            c1x, c1y = (2 * x - lcx, 2 * y - lcy) if lcx is not None else (x, y)
            emit("C", c1x, c1y, *v); lcx, lcy = v[0], v[1]; x, y = v[2], v[3]; lqx = None
        elif C == "Q":
            v = [num() for _ in range(4)]
            if rel: v = [v[k] + (x if k % 2 == 0 else y) for k in range(4)]
            qx, qy, ex, ey = v
            emit("C", x + 2 / 3 * (qx - x), y + 2 / 3 * (qy - y), ex + 2 / 3 * (qx - ex), ey + 2 / 3 * (qy - ey), ex, ey)
            lqx, lqy = qx, qy; x, y = ex, ey; lcx = None
        elif C == "T":
            ex, ey = num(), num()
            if rel: ex += x; ey += y
            qx, qy = (2 * x - lqx, 2 * y - lqy) if lqx is not None else (x, y)
            emit("C", x + 2 / 3 * (qx - x), y + 2 / 3 * (qy - y), ex + 2 / 3 * (qx - ex), ey + 2 / 3 * (qy - ey), ex, ey)
            lqx, lqy = qx, qy; x, y = ex, ey; lcx = None
        elif C == "A":
            rx, ry, phi = num(), num(), num()
            fa = flag(); fs = flag()
            ex, ey = num(), num()
            if rel: ex += x; ey += y
            for seg in arc_to_cubic(x, y, rx, ry, phi, fa, fs, ex, ey):
                emit("C", *seg)
            x, y = ex, ey; lcx = lqx = None
        else:
            raise ValueError("unknown command " + str(cmd))
    return "".join(out)


def fmt(v: float) -> str:
    s = ("%.2f" % v).rstrip("0").rstrip(".")
    return "0" if s in ("-0", "") else s


if __name__ == "__main__":
    print(normalize(sys.argv[1]))
