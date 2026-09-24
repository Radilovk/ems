#!/usr/bin/env python3
"""XEMS navigation (v1.1.64): page tabs → ☰ menu top-left, bottom bar → module tiles.

- MainFragment.onCreateView: XemsNav.attach(root) before `return-object v0`
  (hides the tab bar `ll` + `line`, adds the module bar and the ☰ button).
- MainFragment.changePageFragment(I): XemsNav.onPage(id) first, so the menu knows the page.
- Installs branding/smali/widget/XemsNav*.smali.
The sidebar module buttons are hidden from Java (WearableSyncHelper → XemsNav.onTrainingPanel).
"""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
MAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/MainFragment.smali"
SRC = ROOT / "branding" / "smali" / "widget"
DEST = DECOMPILED / "smali_classes2/com/isaigu/gymapp/widget"

ATTACH = "Lcom/isaigu/gymapp/widget/XemsNav;->attach(Landroid/view/View;)V"
ON_PAGE = "Lcom/isaigu/gymapp/widget/XemsNav;->onPage(I)V"


def install() -> None:
    files = sorted(SRC.glob("XemsNav*.smali")) + sorted(SRC.glob("XemsPanel*.smali")) + sorted(
        SRC.glob("XemsIcon*.smali")) + sorted(SRC.glob("XemsFullscreen*.smali")) + sorted(
        SRC.glob("XemsLicense*.smali")) + sorted(SRC.glob("XemsLocal*.smali"))
    if not files:
        raise SystemExit("Missing branding/smali/widget/XemsNav.smali — run compile-music-sync-java.sh")
    DEST.mkdir(parents=True, exist_ok=True)
    for f in files:
        shutil.copy2(f, DEST / f.name)
    print(f"installed widget/XemsNav, XemsPanel, XemsIcon, XemsFullscreen ({len(files)} files)")


def method_span(text: str, header: str) -> tuple[int, int]:
    start = text.find(header)
    if start < 0:
        raise SystemExit(f"MainFragment: method not found: {header}")
    end = text.find(".end method", start)
    return start, end


def patch() -> None:
    text = MAIN_FRAGMENT.read_text(encoding="utf-8")
    changed = False

    if ATTACH not in text:
        s, e = method_span(text, ".method public onCreateView(Landroid/view/LayoutInflater;")
        body = text[s:e]
        idx = body.rfind("    return-object v0")
        if idx < 0:
            raise SystemExit("MainFragment.onCreateView: `return-object v0` not found")
        body = body[:idx] + f"    invoke-static {{v0}}, {ATTACH}\n\n" + body[idx:]
        text = text[:s] + body + text[e:]
        changed = True

    if ON_PAGE not in text:
        s, e = method_span(text, ".method public changePageFragment(I)V")
        body = text[s:e]
        anchor = "    packed-switch p1, :pswitch_data_0"
        idx = body.find(anchor)
        if idx < 0:
            raise SystemExit("MainFragment.changePageFragment: packed-switch not found")
        body = body[:idx] + f"    invoke-static {{p1}}, {ON_PAGE}\n\n" + body[idx:]
        text = text[:s] + body + text[e:]
        changed = True

    if changed:
        MAIN_FRAGMENT.write_text(text, encoding="utf-8")
        print("patched MainFragment (XemsNav attach + onPage)")
    else:
        print("MainFragment already has XemsNav hooks")


def main() -> int:
    if not MAIN_FRAGMENT.exists():
        raise SystemExit(f"missing {MAIN_FRAGMENT}")
    install()
    patch()
    return 0


if __name__ == "__main__":
    sys.exit(main())
