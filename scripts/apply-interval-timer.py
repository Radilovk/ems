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
}

DIALOG_LAYOUT = """<?xml version="1.0" encoding="utf-8"?>
<LinearLayout android:orientation="vertical" android:background="@drawable/modal_dialog_panel" android:padding="16.0dip" android:layout_width="fill_parent" android:layout_height="wrap_content"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content">
        <TextView android:textSize="20.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" android:text="@string/interval_timer_title" />
        <TextView android:textSize="11.0sp" android:textColor="@color/light_green_color" android:gravity="end" android:id="@id/intervalTimerStatus" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="@string/interval_timer_status_idle" />
    </LinearLayout>
    <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="14.0dip">
        <com.isaigu.gymapp.widget.AmountView android:id="@id/intervalTimerMinutes" android:layout_width="wrap_content" android:layout_height="wrap_content" />
        <TextView android:textSize="28.0sp" android:textStyle="bold" android:textColor="@color/impulse_accent" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="8.0dip" android:layout_marginRight="8.0dip" android:text=":" />
        <com.isaigu.gymapp.widget.AmountView android:id="@id/intervalTimerSeconds" android:layout_width="wrap_content" android:layout_height="wrap_content" />
    </LinearLayout>
    <TextView android:textSize="12.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="12.0dip" android:text="@string/interval_timer_loops" />
    <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="4.0dip">
        <com.isaigu.gymapp.widget.MyButton android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:id="@id/intervalTimerLoopsMinus" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="40.0dip" android:layout_height="40.0dip" android:text="-" android:textAllCaps="false" />
        <EditText android:textSize="16.0sp" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/intervalTimerLoops" android:background="@drawable/modal_field_bg" android:layout_width="0.0dip" android:layout_height="40.0dip" android:layout_weight="1.0" android:layout_marginLeft="6.0dip" android:layout_marginRight="6.0dip" android:inputType="number" android:text="0" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:id="@id/intervalTimerLoopsPlus" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="40.0dip" android:layout_height="40.0dip" android:text="+" android:textAllCaps="false" />
    </LinearLayout>
    <TextView android:textSize="11.0sp" android:textColor="@color/text_secondary" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="2.0dip" android:text="@string/interval_timer_loops_hint" />
    <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="10.0dip">
        <TextView android:textSize="11.0sp" android:textColor="@color/text_secondary" android:layout_width="52.0dip" android:layout_height="wrap_content" android:text="@string/interval_timer_sound_label" />
        <Spinner android:id="@id/intervalTimerSoundSpinner" android:background="@drawable/modal_field_bg" android:layout_width="0.0dip" android:layout_height="36.0dip" android:layout_weight="1.0" android:popupBackground="@color/bg_card" android:spinnerMode="dropdown" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="16.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/intervalTimerSoundPreview" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="36.0dip" android:layout_height="36.0dip" android:layout_marginLeft="4.0dip" android:text="&#9654;" android:textAllCaps="false" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="14.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/intervalTimerSoundPick" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="36.0dip" android:layout_height="36.0dip" android:layout_marginLeft="4.0dip" android:text="+" android:textAllCaps="false" />
    </LinearLayout>
    <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:id="@id/intervalTimerSoundFileRow" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="3.0dip" android:paddingLeft="52.0dip" android:visibility="gone">
        <TextView android:textSize="10.0sp" android:textColor="@color/text_secondary" android:ellipsize="middle" android:id="@id/intervalTimerSoundFile" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" android:singleLine="true" android:text="@string/interval_timer_sound_no_file" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="16.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/intervalTimerSoundClear" android:background="@drawable/light_yellow_button_drawable_r30" android:layout_width="28.0dip" android:layout_height="28.0dip" android:layout_marginLeft="4.0dip" android:text="&#215;" android:textAllCaps="false" />
    </LinearLayout>
    <com.isaigu.gymapp.widget.MyButton android:textSize="15.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:id="@id/intervalTimerActivate" android:background="@drawable/light_green_button_drawable_r30" android:layout_width="fill_parent" android:layout_height="44.0dip" android:layout_marginTop="12.0dip" android:text="@string/interval_timer_activate" android:textAllCaps="false" />
</LinearLayout>
"""

SPINNER_ITEM_LAYOUT = """<?xml version="1.0" encoding="utf-8"?>
<TextView android:textSize="13.0sp" android:textColor="@color/text_primary" android:ellipsize="marquee" android:gravity="center_vertical" android:paddingLeft="10.0dip" android:paddingRight="10.0dip" android:layout_width="fill_parent" android:layout_height="36.0dip" android:singleLine="true"
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
        "size_dp": 64.0,
        "countdown_sp": 42.0,
        "loop_sp": 11.0,
    }


def build_overlay_layout(cfg: dict | None = None) -> str:
    m = overlay_metrics(cfg)
    size = _fmt_dp(m["size_dp"])
    countdown = _fmt_sp(m["countdown_sp"])
    loop = _fmt_sp(m["loop_sp"])
    return f"""<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout android:id="@id/intervalTimerOverlayRoot" android:layout_width="{size}" android:layout_height="{size}"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <com.isaigu.gymapp.widget.TimerRingView android:id="@id/intervalTimerRing" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_centerInParent="true" />
    <LinearLayout android:gravity="center" android:layout_centerInParent="true" android:orientation="vertical" android:layout_width="wrap_content" android:layout_height="wrap_content">
        <TextView android:textSize="{countdown}" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/intervalTimerCountdown" android:layout_width="wrap_content" android:layout_height="wrap_content" android:includeFontPadding="false" android:letterSpacing="-0.03" android:text="00:00" />
        <TextView android:textSize="{loop}" android:textColor="@color/text_secondary" android:gravity="center" android:id="@id/intervalTimerLoopLabel" android:layout_width="wrap_content" android:layout_height="wrap_content" android:includeFontPadding="false" android:text="" />
    </LinearLayout>
</RelativeLayout>
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
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->startOrStopAll()V

    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    return-void
.end method"""

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
    <string name="interval_timer_status_idle">Status: configure and activate</string>
    <string name="interval_timer_status_armed">Status: armed — starts with training</string>
    <string name="interval_timer_status_running">Status: running</string>
    <string name="interval_timer_minutes">Minutes</string>
    <string name="interval_timer_seconds">Seconds</string>
    <string name="interval_timer_loops">Loops (0 = unlimited)</string>
    <string name="interval_timer_loops_hint">After the last loop, training stops automatically.</string>
    <string name="interval_timer_activate">Activate timer</string>
    <string name="interval_timer_invalid_duration">Set interval longer than 0 seconds</string>
    <string name="interval_timer_error">Could not open interval timer</string>
    <string name="interval_timer_sound_label">Interval signal</string>
    <string name="interval_timer_sound_off">Off</string>
    <string name="interval_timer_sound_beep">Beep</string>
    <string name="interval_timer_sound_chime">Chime</string>
    <string name="interval_timer_sound_bell">Bell</string>
    <string name="interval_timer_sound_custom">Custom</string>
    <string name="interval_timer_sound_preview">Preview</string>
    <string name="interval_timer_sound_upload">Upload</string>
    <string name="interval_timer_sound_no_file">No custom signal selected</string>
"""

BG_STRINGS = """
    <string name="interval_timer_title">Интервален таймер</string>
    <string name="interval_timer_status_idle">Статус: настрой и активирай</string>
    <string name="interval_timer_status_armed">Статус: активиран — стартира с тренировката</string>
    <string name="interval_timer_status_running">Статус: работи</string>
    <string name="interval_timer_minutes">Минути</string>
    <string name="interval_timer_seconds">Секунди</string>
    <string name="interval_timer_loops">Повторения (0 = безкрайно)</string>
    <string name="interval_timer_loops_hint">След последното повторение тренировката спира автоматично.</string>
    <string name="interval_timer_activate">Активирай таймера</string>
    <string name="interval_timer_invalid_duration">Задай интервал по-голям от 0 секунди</string>
    <string name="interval_timer_error">Таймерът не може да се отвори</string>
    <string name="interval_timer_sound_label">Сигнал при интервал</string>
    <string name="interval_timer_sound_off">Без</string>
    <string name="interval_timer_sound_beep">Бип</string>
    <string name="interval_timer_sound_chime">Камбана</string>
    <string name="interval_timer_sound_bell">Звън</string>
    <string name="interval_timer_sound_custom">Свой</string>
    <string name="interval_timer_sound_preview">Проба</string>
    <string name="interval_timer_sound_upload">Качи</string>
    <string name="interval_timer_sound_no_file">Няма избран файл</string>
"""


def install_smali() -> None:
    DIALOG_DIR.mkdir(parents=True, exist_ok=True)
    widget_dir = DECOMPILED / "smali_classes2/com/isaigu/gymapp/widget"
    widget_dir.mkdir(parents=True, exist_ok=True)
    for old in DIALOG_DIR.glob("IntervalTimerHelper*.smali"):
        old.unlink()
        print(f"removed stale dialog/{old.name}")
    for src in sorted((BRANDING / "smali").glob("IntervalTimerHelper*.smali")):
        shutil.copy2(src, DIALOG_DIR / src.name)
        print(f"installed dialog/{src.name}")
    if not any(DIALOG_DIR.glob("IntervalTimerHelper*.smali")):
        raise SystemExit("Missing IntervalTimerHelper.smali — run compile-interval-timer-java.sh")
    ring_src = BRANDING / "smali" / "widget" / "TimerRingView.smali"
    if not ring_src.is_file():
        raise SystemExit("Missing TimerRingView.smali — run compile-interval-timer-java.sh")
    shutil.copy2(ring_src, widget_dir / "TimerRingView.smali")
    print(f"installed widget/{ring_src.name}")


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


def patch_new_train_fragment(text: str) -> str:
    if START_PAUSE_HOOK_OLD in text:
        text = text.replace(START_PAUSE_HOOK_OLD, START_PAUSE_HOOK_NEW, 1)
        print("NewTrainFragment: interval hook on allStartPause")
    elif "IntervalTimerHelper;->onTrainingRunningChanged" in text:
        print("NewTrainFragment: start/pause hook already applied")
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
    install_smali()
    print("Interval timer patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
