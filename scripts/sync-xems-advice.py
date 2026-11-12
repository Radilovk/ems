#!/usr/bin/env python3
"""The advice after a training has ONE source: aidiet `xems-advice.js` (the XB-Studio app's live page, the XBody PWA).
The tablet's report is offline (assets/report), so it carries a copy between the XEMS-ADVICE markers of
branding/report/session-report.html. This script puts the current file there.

  python3 scripts/sync-xems-advice.py            # from ../aidiet/xems-advice.js, else from GitHub (Radilovk/aidiet main)
  python3 scripts/sync-xems-advice.py --check    # exit 1 when the copy differs (needs the source)
  XEMS_ADVICE_SRC=/path/xems-advice.js ...       # another source file

After a change: bump RELEASE_VERSION and rebuild the APK (the report ships inside it).
"""

from __future__ import annotations

import os
import sys
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
REPORT = ROOT / "branding" / "report" / "session-report.html"
START = "/*XEMS-ADVICE:start — copy of aidiet xems-advice.js, scripts/sync-xems-advice.py*/"
END = "/*XEMS-ADVICE:end*/"
RAW = "https://raw.githubusercontent.com/Radilovk/aidiet/main/xems-advice.js"


def source() -> str:
    env = os.environ.get("XEMS_ADVICE_SRC")
    for p in ([Path(env)] if env else []) + [ROOT.parent / "aidiet" / "xems-advice.js"]:
        if p.is_file():
            return p.read_text(encoding="utf-8")
    with urllib.request.urlopen(RAW, timeout=20) as r:
        return r.read().decode("utf-8")


def block(text: str) -> tuple[int, int]:
    a = text.find(START)
    b = text.find(END)
    if a < 0 or b < a:
        raise SystemExit("session-report.html: no XEMS-ADVICE markers")
    return a + len(START), b


def main() -> int:
    src = source().strip()
    if "root.XemsAdvice" not in src:
        raise SystemExit("xems-advice.js: not the advice file")
    text = REPORT.read_text(encoding="utf-8")
    a, b = block(text)
    cur = text[a:b].strip()
    if "--check" in sys.argv:
        if cur != src:
            print("session-report.html: the advice differs from xems-advice.js — run scripts/sync-xems-advice.py")
            return 1
        print("OK — the report's advice = xems-advice.js")
        return 0
    if cur == src:
        print("the report's advice is already current")
        return 0
    REPORT.write_text(text[:a] + "\n" + src + "\n" + text[b:], encoding="utf-8")
    print("session-report.html: advice updated — bump RELEASE_VERSION and rebuild the APK")
    return 0


if __name__ == "__main__":
    sys.exit(main())
