#!/usr/bin/env python3
"""Factory-style status icons and compact impulse/pause button labels."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
AMOUNT_VIEW2 = DECOMPILED / "smali_classes2/com/isaigu/gymapp/widget/AmountView2.smali"

AMOUNT_VIEW2_INIT_END = """    :cond_1
    return-void
.end method"""

AMOUNT_VIEW2_INIT_SIZES = """    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->btnDecrease:Landroid/widget/Button;

    const/4 v2, 0x2

    const/high16 v3, 0x41d00000

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->btnIncrease:Landroid/widget/Button;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/AmountView2;->etAmount:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    const/high16 v4, 0x41000000

    invoke-virtual {v1, v2, v4}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setTextSize(IF)V

    return-void
.end method"""

ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

STATUS_ICONS = re.compile(
    r"<LinearLayout android:gravity=\"center_vertical\" android:orientation=\"horizontal\" "
    r"android:layout_width=\"wrap_content\" android:layout_height=\"wrap_content\" "
    r"android:layout_alignParentRight=\"true\" android:layout_centerVertical=\"true\">[\s\S]*?"
    r"@id/setting[\s\S]*?</LinearLayout>\s*</RelativeLayout>\s*"
    r"(?=<RelativeLayout android:layout_width=\"wrap_content\")",
)

PULSE_CONTINUE = re.compile(
    r"<RelativeLayout android:layout_width=\"wrap_content\" android:layout_height=\"wrap_content\" "
    r"android:layout_marginLeft=\"10\.0dip\"[^>]*>\s*"
    r"<com\.isaigu\.gymapp\.widget\.AmountView2 android:id=\"@id/paulsecontinue\"[^/]*/>\s*"
    r"<TextView[^>]*@string/paulsecontinue[^>]*/>\s*</RelativeLayout>\s*",
)

PULSE_STOP = re.compile(
    r"<RelativeLayout android:layout_width=\"wrap_content\" android:layout_height=\"wrap_content\" "
    r"android:layout_marginLeft=\"10\.0dip\" android:layout_marginTop=\"5\.0dip\"[^>]*>\s*"
    r"<com\.isaigu\.gymapp\.widget\.AmountView2 android:id=\"@id/paulsestop\"[^/]*/>\s*"
    r"<TextView[^>]*@string/paulsestop[^>]*/>\s*</RelativeLayout>\s*",
)

PULSE_CONTINUE_V = re.compile(
    r"<LinearLayout android:orientation=\"vertical\"[^>]*>\s*"
    r"<TextView[^>]*@string/paulsecontinue[^>]*/>\s*"
    r"<com\.isaigu\.gymapp\.widget\.AmountView2 android:id=\"@id/paulsecontinue\"[^/]*/>\s*"
    r"</LinearLayout>\s*",
)

PULSE_STOP_V = re.compile(
    r"<LinearLayout android:orientation=\"vertical\"[^>]*>\s*"
    r"<TextView[^>]*@string/paulsestop[^>]*/>\s*"
    r"<com\.isaigu\.gymapp\.widget\.AmountView2 android:id=\"@id/paulsestop\"[^/]*/>\s*"
    r"</LinearLayout>\s*",
)

PULSE_COMPACT = re.compile(
    r"<RelativeLayout android:layout_width=\"wrap_content\" android:layout_height=\"36\.0dip\" "
    r"android:layout_marginLeft=\"10\.0dip\"[^>]*>\s*"
    r"<com\.isaigu\.gymapp\.widget\.AmountView2 android:id=\"@id/(paulsecontinue|paulsestop)\"[^/]*/>\s*"
    r"<TextView[^>]*@string/(paulsecontinue|paulsestop)[^>]*/>\s*"
    r"</RelativeLayout>\s*",
)


def status_icons_block() -> str:
    return """<LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignParentRight="true" android:layout_centerVertical="true">
                        <ImageView android:id="@id/signalImage" android:background="@mipmap/signal" android:layout_width="20.0dip" android:layout_height="31.0dip" android:scaleType="fitXY" />
                        <RelativeLayout android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="6.0dip">
                            <com.isaigu.gymapp.widget.BatterView android:id="@id/MyBatterView" android:layout_width="16.0dip" android:layout_height="32.0dip" android:layout_centerInParent="true" app:batteryTextSize="15.0sp" app:mCapWidth="3.0dip" app:showText="false" />
                            <TextView android:textSize="10.0sp" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/batteryValueTextView" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="100" android:layout_centerInParent="true" android:rotation="90.0" />
                        </RelativeLayout>
                        <com.isaigu.gymapp.widget.MyButton android:id="@id/setting" android:background="@mipmap/set" android:layout_width="22.0dip" android:layout_height="22.0dip" android:layout_marginLeft="8.0dip" />
                    </LinearLayout>
                </RelativeLayout>
            """


def pulse_block(label: str, view_id: str, color: str, margin_top: str) -> str:
    return f"""<RelativeLayout android:layout_width="wrap_content" android:layout_height="36.0dip" android:layout_marginLeft="10.0dip" android:layout_marginTop="{margin_top}">
                <com.isaigu.gymapp.widget.AmountView2 android:id="@id/{view_id}" android:layout_width="wrap_content" android:layout_height="36.0dip" android:layout_centerInParent="true" />
                <TextView android:textSize="10.5sp" android:textStyle="bold" android:textColor="@color/{color}" android:gravity="center" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="1.0dip" android:text="@string/{label}" android:layout_alignParentTop="true" android:layout_centerHorizontal="true" />
            </RelativeLayout>
            """


def amount_layout(width: int, border: str, btn_color: str) -> str:
    return f"""<RelativeLayout android:orientation="vertical" android:layout_width="{width}.0dip" android:layout_height="36.0dip"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <com.isaigu.gymapp.widget.ShapeCornerBgView android:textSize="8.0sp" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/text" android:paddingTop="9.0dip" android:paddingBottom="4.0dip" android:layout_width="{width}.0dip" android:layout_height="fill_parent" android:text="20" app:appBorder="true" app:appBorderColor="@color/{border}" app:appBorderWidth="1.0dip" app:appRadius="23.0dip" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="26.0sp" android:textStyle="bold" android:textColor="@color/{btn_color}" android:gravity="center" android:id="@id/btnDecrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="30.0dip" android:layout_height="30.0dip" android:layout_marginLeft="3.0dip" android:layout_marginTop="3.0dip" android:text="-" android:layout_alignParentLeft="true" />
    <com.isaigu.gymapp.widget.MyButton android:textSize="26.0sp" android:textStyle="bold" android:textColor="@color/{btn_color}" android:gravity="center" android:id="@id/btnIncrease" android:background="@drawable/black_button_drawable_r15" android:layout_width="30.0dip" android:layout_height="30.0dip" android:layout_marginTop="3.0dip" android:layout_marginRight="3.0dip" android:text="+" android:layout_alignParentRight="true" />
</RelativeLayout>"""


def patch_row_layouts() -> None:
    pulse_marker = 'android:textSize="10.5sp" android:textStyle="bold" android:textColor="@color/green_color"'
    for layout_dir in ("layout", "layout-night"):
        for name in ROW_LAYOUTS:
            path = RES / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            changed = False

            if '@mipmap/signal"' not in text.split("@id/setting")[0]:
                if STATUS_ICONS.search(text):
                    text = STATUS_ICONS.sub(status_icons_block(), text, count=1)
                    changed = True
                else:
                    raise SystemExit(f"status icons block not found in {layout_dir}/{name}")

            impulse_color = "impulse_accent" if layout_dir == "layout-night" else "green_color"
            pause_color = "pause_accent" if layout_dir == "layout-night" else "wave_color_red"
            night_pulse_marker = (
                'android:textSize="10.5sp" android:textStyle="bold" android:textColor="@color/impulse_accent"'
            )
            if (pulse_marker if layout_dir == "layout" else night_pulse_marker) not in text:
                if PULSE_COMPACT.search(text):
                    continue_old = re.search(
                        r"<RelativeLayout android:layout_width=\"wrap_content\" android:layout_height=\"36\.0dip\" "
                        r"android:layout_marginLeft=\"10\.0dip\" android:layout_marginTop=\"0\.0dip\"[^>]*>"
                        r"[\s\S]*?@id/paulsecontinue[\s\S]*?</RelativeLayout>\s*",
                        text,
                    )
                    stop_old = re.search(
                        r"<RelativeLayout android:layout_width=\"wrap_content\" android:layout_height=\"36\.0dip\" "
                        r"android:layout_marginLeft=\"10\.0dip\" android:layout_marginTop=\"5\.0dip\"[^>]*>"
                        r"[\s\S]*?@id/paulsestop[\s\S]*?</RelativeLayout>\s*",
                        text,
                    )
                    if not continue_old or not stop_old:
                        raise SystemExit(f"compact pulse blocks not found in {layout_dir}/{name}")
                    text = (
                        text[: stop_old.start()]
                        + pulse_block("paulsestop", "paulsestop", pause_color, "5.0dip")
                        + text[stop_old.end() :]
                    )
                    text = (
                        text[: continue_old.start()]
                        + pulse_block("paulsecontinue", "paulsecontinue", impulse_color, "0.0dip")
                        + text[continue_old.end() :]
                    )
                elif PULSE_CONTINUE.search(text) or PULSE_CONTINUE_V.search(text):
                    if PULSE_CONTINUE.search(text):
                        text = PULSE_CONTINUE.sub(
                            pulse_block("paulsecontinue", "paulsecontinue", impulse_color, "0.0dip"),
                            text,
                            count=1,
                        )
                    else:
                        text = PULSE_CONTINUE_V.sub(
                            pulse_block("paulsecontinue", "paulsecontinue", impulse_color, "0.0dip"),
                            text,
                            count=1,
                        )
                    if PULSE_STOP.search(text):
                        text = PULSE_STOP.sub(
                            pulse_block("paulsestop", "paulsestop", pause_color, "5.0dip"),
                            text,
                            count=1,
                        )
                    elif PULSE_STOP_V.search(text):
                        text = PULSE_STOP_V.sub(
                            pulse_block("paulsestop", "paulsestop", pause_color, "5.0dip"),
                            text,
                            count=1,
                        )
                    else:
                        raise SystemExit(f"pulse stop block not found in {layout_dir}/{name}")
                else:
                    raise SystemExit(f"pulse continue block not found in {layout_dir}/{name}")
                changed = True

            if changed:
                path.write_text(text, encoding="utf-8")
                print(f"refined {layout_dir}/{name}")


def patch_amount_layout() -> None:
    targets = {
        "layout": amount_layout(150, "gray_color", "white_color"),
        "layout-night": amount_layout(150, "card_stroke", "text_on_accent"),
    }
    for layout_dir, body in targets.items():
        path = RES / layout_dir / "amount_layout2.xml"
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if 'android:paddingTop="9.0dip"' in text and 'android:textSize="8.0sp"' in text.split("@id/text")[1][:120]:
            continue
        path.write_text('<?xml version="1.0" encoding="utf-8"?>\n' + body, encoding="utf-8")
        print(f"refined {layout_dir}/amount_layout2.xml")


def patch_amount_view2_smali() -> None:
    text = AMOUNT_VIEW2.read_text(encoding="utf-8")
    if (
        "0x41d00000" in text
        and "0x41000000" in text
        and "btnIncrease" in text.split("0x41d00000")[1][:400]
    ):
        print("AmountView2: button/value text sizes already patched")
        return
    if AMOUNT_VIEW2_INIT_END not in text:
        raise SystemExit("AmountView2 init end marker not found")
    text = text.replace(AMOUNT_VIEW2_INIT_END, AMOUNT_VIEW2_INIT_SIZES, 1)
    AMOUNT_VIEW2.write_text(text, encoding="utf-8")
    print("AmountView2: forced +/- 26sp and value 8sp")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    patch_row_layouts()
    patch_amount_layout()
    patch_amount_view2_smali()
    print("Training UI refinements applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
