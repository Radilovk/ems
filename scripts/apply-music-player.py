#!/usr/bin/env python3
"""BETA in-app music player: button on master rightLayout + modal player dialog."""

from __future__ import annotations

import re
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
NEW_TRAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
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
    "beta_music_player_no_user": 0x7f0d011a,
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

MASTER_BUTTON_BLOCK = """        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.15" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="22.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/musicPlayerBtn" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="50.0dip" android:layout_height="50.0dip" android:text="&#9835;" android:textAllCaps="false" />
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.15" />
"""

FRAGMENT_LAYOUTS = [
    RES / "layout/new_train_fragment_layout.xml",
    RES / "layout-night/new_train_fragment_layout.xml",
]

ROW_LAYOUTS = [
    RES / "layout/new_user_train_control_item_layout.xml",
    RES / "layout-night/new_user_train_control_item_layout.xml",
]

ROW_BUTTON_RE = re.compile(
    r"\s*<com\.isaigu\.gymapp\.widget\.MyButton[^>]*@id/musicPlayerBtn[^>]*/>\s*\n?",
    re.MULTILINE,
)

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
    <string name="beta_music_player_hint">Set circle slider ceiling on a user row, pick a track, then Play.</string>
    <string name="beta_music_player_no_user">Add a connected user first</string>
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
    <string name="beta_music_player_hint">Задай таван с кръговия слайдер, избери песен и натисни Пусни.</string>
    <string name="beta_music_player_no_user">Първо добави свързан потребител</string>
"""

FRAGMENT_HOOK = """
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

"""

FRAGMENT_HOOK_OLD = """
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/train/TrainItemManager;)V

"""

FRAGMENT_MARKER = """    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei1:Landroid/widget/LinearLayout;"""

TRAIN_VH_HOOK_RE = re.compile(
    r"\n\s*iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:.*?"
    r"invoke-static \{v0, v1\}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachButton.*?\n",
    re.MULTILINE,
)


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
    if "beta_music_player_no_user" not in text:
        text = text.replace(
            "</resources>",
            '    <public type="string" name="beta_music_player_no_user" id="0x7f0d011a" />\n</resources>',
            1,
        )
    return text


def patch_ids_xml(text: str) -> str:
    if "musicPlayerBtn" in text:
        return text
    entries = "\n".join(f'    <item type="id" name="{name}" />' for name in IDS)
    return text.replace("</resources>", entries + "\n</resources>", 1)


def patch_fragment_layout(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if "musicPlayerBtn" in text:
        print(f"{path.name}: master music button already present")
        return
    marker = (
        '<View android:layout_width="fill_parent" android:layout_height="0.0dip" '
        'android:layout_weight="1.0" />\n'
        '        <com.isaigu.gymapp.widget.MyButton android:id="@id/allAdd"'
    )
    if marker not in text:
        raise RuntimeError(f"{path}: allAdd marker not found for master music button")
    text = text.replace(marker, MASTER_BUTTON_BLOCK + "        " + marker.split("\n        ", 1)[1], 1)
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: added master-panel music button")


def remove_row_button(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if "musicPlayerBtn" not in text:
        return
    text = ROW_BUTTON_RE.sub("", text)
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: removed per-row music button")


def patch_new_train_fragment(text: str) -> str:
    if FRAGMENT_HOOK_OLD in text:
        text = text.replace(FRAGMENT_HOOK_OLD, FRAGMENT_HOOK, 1)
        print("NewTrainFragment.onCreateView: upgraded master music hook (activity resolve on click)")
        return text
    if "MusicPlayerHelper;->attachMasterPanel" in text:
        if "BaseActivity;Lcom/isaigu/gymapp/train/TrainItemManager;)V" in text:
            print("NewTrainFragment.onCreateView: master music hook needs manual upgrade")
        else:
            print("NewTrainFragment.onCreateView: master music hook already applied")
        return text
    if FRAGMENT_MARKER not in text:
        raise RuntimeError("NewTrainFragment.onCreateView marker not found")
    replacement = (
        "    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener"
        "(Landroid/view/View$OnClickListener;)V\n\n"
        + FRAGMENT_HOOK
        + "    .line 104\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:"
        "Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;"
        "->buwei1:Landroid/widget/LinearLayout;"
    )
    print("NewTrainFragment.onCreateView: master-panel music button hook")
    return text.replace(FRAGMENT_MARKER, replacement, 1)


def patch_train_view_holder(text: str) -> str:
    if "MusicPlayerHelper;->attachButton" in text:
        text = TRAIN_VH_HOOK_RE.sub("\n", text)
        print("TrainViewHolder.bindListener: removed per-row music hook")
    return text


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
    for layout in FRAGMENT_LAYOUTS:
        patch_fragment_layout(layout)
    for layout in ROW_LAYOUTS:
        remove_row_button(layout)
    NEW_TRAIN_FRAGMENT.write_text(
        patch_new_train_fragment(NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    TRAIN_VH.write_text(patch_train_view_holder(TRAIN_VH.read_text(encoding="utf-8")), encoding="utf-8")
    BASE_ACTIVITY.write_text(
        patch_base_activity(BASE_ACTIVITY.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    names = list(STRING_IDS.keys())
    merge_strings(VALUES_DEFAULT, EN_STRINGS, names)
    merge_strings(VALUES_BG, BG_STRINGS, names)
    merge_strings(VALUES_BG_DECOMPILED, BG_STRINGS, names)
    install_smali()
    print("BETA music player patches applied (master rightLayout).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
