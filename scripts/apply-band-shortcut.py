#!/usr/bin/env python3
"""Home-screen icon that opens XEMS on the band (BandLaunchActivity, v1.1.154).

- manifest: BandLaunchActivity (translucent, no history, not in recents) + the launcher
  shortcut list on MainActivity (long-press the XEMS icon → "Open on the band", drag it out)
- res/xml/xems_shortcuts.xml, labels in values / values-bg
- icon: adaptive (dark background + branding/shortcut/xems_band_shortcut_fg.png) on Android 8+,
  branding/shortcut/xems_band_shortcut.png before that
The Settings → Band button pins the same icon directly (BandLaunch.pinToHome).
"""
from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DEC = ROOT / "build" / "decompiled"
RES = DEC / "res"
ART = ROOT / "branding" / "shortcut"
ACTIVITY = "com.isaigu.gymapp.wearable.BandLaunchActivity"
ACTION = "com.xems.OPEN_BAND_APP"

ACTIVITY_XML = f"""        <activity android:excludeFromRecents="true" android:exported="true" android:name="{ACTIVITY}" android:noHistory="true" android:taskAffinity="" android:theme="@android:style/Theme.Translucent.NoTitleBar">
            <intent-filter>
                <action android:name="{ACTION}"/>
                <category android:name="android.intent.category.DEFAULT"/>
            </intent-filter>
        </activity>
"""
META = '            <meta-data android:name="android.app.shortcuts" android:resource="@xml/xems_shortcuts"/>\n'

STRINGS = {
    "values": ("XEMS band", "Open XEMS on the band"),
    "values-bg": ("XEMS гривна", "Отвори XEMS на гривната"),
}


def shortcuts_xml(package: str) -> str:
    return f"""<?xml version="1.0" encoding="utf-8"?>
<shortcuts xmlns:android="http://schemas.android.com/apk/res/android">
    <shortcut android:enabled="true" android:icon="@drawable/xems_band_shortcut" android:shortcutId="xems_band" android:shortcutLongLabel="@string/xems_band_shortcut_long" android:shortcutShortLabel="@string/xems_band_shortcut_short">
        <intent android:action="{ACTION}" android:targetClass="{ACTIVITY}" android:targetPackage="{package}"/>
    </shortcut>
</shortcuts>
"""


ADAPTIVE = """<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
    <background android:drawable="@color/xems_band_shortcut_bg"/>
    <foreground android:drawable="@drawable/xems_band_shortcut_fg"/>
</adaptive-icon>
"""


def patch_manifest() -> str:
    path = DEC / "AndroidManifest.xml"
    text = path.read_text(encoding="utf-8")
    package = re.search(r'package="([^"]+)"', text).group(1)
    if ACTIVITY not in text:
        text = text.replace("    </application>", ACTIVITY_XML + "    </application>", 1)
    if "android.app.shortcuts" not in text:
        # into the launcher activity, right after its MAIN / LAUNCHER intent-filter
        m = re.search(r'<category android:name="android.intent.category.LAUNCHER"/>\s*</intent-filter>\n', text)
        if not m:
            raise SystemExit("apply-band-shortcut: launcher intent-filter not found")
        text = text[: m.end()] + META + text[m.end():]
    path.write_text(text, encoding="utf-8")
    return package


def add_string(folder: str, name: str, value: str) -> None:
    path = RES / folder / "strings.xml"
    text = path.read_text(encoding="utf-8")
    if f'name="{name}"' in text:
        return
    text = text.replace("</resources>", f'    <string name="{name}">{value}</string>\n</resources>', 1)
    path.write_text(text, encoding="utf-8")


def main() -> int:
    for f in ("xems_band_shortcut.png", "xems_band_shortcut_fg.png"):
        if not (ART / f).is_file():
            raise SystemExit(f"Missing branding/shortcut/{f} — run scripts/gen-band-shortcut-icon.py")
    package = patch_manifest()
    (RES / "xml").mkdir(exist_ok=True)
    (RES / "xml" / "xems_shortcuts.xml").write_text(shortcuts_xml(package), encoding="utf-8")
    nodpi = RES / "drawable-nodpi"
    nodpi.mkdir(exist_ok=True)
    shutil.copy2(ART / "xems_band_shortcut.png", nodpi / "xems_band_shortcut.png")
    shutil.copy2(ART / "xems_band_shortcut_fg.png", nodpi / "xems_band_shortcut_fg.png")
    v26 = RES / "drawable-anydpi-v26"
    v26.mkdir(exist_ok=True)
    (v26 / "xems_band_shortcut.xml").write_text(ADAPTIVE, encoding="utf-8")
    colors = RES / "values" / "colors.xml"
    ctext = colors.read_text(encoding="utf-8")
    if 'name="xems_band_shortcut_bg"' not in ctext:
        colors.write_text(ctext.replace("</resources>",
                                        '    <color name="xems_band_shortcut_bg">#FF101116</color>\n</resources>', 1),
                          encoding="utf-8")
    for folder, (short, long_) in STRINGS.items():
        add_string(folder, "xems_band_shortcut_short", short)
        add_string(folder, "xems_band_shortcut_long", long_)
    smali = list(DEC.glob("smali*/com/isaigu/gymapp/wearable/BandLaunchActivity.smali"))
    if not smali:
        raise SystemExit("apply-band-shortcut: BandLaunchActivity.smali not installed (run after apply-wearable-bridge.py)")
    print(f"band shortcut: {ACTIVITY} + launcher shortcut ({package})")
    return 0


if __name__ == "__main__":
    sys.exit(main())
