#!/usr/bin/env python3
"""Write xbody/base-manifest.tsv from build/xbody-base/rootfs (see fetch-base.py).

One line per path:  kind  mode  size  md5  path
  kind: d dir · f file · z 0-byte file (in the 7z dump that is almost always a flattened
  SYMLINK — e.g. bin/sh, rc5.d/S40xbody-start — on the real card it is a link)
Client data (DB, logs, journal) gets md5 "-" so nothing personal is fingerprinted.
Lets agents grep the vendor layout without downloading the 134 MB base.
"""
import hashlib, os, sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
SRC = Path(sys.argv[1]) if len(sys.argv) > 1 else REPO / "build/xbody-base/rootfs"
DST = REPO / "xbody/base-manifest.tsv"
PRIVATE = ("opt/xbody/log.txt", "opt/xbody/xbody_db.sqlite", "opt/xbody/Backups/", "[SYS]/", "Settings/",
           "var/log/", "home/root/")


def md5(p):
    h = hashlib.md5()
    with open(p, "rb") as f:
        for b in iter(lambda: f.read(1 << 20), b""):
            h.update(b)
    return h.hexdigest()


def main():
    if not SRC.is_dir():
        sys.exit(f"manifest: {SRC} missing — run scripts/xbody/fetch-base.py first")
    rows = []
    for dp, dns, fns in os.walk(SRC):
        dns.sort()
        for n in sorted(dns + fns):
            p = Path(dp) / n
            rel = p.relative_to(SRC).as_posix()
            st = p.lstat()
            mode = f"{st.st_mode & 0o7777:04o}"
            if p.is_dir():
                rows.append(("d", mode, "-", "-", rel))
            elif st.st_size == 0:
                rows.append(("z", mode, "0", "-", rel))
            else:
                priv = any(rel == x or rel.startswith(x) for x in PRIVATE)
                rows.append(("f", mode, str(st.st_size), "-" if priv else md5(p), rel))
    head = ("# XBody base rootfs manifest (generated: python3 scripts/xbody/manifest.py). "
            "kind mode size md5 path; z = 0-byte in 7z dump = usually a symlink on the card. "
            "Modes are from the Windows-side dump, not the card.\n")
    DST.write_text(head + "".join("\t".join(r) + "\n" for r in rows))
    print(f"wrote {DST} ({len(rows)} entries)")


if __name__ == "__main__":
    main()
