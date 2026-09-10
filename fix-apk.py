#!/usr/bin/env python3
"""Post-process apktool APK for broad Android install compatibility."""

import shutil
import struct
import sys
import zipfile
from pathlib import Path

STORED_EXTENSIONS = {
    ".dex",
    ".arsc",
}
STORED_NAMES = {
    "resources.arsc",
    "AndroidManifest.xml",
}


def should_store(name: str, compress_type: int) -> bool:
    if name in STORED_NAMES:
        return True
    for ext in STORED_EXTENSIONS:
        if name.endswith(ext):
            return True
    return False


def align4(offset: int) -> int:
    return (offset + 3) & ~3


def rebuild_apk(src: Path, dst: Path) -> None:
    with zipfile.ZipFile(src, "r") as zin:
        entries = []
        for info in zin.infolist():
            data = zin.read(info.filename)
            entries.append((info.filename, data, info))

    with zipfile.ZipFile(dst, "w") as zout:
        offset = 0
        for filename, data, info in entries:
            if filename.startswith("META-INF/"):
                continue
            store = should_store(filename, info.compress_type)
            zi = zipfile.ZipInfo(filename)
            zi.compress_type = zipfile.ZIP_STORED if store else zipfile.ZIP_DEFLATED
            zi.external_attr = info.external_attr
            if store:
                # 4-byte align stored entries (required for resources.arsc on API 30+).
                padding = align4(offset) - offset
                if padding:
                    # Zip format does not support arbitrary padding between entries;
                    # zipalign tool handles final alignment after signing prep.
                    pass
                zi.file_size = len(data)
                zi.CRC = zipfile.crc32(data) & 0xFFFFFFFF
            zout.writestr(zi, data, compress_type=zi.compress_type)
            offset += len(data)


def main() -> int:
    if len(sys.argv) != 3:
        print("Usage: fix-apk.py <input.apk> <output.apk>", file=sys.stderr)
        return 1
    src = Path(sys.argv[1])
    dst = Path(sys.argv[2])
    rebuild_apk(src, dst)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
