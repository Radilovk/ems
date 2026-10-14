#!/usr/bin/env python3
"""Restore the shared-library symlinks the 7z dump flattened to 0-byte files.

  python3 scripts/xbody/relink.py DIR [DIR …]

In each DIR, a 0-byte `libfoo.so.4` becomes a link to its real sibling: the longest non-empty `libfoo.so.4.*`
(libQtCoreE.so.4 → libQtCoreE.so.4.8.6), else `libfoo-*.so` (libc.so.6 → libc-2.20.so), else for ld-linux
`ld-*.so`. A 0-byte file with no candidate is left alone (and reported).
"""
import os, re, sys


def target(d, name, real):
    c = [r for r in real if r.startswith(name + ".")]
    if c:
        return max(c, key=len)
    m = re.match(r"(lib[^.]+)\.so(\.\d+)*$", name)
    if m:
        c = [r for r in real if r.startswith(m.group(1) + "-") and r.endswith(".so")]
        if c:
            return max(c, key=len)
    if name.startswith("ld-linux"):
        c = [r for r in real if re.match(r"ld-[\d.]+\.so$", r)]
        if c:
            return c[0]
    return None


def relink(d):
    names = os.listdir(d)
    real = [n for n in names if os.path.isfile(os.path.join(d, n)) and not os.path.islink(os.path.join(d, n))
            and os.path.getsize(os.path.join(d, n)) > 0]
    fixed, left = 0, []
    for n in names:
        p = os.path.join(d, n)
        if os.path.islink(p) or not os.path.isfile(p) or os.path.getsize(p) > 0:
            continue
        if not (".so" in n or n.startswith("ld-")):
            continue
        t = target(d, n, real)
        if t:
            os.unlink(p)
            os.symlink(t, p)
            fixed += 1
        else:
            left.append(n)
    return fixed, left


if __name__ == "__main__":
    for d in sys.argv[1:]:
        f, left = relink(d)
        print(f"relink {d}: {f} links" + (f", no target: {' '.join(left[:8])}" if left else ""))
