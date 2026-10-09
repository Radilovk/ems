#!/usr/bin/env python3
"""The game's real name (android:label) from an APK — local file or straight from the headset.

  python3 apkinfo.py label <file.apk>              → the label (or a cleaned-up package name)
  python3 apkinfo.py headset <serial> <pkg>…       → "label <pkg>\\t<name>" per package (cached in ~/.xems-vr)

On the headset only the zip central directory, AndroidManifest.xml and resources.arsc are read (tail/head over adb),
never the whole APK. Pure Python, no aapt.
"""
from __future__ import annotations

import json
import re
import struct
import subprocess
import sys
import zlib
from pathlib import Path

CACHE = Path.home() / ".xems-vr" / "labels.json"
ATTR_LABEL = 0x01010001


# ---------------------------------------------------------------- binary XML / resources

def string_pool(d: bytes, off: int) -> list[str]:
    u16 = lambda o: struct.unpack_from("<H", d, o)[0]
    u32 = lambda o: struct.unpack_from("<I", d, o)[0]
    hsize, count, flags, sstart = u16(off + 2), u32(off + 8), u32(off + 16), u32(off + 20)
    utf8 = flags & 0x100
    out = []
    for i in range(count):
        so = off + sstart + u32(off + hsize + i * 4)
        if utf8:
            so += 2 if d[so] & 0x80 else 1                       # utf-16 length, skipped
            n = d[so]
            if n & 0x80:
                n = ((n & 0x7F) << 8) | d[so + 1]
                so += 1
            so += 1
            out.append(d[so:so + n].decode("utf-8", "replace"))
        else:
            n = u16(so)
            if n & 0x8000:
                n = ((n & 0x7FFF) << 16) | u16(so + 2)
                so += 2
            out.append(d[so + 2:so + 2 + n * 2].decode("utf-16le", "replace"))
    return out


def manifest_label(axml: bytes) -> tuple[str, str | int | None]:
    """(package, label) — label is text, a resource id (int) or None."""
    u16 = lambda o: struct.unpack_from("<H", axml, o)[0]
    u32 = lambda o: struct.unpack_from("<I", axml, o)[0]
    strings: list[str] = []
    pkg, label = "", None
    off = u16(2)
    while off + 8 <= len(axml):
        ctype, csize = u16(off), u32(off + 4)
        if csize < 8:
            break
        if ctype == 0x0001 and not strings:
            strings = string_pool(axml, off)
        elif ctype == 0x0102:                                        # start tag
            tag = u32(off + 20)
            tname = strings[tag] if tag < len(strings) else ""
            astart, acount = u16(off + 24), u16(off + 28)
            for i in range(acount):
                ao = off + 16 + astart + i * 20
                name, raw, dtype, data = u32(ao + 4), u32(ao + 8), axml[ao + 15], u32(ao + 16)
                aname = strings[name] if name < len(strings) else ""
                if tname == "manifest" and aname == "package" and raw < len(strings):
                    pkg = strings[raw]
                if tname == "application" and aname == "label":
                    if dtype == 0x03 and data < len(strings):
                        label = strings[data]
                    elif dtype == 0x01:
                        label = data
            if tname == "application":
                break
        off += csize
    return pkg, label


def arsc_string(arsc: bytes, res_id: int, depth: int = 0) -> str | None:
    """Resolve a string resource id; the default / English value wins over other languages."""
    u16 = lambda o: struct.unpack_from("<H", arsc, o)[0]
    u32 = lambda o: struct.unpack_from("<I", arsc, o)[0]
    want_pkg, want_type, want_entry = res_id >> 24, (res_id >> 16) & 0xFF, res_id & 0xFFFF
    values: list[str] = []
    off = u16(2)
    best: tuple[int, int, int] | None = None                         # (rank, dataType, data)
    while off + 8 <= len(arsc):
        ctype, chsize, csize = u16(off), u16(off + 2), u32(off + 4)
        if csize < 8:
            break
        if ctype == 0x0001 and not values:
            values = string_pool(arsc, off)
        elif ctype == 0x0200 and u32(off + 8) == want_pkg:           # package
            po = off + chsize
            while po + 8 <= off + csize:
                t, th, ts = u16(po), u16(po + 2), u32(po + 4)
                if ts < 8:
                    break
                if t == 0x0201 and arsc[po + 8] == want_type:         # type chunk
                    flags, count, estart = arsc[po + 9], u32(po + 12), u32(po + 16)
                    lang = arsc[po + 20 + 8:po + 20 + 10]
                    eo = None
                    if flags & 0x01:                                  # sparse: (idx u16, off/4 u16)
                        for k in range(count):
                            idx, o4 = struct.unpack_from("<HH", arsc, po + th + k * 4)
                            if idx == want_entry:
                                eo = o4 * 4
                    elif want_entry < count:
                        if flags & 0x02:                              # 16-bit offsets
                            o = u16(po + th + want_entry * 2)
                            eo = None if o == 0xFFFF else o * 4
                        else:
                            o = u32(po + th + want_entry * 4)
                            eo = None if o == 0xFFFFFFFF else o
                    if eo is not None:
                        e = po + estart + eo
                        esize, eflags = u16(e), u16(e + 2)
                        if not eflags & 0x0001:                       # simple entry → Res_value
                            v = e + esize
                            rank = 0 if lang == b"\0\0" else 1 if lang == b"en" else 2
                            if best is None or rank < best[0]:
                                best = (rank, arsc[v + 3], u32(v + 4))
                po += ts
        off += csize
    if not best:
        return None
    if best[1] == 0x03 and best[2] < len(values):
        return values[best[2]]
    if best[1] == 0x01 and depth < 4:
        return arsc_string(arsc, best[2], depth + 1)
    return None


GENERIC = {"alpha", "beta", "demo", "release", "debug", "full", "free", "quest", "oculus", "vr", "xr", "app",
           "game", "android", "client", "main", "prod"}


def pretty_package(pkg: str) -> str:
    """com.ProtoXR.AimXR.Alpha → Aim XR Alpha (only when the APK has no readable label)."""
    parts = [p for p in pkg.split(".") if p]
    take = parts[-1:]
    if len(parts) > 1 and parts[-1].lower() in GENERIC:
        take = parts[-2:]
    words = []
    for p in take:
        p = re.sub(r"[_\-]+", " ", p)
        p = re.sub(r"(?<=[a-z])(?=[A-Z0-9])", " ", p)
        words.append(p[:1].upper() + p[1:])
    return " ".join(words).strip() or pkg


def label_from(axml: bytes, arsc: bytes | None) -> tuple[str, str]:
    pkg, label = manifest_label(axml)
    if isinstance(label, int) and arsc:
        label = arsc_string(arsc, label)
    if not isinstance(label, str) or not label.strip():
        label = pretty_package(pkg)
    return pkg, " ".join(label.split())


# ---------------------------------------------------------------- reading the zip, locally or remotely

def zip_members(read, size: int, wanted: tuple[str, ...]) -> dict[str, bytes]:
    """read(offset, length) → bytes. Central directory → the wanted members, decompressed."""
    tail_len = min(size, 66000)
    tail = read(size - tail_len, tail_len)
    eocd = tail.rfind(b"PK\x05\x06")
    if eocd < 0:
        return {}
    cd_size, cd_off = struct.unpack_from("<II", tail, eocd + 12)
    cd = read(cd_off, cd_size)
    found, p = {}, 0
    while p + 46 <= len(cd) and cd[p:p + 4] == b"PK\x01\x02":
        method, csize, nlen, xlen, clen = (struct.unpack_from("<H", cd, p + 10)[0],
                                           struct.unpack_from("<I", cd, p + 20)[0],
                                           *struct.unpack_from("<HHH", cd, p + 28))
        lho = struct.unpack_from("<I", cd, p + 42)[0]
        name = cd[p + 46:p + 46 + nlen].decode("utf-8", "replace")
        if name in wanted:
            lh = read(lho, 30)
            ln, lx = struct.unpack_from("<HH", lh, 26)
            raw = read(lho + 30 + ln + lx, csize)
            found[name] = raw if method == 0 else zlib.decompress(raw, -15)
        p += 46 + nlen + xlen + clen
    return found


def local_label(apk: Path) -> tuple[str, str]:
    data = apk.read_bytes()
    m = zip_members(lambda o, n: data[o:o + n], len(data), ("AndroidManifest.xml", "resources.arsc"))
    return label_from(m["AndroidManifest.xml"], m.get("resources.arsc"))


def headset_label(adb: str, serial: str, pkg: str) -> tuple[str, str] | None:
    sh = lambda c: subprocess.run([adb, "-s", serial, "shell", c], capture_output=True, text=True).stdout.strip()
    path = sh(f"pm path {pkg}").splitlines()
    path = next((l.split(":", 1)[1] for l in path if l.endswith("base.apk") or l.startswith("package:")), "")
    if not path:
        return None
    size = int(sh(f"stat -c %s {path}") or 0)
    if not size:
        return None

    def read(o: int, n: int) -> bytes:
        return subprocess.run([adb, "-s", serial, "exec-out", f"tail -c +{o + 1} {path} | head -c {n}"],
                              capture_output=True).stdout

    m = zip_members(read, size, ("AndroidManifest.xml", "resources.arsc"))
    if "AndroidManifest.xml" not in m:
        return None
    return f"{path}:{size}", label_from(m["AndroidManifest.xml"], m.get("resources.arsc"))[1]


def main(argv: list[str]) -> int:
    if len(argv) == 2 and argv[0] == "label":
        print(local_label(Path(argv[1]))[1])
        return 0
    if len(argv) >= 3 and argv[0] == "headset":
        serial, pkgs = argv[1], argv[2:]
        try:
            cache = json.loads(CACHE.read_text())
        except (OSError, ValueError):
            cache = {}
        adb = "adb"
        for pkg in pkgs:
            key_now = None
            hit = cache.get(pkg)
            # The cache key is "path:size" — a reinstall/update changes it and the name is read again.
            if hit:
                path_size = subprocess.run([adb, "-s", serial, "shell",
                                            f"p=$(pm path {pkg} | head -1 | cut -d: -f2); echo $p:$(stat -c %s $p)"],
                                           capture_output=True, text=True).stdout.strip()
                if path_size == hit[0]:
                    print(f"label {pkg}\t{hit[1]}", flush=True)
                    continue
            try:
                got = headset_label(adb, serial, pkg)
            except Exception:  # noqa: BLE001 — a name is a nicety; never fail the list over it
                got = None
            name = got[1] if got else pretty_package(pkg)
            if got:
                cache[pkg] = [got[0], name]
            print(f"label {pkg}\t{name}", flush=True)
        CACHE.parent.mkdir(parents=True, exist_ok=True)
        CACHE.write_text(json.dumps(cache, ensure_ascii=False))
        return 0
    print(__doc__)
    return 2


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
