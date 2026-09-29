#!/usr/bin/env python3
"""Training row, column right of the avatar: name on its own line, time + status icons on one row,
battery number readable (upright, next to the battery), big round + / − for impulse and pause.

Runs after every other patch of the train row layouts: it rebuilds the column from the views
they left there, so all @id and the attributes other scripts added (label colours, ids) are kept.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
PUBLIC_XML = RES / "values" / "public.xml"
R_DRAWABLE = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "R$drawable.smali"

ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

COLUMN = re.compile(
    r'(<LinearLayout android:layout_gravity="center_vertical" android:orientation="vertical" '
    r'android:layout_width="0\.0dip" android:layout_height="wrap_content" android:layout_weight="0\.5">)'
    r"([\s\S]*?)"
    r'(?=<LinearLayout android:gravity="center" android:orientation="vertical" android:layout_width="0\.0dip" '
    r'android:layout_height="fill_parent" android:layout_weight="0\.2">)',
)

DONE_MARKER = 'android:tag="xemsInfoHeader"'

STEP_BUTTON = "xems_step_button"
STEP_BUTTON_XML = """<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:state_pressed="true">
        <shape android:shape="oval">
            <solid android:color="@color/card_stroke" />
            <stroke android:width="2.0dip" android:color="@color/text_secondary" />
        </shape>
    </item>
    <item>
        <shape android:shape="oval">
            <solid android:color="@color/bg_elevated" />
            <stroke android:width="1.5dip" android:color="@color/card_stroke" />
        </shape>
    </item>
</selector>
"""

# The capsule (value + label) is as wide as the column; the buttons are 42 dp circles.
AMOUNT_HEIGHT = "48.0dip"
BUTTON_SIZE = "42.0dip"

# Layout attributes that belong to the old position of a view; the new block sets its own.
POSITION_ATTRS = (
    "layout_width", "layout_height", "layout_weight", "layout_margin", "layout_marginLeft",
    "layout_marginRight", "layout_marginTop", "layout_marginBottom", "layout_alignParentLeft",
    "layout_alignParentRight", "layout_alignParentTop", "layout_alignParentBottom",
    "layout_centerVertical", "layout_centerHorizontal", "layout_centerInParent", "rotation",
    "gravity", "textSize", "singleLine", "ellipsize", "maxLines", "includeFontPadding",
)


def element(block: str, view_id: str) -> str:
    match = re.search(r'<[\w.]+ [^<>]*android:id="@id/' + view_id + r'"[^<>]*/>', block)
    if not match:
        raise SystemExit(f"train info column: @id/{view_id} not found")
    return match.group(0)


def place(tag: str, **attrs: str) -> str:
    """Drop the old position attributes of a self-closing tag and add the new ones."""
    for name in POSITION_ATTRS:
        tag = re.sub(r'\s+android:' + name + r'="[^"]*"', "", tag)
    extra = "".join(f' android:{name}="{value}"' for name, value in attrs.items())
    return re.sub(r"\s*/>$", extra + " />", tag)


def build_column(block: str) -> str:
    name = place(
        element(block, "name"),
        **dict(layout_width="fill_parent", layout_height="wrap_content", textSize="15.0sp",
                gravity="center_vertical|left", singleLine="true", ellipsize="end"),
    )
    name = name.replace('android:textStyle="bold" ', "").replace(" />", ' android:textStyle="bold" />')
    address = element(block, "address")
    time = place(
        element(block, "time"),
        **dict(layout_width="0.0dip", layout_height="wrap_content", layout_weight="1.0",
                textSize="21.0sp", singleLine="true", includeFontPadding="false"),
    )
    signal = place(element(block, "signalImage"), **dict(layout_width="16.0dip", layout_height="25.0dip"))
    battery = place(element(block, "MyBatterView"), **dict(layout_width="12.0dip", layout_height="24.0dip"))
    battery = battery.replace('app:mCapWidth="3.0dip"', 'app:mCapWidth="2.0dip"')
    battery_value = place(
        element(block, "batteryValueTextView"),
        **dict(layout_width="wrap_content", layout_height="wrap_content", layout_marginLeft="3.0dip",
                textSize="11.0sp", gravity="center_vertical", includeFontPadding="false"),
    )
    battery_value = battery_value.replace('android:textStyle="bold" ', "").replace(
        " />", ' android:textStyle="bold" />'
    )
    setting = place(
        element(block, "setting"),
        **dict(layout_width="26.0dip", layout_height="26.0dip", layout_marginLeft="6.0dip"),
    )

    def stepper(view_id: str, label_id: str, margin_top: str) -> str:
        view = place(
            element(block, view_id),
            **dict(layout_width="fill_parent", layout_height=AMOUNT_HEIGHT, layout_centerInParent="true"),
        )
        label = place(
            element(block, label_id),
            **dict(layout_width="wrap_content", layout_height="wrap_content", layout_marginTop="4.0dip",
                    textSize="11.0sp", gravity="center", layout_alignParentTop="true",
                    layout_centerHorizontal="true"),
        )
        return (
            f'<RelativeLayout android:layout_width="fill_parent" android:layout_height="{AMOUNT_HEIGHT}" '
            f'android:layout_marginLeft="6.0dip" android:layout_marginRight="4.0dip" '
            f'android:layout_marginTop="{margin_top}">\n'
            f"                {view}\n"
            f"                {label}\n"
            f"            </RelativeLayout>\n            "
        )

    return f"""
            <LinearLayout android:tag="xemsInfoHeader" android:orientation="vertical" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginLeft="8.0dip" android:layout_marginRight="4.0dip">
                {name}
                {address}
                <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="2.0dip">
                    {time}
                    {signal}
                    <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="6.0dip">
                        {battery}
                        {battery_value}
                    </LinearLayout>
                    {setting}
                </LinearLayout>
            </LinearLayout>
            {stepper("paulsecontinue", "pulseContinueLabel", "10.0dip")}{stepper("paulsestop", "pulsePauseLabel", "6.0dip")}</LinearLayout>
        """


def patch_row_layouts() -> None:
    for layout_dir in ("layout", "layout-night"):
        for file_name in ROW_LAYOUTS:
            path = RES / layout_dir / file_name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            if DONE_MARKER in text:
                continue
            match = COLUMN.search(text)
            if not match:
                raise SystemExit(f"train info column not found in {layout_dir}/{file_name}")
            new_block = build_column(match.group(2))
            text = text[: match.start(2)] + new_block + text[match.end(2) :]
            path.write_text(text, encoding="utf-8")
            print(f"train info column: {layout_dir}/{file_name}")


def amount_layout(border: str) -> str:
    button = (
        'android:textSize="26.0sp" android:textStyle="bold" android:textColor="@color/text_primary" '
        'android:gravity="center" android:padding="0.0dip" android:includeFontPadding="false" '
        f'android:background="@drawable/{STEP_BUTTON}" android:layout_width="{BUTTON_SIZE}" '
        f'android:layout_height="{BUTTON_SIZE}" android:layout_centerVertical="true"'
    )
    return f"""<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout android:layout_width="fill_parent" android:layout_height="{AMOUNT_HEIGHT}"
  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">
    <com.isaigu.gymapp.widget.ShapeCornerBgView android:textSize="9.0sp" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/text" android:paddingTop="13.0dip" android:layout_width="fill_parent" android:layout_height="fill_parent" android:text="20" app:appBorder="true" app:appBorderColor="@color/{border}" app:appBorderWidth="1.0dip" app:appRadius="24.0dip" />
    <com.isaigu.gymapp.widget.MyButton {button} android:id="@id/btnDecrease" android:layout_marginLeft="3.0dip" android:text="−" android:layout_alignParentLeft="true" />
    <com.isaigu.gymapp.widget.MyButton {button} android:id="@id/btnIncrease" android:layout_marginRight="3.0dip" android:text="+" android:layout_alignParentRight="true" />
</RelativeLayout>
"""


def patch_amount_layout() -> None:
    for layout_dir, border in (("layout", "gray_color"), ("layout-night", "card_stroke")):
        path = RES / layout_dir / "amount_layout2.xml"
        if not path.exists():
            continue
        path.write_text(amount_layout(border), encoding="utf-8")
        print(f"train info column: {layout_dir}/amount_layout2.xml")


def next_drawable_id() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_DRAWABLE):
        if path.exists():
            ids.extend(int(v, 16) for v in re.findall(r"0x7f08[0-9a-f]+", path.read_text(encoding="utf-8")))
    if not ids:
        raise SystemExit("train info column: no drawable ids found")
    return max(ids) + 1


def register_step_button() -> None:
    (RES / "drawable" / f"{STEP_BUTTON}.xml").write_text(STEP_BUTTON_XML, encoding="utf-8")
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    if f'name="{STEP_BUTTON}"' in public_text:
        return
    resource_hex = f"0x{next_drawable_id():08x}"
    PUBLIC_XML.write_text(
        public_text.replace(
            "</resources>",
            f'    <public type="drawable" name="{STEP_BUTTON}" id="{resource_hex}" />\n</resources>',
            1,
        ),
        encoding="utf-8",
    )
    r_text = R_DRAWABLE.read_text(encoding="utf-8")
    if f".field public static final {STEP_BUTTON}:I" not in r_text:
        R_DRAWABLE.write_text(
            r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {STEP_BUTTON}:I = {resource_hex}\n\n\n# direct methods",
                1,
            ),
            encoding="utf-8",
        )


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    register_step_button()
    patch_row_layouts()
    patch_amount_layout()
    print("Train info column applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
