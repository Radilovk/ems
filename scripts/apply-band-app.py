#!/usr/bin/env python3
"""Ship the XEMS band app inside the APK: band-app/xems-band.rpk → assets/xems-band.rpk.

Settings → Band → "Install on the band" uploads it over the band link (XiaomiBandInstaller).
"""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "band-app" / "xems-band.rpk"
DEST = ROOT / "build" / "decompiled" / "assets" / "xems-band.rpk"


def main() -> int:
    if not SRC.exists():
        raise SystemExit("Missing band-app/xems-band.rpk — run band-app/build.sh")
    DEST.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(SRC, DEST)
    print(f"assets/xems-band.rpk ({SRC.stat().st_size} B)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
