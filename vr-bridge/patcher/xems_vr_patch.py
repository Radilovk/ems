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
import tempfile
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
SIGNER_URL = "https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar"
CACHE = Path.home() / ".xems-vr"


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


def inject(src: Path, dst: Path, add_so: bool, add_json: bool) -> None:
    """Copy the APK without its old signature (aligned), add the layer (.so stored and page-aligned)."""
    with zipfile.ZipFile(src) as zin, zipfile.ZipFile(dst, "w") as zout:
        for info in zin.infolist():
            if info.is_dir() or is_signature(info.filename) or info.filename in (SO_ENTRY, JSON_ENTRY):
                continue
            with zin.open(info) as f:
                put(zout, info.filename, f.read(), info.compress_type, info.date_time, info.external_attr)
        if add_so:
            put(zout, SO_ENTRY, LAYER_SO.read_bytes(), zipfile.ZIP_STORED)
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


def patch_set(apks: list[Path], out: Path) -> list[Path]:
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
    patched = []
    for i, a in enumerate(apks):
        dst = tmp / a.name
        inject(a, dst, add_so=i == so_at, add_json=i == base)
        patched.append(dst)
    say(f"✓ слоят е добавен ({apks[so_at].name}), манифестът ({apks[base].name})")
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


def has_internet(adb: Adb, pkg: str) -> bool:
    return "android.permission.INTERNET" in adb.shell(f"dumpsys package {pkg}", check=False)


def backup(adb: Adb, pkg: str, into: Path) -> list[tuple[str, Path]]:
    saved = []
    for kind in ("data", "obb"):
        remote = f"/sdcard/Android/{kind}/{pkg}"
        if adb.shell(f"[ -d {remote} ] && echo yes", check=False).strip() == "yes":
            local = into / kind
            local.mkdir(parents=True, exist_ok=True)
            say(f"… пазя Android/{kind} (може да отнеме минута при големи игри)")
            adb("pull", remote, str(local))
            saved.append((kind, local / pkg))
    return saved


def restore(adb: Adb, pkg: str, saved: list[tuple[str, Path]]) -> None:
    for kind, local in saved:
        if local.is_dir():
            adb.shell(f"mkdir -p /sdcard/Android/{kind}", check=False)
            adb("push", str(local), f"/sdcard/Android/{kind}/")
            say(f"✓ Android/{kind} е върнат")


def install_set(adb: Adb, apks: list[Path]) -> bool:
    args = ["install", "-r", str(apks[0])] if len(apks) == 1 else ["install-multiple", "-r", *[str(a) for a in apks]]
    out = adb(*args, check=False)
    return "Success" in out


def install(adb: Adb, pkg: str, apks: list[Path], originals: list[Path], saved: list[tuple[str, Path]]) -> None:
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
    ap.add_argument("--tablet", metavar="IP", help="IP на таблета (иначе се намира сам по Wi-Fi)")
    ap.add_argument("--apk", action="append", type=Path, help="офлайн: локален APK (повтаря се за split-ове)")
    ap.add_argument("--out", type=Path, default=Path("xems-vr-out"), help="папка за резултата")
    ap.add_argument("--adb", default=os.environ.get("ADB", "adb"))
    ap.add_argument("--yes", action="store_true", help="без въпрос преди преинсталиране")
    a = ap.parse_args()

    if a.apk:
        a.out.mkdir(parents=True, exist_ok=True)
        patch_set(a.apk, a.out)
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
    if not a.package:
        ap.print_help()
        return 1

    pkg = a.package
    if not has_internet(adb, pkg):
        fail(f"{pkg} няма разрешение INTERNET — слоят не може да праща към таблета")
    work = Path(tempfile.mkdtemp(prefix="xems-vr-"))
    orig = pull_game(adb, pkg, work / "orig")
    a.out.mkdir(parents=True, exist_ok=True)
    keep = a.out / "original" / pkg
    keep.mkdir(parents=True, exist_ok=True)
    for f in orig:
        shutil.copy(f, keep / f.name)                 # the untouched game, to go back with adb install-multiple
    signed = patch_set(orig, a.out / pkg)

    if not a.yes:
        say(f"\nИграта ще се преинсталира. Вътрешните записи на {pkg} (ако не са в облака) ще се загубят;\n"
            "Android/data и Android/obb се пазят и връщат. Оригиналът остава в " + str(keep))
        if input("Продължаваме? [y/N] ").strip().lower() not in ("y", "yes", "д", "да"):
            say("спряно, нищо не е пипнато на шлема")
            return 1
    saved = backup(adb, pkg, work / "backup")
    install(adb, pkg, signed, [keep / f.name for f in orig], saved)
    restore(adb, pkg, saved)
    if a.tablet:
        adb.shell(f"setprop debug.xems.vr.target {a.tablet}", check=False)
        say(f"✓ таблет: {a.tablet} (до рестарт на шлема)")
    shutil.rmtree(work, ignore_errors=True)
    say("\nГотово. Отвори тренировката на таблета, пусни реда и стартирай играта.\n"
        f"Проверка: {a.adb} logcat -s XemsVrLayer   → „active“ и „paired with …“")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
