#!/usr/bin/env python3
"""BETA in-app music player: button on train row + modal player dialog."""

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
TRAIN_VH = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainViewHolder.smali"
BASE_ACTIVITY = DECOMPILED / "smali_classes2/com/isaigu/gymapp/BaseActivity.smali"
PUBLIC_XML = RES / "values/public.xml"
IDS_XML = RES / "values/ids.xml"
VALUES_DEFAULT = RES / "values/strings.xml"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VALUES_BG_DECOMPILED = RES / "values-bg/strings.xml"

LAYOUT_NAME = "music_player_dialog.xml"
LAYOUT_ID = 0x7f0b0078

IDS = {
    "musicPlayerBtn": 0x7f090226,
    "musicPlayerTrack": 0x7f090227,
    "musicPlayerSensitivity": 0x7f090228,
    "musicPlayerStatus": 0x7f090229,
    "musicPlayerLevel": 0x7f09022a,
    "musicPlayerPick": 0x7f09022b,
    "musicPlayerPlay": 0x7f09022c,
    "musicPlayerStop": 0x7f09022d,
}

STRING_IDS = {
    "beta_music_player_title": 0x7f0d010f,
    "beta_music_player_status_idle": 0x7f0d0110,
    "beta_music_player_status_active": 0x7f0d0111,
    "beta_music_player_no_file": 0x7f0d0112,
    "beta_music_player_error": 0x7f0d0113,
    "beta_music_player_pick": 0x7f0d0114,
    "beta_music_player_play": 0x7f0d0115,
    "beta_music_player_stop": 0x7f0d0116,
    "beta_music_player_sensitivity": 0x7f0d0118,
    "beta_music_player_hint": 0x7f0d0119,
}

PLAYER_LAYOUT = """<?xml version="1.0" encoding="utf-8"?>
<ScrollView android:layout_width="fill_parent" android:layout_height="fill_parent"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <LinearLayout android:orientation="vertical" android:padding="20.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content">
        <TextView android:textSize="22.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/beta_music_player_title" />
        <TextView android:textSize="12.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip" android:text="@string/beta_music_player_hint" />
        <TextView android:textSize="14.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:id="@id/musicPlayerTrack" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="12.0dip" android:maxLines="2" android:text="@string/beta_music_player_no_file" />
        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip">
            <TextView android:textSize="16.0sp" android:textColor="@color/text_primary" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/beta_music_player_sensitivity" />
            <com.isaigu.gymapp.widget.AmountView android:id="@id/musicPlayerSensitivity" android:layout_width="wrap_content" android:layout_height="wrap_content" />
        </LinearLayout>
        <TextView android:textSize="14.0sp" android:textColor="@color/light_green_color" android:id="@id/musicPlayerStatus" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip" android:text="@string/beta_music_player_status_idle" />
        <TextView android:textSize="22.0sp" android:textStyle="bold" android:textColor="@color/light_orange_exister" android:gravity="center" android:id="@id/musicPlayerLevel" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip" android:text="0%" />
        <com.isaigu.gymapp.widget.MyButton android:clickable="true" android:focusable="true" android:minHeight="48.0dip" android:textSize="16.0sp" android:textColor="@color/text_primary" android:id="@id/musicPlayerPick" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="fill_parent" android:layout_height="48.0dip" android:layout_marginTop="12.0dip" android:text="@string/beta_music_player_pick" android:textAllCaps="false" />
        <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="8.0dip">
            <com.isaigu.gymapp.widget.MyButton android:clickable="true" android:focusable="true" android:minHeight="48.0dip" android:textSize="16.0sp" android:textColor="@color/text_primary" android:id="@id/musicPlayerPlay" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="48.0dip" android:layout_weight="1.0" android:layout_marginRight="6.0dip" android:text="@string/beta_music_player_play" android:textAllCaps="false" />
            <com.isaigu.gymapp.widget.MyButton android:clickable="true" android:focusable="true" android:minHeight="48.0dip" android:textSize="16.0sp" android:textColor="@color/text_primary" android:id="@id/musicPlayerStop" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="48.0dip" android:layout_weight="1.0" android:layout_marginLeft="6.0dip" android:text="@string/beta_music_player_stop" android:textAllCaps="false" />
        </LinearLayout>
    </LinearLayout>
</ScrollView>
"""

TRAIN_BUTTON = """
            <com.isaigu.gymapp.widget.MyButton android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/musicPlayerBtn" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="40.0dip" android:layout_height="40.0dip" android:layout_marginBottom="12.0dip" android:text="&#9835;" android:textAllCaps="false" />"""

TRAIN_LAYOUTS = [
    RES / "layout/new_user_train_control_item_layout.xml",
    RES / "layout-night/new_user_train_control_item_layout.xml",
]

EN_STRINGS = """
    <string name="beta_music_player_title">BETA — Music player</string>
    <string name="beta_music_player_status_idle">Status: stopped</string>
    <string name="beta_music_player_status_active">Status: playing — synced pulse</string>
    <string name="beta_music_player_no_file">No track selected</string>
    <string name="beta_music_player_error">Could not play this file</string>
    <string name="beta_music_player_pick">Choose audio file</string>
    <string name="beta_music_player_play">Play</string>
    <string name="beta_music_player_stop">Stop</string>
    <string name="beta_music_player_sensitivity">Sensitivity (%)</string>
    <string name="beta_music_player_hint">Set circle slider ceiling first, pick a track, then Play. PCM sync — no mic lag.</string>
"""

BG_STRINGS = """
    <string name="beta_music_player_title">БЕТА — Музикален плейър</string>
    <string name="beta_music_player_status_idle">Статус: спряно</string>
    <string name="beta_music_player_status_active">Статус: възпроизвеждане — синхронизиран импулс</string>
    <string name="beta_music_player_no_file">Няма избран файл</string>
    <string name="beta_music_player_error">Файлът не може да се пусне</string>
    <string name="beta_music_player_pick">Избери аудио файл</string>
    <string name="beta_music_player_play">Пусни</string>
    <string name="beta_music_player_stop">Стоп</string>
    <string name="beta_music_player_sensitivity">Чувствителност (%)</string>
    <string name="beta_music_player_hint">Задай таван с кръговия слайдер, избери песен и натисни Пусни. PCM синхрон — без закъснение от микрофона.</string>
"""

BIND_LISTENER_HOOK = """
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachButton(Landroid/view/View;Lcom/isaigu/gymapp/train/model/TrainItem;)V

"""

BIND_LISTENER_MARKER = """    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;"""


def install_smali() -> None:
    DIALOG_DIR.mkdir(parents=True, exist_ok=True)
    UTILS_DIR.mkdir(parents=True, exist_ok=True)
    for src in sorted((BRANDING / "smali").glob("MusicPlayerHelper*.smali")):
        shutil.copy2(src, DIALOG_DIR / src.name)
        print(f"installed dialog/{src.name}")
    for src in sorted((BRANDING / "smali").glob("MusicPlayerEngine*.smali")):
        shutil.copy2(src, UTILS_DIR / src.name)
        print(f"installed train/utils/{src.name}")
    for name in ("MusicSync.smali", "MasterStrengthControl.smali"):
        src = BRANDING / f"smali/{name}"
        if src.is_file():
            shutil.copy2(src, UTILS_DIR / name)
            print(f"installed train/utils/{name}")


def patch_public_xml(text: str) -> str:
    if "musicPlayerBtn" not in text:
        entries = "\n".join(
            f'    <public type="id" name="{name}" id="{id:#x}" />' for name, id in IDS.items()
        )
        text = text.replace("</resources>", entries + "\n</resources>", 1)
    if "music_player_dialog" not in text:
        text = text.replace(
            "</resources>",
            f'    <public type="layout" name="music_player_dialog" id="{LAYOUT_ID:#x}" />\n</resources>',
            1,
        )
    if "beta_music_player_title" not in text:
        entries = "\n".join(
            f'    <public type="string" name="{name}" id="{id:#x}" />'
            for name, id in STRING_IDS.items()
        )
        text = text.replace("</resources>", entries + "\n</resources>", 1)
    return text


def patch_ids_xml(text: str) -> str:
    if "musicPlayerBtn" in text:
        return text
    entries = "\n".join(f'    <item type="id" name="{name}" />' for name in IDS)
    return text.replace("</resources>", entries + "\n</resources>", 1)


def patch_train_layout(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if "musicPlayerBtn" in text:
        print(f"{path.name}: music player button already present")
        return
    marker = (
        '<com.isaigu.gymapp.widget.MyButton android:id="@id/save" '
        'android:background="@mipmap/save"'
    )
    if marker not in text:
        raise RuntimeError(f"{path}: save button marker not found")
    text = text.replace(marker, TRAIN_BUTTON.strip() + "\n            " + marker, 1)
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: added music player button")


def patch_base_activity(text: str) -> str:
    hook = (
        ".method protected onActivityResult(IILandroid/content/Intent;)V\n"
        "    .locals 0\n"
        "    .param p1, \"requestCode\"    # I\n"
        "    .param p2, \"resultCode\"    # I\n"
        "    .param p3, \"data\"    # Landroid/content/Intent;\n\n"
        "    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;"
        "->onActivityResult(IILandroid/content/Intent;)V\n\n"
        "    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;"
        "->onActivityResult(IILandroid/content/Intent;)V\n\n"
        "    return-void\n"
        ".end method\n\n"
    )
    if "MusicPlayerHelper;->onActivityResult" in text:
        print("BaseActivity.onActivityResult: music player hook already applied")
        return text
    marker = ".method protected onCreate(Landroid/os/Bundle;)V\n"
    if marker not in text:
        raise RuntimeError("BaseActivity.onCreate marker not found")
    print("BaseActivity.onActivityResult: forward file-picker result to MusicPlayerHelper")
    return text.replace(marker, hook + marker, 1)


def patch_train_view_holder(text: str) -> str:
    if "MusicPlayerHelper;->attachButton" in text:
        print("TrainViewHolder.bindListener: music player hook already applied")
        return text
    if BIND_LISTENER_MARKER not in text:
        raise RuntimeError("TrainViewHolder.bindListener marker not found")
    replacement = (
        "    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener"
        "(Landroid/view/View$OnClickListener;)V\n\n"
        + BIND_LISTENER_HOOK
        + "    .line 143\n"
        "    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:"
        "Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;"
        "->ma:Landroid/widget/TextView;"
    )
    print("TrainViewHolder.bindListener: music player button hook")
    return text.replace(BIND_LISTENER_MARKER, replacement, 1)


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
    if additions:
        path.write_text(
            text.replace("</resources>", "\n".join(additions) + "\n</resources>", 1),
            encoding="utf-8",
        )
        print(f"added {len(additions)} player strings to {path.name}")


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    layout_path = RES / "layout" / LAYOUT_NAME
    if not layout_path.exists():
        layout_path.write_text(PLAYER_LAYOUT, encoding="utf-8")
        print(f"created layout/{LAYOUT_NAME}")

    PUBLIC_XML.write_text(patch_public_xml(PUBLIC_XML.read_text(encoding="utf-8")), encoding="utf-8")
    IDS_XML.write_text(patch_ids_xml(IDS_XML.read_text(encoding="utf-8")), encoding="utf-8")
    for layout in TRAIN_LAYOUTS:
        patch_train_layout(layout)
    TRAIN_VH.write_text(
        patch_train_view_holder(TRAIN_VH.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    BASE_ACTIVITY.write_text(
        patch_base_activity(BASE_ACTIVITY.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    names = list(STRING_IDS.keys())
    merge_strings(VALUES_DEFAULT, EN_STRINGS, names)
    merge_strings(VALUES_BG, BG_STRINGS, names)
    merge_strings(VALUES_BG_DECOMPILED, BG_STRINGS, names)
    install_smali()
    print("BETA music player patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
