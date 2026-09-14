#!/usr/bin/env python3
"""Training screen UX polish: header layout, timer, impulse/pause controls, slider artifacts."""

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

USER_INFO_PATCHED = re.compile(
    r"<RelativeLayout android:layout_width=\"fill_parent\" android:layout_height=\"wrap_content\" "
    r"android:layout_marginLeft=\"10\.0dip\" android:layout_marginRight=\"4\.0dip\">"
    r"[\s\S]*?@drawable/ui_status_icon_bg[\s\S]*?@id/setting[\s\S]*?</RelativeLayout>",
)

FORMAT_TIME_OLD = """.method public static formatTime(I)Ljava/lang/String;
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

FORMAT_TIME_NEW = """.method public static formatTime(I)Ljava/lang/String;
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

AMOUNT_LAYOUT_VARIANTS = [
    (
        """<RelativeLayout android:orientation="vertical" android:layout_width="150.0dip" android:layout_height="36.0dip"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <com.isaigu.gymapp.widget.ShapeCornerBgView android:textSize="12.0sp" android:textColor="@color/text_primary" android:id="@id/text" android:paddingTop="10.0dip" android:layout_width="150.0dip" android:layout_height="fill_parent" android:text="20" app:appBorder="true" app:appBorderColor="@color/gray_color" app:appBorderWidth="1.0dip" app:appRadius="23.0dip" />
    <com.isaigu.gymapp.widget.MyButton android:textColor="@color/white_color" android:gravity="center" android:id="@id/btnDecrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="30.0dip" android:layout_height="30.0dip" android:layout_marginLeft="3.0dip" android:layout_marginTop="3.0dip" android:text="-" android:layout_alignParentLeft="true" />
    <com.isaigu.gymapp.widget.MyButton android:textColor="@color/white_color" android:gravity="center" android:id="@id/btnIncrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="30.0dip" android:layout_height="30.0dip" android:layout_marginTop="3.0dip" android:layout_marginRight="3.0dip" android:text="+" android:layout_alignParentRight="true" />
</RelativeLayout>""",
        """<RelativeLayout android:orientation="vertical" android:layout_width="158.0dip" android:layout_height="44.0dip"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <com.isaigu.gymapp.widget.ShapeCornerBgView android:textSize="13.0sp" android:textColor="@color/text_primary" android:id="@id/text" android:paddingTop="8.0dip" android:layout_width="158.0dip" android:layout_height="fill_parent" android:text="20" app:appBorder="true" app:appBorderColor="@color/gray_color" app:appBorderWidth="1.0dip" app:appRadius="23.0dip" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/btnDecrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="34.0dip" android:layout_height="34.0dip" android:layout_marginLeft="3.0dip" android:layout_marginTop="5.0dip" android:text="-" android:layout_alignParentLeft="true" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/white_color" android:gravity="center" android:id="@id/btnIncrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="34.0dip" android:layout_height="34.0dip" android:layout_marginTop="5.0dip" android:layout_marginRight="3.0dip" android:text="+" android:layout_alignParentRight="true" />
</RelativeLayout>""",
    ),
    (
        """<RelativeLayout android:orientation="vertical" android:layout_width="150.0dip" android:layout_height="36.0dip"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <com.isaigu.gymapp.widget.ShapeCornerBgView android:textSize="12.0sp" android:textColor="@color/text_primary" android:id="@id/text" android:paddingTop="10.0dip" android:layout_width="150.0dip" android:layout_height="fill_parent" android:text="20" app:appBorder="true" app:appBorderColor="@color/card_stroke" app:appBorderWidth="1.0dip" app:appRadius="23.0dip" />
    <com.isaigu.gymapp.widget.MyButton android:textColor="@color/text_on_accent" android:textStyle="bold" android:gravity="center" android:id="@id/btnDecrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="30.0dip" android:layout_height="30.0dip" android:layout_marginLeft="3.0dip" android:layout_marginTop="3.0dip" android:text="-" android:layout_alignParentLeft="true" />
    <com.isaigu.gymapp.widget.MyButton android:textColor="@color/text_on_accent" android:textStyle="bold" android:gravity="center" android:id="@id/btnIncrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="30.0dip" android:layout_height="30.0dip" android:layout_marginTop="3.0dip" android:layout_marginRight="3.0dip" android:text="+" android:layout_alignParentRight="true" />
</RelativeLayout>""",
        """<RelativeLayout android:orientation="vertical" android:layout_width="158.0dip" android:layout_height="44.0dip"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <com.isaigu.gymapp.widget.ShapeCornerBgView android:textSize="13.0sp" android:textColor="@color/text_primary" android:id="@id/text" android:paddingTop="8.0dip" android:layout_width="158.0dip" android:layout_height="fill_parent" android:text="20" app:appBorder="true" app:appBorderColor="@color/card_stroke" app:appBorderWidth="1.0dip" app:appRadius="23.0dip" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/text_on_accent" android:gravity="center" android:id="@id/btnDecrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="34.0dip" android:layout_height="34.0dip" android:layout_marginLeft="3.0dip" android:layout_marginTop="5.0dip" android:text="-" android:layout_alignParentLeft="true" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="18.0sp" android:textStyle="bold" android:textColor="@color/text_on_accent" android:gravity="center" android:id="@id/btnIncrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="34.0dip" android:layout_height="34.0dip" android:layout_marginTop="5.0dip" android:layout_marginRight="3.0dip" android:text="+" android:layout_alignParentRight="true" />
</RelativeLayout>""",
    ),
]


def user_info_polished(name_size: str, time_size: str) -> str:
    return f"""<RelativeLayout android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginLeft="10.0dip" android:layout_marginRight="4.0dip">
                <TextView android:textColor="@color/text_primary" android:textSize="{name_size}" android:gravity="center|left" android:id="@id/name" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignParentLeft="true" android:layout_alignParentTop="true" android:text="张先生" />
                <TextView android:textSize="12.0sp" android:textColor="@color/text_primary" android:gravity="center|left" android:id="@id/address" android:visibility="gone" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="5.0dip" android:text="张先生" />
                <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignParentRight="true" android:layout_alignParentTop="true">
                    <ImageView android:id="@id/signalImage" android:background="@drawable/ui_status_icon_bg" android:src="@mipmap/signal" android:scaleType="fitCenter" android:padding="4.0dip" android:layout_width="34.0dip" android:layout_height="34.0dip" />
                    <RelativeLayout android:background="@drawable/ui_status_icon_bg" android:layout_width="34.0dip" android:layout_height="34.0dip" android:layout_marginLeft="4.0dip">
                        <com.isaigu.gymapp.widget.BatterView android:id="@id/MyBatterView" android:layout_width="16.0dip" android:layout_height="24.0dip" android:layout_centerInParent="true" app:batteryTextSize="15.0sp" app:mCapWidth="3.0dip" app:showText="false" />
                        <TextView android:textSize="9.0sp" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/batteryValueTextView" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="100" android:layout_centerInParent="true" />
                    </RelativeLayout>
                    <FrameLayout android:background="@drawable/ui_status_icon_bg" android:layout_width="34.0dip" android:layout_height="34.0dip" android:layout_marginLeft="4.0dip">
                        <com.isaigu.gymapp.widget.MyButton android:id="@id/setting" android:background="@mipmap/set" android:layout_width="20.0dip" android:layout_height="20.0dip" android:layout_gravity="center" />
                    </FrameLayout>
                </LinearLayout>
                <TextView android:textSize="{time_size}" android:textColor="@color/text_primary" android:id="@id/time" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignParentLeft="true" android:layout_below="@id/name" android:layout_marginTop="4.0dip" android:text="99" />
            </RelativeLayout>"""


def patch_row_layouts() -> None:
    for layout_dir in ("layout", "layout-night"):
        for name in ROW_LAYOUTS:
            path = RES / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            changed = False

            if 'android:layout_gravity="center_vertical"' in text:
                text = text.replace(
                    'android:layout_gravity="center_vertical"',
                    'android:layout_gravity="top"',
                    1,
                )
                changed = True

            name_size = "12.0sp" if name.startswith("new_") else "14.0sp"
            time_size = "20.0sp" if name.startswith("new_") else "24.0sp"
            polished = user_info_polished(name_size, time_size)
            if polished not in text:
                if USER_INFO_PATCHED.search(text):
                    text = USER_INFO_PATCHED.sub(polished, text, count=1)
                    changed = True
                elif "@drawable/ui_status_icon_bg" not in text:
                    raise SystemExit(f"user info block not found in {layout_dir}/{name}")

            text = text.replace(
                'android:id="@id/paulsecontinue" android:layout_width="wrap_content" android:layout_height="36.0dip"',
                'android:id="@id/paulsecontinue" android:layout_width="wrap_content" android:layout_height="44.0dip"',
            )
            text = text.replace(
                'android:id="@id/paulsestop" android:layout_width="wrap_content" android:layout_height="36.0dip"',
                'android:id="@id/paulsestop" android:layout_width="wrap_content" android:layout_height="44.0dip"',
            )
            text = re.sub(
                r'(<TextView android:textSize=")14\.0sp(" android:textColor="@color/(?:green_color|impulse_accent|wave_color_red|pause_accent)" '
                r'android:paddingBottom=")15\.0dip(" android:layout_width="wrap_content" android:layout_height="wrap_content" '
                r'android:text="@string/(?:paulsecontinue|paulsestop)" android:layout_centerInParent="true" />)',
                r'\g<1>12.0sp\g<2>10.0dip\g<3>',
                text,
            )
            text = text.replace(
                'android:paddingBottom="15.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="@string/paulsecontinue"',
                'android:paddingBottom="10.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="@string/paulsecontinue"',
            )
            text = text.replace(
                'android:paddingBottom="15.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="@string/paulsestop"',
                'android:paddingBottom="10.0dip" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="@string/paulsestop"',
            )
            text = text.replace(
                'android:layout_marginBottom="10.0dip" />',
                'android:layout_marginBottom="4.0dip" android:clipToPadding="true" />',
            )
            if "clipToPadding" in text or "44.0dip" in text:
                changed = True

            if changed:
                path.write_text(text, encoding="utf-8")
                print(f"polished {layout_dir}/{name}")


def patch_amount_layout() -> None:
    for layout_dir in ("layout", "layout-night"):
        path = RES / layout_dir / "amount_layout2.xml"
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if 'android:layout_height="44.0dip"' in text:
            continue
        for old, new in AMOUNT_LAYOUT_VARIANTS:
            if old in text:
                path.write_text(text.replace(old, new, 1), encoding="utf-8")
                print(f"polished {layout_dir}/amount_layout2.xml")
                break
        else:
            raise SystemExit(f"amount_layout2 marker not found in {layout_dir}")


def patch_format_time() -> None:
    text = COMMON_UTILS.read_text(encoding="utf-8")
    if FORMAT_TIME_NEW in text:
        return
    if FORMAT_TIME_OLD not in text:
        raise SystemExit("CommonUtils.formatTime marker not found")
    COMMON_UTILS.write_text(text.replace(FORMAT_TIME_OLD, FORMAT_TIME_NEW, 1), encoding="utf-8")
    print("patched CommonUtils.formatTime -> minutes only (max 99)")


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


def patch_slider_gradient() -> None:
    text = SLIDER.read_text(encoding="utf-8")
    if "Shader$TileMode;->CLAMP" in text:
        print("VerticalColorSeekBar gradient: already CLAMP")
        return
    old = "sget-object v12, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;"
    if old not in text:
        raise SystemExit("VerticalColorSeekBar MIRROR gradient marker not found")
    text = text.replace(
        old,
        "sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;",
        1,
    )
    SLIDER.write_text(text, encoding="utf-8")
    print("patched VerticalColorSeekBar gradient MIRROR -> CLAMP")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1

    patch_row_layouts()
    patch_amount_layout()
    patch_format_time()
    patch_max_work_length()
    patch_slider_gradient()
    print("Training UI polish applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
