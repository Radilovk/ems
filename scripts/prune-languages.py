#!/usr/bin/env python3
"""Remove unused locale resource folders, keep only English and Bulgarian."""

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"

KEEP_LOCALES = {"en", "bg"}

# Android resource qualifiers that are not language/locale folders.
NON_LOCALE_PREFIXES = (
    "v",
    "sw",
    "w",
    "h",
    "land",
    "port",
    "night",
    "large",
    "small",
    "xlarge",
    "normal",
    "hdpi",
    "mdpi",
    "xhdpi",
    "xxhdpi",
    "xxxhdpi",
    "ldpi",
    "tvdpi",
    "anydpi",
    "notnight",
    "watch",
)


def is_language_folder(name: str) -> bool:
    if not name.startswith("values-"):
        return False
    suffix = name[len("values-") :]
    if any(suffix.startswith(prefix) for prefix in NON_LOCALE_PREFIXES):
        return False
    if suffix in NON_LOCALE_PREFIXES:
        return False
    if re.match(r"^[a-z]{2}(?:-r[A-Z]{2})?$", suffix):
        return True
    if suffix.startswith("b+"):
        return True
    return False


def main() -> None:
    removed = 0
    for path in sorted(RES.glob("values-*")):
        if not is_language_folder(path.name):
            continue
        locale = path.name.split("-", 2)[1][:2]
        if locale in KEEP_LOCALES and path.name in {f"values-{locale}"}:
            continue
        if path.name == "values-en" or path.name == "values-bg":
            continue
        shutil.rmtree(path)
        removed += 1
        print(f"removed {path.name}")
    print(f"Pruned {removed} language folders.")


if __name__ == "__main__":
    main()
