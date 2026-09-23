#!/usr/bin/env python3
"""Fail the build if BETA music hooks touch login-critical classes."""

from __future__ import annotations

import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = Path(os.environ.get("DECOMPILED", ROOT / "build" / "decompiled"))

FORBIDDEN = {
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali": (
        "MusicSyncHelper",
        "betaFeatures",
        "BetaFeatures",
    ),
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/LoginFragment.smali": (
        "MusicSync",
        "MusicSyncHelper",
        "MusicSyncBridge",
    ),
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/MainFragment.smali": (
        "MusicSync",
        "MusicSyncHelper",
        "MusicSyncBridge",
    ),
    DECOMPILED / "res/layout/new_train_fragment_layout.xml": (
        "betaFeatures",
        "musicMinStrength",
        "musicSyncStart",
        "MusicSync",
        "MusicSyncHelper",
    ),
}


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing.", file=sys.stderr)
        return 1

    errors: list[str] = []
    for path, needles in FORBIDDEN.items():
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        for needle in needles:
            if needle in text:
                errors.append(f"{path.relative_to(ROOT)}: forbidden reference '{needle}'")

    # Microphone mode was removed: no permission and no references to its UI class.
    manifest = DECOMPILED / "AndroidManifest.xml"
    if manifest.exists() and "RECORD_AUDIO" in manifest.read_text(encoding="utf-8"):
        errors.append("AndroidManifest.xml: RECORD_AUDIO must not be declared (mic mode removed)")
    for smali in DECOMPILED.glob("smali*/com/isaigu/gymapp/**/*.smali"):
        if "MusicSyncHelper" in smali.read_text(encoding="utf-8"):
            errors.append(f"{smali.relative_to(DECOMPILED)}: references removed MusicSyncHelper")

    if errors:
        print("BETA safety check FAILED:", file=sys.stderr)
        for line in errors:
            print(f"  - {line}", file=sys.stderr)
        return 1

    print("BETA safety check passed (no login-path music hooks).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
