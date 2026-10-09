#!/usr/bin/env python3
"""XEMS VR game catalog (catalog.json) for the launcher's Termux side.

  python3 catalog.py list                 → "item <id>\\t<name>\\t<page|github>\\t<note>" per game
  python3 catalog.py resolve <id>         → prints the local APK path (exit 0)
      github: newest release asset → ~/.xems-vr/apk/ (kept, not downloaded twice)
      page or github without an APK: newest matching file in Downloads, else "page <url>" + exit 7
      Downloads not readable (termux-setup-storage not run) → exit 8
"""
from __future__ import annotations

import json
import os
import re
import sys
import urllib.request
from pathlib import Path

HERE = Path(__file__).resolve().parent
CACHE = Path.home() / ".xems-vr" / "apk"
DOWNLOADS = [Path.home() / "storage" / "downloads", Path("/sdcard/Download"), Path("/storage/emulated/0/Download")]


def games() -> list[dict]:
    return json.loads((HERE / "catalog.json").read_text(encoding="utf-8"))["games"]


def say(msg: str) -> None:
    print(msg, flush=True)


def github_apk(repo: str, pattern: str) -> Path | None:
    """Newest release asset matching pattern, downloaded once; None when there is none / no network."""
    req = urllib.request.Request(f"https://api.github.com/repos/{repo}/releases?per_page=10",
                                 headers={"Accept": "application/vnd.github+json", "User-Agent": "xems-vr"})
    try:
        with urllib.request.urlopen(req, timeout=20) as r:
            releases = json.load(r)
    except Exception as e:  # noqa: BLE001 — offline, rate limit, repo gone: fall back to the page
        say(f"… GitHub не отговори ({e})")
        return None
    rx = re.compile(pattern)
    for rel in releases:
        if rel.get("draft"):
            continue
        for a in rel.get("assets", []):
            if rx.search(a["name"]):
                CACHE.mkdir(parents=True, exist_ok=True)
                dst = CACHE / a["name"]
                if dst.is_file() and dst.stat().st_size == a["size"]:
                    say(f"✓ вече свалено: {a['name']}")
                    return dst
                say(f"… тегля {a['name']} ({a['size'] // 1048576} MB, {rel.get('tag_name', '')})")
                tmp = dst.with_suffix(".part")
                urllib.request.urlretrieve(a["browser_download_url"], tmp)
                tmp.rename(dst)
                say(f"✓ свалено: {dst.name}")
                return dst
    say(f"… в {repo} няма APK в releases")
    return None


def downloaded(pattern: str) -> Path | None:
    """Newest file in Downloads whose name matches; exit 8 when no Downloads folder is readable."""
    rx = re.compile(pattern)
    readable = [d for d in DOWNLOADS if d.is_dir() and os.access(d, os.R_OK)]
    if not readable:
        say("✗ Termux няма достъп до Downloads — разреши го (termux-setup-storage)")
        sys.exit(8)
    hits = [f for d in readable for f in d.iterdir() if f.is_file() and rx.search(f.name)]
    return max(hits, key=lambda f: f.stat().st_mtime) if hits else None


def resolve(gid: str) -> int:
    g = next((g for g in games() if g["id"] == gid), None)
    if g is None:
        say(f"✗ няма такава игра в каталога: {gid}")
        return 2
    src = g["source"]
    if "github" in src:
        apk = github_apk(src["github"], src.get("asset", r"\.apk$"))
        if apk:
            say(f"apk {apk}")
            return 0
    file_rx = src.get("file") or src.get("asset", r"\.apk$")
    if "file" in src:                                     # page games: look in Downloads first
        apk = downloaded(file_rx)
        if apk:
            say(f"✓ намерено в Downloads: {apk.name}")
            say(f"apk {apk}")
            return 0
    say(f"page {src.get('page', '')}")
    return 7


def main(argv: list[str]) -> int:
    if argv[:1] == ["list"]:
        for g in games():
            kind = "github" if "github" in g["source"] else "page"
            say(f"item {g['id']}\t{g['name']}\t{kind}\t{g.get('note', '')}")
        return 0
    if len(argv) == 2 and argv[0] == "resolve":
        return resolve(argv[1])
    say(__doc__)
    return 2


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
