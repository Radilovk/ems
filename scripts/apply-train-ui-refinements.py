#!/usr/bin/env python3
"""Train row refinements: no BT icon, disconnect avatar overlay, status icons, impulse layout."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
TRAIN_VIEW_HOLDER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainViewHolder.smali"
TRAIN_ADAPTER = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter.smali"
)

ROW_LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

STATUS_ICONS = re.compile(
    r"<LinearLayout android:gravity=\"center_vertical\" android:orientation=\"horizontal\" "
    r"android:layout_width=\"wrap_content\" android:layout_height=\"wrap_content\" "
    r"android:layout_alignParentRight=\"true\" android:layout_centerVertical=\"true\">[\s\S]*?"
    r"</LinearLayout>\s*</RelativeLayout>\s*"
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

WAVE_VALUE = re.compile(
    r"(<TextView[^>]*android:id=\"@id/wave_ball_progress_value\"[^>]*)(android:layout_width=\"wrap_content\")",
)

SIGNAL_BLOCK = re.compile(
    r"    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z\n\n"
    r"    if-nez v1, :cond_9\n\n"
    r"    \.line 271\n"
    r"    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
    r"    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->signalImage:Landroid/widget/ImageView;\n\n"
    r"    const v2, 0x7f0c0068\n\n"
    r"    invoke-virtual \{v1, v2\}, Landroid/widget/ImageView;->setBackgroundResource\(I\)V\n\n"
    r"    goto :goto_5\n\n"
    r"    \.line 273\n"
    r"    :cond_9\n"
    r"    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
    r"    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->signalImage:Landroid/widget/ImageView;\n\n"
    r"    const v2, 0x7f0c0067\n\n"
    r"    invoke-virtual \{v1, v2\}, Landroid/widget/ImageView;->setBackgroundResource\(I\)V\n\n"
    r"    \.line 275\n"
    r"    :goto_5",
)

LEGACY_SIGNAL = re.compile(
    r"    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z\n\n"
    r"    if-nez v2, :cond_1\n\n"
    r"    \.line 1348\n"
    r"    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment\$UserTrainAdapter\$UserTrainControlHolder;->signalImage:Landroid/widget/ImageView;\n\n"
    r"    const v3, 0x7f0c0068\n\n"
    r"    invoke-virtual \{v2, v3\}, Landroid/widget/ImageView;->setBackgroundResource\(I\)V\n\n"
    r"    goto :goto_0\n\n"
    r"    \.line 1351\n"
    r"    :cond_1\n"
    r"    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment\$UserTrainAdapter\$UserTrainControlHolder;->signalImage:Landroid/widget/ImageView;\n\n"
    r"    const v3, 0x7f0c0067\n\n"
    r"    invoke-virtual \{v2, v3\}, Landroid/widget/ImageView;->setBackgroundResource\(I\)V\n\n"
    r"    \.line 1354\n"
    r"    :goto_0",
)

UPDATE_TIME_CONNECTED = """    iget-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_connected_train

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->userIcon:Landroid/widget/ImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    const/high16 v3, 0x41500000

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    goto :goto_1

    :cond_connected_train
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->userIcon:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 293
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I"""

LEGACY_DISCONNECT = """    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v2, :cond_legacy_connected

    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->userIcon:Landroid/widget/ImageView;

    const v3, 0x3ecccccd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    const/high16 v4, 0x41500000

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_legacy_connected
    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->userIcon:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1354
    :goto_0"""


def status_icons_block() -> str:
    return """<LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignParentRight="true" android:layout_centerVertical="true">
                        <com.isaigu.gymapp.widget.BatterView android:id="@id/MyBatterView" android:layout_width="17.0dip" android:layout_height="26.0dip" app:batteryTextSize="15.0sp" app:mCapWidth="3.0dip" app:showText="false" />
                        <TextView android:textSize="8.0sp" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/batteryValueTextView" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="2.0dip" android:text="100" />
                        <com.isaigu.gymapp.widget.MyButton android:id="@id/setting" android:background="@mipmap/set" android:layout_width="22.0dip" android:layout_height="22.0dip" android:layout_marginLeft="8.0dip" />
                    </LinearLayout>
                    <ImageView android:id="@id/signalImage" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
                </RelativeLayout>
            """


def pulse_continue_block() -> str:
    return """<LinearLayout android:orientation="vertical" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="10.0dip" android:layout_marginTop="4.0dip">
                <TextView android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:textColor="@color/impulse_accent" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginBottom="5.0dip" android:text="@string/paulsecontinue" />
                <com.isaigu.gymapp.widget.AmountView2 android:id="@id/paulsecontinue" android:layout_width="wrap_content" android:layout_height="36.0dip" />
            </LinearLayout>
            """


def pulse_stop_block() -> str:
    return """<LinearLayout android:orientation="vertical" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="10.0dip" android:layout_marginTop="8.0dip">
                <TextView android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:textColor="@color/pause_accent" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginBottom="5.0dip" android:text="@string/paulsestop" />
                <com.isaigu.gymapp.widget.AmountView2 android:id="@id/paulsestop" android:layout_width="wrap_content" android:layout_height="36.0dip" />
            </LinearLayout>
            """


def patch_row_layouts() -> None:
    marker = 'android:layout_marginBottom="5.0dip" android:text="@string/paulsecontinue"'
    for layout_dir in ("layout", "layout-night"):
        for name in ROW_LAYOUTS:
            path = RES / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            if marker in text and '@id/signalImage" android:visibility="gone"' in text:
                continue

            if STATUS_ICONS.search(text):
                text = STATUS_ICONS.sub(status_icons_block(), text, count=1)
            else:
                raise SystemExit(f"status icons block not found in {layout_dir}/{name}")

            if marker not in text:
                if PULSE_CONTINUE.search(text):
                    text = PULSE_CONTINUE.sub(pulse_continue_block(), text, count=1)
                elif PULSE_CONTINUE_V.search(text):
                    text = PULSE_CONTINUE_V.sub(pulse_continue_block(), text, count=1)
                else:
                    raise SystemExit(f"pulse continue block not found in {layout_dir}/{name}")

                if PULSE_STOP.search(text):
                    text = PULSE_STOP.sub(pulse_stop_block(), text, count=1)
                elif PULSE_STOP_V.search(text):
                    text = PULSE_STOP_V.sub(pulse_stop_block(), text, count=1)
                else:
                    raise SystemExit(f"pulse stop block not found in {layout_dir}/{name}")

            if WAVE_VALUE.search(text) and 'android:gravity="center"' not in text.split("wave_ball_progress_value")[1][:120]:
                text = WAVE_VALUE.sub(
                    r'\1android:gravity="center" android:paddingLeft="12.0dip" '
                    r'android:paddingRight="12.0dip" android:maxLines="2" \2',
                    text,
                    count=1,
                )

            path.write_text(text, encoding="utf-8")
            print(f"refined {layout_dir}/{name}")


def patch_amount_layout() -> None:
    for layout_dir in ("layout", "layout-night"):
        path = RES / layout_dir / "amount_layout2.xml"
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if 'android:id="@id/btnDecrease" android:textSize="28.0sp"' in text:
            continue
        for btn_id in ("btnDecrease", "btnIncrease"):
            text = re.sub(
                rf'(android:id="@id/{btn_id}")',
                r'\1 android:textSize="28.0sp"',
                text,
                count=1,
            )
        path.write_text(text, encoding="utf-8")
        print(f"refined {layout_dir}/amount_layout2.xml +/- text size")


def patch_train_view_holder() -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    if "cond_connected_train" in text:
        print("TrainViewHolder: disconnect UI already patched")
    else:
        if not SIGNAL_BLOCK.search(text):
            raise SystemExit("TrainViewHolder signal block not found")
        text = SIGNAL_BLOCK.sub("    .line 275\n    :goto_5", text, count=1)

        anchor = "    .line 293\n    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I"
        if anchor not in text:
            raise SystemExit("TrainViewHolder.updateTime anchor not found")
        text = text.replace(
            anchor,
            UPDATE_TIME_CONNECTED + "\n",
            1,
        )
        TRAIN_VIEW_HOLDER.write_text(text, encoding="utf-8")
        print("TrainViewHolder: avatar disconnect overlay + removed BT icon logic")


def patch_legacy_adapter() -> None:
    text = TRAIN_ADAPTER.read_text(encoding="utf-8")
    if "cond_legacy_connected" in text:
        print("TrainFragment adapter: disconnect UI already patched")
        return
    if not LEGACY_SIGNAL.search(text):
        raise SystemExit("TrainFragment adapter signal block not found")
    text = LEGACY_SIGNAL.sub(LEGACY_DISCONNECT, text, count=1)
    TRAIN_ADAPTER.write_text(text, encoding="utf-8")
    print("TrainFragment adapter: legacy disconnect overlay")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    patch_row_layouts()
    patch_amount_layout()
    patch_train_view_holder()
    patch_legacy_adapter()
    print("Training UI refinements applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
