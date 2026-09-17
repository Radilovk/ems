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
TRAIN_VIEW_HOLDER_GEAR = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainViewHolder$1.smali"
)
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VALUES_BG_DECOMPILED = RES / "values-bg/strings.xml"
VALUES_DEFAULT = RES / "values/strings.xml"

IDS = {
    "musicMinStrength": 0x7f09021f,
    "musicMaxStrength": 0x7f090220,
    "musicSyncStatus": 0x7f090221,
    "musicSyncStart": 0x7f090222,
    "musicSyncStop": 0x7f090223,
    "musicSyncLevel": 0x7f090225,
}

STRING_IDS = {
    "beta_music_status_active": 0x7f0d0108,
    "beta_music_status_idle": 0x7f0d0109,
    "beta_music_status_permission": 0x7f0d010a,
    "beta_music_error_no_activity": 0x7f0d010b,
    "beta_music_error_no_manager": 0x7f0d010c,
    "beta_music_status_denied": 0x7f0d010d,
    "beta_music_error_mic": 0x7f0d010e,
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
                <TextView android:textSize="14.0sp" android:textColor="@color/light_green_color" android:id="@id/musicSyncStatus" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="6.0dip" android:text="@string/beta_music_status_idle" />
                <TextView android:textSize="22.0sp" android:textStyle="bold" android:textColor="@color/light_orange_exister" android:gravity="center" android:id="@id/musicSyncLevel" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip" android:text="0%" />
                <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="6.0dip">
                    <com.isaigu.gymapp.widget.MyButton android:clickable="true" android:focusable="true" android:minHeight="48.0dip" android:textSize="16.0sp" android:textColor="@color/text_primary" android:id="@id/musicSyncStart" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="48.0dip" android:layout_weight="1.0" android:layout_marginRight="6.0dip" android:text="@string/beta_music_start" android:textAllCaps="false" />
                    <com.isaigu.gymapp.widget.MyButton android:clickable="true" android:focusable="true" android:minHeight="48.0dip" android:textSize="16.0sp" android:textColor="@color/text_primary" android:id="@id/musicSyncStop" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="48.0dip" android:layout_weight="1.0" android:layout_marginLeft="6.0dip" android:text="@string/beta_music_stop" android:textAllCaps="false" />
                </LinearLayout>
            </LinearLayout>
"""

BG_STRINGS = """
    <string name="beta_music_sync_title">БЕТА — Музикален импулс</string>
    <string name="beta_music_sync_hint">Слайдерът на тренировката задава таван (макс. сила). Музиката плавно варира импулса от 0% до този таван. Чувствителността контролира колко лесно реагира на звук.</string>
    <string name="beta_music_min_strength">Чувствителност (%)</string>
    <string name="beta_music_max_strength">Макс. сила (%)</string>
    <string name="beta_music_start">Старт</string>
    <string name="beta_music_stop">Стоп</string>
    <string name="beta_music_status_active">Статус: активно — слуша музика</string>
    <string name="beta_music_status_idle">Статус: изключено</string>
    <string name="beta_music_status_permission">Изисква се разрешение за микрофон…</string>
    <string name="beta_music_error_no_activity">Грешка: неуспешен достъп до екрана</string>
    <string name="beta_music_error_no_manager">Първо отворете екрана за тренировка</string>
    <string name="beta_music_status_denied">Микрофонът е отказан — дайте разрешение от настройките</string>
    <string name="beta_music_error_mic">Микрофонът не може да стартира на това устройство</string>
"""

EN_STRINGS = """
    <string name="beta_music_sync_title">BETA — Music-reactive pulse</string>
    <string name="beta_music_sync_hint">The training slider sets the ceiling (max strength). Music smoothly varies impulse from 0% up to that ceiling. Sensitivity controls how easily it reacts to sound.</string>
    <string name="beta_music_min_strength">Sensitivity (%)</string>
    <string name="beta_music_max_strength">Max strength (%)</string>
    <string name="beta_music_start">Start</string>
    <string name="beta_music_stop">Stop</string>
    <string name="beta_music_status_active">Status: active — listening</string>
    <string name="beta_music_status_idle">Status: off</string>
    <string name="beta_music_status_permission">Microphone permission required…</string>
    <string name="beta_music_error_no_activity">Error: cannot access screen</string>
    <string name="beta_music_error_no_manager">Open the training screen first</string>
    <string name="beta_music_status_denied">Microphone denied — grant permission in settings</string>
    <string name="beta_music_error_mic">Microphone failed to start on this device</string>
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
    if "musicSyncLevel" not in text:
        entries = "\n".join(
            f'    <public type="id" name="{name}" id="{id:#x}" />' for name, id in IDS.items()
        )
        text = text.replace("</resources>", entries + "\n</resources>", 1)
    if "beta_music_status_active" not in text:
        entries = "\n".join(
            f'    <public type="string" name="{name}" id="{id:#x}" />'
            for name, id in STRING_IDS.items()
        )
        text = text.replace("</resources>", entries + "\n</resources>", 1)
    return text


def patch_ids_xml(text: str) -> str:
    if "musicMinStrength" in text:
        return text
    entries = "\n".join(f'    <item type="id" name="{name}" />' for name in IDS)
    return text.replace("</resources>", entries + "\n</resources>", 1)


def patch_layout(text: str) -> str:
    if "musicSyncStatus" in text:
        # AppCompat <Button> can swallow touches on some OEMs (e.g. Huawei); use MyButton.
        if "musicSyncStart" in text and 'android:id="@id/musicSyncStart"' in text:
            text = text.replace(
                '<Button android:textSize="16.0sp" android:textColor="@color/text_primary" '
                'android:id="@id/musicSyncStart"',
                '<com.isaigu.gymapp.widget.MyButton android:clickable="true" android:focusable="true" '
                'android:minHeight="48.0dip" android:textSize="16.0sp" android:textColor="@color/text_primary" '
                'android:id="@id/musicSyncStart"',
                1,
            )
            text = text.replace(
                '<Button android:textSize="16.0sp" android:textColor="@color/text_primary" '
                'android:id="@id/musicSyncStop"',
                '<com.isaigu.gymapp.widget.MyButton android:clickable="true" android:focusable="true" '
                'android:minHeight="48.0dip" android:textSize="16.0sp" android:textColor="@color/text_primary" '
                'android:id="@id/musicSyncStop"',
                1,
            )
            text = text.replace(
                'android:layout_height="40.0dip" android:layout_weight="1.0" android:layout_marginRight="6.0dip" '
                'android:text="@string/beta_music_start"',
                'android:layout_height="48.0dip" android:layout_weight="1.0" android:layout_marginRight="6.0dip" '
                'android:text="@string/beta_music_start"',
                1,
            )
            text = text.replace(
                'android:layout_height="40.0dip" android:layout_weight="1.0" android:layout_marginLeft="6.0dip" '
                'android:text="@string/beta_music_stop"',
                'android:layout_height="48.0dip" android:layout_weight="1.0" android:layout_marginLeft="6.0dip" '
                'android:text="@string/beta_music_stop"',
                1,
            )
        return text
    if "musicMinStrength" in text:
        old = '                <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">\n                    <com.isaigu.gymapp.widget.MyButton android:textSize="16.0sp"'
        new = (
            '                <TextView android:textSize="14.0sp" android:textColor="@color/light_green_color" '
            'android:id="@id/musicSyncStatus" android:layout_width="fill_parent" '
            'android:layout_height="wrap_content" android:layout_marginTop="6.0dip" '
            'android:text="@string/beta_music_status_idle" />\n'
            '                <TextView android:textSize="22.0sp" android:textStyle="bold" '
            'android:textColor="@color/light_orange_exister" android:gravity="center" '
            'android:id="@id/musicSyncLevel" android:visibility="gone" '
            'android:layout_width="fill_parent" android:layout_height="wrap_content" '
            'android:layout_marginTop="4.0dip" android:text="0%" />\n'
            '                <LinearLayout android:gravity="center" android:orientation="horizontal" '
            'android:layout_width="fill_parent" android:layout_height="wrap_content" '
            'android:layout_marginTop="6.0dip">\n'
            '                    <com.isaigu.gymapp.widget.MyButton android:textSize="16.0sp"'
        )
        if old in text:
            return text.replace(old, new, 1)
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


def patch_train_view_holder_gear(text: str) -> str:
    hook = (
        "    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;"
        "->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V\n\n"
    )
    if "MusicSyncHelper;->setTargetItem" in text:
        print("TrainViewHolder$1: music target item hook already patched")
        return text
    marker = (
        "    .line 131\n"
        "    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:"
        "Lcom/isaigu/gymapp/train/TrainViewHolder;\n\n"
        "    invoke-static {v2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$000"
        "(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;\n"
    )
    replacement = (
        "    .line 131\n"
        "    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:"
        "Lcom/isaigu/gymapp/train/TrainViewHolder;\n\n"
        "    iget-object v2, v2, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:"
        "Lcom/isaigu/gymapp/train/model/TrainItem;\n\n"
        + hook
        + "    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$1;->this$0:"
        "Lcom/isaigu/gymapp/train/TrainViewHolder;\n\n"
        "    invoke-static {v2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$000"
        "(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;\n"
    )
    if marker not in text:
        raise RuntimeError("TrainViewHolder$1 gear dialog marker not found")
    print("TrainViewHolder$1: register live TrainItem for music sync")
    return text.replace(marker, replacement, 1)


def patch_edit_dialog(text: str) -> str:
    bind_invoke = (
        "    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;"
        "->bind(Landroid/view/View;Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V\n"
    )
    bind_line = bind_invoke + "\n"
    on_start_hook = (
        "\n    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;"
        "->getView()Landroid/view/View;\n\n"
        "    move-result-object v0\n\n"
        + bind_invoke
    )
    old_hook = (
        "\n    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;"
        "->bind(Landroid/view/View;)V\n"
    )
    apply_block = (
        "    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;"
        "->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)"
        "Lcom/isaigu/gymapp/bean/TrainProgram;\n\n"
        "    move-result-object v1\n\n"
        "    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;"
        "->apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V\n\n"
    )

    if on_start_hook in text:
        text = text.replace(on_start_hook, "\n", 1)
        print("EditUserProgramDataDialog.onStart: removed music sync re-bind hook")

    while text.count(apply_block) > 1:
        text = text.replace(apply_block, "", 1)
    if apply_block in text:
        print("EditUserProgramDataDialog.onCreateView: deduped ActivePauseStorage.apply")

    while bind_line in text:
        text = text.replace(bind_line, "", 1)

    return_marker = (
        "    return-object v0\n.end method\n\n.method public onStart()V"
    )
    if return_marker in text and "MusicSyncHelper;->bind" not in text:
        text = text.replace(return_marker, bind_line + return_marker, 1)
        print("EditUserProgramDataDialog.onCreateView: music sync bind before return")
    elif "MusicSyncHelper;->bind" not in text:
        marker = (
            "    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;"
            "->initListener()V\n"
        )
        if marker not in text:
            raise RuntimeError("EditUserProgramDataDialog.initListener marker not found")
        if old_hook in text:
            print("EditUserProgramDataDialog.onCreateView: upgraded music sync bind hook")
            text = text.replace(old_hook, "\n" + bind_invoke, 1)
        else:
            print("EditUserProgramDataDialog.onCreateView: music sync bind hook")
            text = text.replace(marker, marker + "\n" + bind_invoke, 1)

    return text


def merge_strings(path: Path, block: str, names: list[str]) -> None:
    if not path.exists():
        return
    text = path.read_text(encoding="utf-8")
    missing = [n for n in names if f'name="{n}"' not in text]
    if not missing:
        return
    additions = []
    for line in block.strip().splitlines():
        line = line.strip()
        if not line:
            continue
        for name in missing:
            if f'name="{name}"' in line:
                additions.append(f"    {line}")
                break
    if not additions:
        return
    path.write_text(text.replace("</resources>", "\n".join(additions) + "\n</resources>", 1), encoding="utf-8")
    print(f"added {len(additions)} beta strings to {path.name}")


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
    TRAIN_VIEW_HOLDER_GEAR.write_text(
        patch_train_view_holder_gear(TRAIN_VIEW_HOLDER_GEAR.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    names = list(STRING_IDS.keys()) + [
        "beta_music_sync_title",
        "beta_music_sync_hint",
        "beta_music_min_strength",
        "beta_music_max_strength",
        "beta_music_start",
        "beta_music_stop",
    ]
    merge_strings(VALUES_DEFAULT, EN_STRINGS, names)
    merge_strings(VALUES_BG, BG_STRINGS, names)
    print("BETA music sync patches applied (gear dialog only).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
