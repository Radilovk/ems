#!/usr/bin/env python3
"""Interval timer: master button, config dialog, draggable overlay, training sync hooks."""

from __future__ import annotations

import re
import shutil
import sys
from pathlib import Path

try:
    import yaml
except ImportError:
    yaml = None  # type: ignore[assignment]

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
BRANDING = ROOT / "branding"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
BASE_ACTIVITY = DECOMPILED / "smali_classes2/com/isaigu/gymapp/BaseActivity.smali"
NEW_TRAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
PUBLIC_XML = RES / "values/public.xml"
IDS_XML = RES / "values/ids.xml"
VALUES_DEFAULT = RES / "values/strings.xml"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VALUES_BG_DECOMPILED = RES / "values-bg/strings.xml"

DIALOG_LAYOUT_NAME = "interval_timer_dialog.xml"
OVERLAY_LAYOUT_NAME = "interval_timer_overlay.xml"
DIALOG_LAYOUT_ID = 0x7F0B0079
OVERLAY_LAYOUT_ID = 0x7F0B007A
SPINNER_ITEM_LAYOUT_NAME = "modal_spinner_item.xml"
SPINNER_ITEM_LAYOUT_ID = 0x7F0B007B

IDS = {
    "intervalTimerBtn": 0x7F090230,
    "intervalTimerMinutes": 0x7F090231,
    "intervalTimerSeconds": 0x7F090232,
    "intervalTimerLoops": 0x7F090233,
    "intervalTimerLoopsMinus": 0x7F090234,
    "intervalTimerLoopsPlus": 0x7F090235,
    "intervalTimerActivate": 0x7F090236,
    "intervalTimerStatus": 0x7F090237,
    "intervalTimerOverlayRoot": 0x7F090238,
    "intervalTimerCountdown": 0x7F090239,
    "intervalTimerLoopLabel": 0x7F09023A,
    "intervalTimerSoundFile": 0x7F09023B,
    "intervalTimerSoundPreview": 0x7F09023C,
    "intervalTimerSoundPick": 0x7F09023D,
    "intervalTimerSoundSpinner": 0x7F09023E,
    "intervalTimerRing": 0x7F090243,
    "intervalTimerSoundClear": 0x7F090244,
    "intervalTimerSoundFileRow": 0x7F090245,
    "intervalTimerBlockMode": 0x7F090260,
    "intervalTimerBlockRepeat": 0x7F090261,
    "intervalTimerBlockEdit": 0x7F090262,
    "intervalTimerBlockSummary": 0x7F090263,
    "intervalTimerSimplePanel": 0x7F090264,
    "intervalTimerBlockPanel": 0x7F090265,
    "intervalTimerBlockDuration": 0x7F090266,
    "intervalTimerPresetSpinner": 0x7F090267,
    "intervalTimerPresetSave": 0x7F090268,
    "intervalTimerPresetEdit": 0x7F090269,
    "intervalTimerPresetDelete": 0x7F09026A,
    "intervalTimerDurationSlider": 0x7F09026B,
    "intervalTimerDurationValue": 0x7F09026C,
    "intervalTimerLoopsSlider": 0x7F09026D,
    "intervalTimerLoopsValue": 0x7F09026E,
    "intervalTimerTabInterval": 0x7F090270,
    "intervalTimerTabBlock": 0x7F090271,
    "intervalTimerAdvancedPanel": 0x7F090272,
    "intervalTimerAdvancedToggle": 0x7F090273,
    "intervalTimerDurationLabel": 0x7F090275,
    "intervalTimerDurationRow": 0x7F090276,
    "intervalTimerReset": 0x7F090278,
    "intervalTimerConfigScroll": 0x7F090274,
}

STRING_IDS = {
    "interval_timer_status_idle": 0x7F0D0120,
    "interval_timer_status_armed": 0x7F0D0121,
    "interval_timer_status_running": 0x7F0D0122,
    "interval_timer_title": 0x7F0D0123,
    "interval_timer_minutes": 0x7F0D0124,
    "interval_timer_seconds": 0x7F0D0125,
    "interval_timer_loops": 0x7F0D0126,
    "interval_timer_invalid_duration": 0x7F0D0127,
    "interval_timer_error": 0x7F0D0128,
    "interval_timer_loops_hint": 0x7F0D0129,
    "interval_timer_activate": 0x7F0D012A,
    "interval_timer_sound_label": 0x7F0D012B,
    "interval_timer_sound_off": 0x7F0D012C,
    "interval_timer_sound_beep": 0x7F0D012D,
    "interval_timer_sound_chime": 0x7F0D012E,
    "interval_timer_sound_bell": 0x7F0D012F,
    "interval_timer_sound_custom": 0x7F0D0130,
    "interval_timer_sound_preview": 0x7F0D0131,
    "interval_timer_sound_upload": 0x7F0D0132,
    "interval_timer_sound_no_file": 0x7F0D0133,
    "segment_program_title": 0x7F0D0140,
    "segment_program_hint": 0x7F0D0141,
    "segment_program_edit": 0x7F0D0142,
    "segment_program_summary": 0x7F0D0143,
    "segment_program_block": 0x7F0D0144,
    "segment_program_cycles": 0x7F0D0145,
    "segment_program_ma": 0x7F0D0146,
    "segment_program_hz": 0x7F0D0147,
    "segment_program_width": 0x7F0D0148,
    "segment_program_add": 0x7F0D014B,
    "segment_program_remove": 0x7F0D014C,
    "segment_program_done": 0x7F0D014D,
    "block_program_duration": 0x7F0D014E,
    "block_program_train_time": 0x7F0D014F,
    "block_program_empty": 0x7F0D0150,
    "block_program_repeat": 0x7F0D0151,
    "interval_timer_sound_pip": 0x7F0D0152,
    "interval_timer_sound_confirm": 0x7F0D0153,
    "interval_timer_sound_alarm": 0x7F0D0154,
    "interval_timer_sound_device": 0x7F0D0155,
    "interval_timer_sound_pick_device": 0x7F0D0156,
    "timer_preset_pick": 0x7F0D0157,
    "timer_preset_save": 0x7F0D0158,
    "timer_preset_rename": 0x7F0D0159,
    "timer_preset_delete": 0x7F0D015A,
    "timer_preset_name_title": 0x7F0D015B,
    "timer_preset_name_hint": 0x7F0D015C,
    "timer_preset_saved": 0x7F0D015D,
    "timer_preset_deleted": 0x7F0D015E,
    "timer_preset_delete_confirm": 0x7F0D015F,
    "timer_preset_empty_name": 0x7F0D0160,
    "interval_timer_tab_interval": 0x7F0D0161,
    "interval_timer_tab_block": 0x7F0D0162,
    "interval_timer_duration": 0x7F0D0163,
    "interval_timer_duration_train": 0x7F0D0164,
    "interval_timer_repeats": 0x7F0D0165,
    "interval_timer_repeats_unlimited": 0x7F0D0166,
    "interval_timer_advanced": 0x7F0D0167,
    "interval_timer_loops_hint": 0x7F0D0168,
    "interval_timer_reset": 0x7F0D0169,
}

DIALOG_LAYOUT = """<?xml version="1.0" encoding="utf-8"?>
<ScrollView android:id="@id/intervalTimerConfigScroll" android:background="@drawable/modal_dialog_panel" android:scrollbars="vertical" android:layout_width="480.0dip" android:layout_height="wrap_content"
  xmlns:android="http://schemas.android.com/apk/res/android">
<LinearLayout android:orientation="vertical" android:paddingLeft="18.0dip" android:paddingTop="16.0dip" android:paddingRight="18.0dip" android:paddingBottom="16.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content">
    <TextView android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:layout_width="fill_parent" android:layout_height="wrap_content" android:letterSpacing="0.01" android:text="@string/interval_timer_title" />
    <TextView android:textSize="12.0sp" android:textColor="@color/light_green_color" android:gravity="center" android:id="@id/intervalTimerStatus" android:background="@color/bg_elevated" android:paddingLeft="12.0dip" android:paddingTop="5.0dip" android:paddingRight="12.0dip" android:paddingBottom="5.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_gravity="center_horizontal" android:layout_marginTop="8.0dip" android:maxLines="2" android:ellipsize="end" android:text="@string/interval_timer_status_idle" />
    <LinearLayout android:orientation="horizontal" android:background="@color/bg_elevated" android:padding="3.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="16.0dip">
        <com.isaigu.gymapp.widget.MyButton android:textSize="13.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/intervalTimerTabInterval" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="38.0dip" android:layout_weight="1.0" android:minWidth="0.0dip" android:text="@string/interval_timer_tab_interval" android:textAllCaps="false" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="13.0sp" android:textStyle="bold" android:textColor="@color/text_secondary" android:gravity="center" android:id="@id/intervalTimerTabBlock" android:background="@android:color/transparent" android:layout_width="0.0dip" android:layout_height="38.0dip" android:layout_weight="1.0" android:minWidth="0.0dip" android:text="@string/interval_timer_tab_block" android:textAllCaps="false" />
    </LinearLayout>
    <LinearLayout android:orientation="vertical" android:background="@color/bg_elevated" android:paddingLeft="16.0dip" android:paddingTop="14.0dip" android:paddingRight="16.0dip" android:paddingBottom="14.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="12.0dip">
        <LinearLayout android:orientation="vertical" android:id="@id/intervalTimerDurationRow" android:layout_width="fill_parent" android:layout_height="wrap_content">
            <TextView android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/text_secondary" android:id="@id/intervalTimerDurationLabel" android:layout_width="wrap_content" android:layout_height="wrap_content" android:letterSpacing="0.06" android:textAllCaps="true" android:text="@string/interval_timer_duration" />
            <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip">
                <LinearLayout android:gravity="center_horizontal" android:orientation="vertical" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0">
                    <com.isaigu.gymapp.widget.AmountView android:id="@id/intervalTimerMinutes" android:layout_width="wrap_content" android:layout_height="wrap_content" />
                    <TextView android:textSize="11.0sp" android:textColor="@color/text_secondary" android:gravity="center" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="4.0dip" android:text="@string/interval_timer_minutes" />
                </LinearLayout>
                <TextView android:textSize="20.0sp" android:textStyle="bold" android:textColor="@color/text_secondary" android:gravity="center" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="4.0dip" android:layout_marginRight="4.0dip" android:text=":" />
                <LinearLayout android:gravity="center_horizontal" android:orientation="vertical" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0">
                    <com.isaigu.gymapp.widget.AmountView android:id="@id/intervalTimerSeconds" android:layout_width="wrap_content" android:layout_height="wrap_content" />
                    <TextView android:textSize="11.0sp" android:textColor="@color/text_secondary" android:gravity="center" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="4.0dip" android:text="@string/interval_timer_seconds" />
                </LinearLayout>
            </LinearLayout>
        </LinearLayout>
        <View android:background="@color/divider" android:layout_width="fill_parent" android:layout_height="1.0dip" android:layout_marginTop="14.0dip" android:layout_marginBottom="14.0dip" />
        <LinearLayout android:orientation="vertical" android:id="@id/intervalTimerSimplePanel" android:layout_width="fill_parent" android:layout_height="wrap_content">
            <TextView android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/text_secondary" android:layout_width="wrap_content" android:layout_height="wrap_content" android:letterSpacing="0.06" android:textAllCaps="true" android:text="@string/interval_timer_repeats" />
            <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip">
                <com.isaigu.gymapp.widget.AmountView android:id="@id/intervalTimerLoops" android:layout_width="wrap_content" android:layout_height="wrap_content" />
            </LinearLayout>
            <TextView android:textSize="11.0sp" android:textColor="@color/text_secondary" android:gravity="center" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="6.0dip" android:text="@string/interval_timer_loops_hint" />
        </LinearLayout>
        <LinearLayout android:orientation="vertical" android:id="@id/intervalTimerBlockPanel" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="wrap_content">
            <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:background="@color/bg_card" android:paddingLeft="12.0dip" android:paddingTop="8.0dip" android:paddingRight="12.0dip" android:paddingBottom="8.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content">
                <TextView android:textSize="12.0sp" android:textColor="@color/text_primary" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" android:text="@string/block_program_repeat" />
                <Switch android:id="@id/intervalTimerBlockRepeat" android:layout_width="wrap_content" android:layout_height="wrap_content" />
            </LinearLayout>
            <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="12.0dip">
                <LinearLayout android:orientation="vertical" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0">
                    <TextView android:textSize="14.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:id="@id/intervalTimerBlockSummary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/segment_program_summary" />
                    <TextView android:textSize="11.0sp" android:textColor="@color/light_green_color" android:id="@id/intervalTimerBlockDuration" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip" android:text="@string/block_program_duration" />
                </LinearLayout>
                <com.isaigu.gymapp.widget.MyButton android:textSize="12.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/intervalTimerBlockEdit" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="wrap_content" android:layout_height="36.0dip" android:layout_marginLeft="10.0dip" android:minWidth="0.0dip" android:paddingLeft="14.0dip" android:paddingRight="14.0dip" android:text="@string/segment_program_edit" android:textAllCaps="false" />
            </LinearLayout>
        </LinearLayout>
    </LinearLayout>
    <LinearLayout android:orientation="vertical" android:background="@color/bg_elevated" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip">
        <com.isaigu.gymapp.widget.MyButton android:textSize="13.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="start|center_vertical" android:id="@id/intervalTimerAdvancedToggle" android:background="@android:color/transparent" android:layout_width="fill_parent" android:layout_height="40.0dip" android:paddingLeft="14.0dip" android:paddingRight="14.0dip" android:text="@string/interval_timer_advanced" android:textAllCaps="false" />
        <LinearLayout android:orientation="vertical" android:id="@id/intervalTimerAdvancedPanel" android:visibility="gone" android:paddingLeft="14.0dip" android:paddingRight="14.0dip" android:paddingBottom="12.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content">
            <TextView android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/text_secondary" android:layout_width="wrap_content" android:layout_height="wrap_content" android:letterSpacing="0.06" android:textAllCaps="true" android:text="@string/timer_preset_pick" />
            <Spinner android:id="@id/intervalTimerPresetSpinner" android:background="@drawable/interval_timer_spinner_bg" android:layout_width="fill_parent" android:layout_height="38.0dip" android:layout_marginTop="6.0dip" android:popupBackground="@color/bg_card" android:spinnerMode="dropdown" />
            <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="8.0dip">
                <com.isaigu.gymapp.widget.MyButton android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/intervalTimerPresetSave" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="32.0dip" android:layout_weight="1.0" android:minWidth="0.0dip" android:text="@string/timer_preset_save" android:textAllCaps="false" />
                <com.isaigu.gymapp.widget.MyButton android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/intervalTimerPresetEdit" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="32.0dip" android:layout_marginLeft="6.0dip" android:layout_weight="1.0" android:minWidth="0.0dip" android:text="@string/timer_preset_rename" android:textAllCaps="false" />
                <com.isaigu.gymapp.widget.MyButton android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/intervalTimerPresetDelete" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="0.0dip" android:layout_height="32.0dip" android:layout_marginLeft="6.0dip" android:layout_weight="1.0" android:minWidth="0.0dip" android:text="@string/timer_preset_delete" android:textAllCaps="false" />
            </LinearLayout>
            <View android:background="@color/divider" android:layout_width="fill_parent" android:layout_height="1.0dip" android:layout_marginTop="12.0dip" android:layout_marginBottom="12.0dip" />
            <TextView android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/text_secondary" android:layout_width="wrap_content" android:layout_height="wrap_content" android:letterSpacing="0.06" android:textAllCaps="true" android:text="@string/interval_timer_sound_label" />
            <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="6.0dip">
                <Spinner android:id="@id/intervalTimerSoundSpinner" android:background="@drawable/interval_timer_spinner_bg" android:layout_width="0.0dip" android:layout_height="38.0dip" android:layout_weight="1.0" android:popupBackground="@color/bg_card" android:spinnerMode="dropdown" />
                <com.isaigu.gymapp.widget.MyButton android:textSize="14.0sp" android:textColor="@color/white_color" android:gravity="center" android:id="@id/intervalTimerSoundPreview" android:background="@drawable/interval_timer_sound_chip" android:layout_width="38.0dip" android:layout_height="38.0dip" android:layout_marginLeft="8.0dip" android:text="&#9654;" android:textAllCaps="false" />
                <com.isaigu.gymapp.widget.MyButton android:textSize="16.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/intervalTimerSoundPick" android:background="@drawable/interval_timer_sound_chip" android:layout_width="38.0dip" android:layout_height="38.0dip" android:layout_marginLeft="8.0dip" android:text="+" android:textAllCaps="false" />
            </LinearLayout>
            <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:id="@id/intervalTimerSoundFileRow" android:background="@color/bg_card" android:paddingLeft="10.0dip" android:paddingTop="6.0dip" android:paddingRight="10.0dip" android:paddingBottom="6.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="8.0dip" android:visibility="gone">
                <TextView android:textSize="11.0sp" android:textColor="@color/text_secondary" android:ellipsize="middle" android:id="@id/intervalTimerSoundFile" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" android:singleLine="true" android:text="@string/interval_timer_sound_no_file" />
                <com.isaigu.gymapp.widget.MyButton android:textSize="14.0sp" android:textColor="@color/white_color" android:gravity="center" android:id="@id/intervalTimerSoundClear" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="30.0dip" android:layout_height="30.0dip" android:layout_marginLeft="8.0dip" android:text="&#215;" android:textAllCaps="false" />
            </LinearLayout>
        </LinearLayout>
    </LinearLayout>
    <com.isaigu.gymapp.widget.MyButton android:textSize="15.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/intervalTimerActivate" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="fill_parent" android:layout_height="52.0dip" android:layout_marginTop="14.0dip" android:minWidth="0.0dip" android:paddingLeft="16.0dip" android:paddingRight="16.0dip" android:text="@string/interval_timer_activate" android:textAllCaps="false" />
</LinearLayout>
</ScrollView>
"""

COMPACT_AMOUNT_LAYOUT = """<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout android:orientation="vertical" android:layout_width="96.0dip" android:layout_height="30.0dip"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <com.isaigu.gymapp.widget.ShapeCornerBgView android:textColor="@color/text_primary" android:id="@id/text" android:paddingTop="1.0dip" android:layout_width="96.0dip" android:layout_height="30.0dip" android:text="0" android:textSize="13.0sp" app:appBorder="true" app:appBorderColor="@color/gray_color" app:appBorderWidth="1.0dip" app:appRadius="15.0dip" />
    <com.isaigu.gymapp.widget.MyButton android:textColor="@color/white_color" android:gravity="center" android:id="@id/btnDecrease" android:background="@drawable/black_button_drawable_r13" android:layout_width="22.0dip" android:layout_height="22.0dip" android:layout_marginLeft="3.0dip" android:layout_marginTop="4.0dip" android:text="-" android:textSize="14.0sp" android:layout_alignParentLeft="true" />
    <com.isaigu.gymapp.widget.MyButton android:textColor="@color/white_color" android:gravity="center" android:id="@id/btnIncrease" android:background="@drawable/black_button_drawable_r13" android:layout_width="22.0dip" android:layout_height="22.0dip" android:layout_marginTop="4.0dip" android:layout_marginRight="3.0dip" android:text="+" android:textSize="14.0sp" android:layout_alignParentRight="true" />
</RelativeLayout>
"""

SPINNER_ITEM_LAYOUT = """<?xml version="1.0" encoding="utf-8"?>
<TextView android:textSize="13.0sp" android:textColor="@color/text_primary" android:ellipsize="marquee" android:gravity="center_vertical" android:paddingLeft="8.0dip" android:paddingRight="8.0dip" android:layout_width="fill_parent" android:layout_height="36.0dip" android:singleLine="true"
  xmlns:android="http://schemas.android.com/apk/res/android" />
"""

DESIGN_CONFIG = ROOT / "branding" / "design-config.yaml"


def _fmt_dp(value: float | int) -> str:
    if isinstance(value, float) and value.is_integer():
        value = int(value)
    return f"{value}.0dip"


def _fmt_sp(value: float | int) -> str:
    if isinstance(value, float) and value.is_integer():
        value = int(value)
    return f"{value}.0sp"


def load_design_config() -> dict:
    if yaml is None or not DESIGN_CONFIG.is_file():
        return {}
    data = yaml.safe_load(DESIGN_CONFIG.read_text(encoding="utf-8"))
    return data if isinstance(data, dict) else {}


def overlay_metrics(cfg: dict | None = None) -> dict[str, float]:
    """Compact avatar-scale ring (must match IntervalTimerHelper.OVERLAY_SIZE_DP)."""
    _ = cfg or load_design_config()
    return {
        "size_dp": 192.0,
        "countdown_sp": 54.0,
        "loop_sp": 16.0,
    }


def build_overlay_layout(cfg: dict | None = None) -> str:
    m = overlay_metrics(cfg)
    ring = m["size_dp"]
    total_w = ring + 44.0 + 4.0
    size = _fmt_dp(ring)
    width = _fmt_dp(total_w)
    countdown = _fmt_sp(m["countdown_sp"])
    loop = _fmt_sp(m["loop_sp"])
    return f"""<?xml version="1.0" encoding="utf-8"?>
<LinearLayout android:id="@id/intervalTimerOverlayRoot" android:orientation="horizontal" android:gravity="center_vertical" android:layout_width="{width}" android:layout_height="{size}"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <com.isaigu.gymapp.widget.MyButton android:textSize="22.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/intervalTimerReset" android:background="@drawable/interval_timer_sound_chip" android:layout_width="44.0dip" android:layout_height="44.0dip" android:text="&#8635;" android:textAllCaps="false" />
    <RelativeLayout android:layout_width="{size}" android:layout_height="{size}" android:layout_marginLeft="4.0dip">
        <com.isaigu.gymapp.widget.TimerRingView android:id="@id/intervalTimerRing" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_centerInParent="true" />
        <LinearLayout android:gravity="center" android:layout_centerInParent="true" android:orientation="vertical" android:layout_width="wrap_content" android:layout_height="wrap_content">
            <TextView android:textSize="{countdown}" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/intervalTimerCountdown" android:layout_width="wrap_content" android:layout_height="wrap_content" android:includeFontPadding="false" android:letterSpacing="-0.03" android:text="00:00" />
            <TextView android:textSize="{loop}" android:textColor="@color/text_secondary" android:gravity="center" android:id="@id/intervalTimerLoopLabel" android:layout_width="wrap_content" android:layout_height="wrap_content" android:includeFontPadding="false" android:text="" />
        </LinearLayout>
    </RelativeLayout>
</LinearLayout>
"""

TIMER_BUTTON_BLOCK = """        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.08" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="20.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/intervalTimerBtn" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="50.0dip" android:layout_height="50.0dip" android:text="&#9201;" android:textAllCaps="false" />
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.08" />
"""

FRAGMENT_LAYOUTS = [
    RES / "layout/new_train_fragment_layout.xml",
    RES / "layout-night/new_train_fragment_layout.xml",
]

INTERVAL_HOOK = """
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

"""

MUSIC_HOOK_MARKER = "MusicPlayerHelper;->attachMasterPanel"

START_PAUSE_HOOK_OLD = """.method public synthetic lambda$onCreateView$0$NewTrainFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->startOrStopAll()V

    return-void
.end method"""

START_PAUSE_HOOK_NEW = """.method public synthetic lambda$onCreateView$0$NewTrainFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->startOrStopAll()V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingState()V

    return-void
.end method"""

START_PAUSE_HOOK_LEGACY = """    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V"""

ALL_STOP_HOOK_OLD = """    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 100
    return-void
.end method

.method public synthetic lambda$onCreateView$10$NewTrainFragment"""

ALL_STOP_HOOK_NEW = """    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingStop()V

    .line 100
    return-void
.end method

.method public synthetic lambda$onCreateView$10$NewTrainFragment"""

EN_STRINGS = """
    <string name="interval_timer_title">Interval timer</string>
    <string name="interval_timer_status_idle">Configure &amp; activate</string>
    <string name="interval_timer_status_armed">Armed — starts with training</string>
    <string name="interval_timer_status_running">Running</string>
    <string name="interval_timer_minutes">Minutes</string>
    <string name="interval_timer_seconds">Seconds</string>
    <string name="interval_timer_loops">Loops (0 = unlimited)</string>
    <string name="interval_timer_activate">Activate timer</string>
    <string name="interval_timer_invalid_duration">Set interval longer than 0 seconds</string>
    <string name="interval_timer_error">Could not open interval timer</string>
    <string name="interval_timer_sound_label">Interval signal</string>
    <string name="interval_timer_sound_off">Off</string>
    <string name="interval_timer_sound_beep">Beep</string>
    <string name="interval_timer_sound_chime">Chime</string>
    <string name="interval_timer_sound_bell">Bell</string>
    <string name="interval_timer_sound_custom">Custom file</string>
    <string name="interval_timer_sound_pip">Short pip</string>
    <string name="interval_timer_sound_confirm">Confirm</string>
    <string name="interval_timer_sound_alarm">Alarm tone</string>
    <string name="interval_timer_sound_device">Phone sounds</string>
    <string name="interval_timer_sound_pick_device">Tap + to choose a phone sound</string>
    <string name="interval_timer_sound_preview">Preview</string>
    <string name="interval_timer_sound_upload">Upload</string>
    <string name="interval_timer_sound_no_file">No custom signal selected</string>
    <string name="segment_program_title">Block program</string>
    <string name="segment_program_hint">Impulse cycles per block; MA, Hz and width change automatically</string>
    <string name="segment_program_edit">Edit blocks</string>
    <string name="segment_program_summary">%1$d blocks</string>
    <string name="segment_program_block">Block %1$d</string>
    <string name="segment_program_cycles">Cycles</string>
    <string name="segment_program_ma">MA</string>
    <string name="segment_program_hz">Hz</string>
    <string name="segment_program_width">Width (ms)</string>
    <string name="segment_program_add">+ Add block</string>
    <string name="segment_program_remove">Remove block</string>
    <string name="segment_program_done">Done</string>
    <string name="block_program_duration">Sequence: %1$d min %2$d sec (auto work time)</string>
    <string name="block_program_train_time">Min/sec = total workout time (RPT)</string>
    <string name="block_program_empty">Add at least one block</string>
    <string name="block_program_repeat">RPT (repeat blocks until time ends)</string>
    <string name="timer_preset_pick">Saved programs</string>
    <string name="timer_preset_save">Save</string>
    <string name="timer_preset_rename">Rename</string>
    <string name="timer_preset_delete">Delete</string>
    <string name="timer_preset_name_title">Program name</string>
    <string name="timer_preset_name_hint">Enter a name for this timer setup</string>
    <string name="timer_preset_saved">Program saved</string>
    <string name="timer_preset_deleted">Program deleted</string>
    <string name="timer_preset_delete_confirm">Delete this saved program?</string>
    <string name="timer_preset_empty_name">Enter a name</string>
    <string name="interval_timer_tab_interval">Interval</string>
    <string name="interval_timer_tab_block">Blocks</string>
    <string name="interval_timer_duration">Duration</string>
    <string name="interval_timer_duration_train">Workout time</string>
    <string name="interval_timer_repeats">Repeats</string>
    <string name="interval_timer_repeats_unlimited">Unlimited</string>
    <string name="interval_timer_advanced">Sound &amp; saved ▾</string>
    <string name="interval_timer_loops_hint">0 = unlimited</string>
    <string name="interval_timer_reset">Restart interval</string>
"""

BG_STRINGS = """
    <string name="interval_timer_title">Интервален таймер</string>
    <string name="interval_timer_status_idle">Настрой и активирай</string>
    <string name="interval_timer_status_armed">Активиран — стартира с тренировка</string>
    <string name="interval_timer_status_running">Работи</string>
    <string name="interval_timer_minutes">Минути</string>
    <string name="interval_timer_seconds">Секунди</string>
    <string name="interval_timer_loops">Повторения (0 = безкрайно)</string>
    <string name="interval_timer_activate">Активирай таймера</string>
    <string name="interval_timer_invalid_duration">Задай интервал по-голям от 0 секунди</string>
    <string name="interval_timer_error">Таймерът не може да се отвори</string>
    <string name="interval_timer_sound_label">Сигнал при интервал</string>
    <string name="interval_timer_sound_off">Без</string>
    <string name="interval_timer_sound_beep">Бип</string>
    <string name="interval_timer_sound_chime">Камбана</string>
    <string name="interval_timer_sound_bell">Звън</string>
    <string name="interval_timer_sound_custom">Свой файл</string>
    <string name="interval_timer_sound_pip">Кратък сигнал</string>
    <string name="interval_timer_sound_confirm">Потвърждение</string>
    <string name="interval_timer_sound_alarm">Алармен тон</string>
    <string name="interval_timer_sound_device">Звуци от телефона</string>
    <string name="interval_timer_sound_pick_device">Натисни + за звук от телефона</string>
    <string name="interval_timer_sound_preview">Проба</string>
    <string name="interval_timer_sound_upload">Качи</string>
    <string name="interval_timer_sound_no_file">Няма избран файл</string>
    <string name="segment_program_title">Блокова програма</string>
    <string name="segment_program_hint">Импулсни цикли на блок; MA, Hz и ширина се сменят автоматично</string>
    <string name="segment_program_edit">Редактирай блокове</string>
    <string name="segment_program_summary">%1$d блока</string>
    <string name="segment_program_block">Блок %1$d</string>
    <string name="segment_program_cycles">Цикли</string>
    <string name="segment_program_ma">MA</string>
    <string name="segment_program_hz">Hz</string>
    <string name="segment_program_width">Ширина (ms)</string>
    <string name="segment_program_add">+ Добави блок</string>
    <string name="segment_program_remove">Премахни блок</string>
    <string name="segment_program_done">Готово</string>
    <string name="block_program_duration">Последователност: %1$d мин %2$d сек (авто време)</string>
    <string name="block_program_train_time">Мин/сек = общо време на тренировката (RPT)</string>
    <string name="block_program_empty">Добави поне един блок</string>
    <string name="block_program_repeat">RPT (повтаряй блоковете до края на времето)</string>
    <string name="timer_preset_pick">Запазени програми</string>
    <string name="timer_preset_save">Запази</string>
    <string name="timer_preset_rename">Преименувай</string>
    <string name="timer_preset_delete">Изтрий</string>
    <string name="timer_preset_name_title">Име на програмата</string>
    <string name="timer_preset_name_hint">Въведи име за тази настройка</string>
    <string name="timer_preset_saved">Програмата е запазена</string>
    <string name="timer_preset_deleted">Програмата е изтрита</string>
    <string name="timer_preset_delete_confirm">Изтрий тази запазена програма?</string>
    <string name="timer_preset_empty_name">Въведи име</string>
    <string name="interval_timer_tab_interval">Интервал</string>
    <string name="interval_timer_tab_block">Блокове</string>
    <string name="interval_timer_duration">Продължителност</string>
    <string name="interval_timer_duration_train">Време на тренировка</string>
    <string name="interval_timer_repeats">Повторения</string>
    <string name="interval_timer_repeats_unlimited">Безкрайно</string>
    <string name="interval_timer_advanced">Звук и запазени ▾</string>
    <string name="interval_timer_loops_hint">0 = безкрайно</string>
    <string name="interval_timer_reset">Рестарт на интервала</string>
"""


def _load_timer_smali_installer():
    import importlib.util

    path = ROOT / "scripts" / "install_interval_timer_smali.py"
    spec = importlib.util.spec_from_file_location("install_interval_timer_smali", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def install_smali() -> None:
    _load_timer_smali_installer().install()


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
        (SPINNER_ITEM_LAYOUT_NAME.replace(".xml", ""), SPINNER_ITEM_LAYOUT_ID),
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


def patch_fragment_layout(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if "intervalTimerBtn" in text:
        print(f"{path.name}: interval timer button already present")
        return
    marker = '@id/musicPlayerBtn'
    if marker not in text:
        raise RuntimeError(f"{path}: musicPlayerBtn marker not found — run apply-music-player.py first")
    insert_after = 'android:textAllCaps="false" />\n        <View android:layout_width="fill_parent"'
    idx = text.find(marker)
    if idx < 0:
        raise RuntimeError(f"{path}: musicPlayerBtn not found")
    sub = text[idx:]
    close_idx = sub.find('android:textAllCaps="false" />')
    if close_idx < 0:
        raise RuntimeError(f"{path}: music button end not found")
    abs_end = idx + close_idx + len('android:textAllCaps="false" />')
    text = text[:abs_end] + "\n" + TIMER_BUTTON_BLOCK + text[abs_end:]
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: added interval timer button near music player")


TRAIN_ITEM = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
TIMER_SYNC_HOOK = (
    "\n    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;"
    "->syncTrainingState()V\n"
)


def patch_train_item_timer_sync(text: str) -> str:
    if "IntervalTimerHelper;->syncTrainingState" in text:
        print("TrainItem: per-row timer sync already applied")
        return text
    start_old = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    .line 95
    return-void"""
    start_new = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V
""" + TIMER_SYNC_HOOK + """
    .line 95
    return-void"""
    stop_old = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void"""
    stop_new = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V
""" + TIMER_SYNC_HOOK + """    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void"""
    if start_old not in text or stop_old not in text:
        raise RuntimeError("TrainItem.start/stop timer sync markers not found")
    text = text.replace(start_old, start_new, 1)
    text = text.replace(stop_old, stop_new, 1)
    print("TrainItem.start/stop: sync interval timer with per-row controls")
    return text


def patch_new_train_fragment(text: str) -> str:
    if START_PAUSE_HOOK_OLD in text:
        text = text.replace(START_PAUSE_HOOK_OLD, START_PAUSE_HOOK_NEW, 1)
        print("NewTrainFragment: interval hook on allStartPause")
    elif "IntervalTimerHelper;->syncTrainingState" in text:
        print("NewTrainFragment: start/pause hook already applied")
    elif START_PAUSE_HOOK_LEGACY in text:
        text = text.replace(
            START_PAUSE_HOOK_LEGACY,
            "    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingState()V",
            1,
        )
        print("NewTrainFragment: upgraded master start/pause to syncTrainingState")
    elif "IntervalTimerHelper;->onTrainingRunningChanged" in text:
        text = text.replace(
            "    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V\n",
            "    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingState()V\n",
            1,
        )
        print("NewTrainFragment: upgraded master start/pause to syncTrainingState")
    else:
        raise RuntimeError("NewTrainFragment lambda$onCreateView$0 marker not found")

    if ALL_STOP_HOOK_OLD in text:
        text = text.replace(ALL_STOP_HOOK_OLD, ALL_STOP_HOOK_NEW, 1)
        print("NewTrainFragment: interval hook on allStop")
    elif "IntervalTimerHelper;->onTrainingStop" in text:
        print("NewTrainFragment: allStop hook already applied")
    else:
        raise RuntimeError("NewTrainFragment lambda$onCreateView$1 marker not found")

    if "IntervalTimerHelper;->attachMasterPanel" in text:
        print("NewTrainFragment.onCreateView: interval timer hook already applied")
        return text
    if MUSIC_HOOK_MARKER not in text:
        raise RuntimeError("NewTrainFragment: MusicPlayerHelper hook missing")
    text = text.replace(
        "invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V\n",
        "invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V\n"
        + INTERVAL_HOOK,
        1,
    )
    print("NewTrainFragment.onCreateView: interval timer attach hook")
    return text


def patch_base_activity(text: str) -> str:
    hook = (
        "    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;"
        "->onActivityResult(IILandroid/content/Intent;)V\n\n"
    )
    if "IntervalTimerHelper;->onActivityResult" in text:
        print("BaseActivity.onActivityResult: interval timer hook already applied")
        return text
    music_hook = (
        "    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;"
        "->onActivityResult(IILandroid/content/Intent;)V\n\n"
    )
    if music_hook in text:
        text = text.replace(music_hook, hook + music_hook, 1)
        print("BaseActivity.onActivityResult: forward signal picker to IntervalTimerHelper")
        return text
    full_hook = (
        ".method protected onActivityResult(IILandroid/content/Intent;)V\n"
        "    .locals 0\n"
        "    .param p1, \"requestCode\"    # I\n"
        "    .param p2, \"resultCode\"    # I\n"
        "    .param p3, \"data\"    # Landroid/content/Intent;\n\n"
        + hook
        + "    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;"
        "->onActivityResult(IILandroid/content/Intent;)V\n\n"
        "    return-void\n"
        ".end method\n\n"
    )
    marker = ".method protected onCreate(Landroid/os/Bundle;)V\n"
    if marker not in text:
        raise RuntimeError("BaseActivity.onCreate marker not found")
    print("BaseActivity.onActivityResult: created interval timer result handler")
    return text.replace(marker, full_hook + marker, 1)


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
        print(f"added {len(additions)} interval timer strings to {path.name}")


def main() -> int:
    if not DECOMPILED.exists():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1

    (RES / "layout" / DIALOG_LAYOUT_NAME).write_text(DIALOG_LAYOUT, encoding="utf-8")
    (RES / "layout" / "amount_layout.xml").write_text(COMPACT_AMOUNT_LAYOUT, encoding="utf-8")
    amount_night = RES / "layout-night" / "amount_layout.xml"
    if amount_night.parent.is_dir():
        amount_night.write_text(COMPACT_AMOUNT_LAYOUT, encoding="utf-8")
    overlay_cfg = load_design_config()
    overlay_layout = build_overlay_layout(overlay_cfg)
    overlay_size = overlay_metrics(overlay_cfg)["size_dp"]
    (RES / "layout" / OVERLAY_LAYOUT_NAME).write_text(overlay_layout, encoding="utf-8")
    (RES / "layout" / SPINNER_ITEM_LAYOUT_NAME).write_text(SPINNER_ITEM_LAYOUT, encoding="utf-8")
    print(
        f"created layout/{DIALOG_LAYOUT_NAME}, {OVERLAY_LAYOUT_NAME} "
        f"({overlay_size:.0f}dp avatar ring), {SPINNER_ITEM_LAYOUT_NAME}"
    )

    PUBLIC_XML.write_text(patch_public_xml(PUBLIC_XML.read_text(encoding="utf-8")), encoding="utf-8")
    IDS_XML.write_text(patch_ids_xml(IDS_XML.read_text(encoding="utf-8")), encoding="utf-8")
    for layout in FRAGMENT_LAYOUTS:
        patch_fragment_layout(layout)
    NEW_TRAIN_FRAGMENT.write_text(
        patch_new_train_fragment(NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    if BASE_ACTIVITY.is_file():
        BASE_ACTIVITY.write_text(
            patch_base_activity(BASE_ACTIVITY.read_text(encoding="utf-8")),
            encoding="utf-8",
        )
    names = list(STRING_IDS.keys())
    merge_strings(VALUES_DEFAULT, EN_STRINGS, names)
    merge_strings(VALUES_BG, BG_STRINGS, names)
    merge_strings(VALUES_BG_DECOMPILED, BG_STRINGS, names)
    if TRAIN_ITEM.is_file():
        TRAIN_ITEM.write_text(
            patch_train_item_timer_sync(TRAIN_ITEM.read_text(encoding="utf-8")),
            encoding="utf-8",
        )
    install_smali()
    print("Interval timer patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
