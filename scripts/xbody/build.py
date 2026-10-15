#!/usr/bin/env python3
"""Build the XBody mod (xbody/overlay + xbody/remove.list) into files for the unit.

  python3 scripts/xbody/build.py                    # USB stick package (always)
  python3 scripts/xbody/build.py --img BASE.img     # + patched SD image (dd / Etcher)

Outputs in build/xbody-dist/:
  usb/                         copy its CONTENTS to the root of a FAT32 USB stick
  xbody-usb-vN.zip             same, zipped
  xbody-sd-vN.img.gz           (--img) whole SD card image with the mod applied
The SD image is patched with debugfs inside its ext rootfs partition: no mount, no root,
vendor symlinks/owners stay intact. Never rebuild the card from the 7z file dump
(build/xbody-base/rootfs): its symlinks were flattened to 0-byte files.
"""
import argparse, gzip, hashlib, io, os, shutil, struct, subprocess, sys, tarfile, tempfile, zipfile
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
XB = REPO / "xbody"
OVERLAY = XB / "overlay"
REMOVE = XB / "remove.list"
MANIFEST = XB / "base-manifest.tsv"
STICK = REPO / "scripts/xbody/stick"
UPDATER = REPO / "scripts/xbody/updater.sh"
OUT = REPO / "build/xbody-dist"
SKIP = {".gitkeep"}
MTIME = 1700000000  # fixed → reproducible payload


def die(msg):
    sys.exit(f"build.py: ERROR: {msg}")


def overlay_entries():
    """[(rel, kind, mode, src_or_target)] sorted, parents before children."""
    out = []
    for dirpath, dirnames, filenames in os.walk(OVERLAY):
        dirnames.sort()
        d = Path(dirpath)
        for name in sorted(dirnames + filenames):
            p = d / name
            rel = p.relative_to(OVERLAY).as_posix()
            if name in SKIP:
                continue
            if any(c in rel for c in " \t\n\\'\""):
                die(f"overlay path has whitespace/quotes (updater word-splits): {rel}")
            if p.is_symlink():
                out.append((rel, "l", 0o777, os.readlink(p)))
            elif p.is_dir():
                out.append((rel, "d", 0o755, None))
            else:
                mode = 0o755 if os.access(p, os.X_OK) else 0o644
                out.append((rel, "f", mode, p))
    return out


def remove_entries():
    if not REMOVE.exists():
        return []
    rows = []
    for line in REMOVE.read_text().splitlines():
        line = line.strip().lstrip("/")
        if not line or line.startswith("#"):
            continue
        if ".." in line.split("/") or line in (".", ""):
            die(f"bad remove.list entry: {line}")
        rows.append(line)
    return rows


def manifest_warnings(entries):
    if not MANIFEST.exists():
        return
    zero = set()
    for line in MANIFEST.read_text().splitlines():
        parts = line.split("\t")
        if len(parts) == 5 and parts[0] == "z":
            zero.add(parts[4])
    for rel, kind, _, _ in entries:
        if rel in zero:
            print(f"  WARN: /{rel} is 0-byte in the 7z dump = probably a SYMLINK on the real card; "
                  f"replacing it breaks whatever pointed through it")


def make_payload(entries):
    buf = io.BytesIO()
    # No directory entries: tar would chmod existing vendor dirs (/tmp is 1777) to the
    # entry's mode. Missing parents are created by tar itself.
    with tarfile.open(fileobj=buf, mode="w", format=tarfile.USTAR_FORMAT) as tar:
        for rel, kind, mode, src in entries:
            if kind == "d":
                continue
            ti = tarfile.TarInfo("./" + rel)
            ti.uid = ti.gid = 0
            ti.uname = ti.gname = "root"
            ti.mtime = MTIME
            ti.mode = mode
            if kind == "l":
                ti.type = tarfile.SYMTYPE
                ti.linkname = src
                tar.addfile(ti)
            else:
                data = src.read_bytes()
                ti.size = len(data)
                tar.addfile(ti, io.BytesIO(data))
    raw = io.BytesIO()
    with gzip.GzipFile(fileobj=raw, mode="wb", mtime=MTIME) as gz:
        gz.write(buf.getvalue())
    return raw.getvalue()


def build_usb(entries, removes, version):
    usb = OUT / "usb"
    if usb.exists():
        shutil.rmtree(usb)
    (usb / "xems").mkdir(parents=True)
    payload = make_payload(entries)
    (usb / "xems/payload.tar.gz").write_bytes(payload)
    (usb / "xems/payload.md5").write_text(f"{hashlib.md5(payload).hexdigest()}  payload.tar.gz\n")
    (usb / "xems/remove.list").write_text("".join(r + "\n" for r in removes))
    (usb / "xems/VERSION").write_text(version + "\n")
    upd = UPDATER.read_bytes().replace(b"\r\n", b"\n")
    (usb / "updater.sh").write_bytes(upd)
    os.chmod(usb / "updater.sh", 0o755)
    (usb / "README.txt").write_text(README.format(v=version))
    uf2 = XB / "bridge/xems-bridge.uf2"
    if uf2.exists():   # handy on the stick: the XIAO is flashed from any PC
        shutil.copyfile(uf2, usb / "xems-bridge.uf2")
    # The zip the owner gets: one double-click tool per OS + the stick's contents in fleshka/.
    zpath = OUT / f"xbody-usb-v{version}.zip"
    files = [(f"fleshka/{p.relative_to(usb).as_posix()}", p.read_bytes(), p.name == "updater.sh")
             for p in sorted(usb.rglob("*")) if p.is_file()]
    files += [("PROCHETI.txt", START.format(v=version).replace("\n", "\r\n").encode("utf-8-sig"), False),
              ("PODGOTVI-FLESHKA.cmd", (STICK / "PODGOTVI-FLESHKA.cmd").read_bytes(), False),
              ("PODGOTVI-FLESHKA.command", (STICK / "PODGOTVI-FLESHKA.command").read_bytes(), True),
              ("tools/podgotvi.ps1", (STICK / "podgotvi.ps1").read_bytes(), False)]
    with zipfile.ZipFile(zpath, "w", zipfile.ZIP_DEFLATED) as z:
        for name, data, exe in files:
            zi = zipfile.ZipInfo(name, (2023, 11, 14, 0, 0, 0))
            zi.external_attr = ((0o100755 if exe else 0o100644) << 16)
            zi.compress_type = zipfile.ZIP_DEFLATED
            z.writestr(zi, data)
    return zpath


# ---------- SD image (debugfs) ----------

def ext_magic(f, off):
    f.seek(off + 1024 + 0x38)
    return f.read(2) == b"\x53\xef"


def find_rootfs(img):
    """Byte offset of the ext partition that holds /opt/xbody."""
    cands = []
    with open(img, "rb") as f:
        if ext_magic(f, 0):
            cands.append(0)
        f.seek(0x1FE)
        if f.read(2) == b"\x55\xaa":
            f.seek(0x1BE)
            for i in range(4):
                e = f.read(16)
                ptype = e[4]
                lba = struct.unpack("<I", e[8:12])[0]
                if ptype and lba and ext_magic(f, lba * 512):
                    cands.append(lba * 512)
    for off in cands:
        r = subprocess.run(["debugfs", "-R", "stat /opt/xbody", f"{img}?offset={off}"],
                           capture_output=True, text=True)
        if r.returncode == 0 and "Inode:" in r.stdout:
            return off
    die(f"no ext partition with /opt/xbody in {img} (candidates at {cands})")


def debugfs(dev, cmds, write=False):
    with tempfile.NamedTemporaryFile("w", suffix=".dbfs", delete=False) as t:
        t.write("\n".join(cmds) + "\n")
        name = t.name
    try:
        args = ["debugfs"] + (["-w"] if write else []) + ["-f", name, dev]
        return subprocess.run(args, capture_output=True, text=True)
    finally:
        os.unlink(name)


def apply_img(base, entries, removes, version):
    if not shutil.which("debugfs"):
        die("debugfs missing (apt install e2fsprogs)")
    out_img = OUT / f"xbody-sd-v{version}.img"
    print(f"  copy {base} -> {out_img}")
    shutil.copyfile(base, out_img)
    off = find_rootfs(out_img)
    dev = f"{out_img}?offset={off}"
    print(f"  rootfs partition at byte {off}")
    cmds = []
    for rel in removes:
        st = debugfs(dev, [f'stat "/{rel}"']).stdout
        if "Type: directory" in st:
            die(f"remove.list: /{rel} is a directory; list its files instead (debugfs has no rm -r)")
        cmds.append(f'rm "/{rel}"')
    for rel, kind, mode, src in entries:
        p = "/" + rel
        if kind == "d":
            # Existing vendor dirs keep their own mode/owner; only new ones are set.
            if "Inode:" not in debugfs(dev, [f'stat "{p}"']).stdout:
                cmds += [f'mkdir "{p}"', f'sif "{p}" mode 040755', f'sif "{p}" uid 0', f'sif "{p}" gid 0']
            continue
        if kind == "l":
            cmds += [f'rm "{p}"', f'symlink "{p}" "{src}"']
        else:
            cmds += [f'rm "{p}"', f'write "{src}" "{p}"', f'sif "{p}" mode 0{0o100000 | mode:o}']
        cmds += [f'sif "{p}" uid 0', f'sif "{p}" gid 0']
    debugfs(dev, cmds, write=True)
    verify_img(dev, entries, removes)
    print("  gzip …")
    gz = out_img.with_suffix(".img.gz")
    with open(out_img, "rb") as fi, gzip.open(gz, "wb", compresslevel=6) as fo:
        shutil.copyfileobj(fi, fo, 8 << 20)
    out_img.unlink()
    return gz


def verify_img(dev, entries, removes):
    bad = []
    with tempfile.TemporaryDirectory() as td:
        for rel, kind, mode, src in entries:
            p = "/" + rel
            st = debugfs(dev, [f'stat "{p}"']).stdout
            if "Inode:" not in st:
                bad.append(f"missing {p}")
                continue
            if kind == "f":
                dst = Path(td) / "x"
                debugfs(dev, [f'dump "{p}" "{dst}"'])
                if not dst.exists() or dst.read_bytes() != src.read_bytes():
                    bad.append(f"content differs {p}")
                if f"Mode:  0{mode:o}" not in st and f"Mode:  {mode:04o}" not in st:
                    bad.append(f"mode {p}")
            elif kind == "l" and "Type: symlink" not in st:
                bad.append(f"not a symlink {p}")
        for rel in removes:
            if "Inode:" in debugfs(dev, [f'stat "/{rel}"']).stdout:
                bad.append(f"still present /{rel}")
    if bad:
        die("image verify failed:\n  " + "\n  ".join(bad))
    print(f"  verified {len(entries)} entries, {len(removes)} removals")


README = """XEMS мод за XBody — версия {v}

Тази флашка е подготвена с PODGOTVI-FLESHKA (от zip-а). На машината:
  1. Изключи XBody.  2. Вкарай флашката, включи.
  3. Около минута: машината инсталира и се изключва сама.
  4. Извади флашката, включи пак. Горе вдясно е копчето XEMS.
Дневник: xems-update.log. Флашката се използва веднъж (updater.sh става
updater.done.sh) — за нова версия или връщане назад пусни пак PODGOTVI-FLESHKA.
Пази я: на нея е копието за връщане назад (xems/backup-ДАТА.*).

МОСТЪТ XIAO
Включи го в USB на машината. Нова платка: натисни RESET два пъти бързо —
машината сама я програмира (xems-bridge.uf2 е и тук, ако искаш от компютър).
По-новите версии на моста се обновяват сами.
"""

START = """XEMS за XBody — версия {v}
==============================

ВСИЧКО Е В 3 СТЪПКИ

1. ФЛАШКАТА (на компютъра, 1 минута)
   Разархивирай този zip (десен бутон -> Extract All), сложи флашка и пусни:
     Windows:  PODGOTVI-FLESHKA.cmd           (двоен клик)
     Mac:      PODGOTVI-FLESHKA.command       (десен бутон -> Open първия път)
     Linux:    sh PODGOTVI-FLESHKA.command
   Той сам намира флашката, прави я FAT32 ако трябва (пита преди това),
   копира, проверява и я изважда. Ако Windows покаже "Windows protected
   your PC": More info -> Run anyway.

2. МАШИНАТА (5 минути, без нищо друго)
   Изключи XBody -> вкарай флашката -> включи -> чакай да се изключи сама
   (около минута) -> извади флашката -> включи.
   Горе вдясно на екрана се появява копче XEMS.

3. МОСТЪТ XIAO (веднъж)
   Включи XIAO в USB порта на машината (по-добре на къс удължител).
   Нова платка: натисни малкия бутон RESET два пъти бързо. Машината сама
   я програмира — екранът на XEMS показва "Програмирам моста…".
   (Ако XIAO е в компютъра в този момент, PODGOTVI-FLESHKA я програмира.)

ВРЪЩАНЕ НАЗАД
   Пусни PODGOTVI-FLESHKA със СЪЩАТА флашка -> избери 2 "Върни назад"
   -> занеси я на машината както в стъпка 2.

Светлини на XIAO: синя мига = търси костюм, зелена = свързан.
"""


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--img", help="base SD card image (.img, raw dd dump) to patch")
    ap.add_argument("--out", help="output dir (default build/xbody-dist)")
    ap.add_argument("--overlay", help="overlay dir (tests; default xbody/overlay)")
    ap.add_argument("--remove", help="remove list (tests; default xbody/remove.list)")
    a = ap.parse_args()
    global OUT, OVERLAY, REMOVE
    if a.out:
        OUT = Path(a.out).resolve()
    if a.overlay:
        OVERLAY = Path(a.overlay).resolve()
    if a.remove:
        REMOVE = Path(a.remove).resolve()
    OUT.mkdir(parents=True, exist_ok=True)
    version = (OVERLAY / "opt/xems/VERSION").read_text().strip()
    entries = overlay_entries()
    removes = remove_entries()
    print(f"XBody mod v{version}: {sum(e[1] != 'd' for e in entries)} files/links, {len(removes)} removals")
    manifest_warnings(entries)
    z = build_usb(entries, removes, version)
    print(f"  USB : {z}  (or folder {OUT / 'usb'})")
    if a.img:
        g = apply_img(Path(a.img).resolve(), entries, removes, version)
        print(f"  SD  : {g}  (write with balenaEtcher; it reads .gz)")


if __name__ == "__main__":
    main()
