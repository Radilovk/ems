#!/usr/bin/env python3
"""Remove ramp UI and always send zero ramp bytes to the device."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DIALOG_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/dialog"
EDIT_PARAM_LAYOUT = DECOMPILED / "res/layout/edit_parameter_dialog.xml"
COMMAND_UTIL = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/utils/CommandUtil.smali"
PROTOCOL_CONTROLLER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/ble/ProtocolController.smali"
EDIT_DIALOG = DIALOG_DIR / "EditUserProgramDataDialog.smali"

RAMP_COLUMN = """<LinearLayout android:orientation="vertical" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0">
                    <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_marginBottom="20.0dip" android:layout_weight="1.0">
                        <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/inputramp" """

RAMP_COLUMN_HIDDEN = """<LinearLayout android:visibility="gone" android:orientation="vertical" android:layout_width="0.0dip" android:layout_height="wrap_content" android:layout_weight="1.0">
                    <LinearLayout android:gravity="center" android:orientation="horizontal" android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_marginBottom="20.0dip" android:layout_weight="1.0">
                        <TextView android:textSize="18.0sp" android:textColor="@color/text_primary" android:ellipsize="end" android:layout_width="140.0dip" android:layout_height="wrap_content" android:text="@string/inputramp" """

RAMP_ZERO_COMMAND = """    const/4 v4, 0x7

    const/4 v5, 0x0

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    const/4 v5, 0x0

    aput-byte v5, v0, v4"""

RAMP_ZERO_PROTO = """    const/4 v1, 0x0

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    const/4 v1, 0x0

    const/16 v3, 0x8

    aput-byte v1, v0, v3"""

PRECHECK_SKIP = """    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 1037
    .local v2, "value1":I
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 1038
    .local v3, "value2":I
    goto :cond_10"""

PRECHECK_VARIANTS = [
    PRECHECK_SKIP.replace("goto :cond_10", """if-ltz v2, :cond_1b

    if-ltz v3, :cond_1b

    const/16 v4, 0xbb8

    if-gt v2, v4, :cond_1b

    if-gt v3, v4, :cond_1b

    add-int v4, v2, v3

    mul-int/lit16 v5, v1, 0x3e8

    if-le v4, v5, :cond_10

    goto/16 :goto_5"""),
    PRECHECK_SKIP.replace("goto :cond_10", """if-ltz v2, :cond_1b

    if-ltz v3, :cond_1b

    const/4 v4, 0x3

    if-gt v2, v4, :cond_1b

    if-gt v3, v4, :cond_1b

    add-int v4, v2, v3

    if-le v4, v1, :cond_10

    goto/16 :goto_5"""),
    PRECHECK_SKIP.replace("goto :cond_10", """if-ltz v2, :cond_1b

    if-ltz v3, :cond_1b

    add-int v4, v2, v3

    mul-int/lit16 v5, v1, 0x3e8

    if-le v4, v5, :cond_10

    goto/16 :goto_5"""),
]

COMMAND_RAMP_VARIANTS = [
    """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    add-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0xa

    const/16 v6, 0xff

    if-le v5, v6, :cond_2

    move v5, v6

    :cond_2
    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    add-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0xa

    const/16 v6, 0xff

    if-le v5, v6, :cond_3

    move v5, v6

    :cond_3
    int-to-byte v5, v5""",
    """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    add-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0xa

    const/16 v6, 0xff

    if-le v5, v6, :cond_ramp_in_cap

    move v5, v6

    :cond_ramp_in_cap
    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    add-int/lit8 v5, v5, 0x9

    div-int/lit8 v5, v5, 0xa

    const/16 v6, 0xff

    if-le v5, v6, :cond_ramp_out_cap

    move v5, v6

    :cond_ramp_out_cap
    int-to-byte v5, v5""",
    """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    mul-int/lit8 v5, v5, 0x64

    const/16 v6, 0xff

    if-le v5, v6, :cond_ramp_in_cap

    move v5, v6

    :cond_ramp_in_cap
    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    mul-int/lit8 v5, v5, 0x64

    const/16 v6, 0xff

    if-le v5, v6, :cond_ramp_out_cap

    move v5, v6

    :cond_ramp_out_cap
    int-to-byte v5, v5""",
    """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    mul-int/lit8 v5, v5, 0x64

    const/16 v6, 0xff

    if-le v5, v6, :cond_2

    move v5, v6

    :cond_2
    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    mul-int/lit8 v5, v5, 0x64

    const/16 v6, 0xff

    if-le v5, v6, :cond_3

    move v5, v6

    :cond_3
    int-to-byte v5, v5""",
    """    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    int-to-byte v5, v5""",
]

PROTO_RAMP_VARIANTS = [
    """    add-int/lit8 v1, p7, 0x9

    div-int/lit8 v1, v1, 0xa

    const/16 v3, 0xff

    if-le v1, v3, :cond_0

    move v1, v3

    :cond_0
    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    add-int/lit8 v1, p8, 0x9

    div-int/lit8 v1, v1, 0xa

    const/16 v3, 0xff

    if-le v1, v3, :cond_1

    move v1, v3

    :cond_1
    int-to-byte v1, v1

    const/16 v3, 0x8

    aput-byte v1, v0, v3""",
    """    add-int/lit8 v1, p7, 0x9

    div-int/lit8 v1, v1, 0xa

    const/16 v3, 0xff

    if-le v1, v3, :cond_proto_ramp_in_cap

    move v1, v3

    :cond_proto_ramp_in_cap
    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    add-int/lit8 v1, p8, 0x9

    div-int/lit8 v1, v1, 0xa

    const/16 v3, 0xff

    if-le v1, v3, :cond_proto_ramp_out_cap

    move v1, v3

    :cond_proto_ramp_out_cap
    int-to-byte v1, v1

    const/16 v3, 0x8

    aput-byte v1, v0, v3""",
    """    mul-int/lit8 v1, p7, 0x64

    const/16 v3, 0xff

    if-le v1, v3, :cond_proto_ramp_in_cap

    move v1, v3

    :cond_proto_ramp_in_cap
    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    mul-int/lit8 v1, p8, 0x64

    const/16 v3, 0xff

    if-le v1, v3, :cond_proto_ramp_out_cap

    move v1, v3

    :cond_proto_ramp_out_cap
    int-to-byte v1, v1

    const/16 v3, 0x8

    aput-byte v1, v0, v3""",
    """    mul-int/lit8 v1, p7, 0x64

    const/16 v3, 0xff

    if-le v1, v3, :cond_0

    move v1, v3

    :cond_0
    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    mul-int/lit8 v1, p8, 0x64

    const/16 v3, 0xff

    if-le v1, v3, :cond_1

    move v1, v3

    :cond_1
    int-to-byte v1, v1

    const/16 v3, 0x8

    aput-byte v1, v0, v3""",
    """    .line 138
    int-to-byte v1, p7

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    int-to-byte v1, p8

    const/16 v3, 0x8

    aput-byte v1, v0, v3""",
]


def _replace_first(text: str, variants: list[str], replacement: str, label: str) -> str:
    if replacement in text:
        return text
    for old in variants:
        if old in text:
            return text.replace(old, replacement, 1)
    raise SystemExit(f"{label}: expected block not found")


def hide_ramp_ui() -> None:
    text = EDIT_PARAM_LAYOUT.read_text(encoding="utf-8")
    if re.search(
        r"<LinearLayout[^>]*android:visibility=\"gone\"[^>]*>[\s\S]*?@string/inputramp",
        text,
    ):
        return
    if RAMP_COLUMN not in text:
        raise SystemExit("ramp column not found in edit_parameter_dialog.xml")
    EDIT_PARAM_LAYOUT.write_text(text.replace(RAMP_COLUMN, RAMP_COLUMN_HIDDEN, 1), encoding="utf-8")
    print("hidden ramp column in edit_parameter_dialog.xml")


def zero_ramp_bytes() -> None:
    command = COMMAND_UTIL.read_text(encoding="utf-8")
    command = _replace_first(command, COMMAND_RAMP_VARIANTS, RAMP_ZERO_COMMAND, "CommandUtil")
    COMMAND_UTIL.write_text(command, encoding="utf-8")

    proto = PROTOCOL_CONTROLLER.read_text(encoding="utf-8")
    proto = _replace_first(proto, PROTO_RAMP_VARIANTS, RAMP_ZERO_PROTO, "ProtocolController")
    PROTOCOL_CONTROLLER.write_text(proto, encoding="utf-8")
    print("forced ramp PDU bytes to zero")


def skip_ramp_precheck() -> None:
    text = EDIT_DIALOG.read_text(encoding="utf-8")
    if PRECHECK_SKIP in text:
        return
    if re.search(r'\.local v3, "value2":I\n    goto ', text):
        return
    text = _replace_first(text, PRECHECK_VARIANTS, PRECHECK_SKIP, "EditUserProgramDataDialog.preCheck")
    EDIT_DIALOG.write_text(text, encoding="utf-8")
    print("skipped ramp validation in preCheck")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1

    hide_ramp_ui()
    zero_ramp_bytes()
    skip_ramp_precheck()
    print("Removed ramp (hidden UI, zero PDU bytes, no validation)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
