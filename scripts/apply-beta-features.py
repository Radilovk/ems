#!/usr/bin/env python3
"""BETA features: training-screen button, settings dialog, music-reactive pulse strength."""

from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
BRANDING = ROOT / "branding"
SMALI_DEST = DECOMPILED / "smali_classes2/com/isaigu/gymapp/beta"
MANIFEST = DECOMPILED / "AndroidManifest.xml"
PUBLIC_XML = RES / "values/public.xml"
IDS_XML = RES / "values/ids.xml"
TRAIN_LAYOUT = RES / "layout/new_train_fragment_layout.xml"
NEW_TRAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VALUES_BG_DECOMPILED = RES / "values-bg/strings.xml"
VALUES_DEFAULT = RES / "values/strings.xml"

LAYOUT_ID = 0x7f0b0078
IDS = {
    "betaFeaturesButton": 0x7f09021c,
    "betaDialogScroll": 0x7f09021d,
    "betaDialogLayout": 0x7f09021e,
    "musicMinStrength": 0x7f09021f,
    "musicMaxStrength": 0x7f090220,
    "musicSyncStatus": 0x7f090221,
    "musicSyncStart": 0x7f090222,
    "musicSyncStop": 0x7f090223,
    "betaCloseButton": 0x7f090224,
}

BETA_BUTTON = """
        <com.isaigu.gymapp.widget.MyButton android:textSize="9.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:id="@id/betaFeaturesButton" android:background="@drawable/black_button_drawable_r30" android:layout_width="50.0dip" android:layout_height="28.0dip" android:text="BETA" />
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.1" />"""

BG_STRINGS = """
    <string name="beta_features_title">БЕТА функции</string>
    <string name="beta_features_subtitle">Експериментални възможности — използвайте с внимание</string>
    <string name="beta_music_sync_title">Музикален импулс</string>
    <string name="beta_music_sync_hint">Микрофонът улавя музиката от телефона и регулира силата на импулса по ритъма (амплитуда).</string>
    <string name="beta_music_min_strength">Мин. сила (%)</string>
    <string name="beta_music_max_strength">Макс. сила (%)</string>
    <string name="beta_music_status_idle">Статус: изключено</string>
    <string name="beta_music_status_active">Статус: активно — слуша музика</string>
    <string name="beta_music_start">Старт</string>
    <string name="beta_music_stop">Стоп</string>
"""

EN_STRINGS = """
    <string name="beta_features_title">BETA features</string>
    <string name="beta_features_subtitle">Experimental features — use with caution</string>
    <string name="beta_music_sync_title">Music-reactive pulse</string>
    <string name="beta_music_sync_hint">Microphone captures music from the phone and adjusts pulse strength by rhythm (amplitude).</string>
    <string name="beta_music_min_strength">Min strength (%)</string>
    <string name="beta_music_max_strength">Max strength (%)</string>
    <string name="beta_music_status_idle">Status: off</string>
    <string name="beta_music_status_active">Status: active — listening</string>
    <string name="beta_music_start">Start</string>
    <string name="beta_music_stop">Stop</string>
"""


def install_smali() -> None:
    SMALI_DEST.mkdir(parents=True, exist_ok=True)
    for src in sorted((BRANDING / "smali/beta").glob("*.smali")):
        shutil.copy2(src, SMALI_DEST / src.name)
        print(f"installed beta/{src.name}")


def install_layout() -> None:
    src = BRANDING / "layouts/beta_features_dialog.xml"
    dst = RES / "layout/beta_features_dialog.xml"
    shutil.copy2(src, dst)
    print("installed beta_features_dialog.xml")


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
    if "betaFeaturesButton" in text:
        return text
    id_entries = "\n".join(
        f'    <public type="id" name="{name}" id="{id:#x}" />' for name, id in IDS.items()
    )
    text = text.replace("</resources>", id_entries + "\n</resources>", 1)
    layout_entry = f'    <public type="layout" name="beta_features_dialog" id="{LAYOUT_ID:#x}" />\n'
    marker = '    <public type="layout" name="video_list_item" id="0x7f0b0077" />'
    if marker not in text:
        raise RuntimeError("public.xml layout marker not found")
    return text.replace(marker, marker + "\n" + layout_entry.rstrip(), 1)


def patch_ids_xml(text: str) -> str:
    if "betaFeaturesButton" in text:
        return text
    entries = "\n".join(f'    <item type="id" name="{name}" />' for name in IDS)
    return text.replace("</resources>", entries + "\n</resources>", 1)


def patch_train_layout(text: str) -> str:
    if "betaFeaturesButton" in text:
        return text
    marker = (
        '        <com.isaigu.gymapp.widget.MyButton android:id="@id/allminus" '
        'android:background="@mipmap/minus" android:layout_width="50.0dip" '
        'android:layout_height="50.0dip" />\n'
        '        <View android:layout_width="fill_parent" android:layout_height="0.0dip" '
        'android:layout_weight="0.3" />'
    )
    if marker not in text:
        raise RuntimeError("new_train_fragment_layout.xml BETA marker not found")
    replacement = (
        '        <com.isaigu.gymapp.widget.MyButton android:id="@id/allminus" '
        'android:background="@mipmap/minus" android:layout_width="50.0dip" '
        'android:layout_height="50.0dip" />\n'
        + BETA_BUTTON
        + '\n        <View android:layout_width="fill_parent" android:layout_height="0.0dip" '
        'android:layout_weight="0.3" />'
    )
    return text.replace(marker, replacement, 1)


def patch_new_train_fragment(text: str) -> str:
    bind_call = (
        "    invoke-static {p0, v0}, Lcom/isaigu/gymapp/beta/BetaFeaturesUtils;"
        "->bindTrainScreen(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Landroid/view/View;)V\n\n"
    )
    marker = "    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->updateMuscleSelectionVisual()V\n\n    return-object v0"
    if "BetaFeaturesUtils;->bindTrainScreen" not in text:
        if marker not in text:
            raise RuntimeError("NewTrainFragment.onCreateView marker not found")
        text = text.replace(marker, bind_call + marker, 1)
        print("NewTrainFragment.onCreateView: beta bind hook")

    destroy_marker = (
        "    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V\n\n"
        "    .line 217\n"
        "    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;"
    )
    destroy_hook = (
        "    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V\n\n"
        "    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->stop()V\n\n"
        "    .line 217\n"
        "    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;"
    )
    if "MusicReactiveController;->stop" not in text:
        if destroy_marker not in text:
            raise RuntimeError("NewTrainFragment.onDestroy marker not found")
        text = text.replace(destroy_marker, destroy_hook, 1)
        print("NewTrainFragment.onDestroy: music sync stop hook")

    return text


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
    install_layout()
    MANIFEST.write_text(patch_manifest(MANIFEST.read_text(encoding="utf-8")), encoding="utf-8")
    PUBLIC_XML.write_text(patch_public_xml(PUBLIC_XML.read_text(encoding="utf-8")), encoding="utf-8")
    IDS_XML.write_text(patch_ids_xml(IDS_XML.read_text(encoding="utf-8")), encoding="utf-8")
    TRAIN_LAYOUT.write_text(patch_train_layout(TRAIN_LAYOUT.read_text(encoding="utf-8")), encoding="utf-8")
    NEW_TRAIN_FRAGMENT.write_text(
        patch_new_train_fragment(NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    names = [
        "beta_features_title",
        "beta_features_subtitle",
        "beta_music_sync_title",
        "beta_music_sync_hint",
        "beta_music_min_strength",
        "beta_music_max_strength",
        "beta_music_status_idle",
        "beta_music_status_active",
        "beta_music_start",
        "beta_music_stop",
    ]
    merge_strings(VALUES_DEFAULT, EN_STRINGS, names)
    merge_strings(VALUES_BG, BG_STRINGS, names)
    merge_strings(VALUES_BG_DECOMPILED, BG_STRINGS, names)
    print("BETA features patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
