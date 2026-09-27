#!/usr/bin/env python3
"""Ship the client report page: branding/report/session-report.html → assets/report/session-report.html,
and the shareable client card template: branding/report/client-card.html → assets/report/client-card.html.
The page (history, training report, muscle map) is opened by wearable/ReportScreen in a WebView and
reads the recorded sessions through window.XemsReport (wearable/ReportBridge).
"""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "branding" / "report" / "session-report.html"
DEST = ROOT / "build" / "decompiled" / "assets" / "report" / "session-report.html"


def main() -> int:
    if not SRC.is_file():
        raise SystemExit(f"Missing {SRC}")
    text = SRC.read_text(encoding="utf-8")
    if "window.XemsReport" not in text or "<!doctype html>" not in text.lower():
        raise SystemExit("session-report.html: not the report page (no XemsReport bridge / doctype)")
    DEST.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(SRC, DEST)
    print(f"assets/report/session-report.html ({DEST.stat().st_size} B)")
    card = SRC.parent / "client-card.html"
    ctext = card.read_text(encoding="utf-8")
    if "__XEMS_CARD_DATA__" not in ctext:
        raise SystemExit("client-card.html: no __XEMS_CARD_DATA__ placeholder")
    shutil.copy2(card, DEST.parent / "client-card.html")
    print(f"assets/report/client-card.html ({card.stat().st_size} B)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
