#!/usr/bin/env python3
"""Fail the build if a request path to the vendor's server is still open (apply-no-vendor-network.py)."""

from __future__ import annotations

import re
import sys
from pathlib import Path

DECOMPILED = Path(__file__).resolve().parents[1] / "build" / "decompiled"
MARKER = "# xems: no vendor network"


def main() -> int:
    ok = True
    okhttp = (DECOMPILED / "smali_classes2/com/isaigu/gymapp/utils/OKHttpUtils.smali").read_text(encoding="utf-8")
    n = okhttp.count(MARKER)
    if n != 9:
        print(f"ERROR: OKHttpUtils has {n} offline guards, expected 9")
        ok = False
    for m in re.finditer(r"^\.method public static (?:http\w+|uploadFile|downloadFile)\(.*$", okhttp, re.M):
        end = okhttp.index(".end method", m.end())
        if MARKER not in okhttp[m.end():end]:
            print(f"ERROR: unguarded request method: {m.group(0)}")
            ok = False
    video = (DECOMPILED / "smali/com/danikula/videocache/HttpUrlSource.smali").read_text(encoding="utf-8")
    if MARKER not in video:
        print("ERROR: HttpUrlSource.openConnection not refused")
        ok = False
    for rel, name in (("smali_classes5/com/maning/updatelibrary/http/DownloadFileUtils.smali", "update download"),
                      ("smali/com/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory.smali", "Glide")):
        if MARKER not in (DECOMPILED / rel).read_text(encoding="utf-8"):
            print(f"ERROR: {name} not refused")
            ok = False
    # Any other connection opener in app code (vendor + ours) would bypass the guards.
    for f in DECOMPILED.glob("smali*/com/**/*.smali"):
        s = f.read_text(encoding="utf-8", errors="ignore")
        if f.name in ("OKHttpUtils.smali", "HttpUrlSource.smali", "DownloadFileUtils.smali") \
                or f.name.startswith("HttpUrlFetcher$Default"):
            continue
        rel = f.relative_to(DECOMPILED).as_posix()
        if "xems" in rel.lower() or "wearable" in rel or "bodytech" in rel or "/ai/" in rel:
            continue   # own code (licence server etc.) is allowed by design
        if "Ljava/net/URL;->openConnection" in s or "Lokhttp3/OkHttpClient;->newCall" in s:
            print(f"ERROR: another network opener: {rel}")
            ok = False
    print("verify-no-vendor-network: " + ("OK" if ok else "FAILED"))
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
