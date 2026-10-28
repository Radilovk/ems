#!/usr/bin/env python3
"""Ship the voice module's firmware inside the APK: voice/xems-voice-sense-plus-ota.zip (sh scripts/voice/build-voice.sh)
→ assets/xems/voice/app.bin + app.dat, which wearable/voice/VoiceUsb loads into the XIAO over its USB cable.
One image fits the Sense and the Sense Plus (same pins for the mic and the LEDs). docs/xems-voice.md."""

from __future__ import annotations

import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "voice" / "xems-voice-sense-plus-ota.zip"
DEST = ROOT / "build" / "decompiled" / "assets" / "xems" / "voice"


def main() -> int:
    DEST.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(SRC) as z:
        names = z.namelist()
        b = [n for n in names if n.endswith(".bin")]
        d = [n for n in names if n.endswith(".dat")]
        if len(b) != 1 or len(d) != 1:
            raise SystemExit(f"{SRC.name}: want one .bin and one .dat, got {names}")
        (DEST / "app.bin").write_bytes(z.read(b[0]))
        (DEST / "app.dat").write_bytes(z.read(d[0]))
    print(f"assets/xems/voice/app.bin ({(DEST / 'app.bin').stat().st_size} B) + app.dat")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
