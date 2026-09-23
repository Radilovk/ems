#!/usr/bin/env python3
"""BETA music sync core: install MusicSync smali + shared strings (player only, no mic)."""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
BRANDING = ROOT / "branding"
UTILS_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils"
PUBLIC_XML = RES / "values/public.xml"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VALUES_DEFAULT = RES / "values/strings.xml"

# Fixed ID: referenced as a literal from MusicPlayerHelper (toast when no Activity).
STRING_IDS = {
    "beta_music_error_no_activity": 0x7f0d010b,
}

BG_STRINGS = """
    <string name="beta_music_error_no_activity">Грешка: неуспешен достъп до екрана</string>
"""

EN_STRINGS = """
    <string name="beta_music_error_no_activity">Error: cannot access screen</string>
"""


def install_smali() -> None:
    UTILS_DIR.mkdir(parents=True, exist_ok=True)
    utils_files = [
        BRANDING / "smali/MusicSync.smali",
        BRANDING / "smali/MasterStrengthControl.smali",
        BRANDING / "smali/MusicSyncBridge.smali",
    ]
    utils_files.extend(sorted((BRANDING / "smali").glob("MusicSync$*.smali")))
    for src in utils_files:
        if not src.is_file():
            continue
        shutil.copy2(src, UTILS_DIR / src.name)
        print(f"installed train/utils/{src.name}")


def patch_public_xml(text: str) -> str:
    for name, id_ in STRING_IDS.items():
        if f'name="{name}"' not in text:
            text = text.replace(
                "</resources>",
                f'    <public type="string" name="{name}" id="{id_:#x}" />\n</resources>',
                1,
            )
    return text


def merge_strings(path: Path, block: str, names: list[str]) -> None:
    if not path.exists():
        return
    text = path.read_text(encoding="utf-8")
    missing = [n for n in names if f'name="{n}"' not in text]
    if not missing:
        return
    additions = []
    for line in block.strip().splitlines():
        line = line.strip()
        if any(f'name="{name}"' in line for name in missing):
            additions.append(f"    {line}")
    if additions:
        path.write_text(
            text.replace("</resources>", "\n".join(additions) + "\n</resources>", 1),
            encoding="utf-8",
        )
        print(f"added {len(additions)} beta strings to {path.name}")


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    install_smali()
    PUBLIC_XML.write_text(patch_public_xml(PUBLIC_XML.read_text(encoding="utf-8")), encoding="utf-8")
    names = list(STRING_IDS.keys())
    merge_strings(VALUES_DEFAULT, EN_STRINGS, names)
    merge_strings(VALUES_BG, BG_STRINGS, names)
    print("BETA music sync core installed (player only).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
