#!/usr/bin/env python3
"""Stamp RELEASE_VERSION (versionName / versionCode) into build/decompiled/apktool.yml — its own step since
1.1.333 (it used to hide inside apply-ui-theme.py)."""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"


def read_release_version() -> tuple[str, int]:
    release_version = ROOT / "RELEASE_VERSION"
    if not release_version.is_file():
        raise RuntimeError("RELEASE_VERSION missing — set versionName/versionCode before build")
    version_name = None
    version_code = None
    for line in release_version.read_text(encoding="utf-8").splitlines():
        if line.startswith("versionName="):
            version_name = line.split("=", 1)[1].strip()
        elif line.startswith("versionCode="):
            version_code = int(line.split("=", 1)[1].strip())
    if not version_name or version_code is None:
        raise RuntimeError("RELEASE_VERSION must contain versionName= and versionCode=")
    return version_name, version_code


def patch_version_name() -> None:
    version_name, version_code = read_release_version()
    apktool_yml = DECOMPILED / "apktool.yml"
    text = apktool_yml.read_text(encoding="utf-8")
    updated, count = re.subn(
        r"versionCode: \d+",
        f"versionCode: {version_code}",
        text,
        count=1,
    )
    if count != 1:
        raise RuntimeError("failed to patch versionCode in apktool.yml")
    updated, count = re.subn(
        r"versionName: .+",
        f"versionName: {version_name}",
        updated,
        count=1,
    )
    if count != 1:
        raise RuntimeError("failed to patch versionName in apktool.yml")
    apktool_yml.write_text(updated, encoding="utf-8")
    print(f"patched versionCode -> {version_code}, versionName -> {version_name}")


if __name__ == "__main__":
    patch_version_name()
