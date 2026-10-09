#!/usr/bin/env python3
"""XEMS VR: put the haptic layer into a Quest 3 game, in one command.

  python3 xems_vr_patch.py --list [word]           games on the headset (third-party packages)
  python3 xems_vr_patch.py <package> [--tablet IP] patch the installed game: pull → inject → sign → reinstall
  python3 xems_vr_patch.py --apk base.apk [--apk split.apk …] --out DIR     offline, no headset

Needs: adb (headset in developer mode, USB, "Allow USB debugging" accepted) and Java 8+.
The game's internal save data is lost on reinstall (another signature); Android/data and Android/obb are backed up
and put back. Cloud saves come back by themselves.
"""

from __future__ import annotations

import argparse
import os
import shutil
import struct
import subprocess
import sys
import tarfile
import tempfile
import time
import urllib.request
import zipfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
PREBUILT = HERE.parent / "prebuilt"
LAYER_SO = PREBUILT / "arm64-v8a" / "libXrApiLayer_xems_haptics.so"
LAYER_JSON = PREBUILT / "XrApiLayer_xems_haptics.json"
SO_ENTRY = "lib/arm64-v8a/libXrApiLayer_xems_haptics.so"
JSON_ENTRY = "assets/openxr/1/api_layers/implicit.d/XrApiLayer_xems_haptics.json"
LOADER = "lib/arm64-v8a/libopenxr_loader.so"
# Loader shim (default): the game's loader is renamed to ORIG_ENTRY and the shim takes its name. Works with
# loaders that never read implicit layers from the APK (Godot's). Asset layer (SO_ENTRY + JSON_ENTRY) = fallback.
ORIG_ENTRY = "lib/arm64-v8a/libopenxr_loader_orig_xems.so"
SHIM_SO = PREBUILT / "arm64-v8a" / "libopenxr_loader_xems_shim.so"
SHIM_EXPORTS = HERE.parent / "quest-layer" / "src" / "loader_exports.txt"
SIGNER_URL = "https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar"
CACHE = Path.home() / ".xems-vr"
TARGET_MARKER = b"XEMS_VR_TARGET_SLOT="   # g_bakedTarget in xems_haptic_layer.cpp: marker + 43 free bytes
TARGET_ROOM = 64 - len(TARGET_MARKER) - 1


def say(msg: str) -> None:
    print(msg, flush=True)


def fail(msg: str) -> None:
    say("✗ " + msg)
    sys.exit(1)


def run(cmd: list[str], check: bool = True) -> str:
    p = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    if check and p.returncode != 0:
        fail(f"{' '.join(cmd[:3])}…: {p.stdout.strip()[-400:]}")
    return p.stdout


class Adb:
    def __init__(self, exe: str):
        self.exe = exe

    def __call__(self, *args: str, check: bool = True) -> str:
        return run([self.exe, *args], check)

    def shell(self, cmd: str, check: bool = True) -> str:
        return self("shell", cmd, check=check)


# ---------------------------------------------------------------- APK work


def entries(apk: Path) -> set[str]:
    with zipfile.ZipFile(apk) as z:
        return set(z.namelist())


def is_signature(name: str) -> bool:
    if not name.startswith("META-INF/"):
        return False
    base = name[len("META-INF/"):]
    return base == "MANIFEST.MF" or base.endswith((".SF", ".RSA", ".DSA", ".EC"))


SO_ALIGN = 16384   # page alignment for stored .so (extractNativeLibs=false); 16 KB covers 4 KB pages too


def put(zout: zipfile.ZipFile, name: str, data: bytes, method: int, date=(2026, 1, 1, 0, 0, 0), attr: int = 0) -> None:
    """Write one entry; stored data is aligned (4 bytes, .so to a page) with a padding extra field, like zipalign."""
    zi = zipfile.ZipInfo(name, date_time=date)
    zi.compress_type = method
    zi.external_attr = attr or (0o644 << 16)
    if method == zipfile.ZIP_STORED:
        align = SO_ALIGN if name.endswith(".so") else 4
        start = zout.fp.tell() + 30 + len(name.encode("utf-8"))
        pad = (-start) % align
        if 0 < pad < 4:
            pad += align
        if pad:
            zi.extra = struct.pack("<HH", 0xD935, pad - 4) + bytes(pad - 4)
    zout.writestr(zi, data)


def bake_target(so: bytes, target: str | None) -> bytes:
    """Write the tablet "ip[:port]" into the layer's slot, so it holds after a headset reboot (empty = discovery)."""
    if not target:
        return so
    raw = target.encode("ascii")
    at = so.find(TARGET_MARKER)
    if at < 0:
        fail("слоят е стар (няма място за IP) — bash vr-bridge/quest-layer/build-ndk.sh")
    if len(raw) > TARGET_ROOM:
        fail(f"--tablet е твърде дълъг: {target}")
    at += len(TARGET_MARKER)
    return so[:at] + raw + bytes(TARGET_ROOM + 1 - len(raw)) + so[at + TARGET_ROOM + 1:]


def elf_exports(so: bytes) -> set[str]:
    """Defined global FUNC symbols of an ELF64 little-endian .so (.dynsym) — what the game can link against."""
    if so[:4] != b"\x7fELF" or so[4] != 2:
        return set()
    shoff, = struct.unpack_from("<Q", so, 0x28)
    shentsize, shnum = struct.unpack_from("<HH", so, 0x3A)
    secs = [struct.unpack_from("<IIQQQQIIQQ", so, shoff + i * shentsize) for i in range(shnum)]
    out = set()
    for name, stype, _f, _a, off, size, link, _i, _al, entsize in secs:
        if stype != 11 or not entsize:                    # SHT_DYNSYM
            continue
        stroff = secs[link][4]
        for k in range(size // entsize):
            st_name, st_info, _o, st_shndx = struct.unpack_from("<IBBH", so, off + k * entsize)
            if st_shndx and (st_info >> 4) in (1, 2) and (st_info & 0xF) == 2:   # GLOBAL/WEAK, FUNC, defined
                end = so.index(b"\0", stroff + st_name)
                out.add(so[stroff + st_name:end].decode("ascii", "replace"))
    return out


def shim_fits(loader: bytes) -> bool:
    """The shim can stand in only if it exports every xr* entry point the game's loader does."""
    if not SHIM_SO.is_file() or not SHIM_EXPORTS.is_file():
        return False
    ours = set(SHIM_EXPORTS.read_text().split())
    missing = {n for n in elf_exports(loader) if n.startswith("xr")} - ours
    if missing:
        say("… loader-ът на играта има функции, които посредникът не познава: " + ", ".join(sorted(missing)[:5]))
    return not missing


def inject_shim(src: Path, dst: Path, target: str | None) -> None:
    """Loader shim: the game's loader → ORIG_ENTRY, our shim → LOADER. A game patched before keeps its original."""
    with zipfile.ZipFile(src) as zin, zipfile.ZipFile(dst, "w") as zout:
        names = set(zin.namelist())
        repatch = ORIG_ENTRY in names
        for info in zin.infolist():
            n = info.filename
            if info.is_dir() or is_signature(n) or n in (SO_ENTRY, JSON_ENTRY):
                continue
            if n == LOADER:
                if repatch:
                    continue                                      # our old shim — replaced below
                n = ORIG_ENTRY                                    # the real loader moves aside, bytes untouched
            with zin.open(info) as f:
                put(zout, n, f.read(), info.compress_type, info.date_time, info.external_attr)
        put(zout, LOADER, bake_target(SHIM_SO.read_bytes(), target), zipfile.ZIP_STORED)


def inject(src: Path, dst: Path, add_so: bool, add_json: bool, target: str | None = None) -> None:
    """Copy the APK without its old signature (aligned), add the layer (.so stored and page-aligned)."""
    with zipfile.ZipFile(src) as zin, zipfile.ZipFile(dst, "w") as zout:
        for info in zin.infolist():
            if info.is_dir() or is_signature(info.filename) or info.filename in (SO_ENTRY, JSON_ENTRY):
                continue
            with zin.open(info) as f:
                put(zout, info.filename, f.read(), info.compress_type, info.date_time, info.external_attr)
        if add_so:
            put(zout, SO_ENTRY, bake_target(LAYER_SO.read_bytes(), target), zipfile.ZIP_STORED)
        if add_json:
            put(zout, JSON_ENTRY, LAYER_JSON.read_bytes(), zipfile.ZIP_DEFLATED)


def signer() -> Path:
    jar = CACHE / "uber-apk-signer-1.3.0.jar"
    repo_jar = HERE.parents[1] / "tools" / "uber-apk-signer.jar"
    if repo_jar.is_file():
        return repo_jar
    if not jar.is_file():
        CACHE.mkdir(parents=True, exist_ok=True)
        say("… изтеглям uber-apk-signer (веднъж)")
        urllib.request.urlretrieve(SIGNER_URL, jar)
    return jar


def sign(apks: list[Path], out: Path) -> list[Path]:
    """One debug key for all splits (alignment is done in put()); returns the signed files in the same order."""
    if shutil.which("java") is None:
        fail("няма Java — инсталирай Java 8+ (напр. Temurin) и пусни пак")
    work = out / "_unsigned"
    work.mkdir(parents=True, exist_ok=True)
    for a in apks:
        shutil.copy(a, work / a.name)
    run(["java", "-jar", str(signer()), "-a", str(work), "--out", str(out), "--allowResign", "--skipZipAlign"])
    signed = []
    for a in apks:
        hits = sorted(out.glob(a.stem + "*Signed.apk"))
        if not hits:
            fail(f"подписването на {a.name} не даде файл")
        final = out / a.name
        if final.exists():
            final.unlink()
        hits[-1].rename(final)
        signed.append(final)
    shutil.rmtree(work, ignore_errors=True)
    for junk in out.glob("*.idsig"):
        junk.unlink()
    return signed


def patch_set(apks: list[Path], out: Path, target: str | None = None) -> list[Path]:
    """Decide where the layer goes (next to the OpenXR loader; json in base), inject, sign."""
    if not LAYER_SO.is_file():
        fail(f"липсва {LAYER_SO} — bash vr-bridge/quest-layer/build-ndk.sh")
    names = [entries(a) for a in apks]
    with_loader = [i for i, n in enumerate(names) if LOADER in n]
    if not with_loader:
        fail("играта няма Khronos OpenXR loader (lib/arm64-v8a/libopenxr_loader.so) — тя не минава през OpenXR "
             "(стар VrApi / OVRPlugin). Слоят не може да се закачи към нея.")
    base = next((i for i, a in enumerate(apks) if a.name == "base.apk"), 0)
    so_at = with_loader[0]
    tmp = out / "_patched"
    tmp.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(apks[so_at]) as z:
        names = set(z.namelist())
        loader = z.read(ORIG_ENTRY if ORIG_ENTRY in names else LOADER)
    use_shim = shim_fits(loader)
    patched = []
    for i, a in enumerate(apks):
        dst = tmp / a.name
        if use_shim and i == so_at:
            inject_shim(a, dst, target)
        elif use_shim:
            inject(a, dst, add_so=False, add_json=False)              # other splits: re-signed, old layer json out
        else:
            inject(a, dst, add_so=i == so_at, add_json=i == base, target=target)
        patched.append(dst)
    if use_shim:
        say(f"✓ посредникът е сложен на мястото на OpenXR loader-а ({apks[so_at].name})")
    else:
        say(f"✓ слоят е добавен ({apks[so_at].name}), манифестът ({apks[base].name})")
    if target:
        say(f"✓ таблет: {target} (записан в играта — важи и след рестарт на шлема)")
    signed = sign(patched, out)
    shutil.rmtree(tmp, ignore_errors=True)
    say("✓ подписано: " + ", ".join(p.name for p in signed))
    return signed


# ---------------------------------------------------------------- headset


def device(adb: Adb) -> None:
    state = adb("get-state", check=False).strip()
    if state != "device":
        fail("няма шлем по USB: включи Developer Mode, свържи кабела и приеми „Allow USB debugging“ в шлема")


def pull_game(adb: Adb, pkg: str, into: Path) -> list[Path]:
    paths = [l.split(":", 1)[1].strip() for l in adb.shell(f"pm path {pkg}", check=False).splitlines()
             if l.startswith("package:")]
    if not paths:
        fail(f"{pkg} не е инсталиран на шлема (виж --list)")
    into.mkdir(parents=True, exist_ok=True)
    out = []
    for p in paths:
        local = into / Path(p).name
        adb("pull", p, str(local))
        out.append(local)
    say(f"✓ изтеглени {len(out)} APK от шлема")
    return out


def manifest_info(apk: Path) -> tuple[str, bool]:
    """(package, asks for INTERNET) from the binary AndroidManifest.xml — no aapt needed in Termux."""
    with zipfile.ZipFile(apk) as z:
        d = z.read("AndroidManifest.xml")
    u16 = lambda o: struct.unpack_from("<H", d, o)[0]
    u32 = lambda o: struct.unpack_from("<I", d, o)[0]
    strings: list[str] = []
    pkg = ""
    off = u16(2)                                       # file header size
    while off + 8 <= len(d):
        ctype, hsize, csize = u16(off), u16(off + 2), u32(off + 4)
        if csize < 8:
            break
        if ctype == 0x0001 and not strings:            # string pool
            count, flags, sstart = u32(off + 8), u32(off + 16), u32(off + 20)
            utf8 = flags & 0x100
            for i in range(count):
                so = off + sstart + u32(off + hsize + i * 4)
                if utf8:
                    so += 2 if d[so] & 0x80 else 1     # utf-16 length
                    n = d[so] & 0x7F
                    if d[so] & 0x80:
                        n = ((d[so] & 0x7F) << 8) | d[so + 1]; so += 1
                    so += 1
                    strings.append(d[so:so + n].decode("utf-8", "replace"))
                else:
                    n = u16(so)
                    if n & 0x8000:
                        n = ((n & 0x7FFF) << 16) | u16(so + 2); so += 2
                    strings.append(d[so + 2:so + 2 + n * 2].decode("utf-16le", "replace"))
        elif ctype == 0x0102 and not pkg:              # first start tag = <manifest>
            astart, acount = u16(off + 24), u16(off + 28)
            for i in range(acount):
                ao = off + 16 + astart + i * 20
                name, raw = u32(ao + 4), u32(ao + 8)
                if name < len(strings) and strings[name] == "package" and raw < len(strings):
                    pkg = strings[raw]
        off += csize
    return pkg, "android.permission.INTERNET" in strings


def has_internet(adb: Adb, pkg: str) -> bool:
    return "android.permission.INTERNET" in adb.shell(f"dumpsys package {pkg}", check=False)


HOLD = "/sdcard/xems-vr-backup"   # Android/data + obb wait here (on the headset) while the game is reinstalled


def backup(adb: Adb, pkg: str, into: Path) -> list[tuple[str, Path | str]]:
    """Move Android/data|obb/<pkg> aside on the headset itself — instant, nothing crosses the Wi-Fi (obb can be
    GBs), files the game holds open don't matter. Where the move is refused: tar to this machine, minus cache/."""
    saved: list[tuple[str, Path | str]] = []
    stamp = str(int(time.time()))
    for kind in ("data", "obb"):
        remote = f"/sdcard/Android/{kind}/{pkg}"
        if adb.shell(f"[ -d {remote} ] && echo yes", check=False).strip() != "yes":
            continue
        held = f"{HOLD}/{pkg}-{kind}-{stamp}"
        moved = adb.shell(f"mkdir -p {HOLD} && mv {remote} {held} && [ -d {held} ] && [ ! -e {remote} ] && echo yes",
                          check=False).strip()
        if moved == "yes":
            say(f"✓ Android/{kind} е преместен настрана на шлема ({held})")
            saved.append((kind, held))
            continue
        saved.append((kind, pull_tar(adb, kind, pkg, into)))
    return saved


def pull_tar(adb: Adb, kind: str, pkg: str, into: Path) -> Path:
    """tar on the headset, not adb pull: pull stops at the first unreadable file; tar skips it and carries on."""
    local = into / kind
    local.mkdir(parents=True, exist_ok=True)
    say(f"… копирам Android/{kind} (може да отнеме минута при големи игри)")
    archive = into / f"{kind}.tar"
    with open(archive, "wb") as out:
        subprocess.run([adb.exe, "exec-out",
                        f"cd /sdcard/Android/{kind} && tar -cf - --exclude={pkg}/cache {pkg} 2>/dev/null"],
                       stdout=out, stderr=subprocess.DEVNULL)
    try:
        with tarfile.open(archive) as t:
            if hasattr(tarfile, "data_filter"):
                t.extractall(local, filter="data")
            else:
                t.extractall(local)
    except (tarfile.TarError, OSError) as e:
        fail(f"не можах да запазя Android/{kind}/{pkg} ({e}) — играта не е пипната")
    archive.unlink(missing_ok=True)
    if not (local / pkg).is_dir():
        fail(f"не можах да запазя Android/{kind}/{pkg} — играта не е пипната")
    return local / pkg


def restore(adb: Adb, pkg: str, saved: list[tuple[str, Path | str]]) -> None:
    for kind, src in saved:
        dst = f"/sdcard/Android/{kind}/{pkg}"
        if isinstance(src, str):
            # The fresh install may already have made an (empty) dir there: merge into it, else just move back.
            ok = adb.shell(f"mkdir -p /sdcard/Android/{kind}; rmdir {dst} 2>/dev/null; "
                           f"if [ -e {dst} ]; then cp -a {src}/. {dst}/ && rm -rf {src}; else mv {src} {dst}; fi "
                           f"&& [ -d {dst} ] && echo yes", check=False).strip()
            if ok.endswith("yes"):
                adb.shell(f"rmdir {HOLD} 2>/dev/null", check=False)
                say(f"✓ Android/{kind} е върнат")
            else:
                say(f"✗ Android/{kind} не се върна — стои на шлема в {src}")
        elif src.is_dir():
            adb.shell(f"mkdir -p /sdcard/Android/{kind}", check=False)
            adb("push", str(src), f"/sdcard/Android/{kind}/")
            say(f"✓ Android/{kind} е върнат")


def install_set(adb: Adb, apks: list[Path]) -> bool:
    args = ["install", "-r", str(apks[0])] if len(apks) == 1 else ["install-multiple", "-r", *[str(a) for a in apks]]
    out = adb(*args, check=False)
    return "Success" in out


def install(adb: Adb, pkg: str, apks: list[Path], originals: list[Path], saved: list[tuple[str, Path | str]]) -> None:
    adb("uninstall", pkg, check=False)
    if install_set(adb, apks):
        say("✓ инсталирано")
        return
    say("✗ шлемът не прие променената игра — връщам оригинала")
    ok = install_set(adb, originals)
    restore(adb, pkg, saved)
    fail("оригиналът е върнат" if ok else "и оригиналът не се инсталира — копие има в папката original/")


# ---------------------------------------------------------------- main


def main() -> int:
    ap = argparse.ArgumentParser(description="XEMS VR: haptic layer into a Quest 3 game")
    ap.add_argument("package", nargs="?", help="пакет на играта (виж --list)")
    ap.add_argument("--list", nargs="?", const="", metavar="WORD", help="игрите на шлема")
    ap.add_argument("--tablet", metavar="IP", help="IP на таблета, записва се в играта (иначе се намира сам по Wi-Fi)")
    ap.add_argument("--apk", action="append", type=Path, help="офлайн: локален APK (повтаря се за split-ове)")
    ap.add_argument("--out", type=Path, default=Path("xems-vr-out"), help="папка за резултата")
    ap.add_argument("--adb", default=os.environ.get("ADB", "adb"))
    ap.add_argument("--install", type=Path, metavar="APK",
                    help="APK файл (напр. свален на таблета): пач + инсталиране на шлема; пакетът се чете от файла")
    ap.add_argument("--yes", action="store_true", help="без въпрос преди преинсталиране")
    a = ap.parse_args()

    if a.apk:
        a.out.mkdir(parents=True, exist_ok=True)
        patch_set(a.apk, a.out, a.tablet)
        say(f"готово: {a.out}")
        return 0

    if shutil.which(a.adb) is None and not Path(a.adb).is_file():
        fail("няма adb — инсталирай Android platform-tools и пусни пак")
    adb = Adb(a.adb)
    device(adb)

    if a.list is not None:
        pk = sorted(l.split(":", 1)[1].strip() for l in adb.shell("pm list packages -3").splitlines() if ":" in l)
        for p in pk:
            if a.list.lower() in p.lower():
                say(p)
        return 0
    if not a.package and not a.install:
        ap.print_help()
        return 1

    work = Path(tempfile.mkdtemp(prefix="xems-vr-"))
    if a.install:
        if not a.install.is_file():
            fail(f"няма файл {a.install}")
        try:
            pkg, internet = manifest_info(a.install)
        except (zipfile.BadZipFile, KeyError, struct.error) as e:
            fail(f"{a.install.name} не е APK ({e})")
        if not pkg:
            fail(f"не можах да прочета пакета от {a.install.name}")
        if not internet:
            fail(f"{pkg} няма разрешение INTERNET — слоят не може да праща към таблета")
        say(f"✓ {a.install.name} → {pkg}")
        (work / "orig").mkdir(parents=True)
        orig = [work / "orig" / "base.apk"]
        shutil.copy(a.install, orig[0])
    else:
        pkg = a.package
        if not has_internet(adb, pkg):
            fail(f"{pkg} няма разрешение INTERNET — слоят не може да праща към таблета")
        orig = pull_game(adb, pkg, work / "orig")
    a.out.mkdir(parents=True, exist_ok=True)
    keep = a.out / "original" / pkg
    keep.mkdir(parents=True, exist_ok=True)
    for f in orig:
        shutil.copy(f, keep / f.name)                 # the untouched game, to go back with adb install-multiple
    signed = patch_set(orig, a.out / pkg, a.tablet)

    if not a.yes:
        say(f"\nИграта ще се преинсталира. Вътрешните записи на {pkg} (ако не са в облака) ще се загубят;\n"
            "Android/data и Android/obb се пазят и връщат. Оригиналът остава в " + str(keep))
        if input("Продължаваме? [y/N] ").strip().lower() not in ("y", "yes", "д", "да"):
            say("спряно, нищо не е пипнато на шлема")
            return 1
    saved = backup(adb, pkg, work / "backup")
    install(adb, pkg, signed, [keep / f.name for f in orig], saved)
    restore(adb, pkg, saved)
    adb.shell("setprop debug.xems.vr.target ''", check=False)   # an old until-reboot value must not win
    shutil.rmtree(work, ignore_errors=True)
    say("\nГотово. Отвори тренировката на таблета, пусни реда и стартирай играта.\n"
        f"Проверка: {a.adb} logcat -s XemsVrLayer   → „active“ и „paired with …“")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
