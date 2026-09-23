#!/usr/bin/env python3
"""BETA in-app music player: master button + floating overlay player with playlist."""

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

OVERLAY_LAYOUT_NAME = "music_player_overlay.xml"
PLAYLIST_ITEM_LAYOUT_NAME = "music_playlist_item.xml"
LEGACY_DIALOG_NAME = "music_player_dialog.xml"
OVERLAY_LAYOUT_ID = 0x7F0B007C
PLAYLIST_ITEM_LAYOUT_ID = 0x7F0B007D
LEGACY_LAYOUT_ID = 0x7F0B0078

IDS = {
    "musicPlayerBtn": 0x7F090226,
    "musicPlayerTrack": 0x7F090227,
    "musicPlayerSensitivity": 0x7F090228,
    "musicPlayerStatus": 0x7F090229,
    "musicPlayerLevel": 0x7F09022A,
    "musicPlayerPick": 0x7F09022B,
    "musicPlayerPlay": 0x7F09022C,
    "musicPlayerStop": 0x7F09022D,
    "musicPlayerOverlayRoot": 0x7F090279,
    "musicPlayerSeek": 0x7F09027A,
    "musicPlayerPlayPause": 0x7F09027B,
    "musicPlayerPlaylistBtn": 0x7F09027C,
    "musicPlayerPanel": 0x7F09027D,
    "musicPlayerPlaylistPanel": 0x7F09027E,
    "musicPlayerPlaylistList": 0x7F09027F,
    "musicPlayerAddTrack": 0x7F090280,
    "musicPlayerMinimize": 0x7F090281,
    "musicPlayerTrackTitle": 0x7F090282,
    "musicPlayerTime": 0x7F090283,
    "musicPlayerItemTitle": 0x7F090284,
    "musicPlayerItemHandle": 0x7F090285,
    "musicPlayerItemUp": 0x7F090286,
    "musicPlayerItemDown": 0x7F090287,
    "musicPlayerClose": 0x7F090288,
    "musicPlayerInfoBtn": 0x7F090289,
    "musicPlayerVisualizer": 0x7F09028E,
    "musicPlayerLoading": 0x7F09028F,
    "musicPlayerSettingsBtn": 0x7F0902C0,
    "musicPlayerNowPlaying": 0x7F0902C1,
    "musicPlayerMeter": 0x7F0902C2,
    "musicPlayerRhythm": 0x7F0902C3,
    "musicPlayerFloor": 0x7F0902C4,
    "musicPlayerSmooth": 0x7F0902C5,
    "musicPlayerPresetSoft": 0x7F0902C6,
    "musicPlayerPresetBalanced": 0x7F0902C7,
    "musicPlayerPresetBeat": 0x7F0902C8,
}

STRING_IDS = {
    "beta_music_player_title": 0x7F0D010F,
    "beta_music_player_status_idle": 0x7F0D0110,
    "beta_music_player_status_active": 0x7F0D0111,
    "beta_music_player_no_file": 0x7F0D0112,
    "beta_music_player_error": 0x7F0D0113,
    "beta_music_player_pick": 0x7F0D0114,
    "beta_music_player_play": 0x7F0D0115,
    "beta_music_player_stop": 0x7F0D0116,
    "beta_music_player_sensitivity": 0x7F0D0118,
    "beta_music_player_hint": 0x7F0D0119,
    "beta_music_player_no_user": 0x7F0D011A,
    "beta_music_player_preparing": 0x7F0D011B,
    "beta_music_player_track_label": 0x7F0D011C,
    "beta_music_player_sensitivity_short": 0x7F0D011D,
    "beta_music_player_minimize": 0x7F0D016B,
    "beta_music_player_expand": 0x7F0D016C,
    "beta_music_player_playlist": 0x7F0D016D,
    "beta_music_player_add_track": 0x7F0D016E,
    "beta_music_player_drag_hint": 0x7F0D016F,
    "beta_music_player_close": 0x7F0D0170,
    "beta_music_player_brand": 0x7F0D0171,
    "beta_music_player_info_title": 0x7F0D0172,
    "beta_music_player_info_body": 0x7F0D0173,
    "beta_music_player_settings": 0x7F0D01C0,
    "beta_music_player_rhythm": 0x7F0D01C1,
    "beta_music_player_floor": 0x7F0D01C2,
    "beta_music_player_smooth": 0x7F0D01C3,
    "beta_music_player_sensitivity_label": 0x7F0D01C4,
    "beta_music_player_preset_soft": 0x7F0D01C5,
    "beta_music_player_preset_balanced": 0x7F0D01C6,
    "beta_music_player_preset_beat": 0x7F0D01C7,
    "beta_music_player_settings_hint": 0x7F0D01C8,
}

OVERLAY_LAYOUT = """<?xml version="1.0" encoding="utf-8"?>
<ScrollView android:scrollbars="vertical" android:background="@drawable/modal_dialog_panel" android:layout_width="300.0dip" android:layout_height="wrap_content" android:fillViewport="true"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
<LinearLayout android:id="@id/musicPlayerOverlayRoot" android:orientation="vertical" android:padding="10.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content">
    <RelativeLayout android:layout_width="fill_parent" android:layout_height="wrap_content">
        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignParentLeft="true" android:layout_centerVertical="true" android:layout_toLeftOf="@id/musicPlayerClose">
            <TextView android:textSize="14.0sp" android:textStyle="bold" android:textColor="@color/light_green_color" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="@string/beta_music_player_brand" />
            <com.isaigu.gymapp.widget.MyButton android:textSize="14.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:background="@drawable/interval_timer_sound_chip" android:textAllCaps="false" android:id="@id/musicPlayerInfoBtn" android:layout_width="28.0dip" android:layout_height="28.0dip" android:layout_marginLeft="6.0dip" android:text="i" android:contentDescription="@string/beta_music_player_info_title" />
        </LinearLayout>
        <com.isaigu.gymapp.widget.MyButton android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:background="@drawable/interval_timer_sound_chip" android:textAllCaps="false" android:id="@id/musicPlayerClose" android:layout_width="36.0dip" android:layout_height="36.0dip" android:layout_alignParentRight="true" android:layout_centerVertical="true" android:text="&#215;" android:contentDescription="@string/beta_music_player_close" />
    </RelativeLayout>
    <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="192.0dip" android:layout_marginTop="4.0dip">
        <com.isaigu.gymapp.widget.MyButton android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:background="@drawable/interval_timer_sound_chip" android:textAllCaps="false" android:id="@id/musicPlayerPlaylistBtn" android:layout_width="44.0dip" android:layout_height="44.0dip" android:text="&#9776;" android:contentDescription="@string/beta_music_player_playlist" />
        <RelativeLayout android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="1.0" android:layout_marginLeft="4.0dip" android:layout_marginRight="4.0dip">
            <com.isaigu.gymapp.widget.MusicVisualizerView android:id="@id/musicPlayerVisualizer" android:layout_width="192.0dip" android:layout_height="192.0dip" android:layout_centerInParent="true" />
            <com.isaigu.gymapp.widget.CircleSeekBar android:id="@id/musicPlayerSeek" android:paddingLeft="14.0dip" android:paddingTop="14.0dip" android:paddingRight="14.0dip" android:paddingBottom="10.0dip" android:layout_width="192.0dip" android:layout_height="192.0dip" android:layout_centerInParent="true" android:rotation="180.0" app:wave_bg_color="@color/blume_color" app:wheel_pointer_color="@color/grown_color" app:wheel_pointer_radius="18.0dip" app:wheel_reached_width="14.0dip" app:wheel_scroll_only_one_circle="false" app:wheel_unreached_color="@color/seekbar_back_gray" app:wheel_unreached_width="14.0dip" />
            <ProgressBar android:id="@id/musicPlayerLoading" android:visibility="gone" android:layout_width="48.0dip" android:layout_height="48.0dip" android:layout_centerInParent="true" android:indeterminate="true" style="?android:attr/progressBarStyle" />
            <com.isaigu.gymapp.widget.MyButton android:textSize="28.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:background="@drawable/interval_timer_sound_chip" android:textAllCaps="false" android:id="@id/musicPlayerPlayPause" android:layout_width="56.0dip" android:layout_height="56.0dip" android:layout_centerInParent="true" android:text="&#9654;" />
        </RelativeLayout>
        <com.isaigu.gymapp.widget.MyButton android:textSize="20.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:background="@drawable/interval_timer_sound_chip" android:textAllCaps="false" android:id="@id/musicPlayerSettingsBtn" android:layout_width="44.0dip" android:layout_height="44.0dip" android:text="&#9881;" android:contentDescription="@string/beta_music_player_settings" />
    </LinearLayout>
    <LinearLayout android:orientation="vertical" android:id="@id/musicPlayerNowPlaying" android:background="@drawable/modal_field_bg" android:paddingLeft="10.0dip" android:paddingTop="8.0dip" android:paddingRight="10.0dip" android:paddingBottom="6.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="6.0dip">
        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">
            <TextView android:textSize="14.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:ellipsize="middle" android:id="@id/musicPlayerTrackTitle" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" android:singleLine="true" android:text="@string/beta_music_player_no_file" />
            <TextView android:textSize="12.0sp" android:textColor="@color/text_secondary" android:id="@id/musicPlayerTime" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="8.0dip" android:text="0:00 / 0:00" />
        </LinearLayout>
        <TextView android:textSize="12.0sp" android:textColor="@color/light_green_color" android:id="@id/musicPlayerStatus" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="2.0dip" android:text="@string/beta_music_player_status_idle" />
        <com.isaigu.gymapp.widget.MusicImpulseMeterView android:id="@id/musicPlayerMeter" android:layout_width="fill_parent" android:layout_height="56.0dip" android:layout_marginTop="4.0dip" />
    </LinearLayout>
    <LinearLayout android:orientation="vertical" android:id="@id/musicPlayerPanel" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="8.0dip">
        <TextView android:textSize="12.0sp" android:textStyle="bold" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/beta_music_player_settings" />
        <LinearLayout android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="6.0dip">
            <com.isaigu.gymapp.widget.MyButton android:textSize="13.0sp" android:textColor="@color/white_color" android:gravity="center" android:background="@drawable/interval_timer_sound_chip" android:textAllCaps="false" android:id="@id/musicPlayerPresetSoft" android:layout_width="0.0dip" android:layout_height="34.0dip" android:layout_weight="1.0" android:text="@string/beta_music_player_preset_soft" />
            <com.isaigu.gymapp.widget.MyButton android:textSize="13.0sp" android:textColor="@color/white_color" android:gravity="center" android:background="@drawable/interval_timer_sound_chip" android:textAllCaps="false" android:id="@id/musicPlayerPresetBalanced" android:layout_width="0.0dip" android:layout_height="34.0dip" android:layout_weight="1.0" android:layout_marginLeft="6.0dip" android:layout_marginRight="6.0dip" android:text="@string/beta_music_player_preset_balanced" />
            <com.isaigu.gymapp.widget.MyButton android:textSize="13.0sp" android:textColor="@color/white_color" android:gravity="center" android:background="@drawable/interval_timer_sound_chip" android:textAllCaps="false" android:id="@id/musicPlayerPresetBeat" android:layout_width="0.0dip" android:layout_height="34.0dip" android:layout_weight="1.0" android:text="@string/beta_music_player_preset_beat" />
        </LinearLayout>
        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip">
            <TextView android:textSize="13.0sp" android:textColor="@color/text_primary" android:layout_width="104.0dip" android:layout_height="wrap_content" android:text="@string/beta_music_player_rhythm" />
            <com.isaigu.gymapp.widget.AmountView android:id="@id/musicPlayerRhythm" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" />
        </LinearLayout>
        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip">
            <TextView android:textSize="13.0sp" android:textColor="@color/text_primary" android:layout_width="104.0dip" android:layout_height="wrap_content" android:text="@string/beta_music_player_floor" />
            <com.isaigu.gymapp.widget.AmountView android:id="@id/musicPlayerFloor" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" />
        </LinearLayout>
        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip">
            <TextView android:textSize="13.0sp" android:textColor="@color/text_primary" android:layout_width="104.0dip" android:layout_height="wrap_content" android:text="@string/beta_music_player_smooth" />
            <com.isaigu.gymapp.widget.AmountView android:id="@id/musicPlayerSmooth" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" />
        </LinearLayout>
        <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip">
            <TextView android:textSize="13.0sp" android:textColor="@color/text_primary" android:layout_width="104.0dip" android:layout_height="wrap_content" android:text="@string/beta_music_player_sensitivity_label" />
            <com.isaigu.gymapp.widget.AmountView android:id="@id/musicPlayerSensitivity" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" />
        </LinearLayout>
        <TextView android:textSize="11.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="6.0dip" android:text="@string/beta_music_player_settings_hint" />
    </LinearLayout>
    <LinearLayout android:orientation="vertical" android:id="@id/musicPlayerPlaylistPanel" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="8.0dip">
        <TextView android:textSize="12.0sp" android:textStyle="bold" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/beta_music_player_playlist" />
        <TextView android:textSize="11.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/beta_music_player_drag_hint" />
        <ScrollView android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip" android:maxHeight="200.0dip">
            <LinearLayout android:orientation="vertical" android:id="@id/musicPlayerPlaylistList" android:layout_width="fill_parent" android:layout_height="wrap_content" />
        </ScrollView>
        <com.isaigu.gymapp.widget.MyButton android:textSize="14.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:id="@id/musicPlayerAddTrack" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="fill_parent" android:layout_height="40.0dip" android:layout_marginTop="6.0dip" android:text="@string/beta_music_player_add_track" android:textAllCaps="false" />
    </LinearLayout>
</LinearLayout>
</ScrollView>
"""

PLAYLIST_ITEM_LAYOUT = """<?xml version="1.0" encoding="utf-8"?>
<LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:background="@drawable/modal_field_bg" android:paddingLeft="8.0dip" android:paddingRight="6.0dip" android:layout_width="fill_parent" android:layout_height="40.0dip" android:layout_marginBottom="4.0dip"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <TextView android:textSize="14.0sp" android:textColor="@color/text_primary" android:ellipsize="middle" android:gravity="center_vertical" android:id="@id/musicPlayerItemTitle" android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="1.0" android:singleLine="true" android:text="Track" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="16.0sp" android:textColor="@color/text_secondary" android:gravity="center" android:id="@id/musicPlayerItemHandle" android:background="@android:color/transparent" android:layout_width="40.0dip" android:layout_height="fill_parent" android:text="&#9776;" android:contentDescription="@string/beta_music_player_drag_hint" android:textAllCaps="false" />
</LinearLayout>
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
    <string name="beta_music_player_status_idle">Stopped</string>
    <string name="beta_music_player_status_active">Playing — pulse synced to the beat</string>
    <string name="beta_music_player_no_file">No track selected</string>
    <string name="beta_music_player_error">Could not play this file</string>
    <string name="beta_music_player_pick">Choose audio file</string>
    <string name="beta_music_player_play">Play</string>
    <string name="beta_music_player_stop">Stop</string>
    <string name="beta_music_player_sensitivity">Sensitivity (%)</string>
    <string name="beta_music_player_hint">Set circle slider ceiling on a user row, pick a track, then Play.</string>
    <string name="beta_music_player_no_user">Add a connected user first</string>
    <string name="beta_music_player_preparing">Analysing track…</string>
    <string name="beta_music_player_track_label">Track</string>
    <string name="beta_music_player_sensitivity_short">Sens.</string>
    <string name="beta_music_player_minimize">Minimize controls</string>
    <string name="beta_music_player_expand">Show controls</string>
    <string name="beta_music_player_playlist">Playlist</string>
    <string name="beta_music_player_add_track">Add track</string>
    <string name="beta_music_player_drag_hint">Hold and drag to reorder tracks</string>
    <string name="beta_music_player_close">Close player</string>
    <string name="beta_music_player_brand">Beat Impulse Sync&#174;</string>
    <string name="beta_music_player_info_title">Beat Impulse Sync — help</string>
    <string name="beta_music_player_info_body">The player plays music and drives EMS pulse strength from it.\\n\\n1. Add a participant on the Train screen.\\n2. Set the strength limit (MA) with the circle slider on their row — this is the ceiling.\\n3. Add tracks with ☰ and press ▶.\\n\\n⚙ Settings (apply live):\\n• Rhythm — 0% follows loudness, 100% only the beats (kick/bass hits).\\n• Minimum — lowest strength while music plays, % of the ceiling.\\n• Softness — how gently strength rises; drops stay instant.\\n• Sensitivity — contrast between quiet and loud parts.\\nPresets: Soft / Balanced / Beat.\\n\\nMeter: ♪ music level, ⚡ strength sent to the suit (shaded = minimum, line = ceiling). BLE shows the measured delay to the suit; the player compensates it automatically.\\n\\nHold ☰ next to a track to reorder. ✕ stops and closes.</string>
    <string name="beta_music_player_settings">Settings</string>
    <string name="beta_music_player_rhythm">Rhythm</string>
    <string name="beta_music_player_floor">Minimum</string>
    <string name="beta_music_player_smooth">Softness</string>
    <string name="beta_music_player_sensitivity_label">Sensitivity</string>
    <string name="beta_music_player_preset_soft">Soft</string>
    <string name="beta_music_player_preset_balanced">Balanced</string>
    <string name="beta_music_player_preset_beat">Beat</string>
    <string name="beta_music_player_settings_hint">Rhythm 0% = follows loudness, 100% = only beats. Minimum = % of ceiling while music plays. Softness = gentler rise.</string>
"""

BG_STRINGS = """
    <string name="beta_music_player_title">БЕТА — Музикален плейър</string>
    <string name="beta_music_player_status_idle">Спряно</string>
    <string name="beta_music_player_status_active">Свири — импулсът следва музиката</string>
    <string name="beta_music_player_no_file">Няма избран файл</string>
    <string name="beta_music_player_error">Файлът не може да се пусне</string>
    <string name="beta_music_player_pick">Избери аудио файл</string>
    <string name="beta_music_player_play">Пусни</string>
    <string name="beta_music_player_stop">Стоп</string>
    <string name="beta_music_player_sensitivity">Чувствителност (%)</string>
    <string name="beta_music_player_hint">Задай таван с кръговия слайдер, избери песен и натисни Пусни.</string>
    <string name="beta_music_player_no_user">Първо добави свързан потребител</string>
    <string name="beta_music_player_preparing">Анализ на песента…</string>
    <string name="beta_music_player_track_label">Песен</string>
    <string name="beta_music_player_sensitivity_short">Чув.</string>
    <string name="beta_music_player_minimize">Скрий контролите</string>
    <string name="beta_music_player_expand">Покажи контролите</string>
    <string name="beta_music_player_playlist">Плейлист</string>
    <string name="beta_music_player_add_track">Добави песен</string>
    <string name="beta_music_player_drag_hint">Задръж и плъзни за подредба</string>
    <string name="beta_music_player_close">Затвори плейъра</string>
    <string name="beta_music_player_brand">Beat Impulse Sync&#174;</string>
    <string name="beta_music_player_info_title">Beat Impulse Sync — помощ</string>
    <string name="beta_music_player_info_body">Плейърът пуска музика и управлява силата на EMS импулса според нея.\\n\\n1. Добавете участник на екрана „Тренировка“.\\n2. Задайте ограничение на силата (MA) от кръговия слайдер на реда му — това е таванът.\\n3. Добавете песни с ☰ и натиснете ▶.\\n\\n⚙ Настройки (важат веднага):\\n• Ритъм — 0% следва силата на звука, 100% само ударите (бас/барабан).\\n• Минимум — най-ниската сила, докато свири музика, в % от тавана.\\n• Мекота — колко плавно се покачва силата; спадът е мигновен.\\n• Чувствителност — контраст между тихите и силните части.\\nГотови режими: Плавно / Баланс / Удари.\\n\\nИндикатор: ♪ ниво на музиката, ⚡ сила към костюма (оцветено = минимум, черта = таван). BLE показва измереното забавяне до костюма — плейърът го компенсира сам.\\n\\nЗадръжте ☰ до песен, за да я пренаредите. ✕ спира и затваря.</string>
    <string name="beta_music_player_settings">Настройки</string>
    <string name="beta_music_player_rhythm">Ритъм</string>
    <string name="beta_music_player_floor">Минимум</string>
    <string name="beta_music_player_smooth">Мекота</string>
    <string name="beta_music_player_sensitivity_label">Чувствителност</string>
    <string name="beta_music_player_preset_soft">Плавно</string>
    <string name="beta_music_player_preset_balanced">Баланс</string>
    <string name="beta_music_player_preset_beat">Удари</string>
    <string name="beta_music_player_settings_hint">Ритъм 0% = следва силата на звука, 100% = само ударите. Минимум = % от тавана, докато свири музика. Мекота = по-плавно покачване.</string>
"""

FRAGMENT_HOOK = """
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

"""

FRAGMENT_HOOK_3ARG = """
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1, v2, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;Landroid/support/v4/app/Fragment;)V

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
    for old in DIALOG_DIR.glob("MusicPlayerHelper*.smali"):
        old.unlink()
        print(f"removed stale dialog/{old.name}")
    for old in DIALOG_DIR.glob("MusicPlaylist*.smali"):
        old.unlink()
        print(f"removed stale dialog/{old.name}")
    stale_orphan = BRANDING / "smali/MusicPlayerHelper$1.smali"
    if stale_orphan.is_file():
        stale_orphan.unlink()
        raise SystemExit(
            "Stale MusicPlayerHelper$1.smali in branding/smali — run compile-music-sync-java.sh"
        )
    for src in sorted((BRANDING / "smali").glob("MusicPlayerHelper*.smali")):
        shutil.copy2(src, DIALOG_DIR / src.name)
        print(f"installed dialog/{src.name}")
    for src in sorted((BRANDING / "smali").glob("ModalInfoHelper*.smali")):
        shutil.copy2(src, DIALOG_DIR / src.name)
        print(f"installed dialog/{src.name}")
    widget_dir = DECOMPILED / "smali_classes2/com/isaigu/gymapp/widget"
    widget_dir.mkdir(parents=True, exist_ok=True)
    for widget in ("MusicVisualizerView.smali", "MusicImpulseMeterView.smali"):
        widget_src = BRANDING / "smali/widget" / widget
        if not widget_src.is_file():
            raise SystemExit(f"Missing branding/smali/widget/{widget} — run compile-music-sync-java.sh")
        shutil.copy2(widget_src, widget_dir / widget)
        print(f"installed widget/{widget}")
    for src in sorted((BRANDING / "smali").glob("MusicPlaylist*.smali")):
        shutil.copy2(src, DIALOG_DIR / src.name)
        print(f"installed dialog/{src.name}")
    for src in sorted((BRANDING / "smali").glob("MusicTrackLabel*.smali")):
        shutil.copy2(src, DIALOG_DIR / src.name)
        print(f"installed dialog/{src.name}")
    for src in sorted((BRANDING / "smali").glob("MusicPlayerEngine*.smali")):
        shutil.copy2(src, UTILS_DIR / src.name)
        print(f"installed train/utils/{src.name}")
    utils_smali = (
        "MusicSync.smali",
        "MasterStrengthControl.smali",
        "MusicSyncBridge.smali",
        "SoundEnvelopeMapper.smali",
        "MusicUriSource.smali",
    )
    for name in utils_smali:
        src = BRANDING / f"smali/{name}"
        if src.is_file():
            shutil.copy2(src, UTILS_DIR / name)
            print(f"installed train/utils/{name}")
        elif name == "MusicUriSource.smali":
            raise SystemExit(f"Missing {name} — run compile-music-sync-java.sh")
    for src in sorted((BRANDING / "smali").glob("MusicSync$*.smali")):
        shutil.copy2(src, UTILS_DIR / src.name)
        print(f"installed train/utils/{src.name}")


def patch_public_xml(text: str) -> str:
    if "musicPlayerBtn" not in text:
        entries = "\n".join(
            f'    <public type="id" name="{name}" id="{id:#x}" />' for name, id in IDS.items()
        )
        text = text.replace("</resources>", entries + "\n</resources>", 1)
    for name, id_ in IDS.items():
        if name not in text:
            text = text.replace(
                "</resources>",
                f'    <public type="id" name="{name}" id="{id_:#x}" />\n</resources>',
                1,
            )
    for layout_name, layout_id in (
        (OVERLAY_LAYOUT_NAME.replace(".xml", ""), OVERLAY_LAYOUT_ID),
        (PLAYLIST_ITEM_LAYOUT_NAME.replace(".xml", ""), PLAYLIST_ITEM_LAYOUT_ID),
    ):
        if layout_name not in text:
            text = text.replace(
                "</resources>",
                f'    <public type="layout" name="{layout_name}" id="{layout_id:#x}" />\n</resources>',
                1,
            )
    if "beta_music_player_title" not in text:
        entries = "\n".join(
            f'    <public type="string" name="{name}" id="{id:#x}" />'
            for name, id in STRING_IDS.items()
        )
        text = text.replace("</resources>", entries + "\n</resources>", 1)
    for name, id_ in STRING_IDS.items():
        if name not in text:
            text = text.replace(
                "</resources>",
                f'    <public type="string" name="{name}" id="{id_:#x}" />\n</resources>',
                1,
            )
    return text


def patch_ids_xml(text: str) -> str:
    missing = [name for name in IDS if f'name="{name}"' not in text]
    if not missing:
        return text
    entries = "\n".join(f'    <item type="id" name="{name}" />' for name in missing)
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
        print("NewTrainFragment.onCreateView: upgraded master music hook")
    elif FRAGMENT_HOOK_3ARG in text:
        text = text.replace(FRAGMENT_HOOK_3ARG, FRAGMENT_HOOK, 1)
        print("NewTrainFragment.onCreateView: reverted to stable 2-arg music hook")
    elif "MusicPlayerHelper;->attachMasterPanel" in text:
        print("NewTrainFragment.onCreateView: master music hook already applied")
    else:
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
        text = text.replace(FRAGMENT_MARKER, replacement, 1)
    return text


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

    (RES / "layout" / OVERLAY_LAYOUT_NAME).write_text(OVERLAY_LAYOUT, encoding="utf-8")
    (RES / "layout" / PLAYLIST_ITEM_LAYOUT_NAME).write_text(PLAYLIST_ITEM_LAYOUT, encoding="utf-8")
    print(f"created layout/{OVERLAY_LAYOUT_NAME}, {PLAYLIST_ITEM_LAYOUT_NAME}")

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
    print("BETA music player overlay patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
