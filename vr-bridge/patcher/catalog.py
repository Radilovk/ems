#!/usr/bin/env python3
"""XEMS VR game catalog (catalog.json) for the launcher's Termux side.

  python3 catalog.py list                 → "item <id>\\t<name>\\t<page|github>\\t<note>" per game
  python3 catalog.py downloads            → "dl <path>\t<game name>\t<ok|vrapi|?>\t<MB>" per APK in Downloads
  python3 catalog.py resolve <id>         → prints the local APK path (exit 0)
      url: a fixed link (XEMS Studio: release xems-studio-latest) → ~/.xems-vr/apk/, fetched again only when it changed;
           "ready": true = CI already put the layer in and signed it → "ready 1" (the tablet only installs it)
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

import apkinfo

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


def fit(apk: Path) -> str:
    """ok = OpenXR loader inside (the haptics go in) · vrapi = old VrApi/OVRPlugin (cannot) · ? = neither / not an APK."""
    import zipfile
    try:
        with zipfile.ZipFile(apk) as z:
            names = set(z.namelist())
    except (zipfile.BadZipFile, OSError):
        return "?"
    if "lib/arm64-v8a/libopenxr_loader.so" in names:
        return "ok"
    return "vrapi" if "lib/arm64-v8a/libvrapi.so" in names else "?"


def downloads() -> int:
    readable = [d for d in DOWNLOADS if d.is_dir() and os.access(d, os.R_OK)]
    if not readable:
        say("✗ Termux няма достъп до Downloads — разреши го (termux-setup-storage)")
        return 8
    seen, apks = set(), []
    for d in readable:
        for f in d.iterdir():
            if f.is_file() and f.suffix.lower() == ".apk" and f.resolve() not in seen:
                seen.add(f.resolve())
                apks.append(f)
    for f in sorted(apks, key=lambda f: f.stat().st_mtime, reverse=True)[:40]:
        try:
            name = apkinfo.local_label(f)[1]                 # the game's real name, not the file name
        except Exception:  # noqa: BLE001
            name = f.name
        say(f"dl {f}\t{name}\t{fit(f)}\t{f.stat().st_size // 1048576}")
    return 0


def url_apk(url: str) -> Path | None:
    """A fixed download link; downloaded again only when the server's size or date differs from the kept copy."""
    CACHE.mkdir(parents=True, exist_ok=True)
    dst = CACHE / url.rstrip("/").rsplit("/", 1)[-1]
    stamp = dst.with_suffix(".stamp")
    # a 1-byte GET, not HEAD: GitHub release links redirect to storage URLs signed for GET only
    probe = urllib.request.Request(url, headers={"User-Agent": "xems-vr", "Range": "bytes=0-0"})
    try:
        with urllib.request.urlopen(probe, timeout=20) as r:
            total = (r.headers.get("Content-Range", "") or "/").rsplit("/", 1)[-1] or r.headers.get("Content-Length", "")
            remote = f"{total} {r.headers.get('ETag') or r.headers.get('Last-Modified', '')}"
    except Exception as e:  # noqa: BLE001 — offline: use the kept copy if there is one
        say(f"… сайтът не отговори ({e})")
        return dst if dst.is_file() else None
    if dst.is_file() and stamp.is_file() and stamp.read_text() == remote:
        say(f"✓ вече свалено: {dst.name}")
        return dst
    size = remote.split(" ")[0]
    say(f"… тегля {dst.name}" + (f" ({int(size) // 1048576} MB)" if size.isdigit() else ""))
    tmp = dst.with_suffix(".part")
    step = {"next": 10}

    def progress(blocks: int, bs: int, total_b: int) -> None:      # a line every 10 %: the run shows it moves
        if total_b > 0 and blocks * bs * 100 // total_b >= step["next"]:
            say(f"… {step['next']}%")
            step["next"] += 10
    try:
        urllib.request.urlretrieve(url, tmp, progress)
    except Exception as e:  # noqa: BLE001 — a broken download must not leave a half file that looks whole
        tmp.unlink(missing_ok=True)
        say(f"✗ свалянето прекъсна ({e})")
        return dst if dst.is_file() and stamp.is_file() else None
    if size.isdigit() and tmp.stat().st_size != int(size):
        tmp.unlink(missing_ok=True)
        say("✗ файлът не се свали цял — пусни пак")
        return None
    tmp.rename(dst)
    stamp.write_text(remote)
    say(f"✓ свалено: {dst.name}")
    return dst


def resolve(gid: str) -> int:
    g = next((g for g in games() if g["id"] == gid), None)
    if g is None:
        say(f"✗ няма такава игра в каталога: {gid}")
        return 2
    src = g["source"]
    if "url" in src:                                      # our own builds, published next to the web version
        apk = url_apk(src["url"])
        if apk:
            if src.get("ready"):                          # built with the layer by CI: install only, no repacking
                say("ready 1")
            say(f"apk {apk}")
            return 0
        say(f"✗ не можах да сваля {src['url']}")
        return 2
    if "repo" in src:                                     # built in this repo (vr-workout/): sparse-fetch just that file
        apk = HERE.parents[1] / src["repo"]
        if not apk.is_file():
            import subprocess
            say(f"… тегля {src['repo']} от repo-то")
            subprocess.run(["git", "-C", str(HERE.parents[1]), "sparse-checkout", "add", "/" + src["repo"]],
                           capture_output=True)
        if apk.is_file():
            say(f"apk {apk}")
            return 0
        say(f"✗ няма {src['repo']} в repo-то")
        return 2
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
            kind = "page" if "page" in g["source"] and "github" not in g["source"] else "github"
            say(f"item {g['id']}\t{g['name']}\t{kind}\t{g.get('note', '')}")
        return 0
    if argv[:1] == ["downloads"]:
        return downloads()
    if len(argv) == 2 and argv[0] == "resolve":
        return resolve(argv[1])
    say(__doc__)
    return 2


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
