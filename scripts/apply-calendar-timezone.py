#!/usr/bin/env python3
"""Use device timezone for calendar events instead of hardcoded GMT+8."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CALENDAR_EVENTS = (
    ROOT
    / "build/decompiled/smali_classes2/com/isaigu/gymapp/calendar/CalendarEvents.smali"
)

REPLACEMENT = """    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object vTZ

    invoke-virtual {vDATE}, vTZ)"""

# We patch each occurrence individually with a simpler global replace.
OLD_BLOCK = re.compile(
    r"    const-string v(\d+), \"GMT\+8\"\n\n"
    r"    invoke-static \{v\1\}, Ljava/util/TimeZone;->getTimeZone\(Ljava/lang/String;\)Ljava/util/TimeZone;",
    re.MULTILINE,
)
NEW_BLOCK = "    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;"


def main() -> int:
    if not CALENDAR_EVENTS.exists():
        print("CalendarEvents.smali missing", file=sys.stderr)
        return 1

    text = CALENDAR_EVENTS.read_text(encoding="utf-8")
    if "TimeZone;->getDefault()" in text and "GMT+8" not in text:
        print("calendar timezone already patched")
        return 0

    updated, count = OLD_BLOCK.subn(NEW_BLOCK, text)
    if count == 0:
        raise SystemExit("GMT+8 timezone blocks not found")
    CALENDAR_EVENTS.write_text(updated, encoding="utf-8")
    print(f"patched calendar timezone ({count} blocks)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
