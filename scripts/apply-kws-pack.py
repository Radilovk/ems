#!/usr/bin/env python3
"""Ship the personal wake word's pack: branding/voice/kws-pack.bin → assets/xems/kws-pack.bin (ai/WakeSetup trains the
trainer's own "тренер" model on the tablet from it — other voices, look-alike words, halls; made by
scripts/voice-kws/run-kws.sh <enroll> <sentences> <words> branding/voice/kws-pack.bin). docs/xems-voice-kws.md
"""
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "branding" / "voice" / "kws-pack.bin"
DEST = ROOT / "build" / "decompiled" / "assets" / "xems" / "kws-pack.bin"


def main() -> int:
    if not SRC.exists() or SRC.stat().st_size < 1_000_000:
        print(f"apply-kws-pack: {SRC} missing or too small", file=sys.stderr)
        return 1
    if SRC.read_bytes()[:4] != b"KWSP":
        print("apply-kws-pack: not a KWS pack", file=sys.stderr)
        return 1
    DEST.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(SRC, DEST)
    print(f"kws pack shipped ({SRC.stat().st_size // 1024} KB)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
