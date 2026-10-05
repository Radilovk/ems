#!/usr/bin/env python3
"""Ship the XEMS band app inside the APK, both languages:
band-app/xems-band.rpk (Bulgarian) → assets/xems-band.rpk,
band-app/xems-band-en.rpk (English) → assets/xems-band-en.rpk.
The tablet installs the one for its language (BandAppInstall).

Also checks that BandAppInstall.VERSION = versionCode of the band app: otherwise the tablet never
sends a newer band app (it thinks the old one is current).
"""

from __future__ import annotations

import json
import re
import shutil
import sys
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
BAND = ROOT / "band-app"
ASSETS = ROOT / "build" / "decompiled" / "assets"
FILES = {"xems-band.rpk": BAND / "xems-band.rpk", "xems-band-en.rpk": BAND / "xems-band-en.rpk"}
INSTALL_JAVA = ROOT / "branding" / "java" / "src" / "com" / "isaigu" / "gymapp" / "wearable" / "BandAppInstall.java"


def check_version() -> None:
    code = json.loads((BAND / "src" / "manifest.json").read_text(encoding="utf-8"))["versionCode"]
    m = re.search(r"public static final int VERSION = (\d+);", INSTALL_JAVA.read_text(encoding="utf-8"))
    if not m or int(m.group(1)) != code:
        raise SystemExit(f"BandAppInstall.VERSION ({m.group(1) if m else '?'}) != band app versionCode ({code})")
    app = (BAND / "src" / "app.ux").read_text(encoding="utf-8")
    if f"const APP_VERSION = {code}" not in app:
        raise SystemExit(f"band-app/src/app.ux APP_VERSION != versionCode ({code})")
    # The APK ships smali, not Java: a build without the Android SDK keeps the prebuilt smali, and
    # javac inlines the constant into its users. Every copy must carry the new version.
    smali = ROOT / "branding" / "smali" / "wearable"
    field = re.search(r"\.field public static final VERSION:I = (0x[0-9a-f]+)", (smali / "BandAppInstall.smali").read_text(encoding="utf-8"))
    if not field or int(field.group(1), 16) != code:
        raise SystemExit(f"BandAppInstall.smali VERSION ({field.group(1) if field else '?'}) != {code} — recompile the wearable Java")
    settings = (smali / "WearableSettingsSection.smali").read_text(encoding="utf-8")
    m = re.search(r"getBandAppVersion\(Landroid/content/Context;\)I\s+move-result v\d+\s+const/16 v\d+, (0x[0-9a-f]+)", settings)
    if m and int(m.group(1), 16) != code:
        raise SystemExit(f"WearableSettingsSection.smali inlined VERSION ({m.group(1)}) != {code} — recompile the wearable Java")


def check_rpks(code: int) -> None:
    """The built .rpk files carry the same versionCode and their own language: a stale .rpk reports the old
    version to the tablet, which then reinstalls it in a loop."""
    for name, src in FILES.items():
        if not src.exists():
            continue
        with zipfile.ZipFile(src) as z:
            got = json.loads(z.read("manifest.json").decode("utf-8")).get("versionCode")
            app = z.read("app.js").decode("utf-8", "replace")
        if got != code:
            raise SystemExit(f"band-app/{src.name}: versionCode {got} != {code} — rebuild with band-app/build.sh")
        lang = "en" if name.endswith("-en.rpk") else "bg"
        if f"APP_LANG = '{lang}'" not in app:
            raise SystemExit(f"band-app/{src.name}: not the {lang} build (APP_LANG) — rebuild with band-app/build.sh")


def main() -> int:
    check_version()
    check_rpks(json.loads((BAND / "src" / "manifest.json").read_text(encoding="utf-8"))["versionCode"])
    ASSETS.mkdir(parents=True, exist_ok=True)
    for name, src in FILES.items():
        if not src.exists():
            raise SystemExit(f"Missing band-app/{src.name} — run band-app/build.sh")
        shutil.copy2(src, ASSETS / name)
        print(f"assets/{name} ({src.stat().st_size} B)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
