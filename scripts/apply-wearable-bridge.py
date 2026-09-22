#!/usr/bin/env python3
"""Notify wearable sync: config modal + floating HR dial (interval-timer style)."""

from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
BRANDING_SMALI = ROOT / "branding" / "smali" / "wearable"
WEARABLE_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/wearable"
NEW_TRAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
MANIFEST = DECOMPILED / "AndroidManifest.xml"
NOTIFY_PACKAGE = "com.mc.xiaomi1"
NOTIFY_QUERIES = f"""    <queries>
        <package android:name="{NOTIFY_PACKAGE}"/>
        <intent>
            <action android:name="com.mc.xiaomi.heartRateGot"/>
        </intent>
        <intent>
            <action android:name="com.mc.xiaomi.connected"/>
        </intent>
    </queries>
"""
NOTIFY_RECEIVER = """        <receiver android:exported="true" android:name="com.isaigu.gymapp.wearable.NotifyHrReceiver">
            <intent-filter>
                <action android:name="com.mc.xiaomi.heartRateGot"/>
                <action android:name="com.mc.xiaomi.connected"/>
                <action android:name="com.mc.xiaomi.disconnected"/>
                <action android:name="com.mc.xiaomi.batteryStatGot"/>
            </intent-filter>
        </receiver>
"""
PUBLIC_XML = RES / "values/public.xml"
IDS_XML = RES / "values/ids.xml"
VALUES_DEFAULT = RES / "values/strings.xml"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VALUES_BG_DECOMPILED = RES / "values-bg/strings.xml"

DIALOG_LAYOUT_NAME = "wearable_sync_dialog.xml"
OVERLAY_LAYOUT_NAME = "wearable_sync_overlay.xml"
DIALOG_LAYOUT_ID = 0x7F0B007E
OVERLAY_LAYOUT_ID = 0x7F0B007F

IDS = {
    "wearableSyncBtn": 0x7F090297,
    "wearableSyncOverlayRoot": 0x7F090298,
    "wearableSyncDialHost": 0x7F090299,
    "wearableSyncRing": 0x7F09029A,
    "wearableSyncHrValue": 0x7F09029B,
    "wearableSyncSubLabel": 0x7F09029C,
    "wearableSyncClose": 0x7F09029D,
    "wearableSyncOverlayInfo": 0x7F09029E,
    "wearableSyncStatus": 0x7F09029F,
    "wearableSyncEnabled": 0x7F0902A0,
    "wearableSyncAutoReduce": 0x7F0902A1,
    "wearableSyncThreshold": 0x7F0902A2,
    "wearableSyncStep": 0x7F0902A3,
    "wearableSyncActivate": 0x7F0902A4,
    "wearableSyncConnect": 0x7F0902A5,
    "wearableSyncInfoBtn": 0x7F0902A6,
    "wearableSyncOpenNotify": 0x7F0902A7,
}

STRING_IDS = {
    "wearable_sync_title": 0x7F0D0177,
    "wearable_sync_status_idle": 0x7F0D0178,
    "wearable_sync_status_armed": 0x7F0D0179,
    "wearable_sync_status_active": 0x7F0D017A,
    "wearable_sync_status_waiting": 0x7F0D017B,
    "wearable_sync_status_disconnected": 0x7F0D017C,
    "wearable_sync_bpm": 0x7F0D017D,
    "wearable_sync_enabled": 0x7F0D017E,
    "wearable_sync_auto_reduce": 0x7F0D017F,
    "wearable_sync_threshold": 0x7F0D0180,
    "wearable_sync_strength_step": 0x7F0D0181,
    "wearable_sync_connect": 0x7F0D0182,
    "wearable_sync_activate": 0x7F0D0183,
    "wearable_sync_info_title": 0x7F0D0184,
    "wearable_sync_info_body": 0x7F0D0185,
    "wearable_sync_toast_armed": 0x7F0D0186,
    "wearable_sync_notify_missing": 0x7F0D0187,
    "wearable_sync_status_listening": 0x7F0D0188,
    "wearable_sync_status_connected": 0x7F0D0189,
    "wearable_sync_open_notify": 0x7F0D018A,
}

DIALOG_LAYOUT = """<?xml version="1.0" encoding="utf-8"?>
<ScrollView android:background="@drawable/modal_dialog_panel" android:scrollbars="vertical" android:layout_width="480.0dip" android:layout_height="wrap_content"
  xmlns:android="http://schemas.android.com/apk/res/android">
<LinearLayout android:orientation="vertical" android:paddingLeft="18.0dip" android:paddingTop="16.0dip" android:paddingRight="18.0dip" android:paddingBottom="16.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content">
    <TextView android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/wearable_sync_title" />
    <TextView android:textSize="12.0sp" android:textColor="@color/light_green_color" android:gravity="center" android:id="@id/wearableSyncStatus" android:background="@color/bg_elevated" android:paddingLeft="12.0dip" android:paddingTop="5.0dip" android:paddingRight="12.0dip" android:paddingBottom="5.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_gravity="center_horizontal" android:layout_marginTop="8.0dip" android:text="@string/wearable_sync_status_idle" />
    <LinearLayout android:orientation="vertical" android:background="@color/bg_elevated" android:paddingLeft="16.0dip" android:paddingTop="14.0dip" android:paddingRight="16.0dip" android:paddingBottom="14.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="16.0dip">
        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">
            <TextView android:textSize="14.0sp" android:textColor="@color/text_primary" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" android:text="@string/wearable_sync_enabled" />
            <Switch android:id="@id/wearableSyncEnabled" android:layout_width="wrap_content" android:layout_height="wrap_content" android:checked="true" />
        </LinearLayout>
        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip">
            <TextView android:textSize="14.0sp" android:textColor="@color/text_primary" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" android:text="@string/wearable_sync_auto_reduce" />
            <Switch android:id="@id/wearableSyncAutoReduce" android:layout_width="wrap_content" android:layout_height="wrap_content" />
        </LinearLayout>
        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="14.0dip">
            <TextView android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/text_secondary" android:layout_width="wrap_content" android:layout_height="wrap_content" android:minWidth="120.0dip" android:textAllCaps="true" android:text="@string/wearable_sync_threshold" />
            <EditText android:textSize="16.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/wearableSyncThreshold" android:background="@drawable/modal_field_bg" android:layout_width="72.0dip" android:layout_height="40.0dip" android:layout_marginLeft="8.0dip" android:maxLength="3" android:inputType="number" android:text="170" />
            <TextView android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/text_secondary" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="16.0dip" android:textAllCaps="true" android:text="@string/wearable_sync_strength_step" />
            <EditText android:textSize="16.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/wearableSyncStep" android:background="@drawable/modal_field_bg" android:layout_width="56.0dip" android:layout_height="40.0dip" android:layout_marginLeft="8.0dip" android:maxLength="2" android:inputType="number" android:text="5" />
            <com.isaigu.gymapp.widget.MyButton android:textSize="14.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/wearableSyncInfoBtn" android:background="@drawable/interval_timer_sound_chip" android:layout_width="28.0dip" android:layout_height="28.0dip" android:layout_marginLeft="8.0dip" android:text="i" android:contentDescription="@string/wearable_sync_info_title" android:textAllCaps="false" />
        </LinearLayout>
    </LinearLayout>
    <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="12.0dip">
        <com.isaigu.gymapp.widget.MyButton android:textSize="13.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/wearableSyncConnect" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="42.0dip" android:layout_weight="1.0" android:layout_marginRight="6.0dip" android:text="@string/wearable_sync_connect" android:textAllCaps="false" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="13.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/wearableSyncOpenNotify" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="42.0dip" android:layout_weight="1.0" android:layout_marginLeft="6.0dip" android:text="@string/wearable_sync_open_notify" android:textAllCaps="false" />
    </LinearLayout>
    <com.isaigu.gymapp.widget.MyButton android:textSize="15.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/wearableSyncActivate" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="fill_parent" android:layout_height="52.0dip" android:layout_marginTop="12.0dip" android:text="@string/wearable_sync_activate" android:textAllCaps="false" />
</LinearLayout>
</ScrollView>
"""

OVERLAY_LAYOUT = """<?xml version="1.0" encoding="utf-8"?>
<FrameLayout android:id="@id/wearableSyncOverlayRoot" android:layout_width="287.0dip" android:layout_height="287.0dip"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <FrameLayout android:id="@id/wearableSyncDialHost" android:layout_width="192.0dip" android:layout_height="192.0dip" android:layout_gravity="center">
        <com.isaigu.gymapp.widget.TimerRingView android:id="@id/wearableSyncRing" android:layout_width="fill_parent" android:layout_height="fill_parent" />
        <LinearLayout android:gravity="center" android:layout_gravity="center" android:orientation="vertical" android:layout_width="wrap_content" android:layout_height="wrap_content">
            <TextView android:textSize="54.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/wearableSyncHrValue" android:layout_width="wrap_content" android:layout_height="wrap_content" android:includeFontPadding="false" android:letterSpacing="-0.03" android:text="--" />
            <TextView android:textSize="16.0sp" android:textColor="@color/text_secondary" android:gravity="center" android:id="@id/wearableSyncSubLabel" android:layout_width="wrap_content" android:layout_height="wrap_content" android:includeFontPadding="false" android:text="@string/wearable_sync_bpm" />
        </LinearLayout>
    </FrameLayout>
    <com.isaigu.gymapp.widget.MyButton android:textSize="22.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/wearableSyncClose" android:background="@drawable/round_circle_drawable_r20_red" android:layout_width="45.0dip" android:layout_height="45.0dip" android:text="&#215;" android:textAllCaps="false" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="22.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/wearableSyncConnect" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="45.0dip" android:layout_height="45.0dip" android:text="&#8635;" android:textAllCaps="false" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="16.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/wearableSyncOverlayInfo" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="45.0dip" android:layout_height="45.0dip" android:text="i" android:textAllCaps="false" />
</FrameLayout>
"""

WEARABLE_BUTTON_BLOCK = """        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.08" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="20.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/wearableSyncBtn" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="50.0dip" android:layout_height="50.0dip" android:text="&#9829;" android:textAllCaps="false" />
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.08" />
"""

FRAGMENT_LAYOUTS = [
    RES / "layout/new_train_fragment_layout.xml",
    RES / "layout-night/new_train_fragment_layout.xml",
]

WEARABLE_SYNC_HOOK = (
    "    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;"
    "->syncTrainingState()V\n"
)

WEARABLE_ATTACH_HOOK = """
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

"""

EN_STRINGS = """
    <string name="wearable_sync_title">Watch sync — heart rate</string>
    <string name="wearable_sync_status_idle">Configure and activate</string>
    <string name="wearable_sync_status_armed">Dial armed — tap Connect band</string>
    <string name="wearable_sync_status_active">Live sync during training</string>
    <string name="wearable_sync_status_waiting">Waiting for pulse…</string>
    <string name="wearable_sync_status_disconnected">Band disconnected</string>
    <string name="wearable_sync_bpm">bpm</string>
    <string name="wearable_sync_enabled">Sync with Notify for Xiaomi</string>
    <string name="wearable_sync_auto_reduce">Auto-reduce strength above threshold</string>
    <string name="wearable_sync_threshold">HR limit</string>
    <string name="wearable_sync_strength_step">Step</string>
    <string name="wearable_sync_connect">Connect band</string>
    <string name="wearable_sync_activate">Activate dial</string>
    <string name="wearable_sync_info_title">Watch sync — help</string>
    <string name="wearable_sync_info_body">XEMS talks to Notify via the official Tasker API — no remote access needed.\\n\\nSETUP IN NOTIFY (one time):\\n1. Open Notify → menu ☰ → Smart assistant → Tasker integration → ON\\n2. Menu ☰ → Features → Heart monitor:\\n   • Heart monitor ON\\n   • Mode = „Notify app mode“ (NOT Band only)\\n   • Shortest interval (1 min or Continuous)\\n3. Main screen must show live heart rate when band is worn\\n4. Close Mi Fitness; disable battery saver for Notify + XEMS\\n\\nIN XEMS: ♥ → Open Notify (check settings) → Activate dial → Connect band.\\nWear the band; first BPM may take 30–60 s.\\n\\n„Waiting for pulse“ = Notify is connected but not sending HR yet — fix Heart monitor mode in Notify.</string>
    <string name="wearable_sync_toast_armed">Watch dial armed</string>
    <string name="wearable_sync_notify_missing">Notify for Xiaomi not detected — check it is installed (Huawei: allow app visibility)</string>
    <string name="wearable_sync_status_listening">Connecting to Notify…</string>
    <string name="wearable_sync_status_connected">Band connected — waiting for pulse</string>
    <string name="wearable_sync_open_notify">Open Notify</string>
"""

BG_STRINGS = """
    <string name="wearable_sync_title">Синхрон с гривна — пулс</string>
    <string name="wearable_sync_status_idle">Настрой и активирай</string>
    <string name="wearable_sync_status_armed">Циферблатът е готов — натисни Свържи гривната</string>
    <string name="wearable_sync_status_active">Live синхрон по време на EMS</string>
    <string name="wearable_sync_status_waiting">Изчакване на пулс…</string>
    <string name="wearable_sync_status_disconnected">Гривната е изключена</string>
    <string name="wearable_sync_bpm">уд/мин</string>
    <string name="wearable_sync_enabled">Синхрон с Notify for Xiaomi</string>
    <string name="wearable_sync_auto_reduce">Авто-намаляване на сила над прага</string>
    <string name="wearable_sync_threshold">Праг пулс</string>
    <string name="wearable_sync_strength_step">Стъпка</string>
    <string name="wearable_sync_connect">Свържи гривната</string>
    <string name="wearable_sync_activate">Активирай циферблат</string>
    <string name="wearable_sync_info_title">Синхрон с гривна — помощ</string>
    <string name="wearable_sync_info_body">Notify показва пулс вътрешно, но XEMS го получава само при „Notify app mode“ + Tasker integration.\\n\\nВ NOTIFY (задължително):\\n1. ☰ → Smart assistant → Tasker integration → ВКЛ\\n2. Екран Пулс → ⚙ (горе вдясно) или ☰ → Smart assistant → Heart monitor:\\n   • Режим = „Notify app mode“ (НЕ „Band only“ / само гривна)\\n3. Пулс → Следене на пулс ВКЛ, Непрекъснат е ОК\\n4. На главния екран виждаш live пулс\\n\\nВ XEMS: ♥ → Свържи → изчакай 30–60 сек.\\n\\n„Свързана, изчакване на пулс“ = connected работи, heartRateGot не — липсва Notify app mode.</string>
    <string name="wearable_sync_toast_armed">Циферблатът е активиран</string>
    <string name="wearable_sync_notify_missing">Notify for Xiaomi не е открит — провери инсталацията (Huawei: видимост на приложения)</string>
    <string name="wearable_sync_status_listening">Свързване с Notify…</string>
    <string name="wearable_sync_status_connected">Гривната е свързана — изчакване на пулс</string>
    <string name="wearable_sync_open_notify">Отвори Notify</string>
"""

START_WEARABLE_OLD = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingState()V

    .line 95
    return-void"""

START_WEARABLE_NEW = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingState()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->syncTrainingState()V

    .line 95
    return-void"""


def patch_manifest(text: str) -> str:
    if NOTIFY_PACKAGE not in text:
        marker = "    <application "
        if marker not in text:
            raise RuntimeError("AndroidManifest: <application> tag missing")
        text = text.replace(marker, NOTIFY_QUERIES + "\n" + marker, 1)
        print("AndroidManifest: added <queries> for Notify for Xiaomi")
    else:
        print("AndroidManifest: Notify package query already present")
    if "com.isaigu.gymapp.wearable.NotifyHrReceiver" not in text:
        marker = "    </application>"
        if marker not in text:
            raise RuntimeError("AndroidManifest: </application> missing")
        text = text.replace(marker, NOTIFY_RECEIVER + marker, 1)
        print("AndroidManifest: registered NotifyHrReceiver")
    else:
        print("AndroidManifest: NotifyHrReceiver already present")
    return text


def install_smali() -> None:
    if not BRANDING_SMALI.exists():
        raise RuntimeError(f"Missing wearable smali: {BRANDING_SMALI}")
    WEARABLE_DIR.mkdir(parents=True, exist_ok=True)
    for src in sorted(BRANDING_SMALI.glob("*.smali")):
        shutil.copy2(src, WEARABLE_DIR / src.name)
        print(f"Installed {src.name}")


def patch_public_xml(text: str) -> str:
    for name, id_val in IDS.items():
        if name not in text:
            text = text.replace(
                "</resources>",
                f'    <public type="id" name="{name}" id="{id_val:#x}" />\n</resources>',
                1,
            )
    for layout_name, layout_id in (
        (DIALOG_LAYOUT_NAME.replace(".xml", ""), DIALOG_LAYOUT_ID),
        (OVERLAY_LAYOUT_NAME.replace(".xml", ""), OVERLAY_LAYOUT_ID),
    ):
        if layout_name not in text:
            text = text.replace(
                "</resources>",
                f'    <public type="layout" name="{layout_name}" id="{layout_id:#x}" />\n</resources>',
                1,
            )
    for name, id_val in STRING_IDS.items():
        if name not in text:
            text = text.replace(
                "</resources>",
                f'    <public type="string" name="{name}" id="{id_val:#x}" />\n</resources>',
                1,
            )
    return text


def patch_ids_xml(text: str) -> str:
    missing = [name for name in IDS if name not in text]
    if not missing:
        return text
    entries = "\n".join(f'    <item type="id" name="{name}" />' for name in missing)
    return text.replace("</resources>", entries + "\n</resources>", 1)


def patch_strings(path: Path, block: str, label: str) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if "wearable_sync_title" in text:
        print(f"{path.name}: wearable strings already present")
        return
    text = text.replace("</resources>", block + "\n</resources>", 1)
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: added {label} wearable strings")


def write_layouts() -> None:
    layout_dir = RES / "layout"
    layout_dir.mkdir(parents=True, exist_ok=True)
    (layout_dir / DIALOG_LAYOUT_NAME).write_text(DIALOG_LAYOUT, encoding="utf-8")
    (layout_dir / OVERLAY_LAYOUT_NAME).write_text(OVERLAY_LAYOUT, encoding="utf-8")
    print(f"created layout/{DIALOG_LAYOUT_NAME}, {OVERLAY_LAYOUT_NAME}")


def patch_fragment_layout(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if "wearableSyncBtn" in text:
        print(f"{path.name}: wearable button already present")
        return
    marker = '<com.isaigu.gymapp.widget.MyButton android:id="@id/allAdd"'
    if marker not in text:
        raise RuntimeError(f"{path.name}: allAdd anchor missing for wearable button")
    text = text.replace(marker, WEARABLE_BUTTON_BLOCK + "\n        " + marker, 1)
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: added wearable sync button")


def patch_new_train_fragment(text: str) -> str:
    if "NotifyWearableBridge;->syncTrainingState" not in text:
        text = text.replace(
            "    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V\n\n    return-void",
            "    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V\n\n"
            + WEARABLE_SYNC_HOOK
            + "\n    return-void",
            1,
        )
        print("NewTrainFragment: wearable sync on allStartPause")
    if "NotifyWearableBridge;->onTrainingFullStop" not in text:
        text = text.replace(
            "    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onTrainingFullStop()V\n\n    .line 100",
            "    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onTrainingFullStop()V\n\n"
            "    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onTrainingFullStop()V\n\n"
            "    .line 100",
            1,
        )
        print("NewTrainFragment: wearable stop on allStop")
    if "NotifyWearableBridge;->attachMasterPanel" not in text:
        marker = (
            "invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;"
            "->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V\n"
        )
        if marker in text:
            print("NewTrainFragment: wearable attach already applied")
        else:
            interval_marker = (
                "invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;"
                "->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V\n"
            )
            if interval_marker not in text:
                raise RuntimeError("NewTrainFragment: IntervalTimerHelper attach hook missing")
            text = text.replace(interval_marker, interval_marker + WEARABLE_ATTACH_HOOK, 1)
            print("NewTrainFragment: wearable attach on onCreateView")
    return text


def patch_train_item(text: str) -> str:
    if START_WEARABLE_OLD in text:
        text = text.replace(START_WEARABLE_OLD, START_WEARABLE_NEW, 1)
        print("TrainItem.start: wearable sync hook added")
    music_hook = (
        "    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;"
        "->syncTrainingState()V\n"
    )
    music_wearable = music_hook + WEARABLE_SYNC_HOOK
    if music_hook in text and WEARABLE_SYNC_HOOK.strip() not in text:
        text = text.replace(music_hook, music_wearable, text.count(music_hook))
        print("TrainItem: wearable sync after music hook")
    if "NotifyWearableBridge;->syncTrainingState" not in text:
        raise RuntimeError("TrainItem: could not attach wearable sync hooks")
    return text


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    write_layouts()
    PUBLIC_XML.write_text(
        patch_public_xml(PUBLIC_XML.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    IDS_XML.write_text(
        patch_ids_xml(IDS_XML.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    patch_strings(VALUES_DEFAULT, EN_STRINGS, "EN")
    patch_strings(VALUES_BG, BG_STRINGS, "BG source")
    patch_strings(VALUES_BG_DECOMPILED, BG_STRINGS, "BG")
    for layout in FRAGMENT_LAYOUTS:
        patch_fragment_layout(layout)
    if MANIFEST.is_file():
        MANIFEST.write_text(
            patch_manifest(MANIFEST.read_text(encoding="utf-8")),
            encoding="utf-8",
        )
    install_smali()
    NEW_TRAIN_FRAGMENT.write_text(
        patch_new_train_fragment(NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    TRAIN_ITEM.write_text(
        patch_train_item(TRAIN_ITEM.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    print("Wearable sync UI patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
