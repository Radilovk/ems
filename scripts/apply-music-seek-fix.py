#!/usr/bin/env python3
"""Allow full 360deg touch on CircleSeekBar when wheel_scroll_only_one_circle=false."""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SEEK_BAR = ROOT / "build/decompiled/smali_classes2/com/isaigu/gymapp/widget/CircleSeekBar.smali"

MARKER = "    .line 298\n    :goto_1\n"

ORIGINAL = """    .line 298
    :goto_1
    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    cmpl-double v6, v9, v4

    if-lez v6, :cond_5

    .line 299
    iput-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 300
    iput-wide v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 302
    :cond_5
    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    cmpl-double v6, v9, v4

    if-nez v6, :cond_6

    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    cmpl-double v6, v9, v13

    if-ltz v6, :cond_6

    cmpg-double v6, v9, v7

    if-gtz v6, :cond_6

    .line 303
    iput-wide v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 304
    iput-wide v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 306
    :cond_6
    iget-wide v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    cmpl-double v8, v6, v13

    if-nez v8, :cond_7

    iget-wide v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_7

    cmpg-double v8, v6, v4

    if-gtz v8, :cond_7

    .line 307
    iput-wide v13, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 308
    iput-wide v13, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    .line 310
    :cond_7"""

PATCHED = """    .line 298
    :goto_1
    iget-boolean v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->isScrollOneCircle:Z

    if-eqz v6, :cond_seek_full_circle

    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    cmpl-double v6, v9, v4

    if-lez v6, :cond_5

    iput-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    iput-wide v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    :cond_5
    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    cmpl-double v6, v9, v4

    if-nez v6, :cond_6

    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    cmpl-double v6, v9, v13

    if-ltz v6, :cond_6

    cmpg-double v6, v9, v7

    if-gtz v6, :cond_6

    iput-wide v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    iput-wide v4, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    :cond_6
    iget-wide v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    cmpl-double v8, v6, v13

    if-nez v8, :cond_7

    iget-wide v6, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_7

    cmpg-double v8, v6, v4

    if-gtz v8, :cond_7

    iput-wide v13, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->lastAngle:D

    iput-wide v13, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    goto :cond_7

    :cond_seek_full_circle
    iget-wide v9, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    const-wide v11, 0x4076800000000000L    # 360.0

    cmpl-double v6, v9, v11

    if-lez v6, :cond_7

    iput-wide v11, v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mCurAngle:D

    .line 310
    :cond_7"""


def main() -> None:
    if not SEEK_BAR.is_file():
        print(f"skip: {SEEK_BAR} missing")
        return
    text = SEEK_BAR.read_text(encoding="utf-8")
    if "cond_seek_full_circle" in text:
        print("CircleSeekBar: full-circle seek already patched")
        return
    if ORIGINAL not in text:
        raise RuntimeError("CircleSeekBar.smali touch clamp block not found")
    SEEK_BAR.write_text(text.replace(ORIGINAL, PATCHED, 1), encoding="utf-8")
    print("CircleSeekBar: enabled 360deg touch when wheel_scroll_only_one_circle=false")


if __name__ == "__main__":
    try:
        main()
    except RuntimeError as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        sys.exit(1)
