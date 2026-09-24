#!/usr/bin/env python3
"""Fail the build if interval timer dialog smali is incomplete (NoClassDefFoundError at open)."""

from __future__ import annotations

import importlib.util
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"


def _load_installer():
    path = ROOT / "scripts" / "install_interval_timer_smali.py"
    spec = importlib.util.spec_from_file_location("install_interval_timer_smali", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def main() -> int:
    if not DIALOG_DIR.is_dir():
        print("Interval timer smali check skipped (decompiled dialog dir missing).")
        return 0
    if not (DIALOG_DIR / "IntervalTimerHelper.smali").is_file():
        print("Interval timer smali check skipped (IntervalTimerHelper not in this build).")
        return 0
    installer = _load_installer()
    missing = [
        name for name in installer.REQUIRED_DIALOG if not (DIALOG_DIR / name).is_file()
    ]
    errs: list[str] = []
    if missing:
        errs.append(
            "missing dialog smali (timer config open will crash):\n    "
            + "\n    ".join(missing)
        )
    widget = DECOMPILED / "smali_classes2/com/isaigu/gymapp/widget/XemsUi.smali"
    if not widget.is_file():
        errs.append("widget/XemsUi.smali missing — timer settings sheet would crash (run compile-music-sync-java.sh)")
    runner = DIALOG_DIR / "BlockProgramRunner.smali"
    if runner.is_file() and "-$$Lambda$BlockProgramRunner" in runner.read_text(encoding="utf-8"):
        errs.append("BlockProgramRunner.smali references lambda classes — training start will crash")
    if errs:
        print("Interval timer smali check FAILED:", file=sys.stderr)
        for err in errs:
            print(f"  - {err}", file=sys.stderr)
        return 1
    print("Interval timer smali check passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
