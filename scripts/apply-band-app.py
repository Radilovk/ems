#!/usr/bin/env python3
"""Ship the XEMS band app inside the APK, both languages:
band-app/xems-band.rpk (Bulgarian) → assets/xems-band.rpk,
band-app/xems-band-en.rpk (English) → assets/xems-band-en.rpk.
The tablet installs the one for its language (BandAppInstall).

Also checks that BandAppInstall.VERSION = versionCode of the band app: otherwise the tablet never
sends a newer band app (it thinks the old one is current).
"""

from __future__ import annotations

import json
import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
BAND = ROOT / "band-app"
ASSETS = ROOT / "build" / "decompiled" / "assets"
FILES = {"xems-band.rpk": BAND / "xems-band.rpk", "xems-band-en.rpk": BAND / "xems-band-en.rpk"}
INSTALL_JAVA = ROOT / "branding" / "java" / "src" / "com" / "isaigu" / "gymapp" / "wearable" / "BandAppInstall.java"


def check_version() -> None:
    code = json.loads((BAND / "src" / "manifest.json").read_text(encoding="utf-8"))["versionCode"]
    m = re.search(r"public static final int VERSION = (\d+);", INSTALL_JAVA.read_text(encoding="utf-8"))
    if not m or int(m.group(1)) != code:
        raise SystemExit(f"BandAppInstall.VERSION ({m.group(1) if m else '?'}) != band app versionCode ({code})")
    app = (BAND / "src" / "app.ux").read_text(encoding="utf-8")
    if f"const APP_VERSION = {code}" not in app:
        raise SystemExit(f"band-app/src/app.ux APP_VERSION != versionCode ({code})")


def main() -> int:
    check_version()
    ASSETS.mkdir(parents=True, exist_ok=True)
    for name, src in FILES.items():
        if not src.exists():
            raise SystemExit(f"Missing band-app/{src.name} — run band-app/build.sh")
        shutil.copy2(src, ASSETS / name)
        print(f"assets/{name} ({src.stat().st_size} B)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
