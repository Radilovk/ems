#!/usr/bin/env python3
"""Training screen UX: header chips, timer label, impulse/pause layout, slider fix."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
COMMON_UTILS = DECOMPILED / "smali_classes2/com/isaigu/gymapp/mgr/CommonUtils.smali"
CONSTANTS = DECOMPILED / "smali_classes2/com/isaigu/gymapp/mgr/Constants.smali"
SLIDER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/widget/VerticalColorSeekBar.smali"

ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

HEADER_BLOCK = re.compile(
    r"<RelativeLayout android:layout_width=\"fill_parent\" android:layout_height=\"wrap_content\" "
    r"android:layout_marginLeft=\"10\.0dip\" android:layout_marginRight=\"4\.0dip\">[\s\S]*?"
    r"@id/setting[\s\S]*?</RelativeLayout>\s*",
)

PULSE_CONTINUE_BLOCK = re.compile(
    r"<(?:RelativeLayout|LinearLayout) android:[^>]*>\s*"
    r"(?:<TextView[^>]*@string/paulsecontinue[^>]*/>\s*)?"
    r"<com\.isaigu\.gymapp\.widget\.AmountView2 android:id=\"@id/paulsecontinue\"[^/]*/>\s*"
    r"(?:<TextView[^>]*@string/paulsecontinue[^>]*/>\s*)?"
    r"</(?:RelativeLayout|LinearLayout)>\s*",
)

PULSE_STOP_BLOCK = re.compile(
    r"<(?:RelativeLayout|LinearLayout) android:[^>]*>\s*"
    r"(?:<TextView[^>]*@string/paulsestop[^>]*/>\s*)?"
    r"<com\.isaigu\.gymapp\.widget\.AmountView2 android:id=\"@id/paulsestop\"[^/]*/>\s*"
    r"(?:<TextView[^>]*@string/paulsestop[^>]*/>\s*)?"
    r"</(?:RelativeLayout|LinearLayout)>\s*",
)

FORMAT_TIME_MMSS = """.method public static formatTime(I)Ljava/lang/String;
    .locals 6
    .param p0, "second"    # I

    .line 103
    if-gez p0, :cond_0

    .line 104
    const/4 p0, 0x0

    .line 106
    :cond_0
    div-int/lit8 v0, p0, 0x3c

    .line 107
    .local v0, "minute":I
    rem-int/lit8 v1, p0, 0x3c

    .line 109
    .local v1, "sec":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v2, "buffer":Ljava/lang/StringBuffer;
    const-string v3, "0"

    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    if-ge v1, v4, :cond_2

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method"""

FORMAT_TIME_MINUTES = """.method public static formatTime(I)Ljava/lang/String;
    .locals 2
    .param p0, "second"    # I

    .line 103
    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    div-int/lit8 v0, p0, 0x3c

    const/16 v1, 0x63

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method"""

DRAW_FOREGROUND_ZERO_GUARD = """    .line 113
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_zero_fg_skip

    return-void

    :cond_zero_fg_skip
    new-instance v0, Landroid/graphics/RectF;"""

DRAW_FOREGROUND_START = """    .line 113
    new-instance v0, Landroid/graphics/RectF;"""

AMOUNT_VARIANTS = [
    (
        150,
        36,
        "gray_color",
        "white_color",
        False,
    ),
    (
        158,
        44,
        "gray_color",
        "white_color",
        False,
    ),
    (
        150,
        36,
        "card_stroke",
        "text_on_accent",
        True,
    ),
    (
        158,
        44,
        "card_stroke",
        "text_on_accent",
        True,
    ),
]


def amount_layout(width: int, height: int, border: str, btn_color: str, night: bool) -> str:
    btn = "text_on_accent" if night else "white_color"
    pad_top = "11.0dip" if height >= 40 else "10.0dip"
    btn_size = 32 if height >= 40 else 30
    btn_text = 20 if height >= 40 else 18
    btn_margin = 4 if height >= 40 else 3
    text_size = 14 if height >= 40 else 12
    return f"""<RelativeLayout android:orientation="vertical" android:layout_width="{width}.0dip" android:layout_height="{height}.0dip"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <com.isaigu.gymapp.widget.ShapeCornerBgView android:textSize="{text_size}.0sp" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/text" android:layout_width="{width}.0dip" android:layout_height="fill_parent" android:text="20" app:appBorder="true" app:appBorderColor="@color/{border}" app:appBorderWidth="1.0dip" app:appRadius="23.0dip" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="{btn_text}.0sp" android:textStyle="bold" android:textColor="@color/{btn}" android:gravity="center" android:id="@id/btnDecrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="{btn_size}.0dip" android:layout_height="{btn_size}.0dip" android:layout_marginLeft="{btn_margin}.0dip" android:layout_marginTop="{btn_margin}.0dip" android:text="-" android:layout_alignParentLeft="true" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="{btn_text}.0sp" android:textStyle="bold" android:textColor="@color/{btn}" android:gravity="center" android:id="@id/btnIncrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="{btn_size}.0dip" android:layout_height="{btn_size}.0dip" android:layout_marginTop="{btn_margin}.0dip" android:layout_marginRight="{btn_margin}.0dip" android:text="+" android:layout_alignParentRight="true" />
</RelativeLayout>"""


def header_block(name_size: str, time_size: str) -> str:
    return f"""<LinearLayout android:orientation="vertical" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginLeft="10.0dip" android:layout_marginRight="4.0dip">
                <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="40.0dip">
                    <TextView android:textColor="@color/text_primary" android:textSize="{name_size}" android:textStyle="bold" android:ellipsize="end" android:gravity="center|left" android:id="@id/name" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0" android:maxLines="1" android:text="张先生" />
                    <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="wrap_content" android:layout_height="fill_parent" android:layout_marginLeft="6.0dip">
                        <FrameLayout android:background="@drawable/ui_status_icon_bg" android:layout_width="40.0dip" android:layout_height="40.0dip">
                            <ImageView android:id="@id/signalImage" android:padding="8.0dip" android:layout_width="fill_parent" android:layout_height="fill_parent" android:src="@mipmap/signal" android:scaleType="fitCenter" />
                        </FrameLayout>
                        <LinearLayout android:gravity="center" android:orientation="vertical" android:background="@drawable/ui_status_icon_bg" android:paddingLeft="4.0dip" android:paddingTop="3.0dip" android:paddingRight="4.0dip" android:paddingBottom="2.0dip" android:layout_width="40.0dip" android:layout_height="40.0dip" android:layout_marginLeft="4.0dip">
                            <com.isaigu.gymapp.widget.BatterView android:id="@id/MyBatterView" android:layout_width="14.0dip" android:layout_height="20.0dip" app:batteryTextSize="15.0sp" app:mCapWidth="3.0dip" app:showText="false" />
                            <TextView android:textSize="10.0sp" android:textStyle="bold" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/batteryValueTextView" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="1.0dip" android:text="100" />
                        </LinearLayout>
                        <FrameLayout android:background="@drawable/ui_status_icon_bg" android:layout_width="40.0dip" android:layout_height="40.0dip" android:layout_marginLeft="4.0dip">
                            <com.isaigu.gymapp.widget.MyButton android:id="@id/setting" android:background="@mipmap/set" android:layout_width="22.0dip" android:layout_height="22.0dip" android:layout_gravity="center" />
                        </FrameLayout>
                    </LinearLayout>
                </LinearLayout>
                <TextView android:textSize="12.0sp" android:textColor="@color/text_primary" android:gravity="center|left" android:id="@id/address" android:visibility="gone" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="张先生" />
                <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="2.0dip">
                    <TextView android:textSize="{time_size}" android:textStyle="bold" android:textColor="@color/text_primary" android:id="@id/time" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="45" />
                    <TextView android:textSize="11.0sp" android:textColor="@color/text_secondary" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="4.0dip" android:text="@string/minute" />
                </LinearLayout>
            </LinearLayout>
            """


def pulse_continue_block() -> str:
    return """<LinearLayout android:orientation="vertical" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="10.0dip" android:layout_marginTop="6.0dip">
                <TextView android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/impulse_accent" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginBottom="3.0dip" android:text="@string/paulsecontinue" />
                <com.isaigu.gymapp.widget.AmountView2 android:id="@id/paulsecontinue" android:layout_width="wrap_content" android:layout_height="40.0dip" />
            </LinearLayout>
            """


def pulse_stop_block() -> str:
    return """<LinearLayout android:orientation="vertical" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="10.0dip" android:layout_marginTop="8.0dip">
                <TextView android:textSize="11.0sp" android:textStyle="bold" android:textColor="@color/pause_accent" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginBottom="3.0dip" android:text="@string/paulsestop" />
                <com.isaigu.gymapp.widget.AmountView2 android:id="@id/paulsestop" android:layout_width="wrap_content" android:layout_height="40.0dip" />
            </LinearLayout>
            """


def patch_row_layouts() -> None:
    marker = 'android:layout_height="40.0dip" android:layout_marginLeft="4.0dip">'
    for layout_dir in ("layout", "layout-night"):
        for name in ROW_LAYOUTS:
            path = RES / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            if marker in text and "layout_marginTop=\"6.0dip\"" in text and "@string/minute" in text:
                continue

            text = text.replace(
                'android:layout_gravity="center_vertical"',
                'android:layout_gravity="top"',
            )
            if 'android:layout_marginTop="5.0dip"' not in text.split("layout_weight=\"0.5\"")[1][:120]:
                text = text.replace(
                    'android:layout_gravity="top" android:orientation="vertical" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="0.5"',
                    'android:layout_gravity="top" android:orientation="vertical" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_marginTop="5.0dip" android:layout_weight="0.5"',
                    1,
                )

            name_size = "12.0sp" if name.startswith("new_") else "14.0sp"
            time_size = "18.0sp" if name.startswith("new_") else "22.0sp"
            if HEADER_BLOCK.search(text):
                text = HEADER_BLOCK.sub(header_block(name_size, time_size), text, count=1)
            elif marker not in text:
                raise SystemExit(f"header block not found in {layout_dir}/{name}")

            if PULSE_CONTINUE_BLOCK.search(text):
                text = PULSE_CONTINUE_BLOCK.sub(pulse_continue_block(), text, count=1)
            if PULSE_STOP_BLOCK.search(text):
                text = PULSE_STOP_BLOCK.sub(pulse_stop_block(), text, count=1)

            text = re.sub(
                r'android:layout_marginBottom="4\.0dip" android:clipToPadding="true"',
                'android:layout_marginBottom="6.0dip" android:clipToPadding="true"',
                text,
            )
            text = text.replace(
                'android:layout_marginBottom="10.0dip" />',
                'android:layout_marginBottom="6.0dip" android:clipToPadding="true" />',
            )

            path.write_text(text, encoding="utf-8")
            print(f"redesigned {layout_dir}/{name}")


def patch_amount_layout() -> None:
    targets = {
        "layout": amount_layout(164, 40, "gray_color", "white_color", False),
        "layout-night": amount_layout(164, 40, "card_stroke", "text_on_accent", True),
    }
    for layout_dir, body in targets.items():
        path = RES / layout_dir / "amount_layout2.xml"
        if not path.exists():
            continue
        path.write_text(
            '<?xml version="1.0" encoding="utf-8"?>\n' + body,
            encoding="utf-8",
        )
        print(f"redesigned {layout_dir}/amount_layout2.xml")


def patch_format_time() -> None:
    text = COMMON_UTILS.read_text(encoding="utf-8")
    if FORMAT_TIME_MINUTES in text:
        return
    if FORMAT_TIME_MMSS in text:
        text = text.replace(FORMAT_TIME_MMSS, FORMAT_TIME_MINUTES, 1)
    else:
        raise SystemExit("CommonUtils.formatTime marker not found")
    COMMON_UTILS.write_text(text, encoding="utf-8")
    print("patched CommonUtils.formatTime -> minutes (max 99)")


def patch_max_work_length() -> None:
    text = CONSTANTS.read_text(encoding="utf-8")
    if "max_workLength:I = 0x63" in text:
        return
    updated = text.replace(
        ".field public static final max_workLength:I = 0x64",
        ".field public static final max_workLength:I = 0x63",
        1,
    )
    if updated == text:
        raise SystemExit("Constants.max_workLength marker not found")
    CONSTANTS.write_text(updated, encoding="utf-8")
    print("patched Constants.max_workLength -> 99")


def patch_slider_zero_foreground() -> None:
    text = SLIDER.read_text(encoding="utf-8")
    if "cond_zero_fg_skip" in text:
        print("VerticalColorSeekBar: zero foreground guard already patched")
        return
    if DRAW_FOREGROUND_START not in text:
        raise SystemExit("VerticalColorSeekBar.drawForground start not found")
    text = text.replace(DRAW_FOREGROUND_START, DRAW_FOREGROUND_ZERO_GUARD, 1)
    if "Shader$TileMode;->MIRROR" in text:
        text = text.replace(
            "sget-object v12, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;",
            "sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;",
            1,
        )
    SLIDER.write_text(text, encoding="utf-8")
    print("patched VerticalColorSeekBar: skip foreground at 0%, CLAMP gradient")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1

    patch_row_layouts()
    patch_amount_layout()
    patch_format_time()
    patch_max_work_length()
    patch_slider_zero_foreground()
    print("Training UI redesign applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
