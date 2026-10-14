#!/usr/bin/env python3
"""Download the XBody base from Google Drive into build/xbody-base/ (gitignored).

  python3 scripts/xbody/fetch-base.py                 # default: 7z file dump (analysis only)
  python3 scripts/xbody/fetch-base.py --id DRIVE_ID   # any shared file: .7z / .zip / .gz / .img

Results:
  build/xbody-base/rootfs/   file dump (from a .7z/.zip of files). READ-ONLY reference:
                             its symlinks are 0-byte files, never write it to a card.
  build/xbody-base/sd.img    raw card image (from .img / .img.gz / .zip with one .img) —
                             the base for `build.py --img`.
"""
import argparse, gzip, re, shutil, subprocess, sys, urllib.parse, urllib.request, zipfile
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
BASE = REPO / "build/xbody-base"
DEFAULT_ID = "1ko_55_KrUc-aO2NQ3zVWXK82B4rh-jVb"  # xb.7z, 134 MB, rootfs file dump, vendor app v1.7.14b


def fetch(file_id, dst):
    url = f"https://drive.google.com/uc?export=download&id={file_id}"
    with urllib.request.urlopen(url) as r:
        body = r.read() if "text/html" in r.headers.get("Content-Type", "") else None
        if body is None:
            name = re.findall(r'filename="([^"]+)"', r.headers.get("Content-Disposition", "")) or ["download.bin"]
            out = dst / name[0]
            with open(out, "wb") as f:
                shutil.copyfileobj(r, f, 8 << 20)
            return out
    html = body.decode("utf-8", "replace")
    name = re.search(r'<a href="/open\?id=[^"]+">([^<]+)</a>', html)
    fields = dict(re.findall(r'<input type="hidden" name="(\w+)" value="([^"]*)"', html))
    if "id" not in fields:
        sys.exit("fetch-base: Drive did not offer a download (file not shared as 'anyone with the link'?)")
    url = "https://drive.usercontent.google.com/download?" + urllib.parse.urlencode(fields)
    out = dst / (name.group(1) if name else "download.bin")
    print(f"  downloading {out.name} …")
    with urllib.request.urlopen(url) as r, open(out, "wb") as f:
        shutil.copyfileobj(r, f, 8 << 20)
    return out


def unpack(arc):
    n = arc.name.lower()
    if n.endswith(".img"):
        arc.replace(BASE / "sd.img")
    elif n.endswith(".img.gz"):
        with gzip.open(arc) as fi, open(BASE / "sd.img", "wb") as fo:
            shutil.copyfileobj(fi, fo, 8 << 20)
    elif n.endswith(".zip"):
        with zipfile.ZipFile(arc) as z:
            imgs = [i for i in z.namelist() if i.lower().endswith(".img")]
            if len(imgs) == 1:
                with z.open(imgs[0]) as fi, open(BASE / "sd.img", "wb") as fo:
                    shutil.copyfileobj(fi, fo, 8 << 20)
            else:
                z.extractall(BASE / "rootfs")
    elif n.endswith(".7z"):
        try:
            import py7zr
        except ImportError:
            subprocess.check_call([sys.executable, "-m", "pip", "install", "-q", "py7zr"])
            import py7zr
        tmp = BASE / "_7z"
        py7zr.SevenZipFile(arc).extractall(tmp)
        tops = list(tmp.iterdir())
        root = tops[0] if len(tops) == 1 and tops[0].is_dir() else tmp  # xb.7z wraps everything in xb/
        shutil.rmtree(BASE / "rootfs", ignore_errors=True)
        root.replace(BASE / "rootfs")
        shutil.rmtree(tmp, ignore_errors=True)
    else:
        sys.exit(f"fetch-base: don't know how to unpack {arc.name}")


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--id", default=DEFAULT_ID, help="Google Drive file id")
    ap.add_argument("--keep", action="store_true", help="keep the downloaded archive")
    a = ap.parse_args()
    BASE.mkdir(parents=True, exist_ok=True)
    arc = fetch(a.id, BASE)
    unpack(arc)
    if not a.keep and arc.exists():
        arc.unlink()
    for p in ("sd.img", "rootfs"):
        if (BASE / p).exists():
            print(f"  ready: {BASE / p}")


if __name__ == "__main__":
    main()
