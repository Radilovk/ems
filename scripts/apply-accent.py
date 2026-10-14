#!/usr/bin/env python3
"""Magenta accent as a second palette, switched in Settings (XemsUi.accentAttach / accentBind).

The app's cyan family moves to magenta in a resource qualifier the app turns on itself (mcc999 — no device has
it, the activity sets it as an override configuration when "Магента" is chosen):
- res/values-mcc999-night/colors.xml: every night colour of the cyan / navy family (hue 185–225°) turned — bright
  ones to pink-leaning magenta (322°, a touch lighter), the dark glass to deep plum (280°), lightness kept;
- res/values-mcc999/colors.xml: the light theme's accent names to magenta;
- res/drawable-mcc999-night/: the night drawables that carry a cyan hex of their own, recoloured the same way;
- BaseActivity.attachBaseContext → XemsUi.accentAttach; SettingFragment → XemsUi.accentBind after the theme switch.
Run after the theme and colour scripts (the merged values-night is the source) and after XemsUi is installed.
"""

import colorsys
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
RES = ROOT / "build" / "decompiled" / "res"
SMALI = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
BASE_ACTIVITY = SMALI / "BaseActivity.smali"
SETTING_FRAGMENT = SMALI / "fragment" / "SettingFragment.smali"
MCC = 999

COLOR_RE = re.compile(r'<color name="([^"]+)">#([0-9a-fA-F]{6}|[0-9a-fA-F]{8})</color>')
HEX_RE = re.compile(r"#([0-9a-fA-F]{8}|[0-9a-fA-F]{6})\b")

# light theme: only the accent names (the rest of the light palette is grey / white)
LIGHT = {
    "accent_primary": "ffce2286",
    "accent_primary_dark": "ff8f195e",
    "device_connected": "ffaf1d72",
    "mainColor": "fff042b0",
}

THEME_HOOK = (
    "    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;"
    "->bindThemeSwitch(Landroid/app/Activity;Landroid/view/View;)V\n"
)
ACCENT_HOOK = (
    "\n    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;"
    "->accentBind(Landroid/app/Activity;Landroid/view/View;)V\n"
)
ATTACH = """
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->accentAttach(Landroid/app/Activity;)V

    return-void
.end method
"""


def turn(argb: str) -> str | None:
    """The magenta twin of a cyan / navy colour, or None when the colour is not of that family."""
    a, rgb = (argb[:2], argb[2:]) if len(argb) == 8 else ("ff", argb)
    r, g, b = (int(rgb[i:i + 2], 16) / 255 for i in (0, 2, 4))
    h, l, s = colorsys.rgb_to_hls(r, g, b)
    if not (185 / 360 <= h <= 225 / 360) or s < 0.15:
        return None
    if l >= 0.8:
        nh, ns = 322 / 360, s * 0.7          # near-white text: a hint of pink, not candy
    elif l >= 0.3:
        nh, ns = 322 / 360, s * 0.92         # the accent and its mid tones: pink-leaning magenta (owner, 1.1.443)
        l = min(0.7, l + 0.04)
    else:
        nh, ns = 280 / 360, s                # dark glass: deep plum
    nr, ng, nb = colorsys.hls_to_rgb(nh, l, ns)
    return a.lower() + "".join(f"{round(x * 255):02x}" for x in (nr, ng, nb))


def write_colors(path: Path, pairs: dict) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    body = "".join(f'    <color name="{n}">#{v}</color>\n' for n, v in pairs.items())
    path.write_text('<?xml version="1.0" encoding="utf-8"?>\n<resources>\n' + body + "</resources>\n", encoding="utf-8")


def palettes() -> None:
    night = RES / "values-night" / "colors.xml"
    if not night.exists():
        raise SystemExit("apply-accent: res/values-night/colors.xml missing (run the theme scripts first)")
    turned = {}
    for name, v in COLOR_RE.findall(night.read_text(encoding="utf-8")):
        t = turn(v)
        if t:
            turned[name] = t
    if turned.get("accent_primary") is None:
        raise SystemExit("apply-accent: accent_primary is not cyan any more — check the night palette")
    write_colors(RES / f"values-mcc{MCC}-night" / "colors.xml", turned)
    light_src = (RES / "values" / "colors.xml").read_text(encoding="utf-8")
    light = {n: v for n, v in LIGHT.items() if f'name="{n}"' in light_src}
    write_colors(RES / f"values-mcc{MCC}" / "colors.xml", light)
    print(f"apply-accent: magenta palette — {len(turned)} night colours (accent #{turned['accent_primary']}), "
          f"{len(light)} light")


def drawables() -> None:
    n = 0
    for src_dir in sorted(RES.glob("drawable*-night*")):
        if f"mcc{MCC}" in src_dir.name:
            continue
        dst_dir = RES / src_dir.name.replace("drawable", f"drawable-mcc{MCC}", 1)
        for f in sorted(src_dir.glob("*.xml")):
            text = f.read_text(encoding="utf-8")
            new = HEX_RE.sub(lambda m: "#" + (turn(m.group(1)) or m.group(1)), text)
            if new != text:
                dst_dir.mkdir(parents=True, exist_ok=True)
                (dst_dir / f.name).write_text(new, encoding="utf-8")
                n += 1
    print(f"apply-accent: {n} night drawables recoloured")


def hooks() -> None:
    text = BASE_ACTIVITY.read_text(encoding="utf-8")
    if "XemsUi;->accentAttach" not in text:
        if "attachBaseContext(" in text:
            raise SystemExit("apply-accent: BaseActivity has its own attachBaseContext — hook it by hand")
        text = text.replace("\n.method public constructor <init>()V", ATTACH + "\n.method public constructor <init>()V", 1)
        if "XemsUi;->accentAttach" not in text:
            raise SystemExit("apply-accent: BaseActivity constructor anchor not found")
        BASE_ACTIVITY.write_text(text, encoding="utf-8")
    text = SETTING_FRAGMENT.read_text(encoding="utf-8")
    if "XemsUi;->accentBind" not in text:
        if THEME_HOOK not in text:
            raise SystemExit("apply-accent: SettingFragment bindThemeSwitch hook not found")
        text = text.replace(THEME_HOOK, THEME_HOOK + ACCENT_HOOK, 1)
        SETTING_FRAGMENT.write_text(text, encoding="utf-8")
    if not list(SMALI.glob("widget/XemsUi.smali")):
        raise SystemExit("apply-accent: widget/XemsUi.smali not installed")
    print("apply-accent: BaseActivity.attachBaseContext + Settings row hooked")


def main() -> int:
    if not RES.is_dir():
        print("apply-accent: decompiled tree missing; run build-apk.sh", file=sys.stderr)
        return 1
    palettes()
    drawables()
    hooks()
    return 0


if __name__ == "__main__":
    sys.exit(main())
