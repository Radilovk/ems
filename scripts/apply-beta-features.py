#!/usr/bin/env python3
"""BETA music-reactive pulse: settings in gear dialog only (no train-screen hooks)."""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
BRANDING = ROOT / "branding"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
UTILS_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils"
MANIFEST = DECOMPILED / "AndroidManifest.xml"
PUBLIC_XML = RES / "values/public.xml"
IDS_XML = RES / "values/ids.xml"
LAYOUT = RES / "layout/edit_parameter_dialog.xml"
EDIT_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog.smali"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VALUES_BG_DECOMPILED = RES / "values-bg/strings.xml"
VALUES_DEFAULT = RES / "values/strings.xml"

IDS = {
    "musicMinStrength": 0x7f09021f,
    "musicMaxStrength": 0x7f090220,
    "musicSyncStart": 0x7f090222,
    "musicSyncStop": 0x7f090223,
}

MUSIC_UI = """
            <LinearLayout android:gravity="center_vertical" android:orientation="vertical" android:paddingLeft="5.0dip" android:paddingRight="5.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="8.0dip">
                <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/beta_music_sync_title" />
                <TextView android:textSize="12.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="2.0dip" android:text="@string/beta_music_sync_hint" />
                <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="8.0dip" android:layout_marginBottom="8.0dip">
                    <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/beta_music_min_strength" android:maxEms="18" android:singleLine="true" />
                    <com.isaigu.gymapp.widget.AmountView android:id="@id/musicMinStrength" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginRight="10.0dip" />
                </LinearLayout>
                <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginBottom="8.0dip">
                    <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/beta_music_max_strength" android:maxEms="18" android:singleLine="true" />
                    <com.isaigu.gymapp.widget.AmountView android:id="@id/musicMaxStrength" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginRight="10.0dip" />
                </LinearLayout>
                <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">
                    <com.isaigu.gymapp.widget.MyButton android:textSize="16.0sp" android:textColor="@color/text_primary" android:id="@id/musicSyncStart" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="40.0dip" android:layout_weight="1.0" android:layout_marginRight="6.0dip" android:text="@string/beta_music_start" android:textAllCaps="false" />
                    <com.isaigu.gymapp.widget.MyButton android:textSize="16.0sp" android:textColor="@color/text_primary" android:id="@id/musicSyncStop" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="40.0dip" android:layout_weight="1.0" android:layout_marginLeft="6.0dip" android:text="@string/beta_music_stop" android:textAllCaps="false" />
                </LinearLayout>
            </LinearLayout>
"""

BG_STRINGS = """
    <string name="beta_music_sync_title">БЕТА — Музикален импулс</string>
    <string name="beta_music_sync_hint">Микрофонът улавя музиката и регулира силата на импулса по амплитуда.</string>
    <string name="beta_music_min_strength">Мин. сила (%)</string>
    <string name="beta_music_max_strength">Макс. сила (%)</string>
    <string name="beta_music_start">Старт</string>
    <string name="beta_music_stop">Стоп</string>
"""

EN_STRINGS = """
    <string name="beta_music_sync_title">BETA — Music-reactive pulse</string>
    <string name="beta_music_sync_hint">Microphone captures music and adjusts pulse strength by amplitude.</string>
    <string name="beta_music_min_strength">Min strength (%)</string>
    <string name="beta_music_max_strength">Max strength (%)</string>
    <string name="beta_music_start">Start</string>
    <string name="beta_music_stop">Stop</string>
"""


def install_smali() -> None:
    UTILS_DIR.mkdir(parents=True, exist_ok=True)
    DIALOG_DIR.mkdir(parents=True, exist_ok=True)
    utils_files = [
        BRANDING / "smali/MusicSync.smali",
        BRANDING / "smali/MusicSyncBridge.smali",
    ]
    utils_files.extend(sorted((BRANDING / "smali").glob("MusicSync$*.smali")))
    for src in utils_files:
        if not src.is_file():
            continue
        shutil.copy2(src, UTILS_DIR / src.name)
        print(f"installed train/utils/{src.name}")
    for src in sorted((BRANDING / "smali").glob("MusicSyncHelper*.smali")):
        shutil.copy2(src, DIALOG_DIR / src.name)
        print(f"installed dialog/{src.name}")


def patch_manifest(text: str) -> str:
    if "RECORD_AUDIO" in text:
        return text
    return text.replace(
        '<uses-permission android:name="android.permission.INTERNET"/>',
        '<uses-permission android:name="android.permission.INTERNET"/>\n'
        '    <uses-permission android:name="android.permission.RECORD_AUDIO"/>',
        1,
    )


def patch_public_xml(text: str) -> str:
    if "musicMinStrength" in text:
        return text
    entries = "\n".join(
        f'    <public type="id" name="{name}" id="{id:#x}" />' for name, id in IDS.items()
    )
    return text.replace("</resources>", entries + "\n</resources>", 1)


def patch_ids_xml(text: str) -> str:
    if "musicMinStrength" in text:
        return text
    entries = "\n".join(f'    <item type="id" name="{name}" />' for name in IDS)
    return text.replace("</resources>", entries + "\n</resources>", 1)


def patch_layout(text: str) -> str:
    if "musicMinStrength" in text:
        return text
    marker = (
        '                <View android:background="@color/gray_color" android:layout_width="fill_parent" '
        'android:layout_height="0.5dip" android:layout_marginLeft="20.0dip" android:layout_marginTop="5.0dip" '
        'android:layout_marginRight="20.0dip" />'
    )
    if marker not in text:
        raise RuntimeError("edit_parameter_dialog.xml music UI marker not found")
    return text.replace(marker, MUSIC_UI + "\n" + marker, 1)


def patch_edit_dialog(text: str) -> str:
    if "MusicSyncHelper;->bind" in text:
        return text
    marker = (
        "    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener()V\n"
    )
    hook = marker + (
        "\n    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;"
        "->bind(Landroid/view/View;)V\n"
    )
    if marker not in text:
        raise RuntimeError("EditUserProgramDataDialog.initListener marker not found")
    print("EditUserProgramDataDialog.onCreateView: music sync bind hook")
    return text.replace(marker, hook, 1)


def merge_strings(path: Path, block: str, names: list[str]) -> None:
    if not path.exists():
        return
    text = path.read_text(encoding="utf-8")
    if all(f'name="{n}"' in text for n in names):
        return
    path.write_text(text.replace("</resources>", block + "\n</resources>", 1), encoding="utf-8")
    print(f"added beta strings to {path.name}")


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    install_smali()
    MANIFEST.write_text(patch_manifest(MANIFEST.read_text(encoding="utf-8")), encoding="utf-8")
    PUBLIC_XML.write_text(patch_public_xml(PUBLIC_XML.read_text(encoding="utf-8")), encoding="utf-8")
    IDS_XML.write_text(patch_ids_xml(IDS_XML.read_text(encoding="utf-8")), encoding="utf-8")
    LAYOUT.write_text(patch_layout(LAYOUT.read_text(encoding="utf-8")), encoding="utf-8")
    EDIT_DIALOG.write_text(patch_edit_dialog(EDIT_DIALOG.read_text(encoding="utf-8")), encoding="utf-8")
    names = [
        "beta_music_sync_title",
        "beta_music_sync_hint",
        "beta_music_min_strength",
        "beta_music_max_strength",
        "beta_music_start",
        "beta_music_stop",
    ]
    merge_strings(VALUES_DEFAULT, EN_STRINGS, names)
    merge_strings(VALUES_BG, BG_STRINGS, names)
    merge_strings(VALUES_BG_DECOMPILED, BG_STRINGS, names)
    print("BETA music sync patches applied (gear dialog only).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
