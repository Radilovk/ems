#!/usr/bin/env python3
"""Restore original GMT+8 calendar timezone (reverts apply-calendar-timezone)."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CALENDAR_EVENTS = (
    ROOT
    / "build/decompiled/smali_classes2/com/isaigu/gymapp/calendar/CalendarEvents.smali"
)

GET_DEFAULT = re.compile(
    r"    invoke-static \{\}, Ljava/util/TimeZone;->getDefault\(\)Ljava/util/TimeZone;\n\n"
    r"    move-result-object (v\d+)\n",
    re.MULTILINE,
)


def main() -> int:
    if not CALENDAR_EVENTS.exists():
        print("CalendarEvents.smali missing", file=sys.stderr)
        return 1

    text = CALENDAR_EVENTS.read_text(encoding="utf-8")
    if "GMT+8" in text and "TimeZone;->getDefault()" not in text:
        print("calendar timezone already reverted to GMT+8")
        return 0

    def repl(match: re.Match[str]) -> str:
        reg = match.group(1)
        return (
            f'    const-string {reg}, "GMT+8"\n\n'
            f"    invoke-static {{{reg}}}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;\n\n"
            f"    move-result-object {reg}\n"
        )

    updated, count = GET_DEFAULT.subn(repl, text)
    if count == 0:
        raise SystemExit("getDefault() timezone blocks not found")
    CALENDAR_EVENTS.write_text(updated, encoding="utf-8")
    print(f"reverted calendar timezone to GMT+8 ({count} blocks)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
