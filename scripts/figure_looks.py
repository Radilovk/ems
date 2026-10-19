#!/usr/bin/env python3
"""The XEMS body figures in two looks, made from the report's full-size art (branding/report/session-report.html,
566×1394 — the 640-px tablet copies in branding/body are too small and lossy to process): every step at full size,
one high-quality downscale at the end, so the silhouette keeps its smooth edge and the muscles their detail.

  light = the figure's range stretched to deep slate … pale cool grey, a soft slate rim (XBody's light screen)
  dark  = graphite, the lights a muted slate, a soft cool rim light (owner: the silver body outshone the values)
  idx   = R region (nearest, as the report's map), G = the same tone (the zones' red follows the art's volume),
          B coverage (smooth)

Used by scripts/xbody/gen-panel-body.py (the XBody panel, PNG) and scripts/gen-wiems-figures.py (the WiEMS app)."""
from __future__ import annotations

import base64
import io
import re
from pathlib import Path

import numpy as np
from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "branding" / "report" / "session-report.html"
KEYS = ("female_front", "female_back", "male_front", "male_back")

DARK, LIGHT = (0x3F, 0x45, 0x52), (0xEE, 0xF0, 0xF4)                 # light look: hollows … lights
G_DARK, G_LIGHT, G_RIM = (0x1B, 0x1F, 0x25), (0x85, 0x8D, 0x99), (0xA9, 0xB1, 0xBC)   # dark look


def _grab(html: str, kind: str, key: str) -> Image.Image:
    m = re.search(r'id="%s-%s">data:image/webp;base64,([A-Za-z0-9+/=]+)' % (kind, key), html)
    if not m:
        raise SystemExit(f"{SRC.name}: no {kind}-{key}")
    return Image.open(io.BytesIO(base64.b64decode(m.group(1))))


def _blur(a: np.ndarray, sigma: float) -> np.ndarray:
    """A separable gaussian (edges extended)."""
    r = int(3 * sigma + 0.5)
    k = np.exp(-0.5 * (np.arange(-r, r + 1) / sigma) ** 2)
    k /= k.sum()
    p = np.pad(a.astype(np.float32), r, mode="edge")
    p = sum(k[i] * p[:, i:i + a.shape[1]] for i in range(2 * r + 1))
    return sum(k[i] * p[i:i + a.shape[0], :] for i in range(2 * r + 1)).astype(np.float32)


def _mix(c0, c1, t: np.ndarray) -> np.ndarray:
    c0, c1 = np.array(c0, np.float32), np.array(c1, np.float32)
    return c0 + (c1 - c0) * t[..., None]


def looks(key: str, height: int, html: str | None = None) -> tuple[Image.Image, Image.Image, Image.Image]:
    """(light RGBA, dark RGBA, idx RGB) of one figure at `height` px."""
    html = html or SRC.read_text(encoding="utf-8")
    art = np.asarray(_grab(html, "art", key).convert("RGBA"), np.float32)
    fig = _grab(html, "fig", key).convert("RGB")
    a = art[..., 3] / 255.0
    lum = art[..., :3].mean(axis=2)
    # a light denoise of the webp's steps, weighted by coverage (no dark fringe from the transparent edge)
    lum = _blur(lum * a, 1.2) / np.maximum(_blur(a, 1.2), 1e-4)
    body = a > 0.8
    v = lum[body]
    lo, hi = np.percentile(v, 1.0), np.percentile(v, 99.5)
    hist, edges = np.histogram(v, bins=256, range=(0, 256))
    cdf = np.cumsum(hist) / max(1, v.size)
    lin = np.clip((lum - lo) / max(1e-3, hi - lo), 0, 1)
    eq = cdf[np.clip(lum.astype(int), 0, 255)]
    t = (0.35 * eq + 0.65 * lin) ** 0.85
    # the rim, soft: 1 at the silhouette, gone ~6 px in (full size) — no stair steps from a hard mask
    rim = np.clip(2.0 * (1.0 - _blur(a, 3.0)), 0, 1) * (a > 0)
    light = _mix(DARK, LIGHT, t * (1 - 0.55 * rim))
    dark = _mix(G_DARK, G_LIGHT, t)
    dark = dark + (np.array(G_RIM, np.float32) - dark) * (0.55 * rim)[..., None]
    w = round(art.shape[1] * height / art.shape[0])
    alpha = art[..., 3:4]

    def out(rgb: np.ndarray) -> Image.Image:
        im = Image.fromarray(np.concatenate([np.clip(rgb, 0, 255), alpha], axis=2).astype(np.uint8), "RGBA")
        return im.convert("RGBa").resize((w, height), Image.LANCZOS).convert("RGBA")   # premultiplied: no halo

    tone = Image.fromarray((np.clip(t, 0, 1) * 255).astype(np.uint8), "L").resize((w, height), Image.LANCZOS)
    r, _, b = fig.split()
    idx = Image.merge("RGB", (r.resize((w, height), Image.NEAREST), tone, b.resize((w, height), Image.BILINEAR)))
    return out(light), out(dark), idx
