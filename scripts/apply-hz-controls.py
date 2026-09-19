#!/usr/bin/env python3
"""Hz indicator + shared slider/master controls for frequency during training."""

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
PUBLIC_XML = DECOMPILED / "res" / "values" / "public.xml"
R_ID = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "R$id.smali"
R_DRAWABLE = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "R$drawable.smali"
TRAIN_ITEM = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "model"
    / "TrainItem.smali"
)
TRAIN_VIEW_HOLDER = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "TrainViewHolder.smali"
)
TRAIN_VIEW_HOLDER_4 = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "TrainViewHolder$4.smali"
)
TRAIN_ITEM_MANAGER = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "train"
    / "TrainItemManager.smali"
)
TRAIN_DIR = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "train"
DRAWABLE_SRC = ROOT / "branding" / "drawable"
DRAWABLE_NIGHT_SRC = ROOT / "branding" / "drawable-night"

HZ_ID_NAMES = ("hzValue",)
GREEN_BG = 0x7f080091
BLACK_BG = 0x7f080090

AVATAR_BLOCK = re.compile(
    r"<RelativeLayout android:layout_width=\"0\.0dip\" android:layout_height=\"fill_parent\" "
    r"android:layout_weight=\"0\.6\">[\s\S]*?"
    r"(?:<TextView android:id=\"@id/hzValue\"[\s\S]*?/>|"
    r"<com\.isaigu\.gymapp\.widget\.MyButton android:id=\"@id/setting\"[\s\S]*?/>)\s*"
    r"</RelativeLayout>",
)

AVATAR_NEW = """<RelativeLayout android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="0.6">
            <TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:gravity="center" android:id="@id/ma" android:background="@drawable/light_black_button_drawable_r30" android:layout_width="50.0dip" android:layout_height="50.0dip" android:layout_marginTop="10.0dip" android:text="35mA" />
            <ImageView android:id="@id/userIcon" android:padding="28.0dip" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_marginRight="1.0dip" android:src="@mipmap/icon_sample" />
            <TextView android:textColor="@color/text_primary" android:textSize="45.0sp" android:textStyle="bold" android:id="@id/wave_ball_progress_value" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_centerInParent="true" />
            <com.isaigu.gymapp.widget.WaveBallProgress android:id="@id/wave_ball_progress_act_view" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_margin="42.0dip" android:layout_centerInParent="true" />
            <TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:gravity="center" android:id="@id/hzValue" android:background="@drawable/light_black_button_drawable_r30" android:layout_width="50.0dip" android:layout_height="50.0dip" android:layout_alignParentBottom="true" android:layout_marginBottom="10.0dip" android:text="80Hz" />
            <com.isaigu.gymapp.widget.CircleSeekBar android:id="@id/circleSeekBar" android:paddingLeft="14.0dip" android:paddingTop="14.0dip" android:paddingRight="14.0dip" android:paddingBottom="10.0dip" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_marginRight="2.0dip" android:layout_centerInParent="true" android:rotation="180.0" app:wave_bg_color="@color/blume_color" app:wheel_pointer_color="@color/grown_color" app:wheel_pointer_radius="18.0dip" app:wheel_reached_width="14.0dip" app:wheel_scroll_only_one_circle="true" app:wheel_unreached_color="@color/seekbar_back_gray" app:wheel_unreached_width="14.0dip" />
        </RelativeLayout>"""

HZ_BUTTONS = re.compile(
    r"\s*<com\.isaigu\.gymapp\.widget\.MyButton android:id=\"@id/hzAdd\"[^>]*/>\s*"
    r"<com\.isaigu\.gymapp\.widget\.MyButton android:id=\"@id/hzMinus\"[^>]*/>\s*",
)

USER_INFO_OLD = re.compile(
    r"<RelativeLayout android:gravity=\"center_vertical\" android:layout_width=\"fill_parent\" "
    r"android:layout_height=\"wrap_content\">"
    r"\s*<TextView[^>]*android:id=\"@id/name\"[^>]*/>\s*"
    r"<TextView[^>]*android:id=\"@id/address\"[^>]*/>\s*"
    r"</RelativeLayout>\s*"
    r"<RelativeLayout android:layout_width=\"fill_parent\" android:layout_height=\"wrap_content\" "
    r"android:layout_marginLeft=\"10\.0dip\">"
    r"\s*<TextView[^>]*android:id=\"@id/time\"[^>]*/>\s*"
    r"<ImageView[^>]*android:id=\"@id/signalImage\"[^>]*/>\s*"
    r"<RelativeLayout android:layout_width=\"wrap_content\" android:layout_height=\"wrap_content\"[^>]*>"
    r"[\s\S]*?</RelativeLayout>\s*"
    r"</RelativeLayout>",
)

USER_INFO_PATCHED = re.compile(
    r"<RelativeLayout android:layout_width=\"fill_parent\" android:layout_height=\"wrap_content\" "
    r"android:layout_marginLeft=\"10\.0dip\" android:layout_marginRight=\"4\.0dip\">"
    r"[\s\S]*?@drawable/ui_status_icon_bg[\s\S]*?@id/setting[\s\S]*?</RelativeLayout>",
)

USER_INFO_FACTORY = re.compile(
    r"<RelativeLayout android:layout_width=\"fill_parent\" android:layout_height=\"wrap_content\" "
    r"android:layout_marginLeft=\"10\.0dip\" android:layout_marginRight=\"4\.0dip\">"
    r"[\s\S]*?@mipmap/signal[\s\S]*?@id/setting[\s\S]*?</RelativeLayout>",
)

USER_INFO_BROKEN = re.compile(
    r"(@drawable/ui_status_icon_bg[\s\S]*?</FrameLayout>\s*</LinearLayout>\s*</RelativeLayout>)\s*</RelativeLayout>\s*"
    r"(<RelativeLayout android:layout_width=\"wrap_content\" android:layout_height=\"wrap_content\" "
    r"android:layout_marginLeft=\"10\.0dip\">\s*<com\.isaigu\.gymapp\.widget\.AmountView2 "
    r"android:id=\"@id/paulsecontinue\")",
)


def user_info_new(name_size: str, time_size: str) -> str:
    return f"""<RelativeLayout android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginLeft="10.0dip" android:layout_marginRight="4.0dip">
                <LinearLayout android:orientation="vertical" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignParentLeft="true" android:layout_centerVertical="true">
                    <TextView android:textColor="@color/text_primary" android:textSize="{name_size}" android:gravity="center|left" android:id="@id/name" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="张先生" />
                    <TextView android:textSize="{time_size}" android:textColor="@color/text_primary" android:id="@id/time" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="2.0dip" android:text="20:00" />
                </LinearLayout>
                <TextView android:textColor="@color/text_primary" android:textSize="12.0sp" android:gravity="center|left" android:id="@id/address" android:visibility="gone" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="5.0dip" android:text="张先生" />
                <LinearLayout android:gravity="center_vertical" android:orientation="horizontal" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignParentRight="true" android:layout_centerVertical="true">
                    <ImageView android:id="@id/signalImage" android:background="@mipmap/signal" android:layout_width="20.0dip" android:layout_height="31.0dip" android:scaleType="fitXY" />
                    <RelativeLayout android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginLeft="6.0dip">
                        <com.isaigu.gymapp.widget.BatterView android:id="@id/MyBatterView" android:layout_width="16.0dip" android:layout_height="32.0dip" android:layout_centerInParent="true" app:batteryTextSize="15.0sp" app:mCapWidth="3.0dip" app:showText="false" />
                        <TextView android:textSize="10.0sp" android:textColor="@color/text_primary" android:gravity="center" android:id="@id/batteryValueTextView" android:layout_width="wrap_content" android:layout_height="wrap_content" android:text="100" android:layout_centerInParent="true" android:rotation="90.0" />
                    </RelativeLayout>
                    <com.isaigu.gymapp.widget.MyButton android:id="@id/setting" android:background="@mipmap/set" android:layout_width="22.0dip" android:layout_height="22.0dip" android:layout_marginLeft="8.0dip" />
                </LinearLayout>
            </RelativeLayout>"""


ADD_HZ_METHOD = """
.method public addHz(I)V
    .locals 2
    .param p1, "value"    # I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    add-int/2addr v0, p1

    const/16 v1, 0x78

    if-le v0, v1, :cond_0

    const/16 v0, 0x78

    :cond_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->sendPulse()V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onTrainItemChange()V

    return-void
.end method
"""

HZ_SELECTED_FIELD = """.field private hzSelected:Z
"""

HZ_SELECTED_INIT = """    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z
"""

HZ_SELECTED_METHODS = """
.method public isHzSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z

    return v0
.end method

.method public setHzSelected(Z)V
    .locals 0
    .param p1, "hzSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z

    return-void
.end method
"""


def bind_hz_value_click_smali(hz_value_id: int) -> str:
    return f"""
.method private bindHzValueClick()V
    .locals 3

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {hz_value_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_end

    new-instance v1, Lcom/isaigu/gymapp/train/TrainHzValueClickListener;

    invoke-direct {{v1, p0}}, Lcom/isaigu/gymapp/train/TrainHzValueClickListener;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {{v0, v1}}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_end
    return-void
.end method
""".strip()


def update_hz_display_smali(hz_value_id: int) -> str:
    return f"""
.method private updateHzDisplay()V
    .locals 4

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {hz_value_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {{p0}}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {{v2}}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-virtual {{v2, v1}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Hz"

    invoke-virtual {{v2, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v2}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {{v0, v1}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, {GREEN_BG:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v1, {BLACK_BG:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
""".strip()


HZ_VALUE_CLICK_LISTENER = """.class public Lcom/isaigu/gymapp/train/TrainHzValueClickListener;
.super Ljava/lang/Object;
.source "TrainHzValueClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final holder:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainHzValueClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void
.end method
"""

SEEKBAR_LISTENER = """.class Lcom/isaigu/gymapp/train/TrainViewHolder$4;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .locals 5
    .param p1, "seekbar"    # Lcom/isaigu/gymapp/widget/CircleSeekBar;
    .param p2, "curValue"    # I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v0

    if-eqz v0, :cond_strength

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_hz_done

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p2, 0x78

    div-int/lit8 v2, v2, 0x4b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_hz_done
    return-void

    :cond_strength
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$400(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$500(Lcom/isaigu/gymapp/train/TrainViewHolder;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v3, p2, 0x64

    div-int/lit8 v3, v3, 0x4b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .locals 4
    .param p1, "seekbar"    # Lcom/isaigu/gymapp/widget/CircleSeekBar;
    .param p2, "curValue"    # I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v0

    if-eqz v0, :cond_strength

    mul-int/lit8 v0, p2, 0x78

    div-int/lit8 v0, v0, 0x4b

    const/4 v1, 0x1

    if-ge v0, v1, :cond_hz_min

    const/4 v0, 0x1

    :cond_hz_min
    const/16 v1, 0x78

    if-le v0, v1, :cond_hz_store

    const/16 v0, 0x78

    :cond_hz_store
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void

    :cond_strength
    mul-int/lit8 v0, p2, 0x64

    div-int/lit8 v0, v0, 0x4b

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    sub-int v2, v0, v1

    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    add-int/lit8 v0, v1, 0x14

    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    iput v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void
.end method
"""

ADD_ALL_PART_VALUE_OLD = """.method public addAllPartValue(I)V
    .locals 3
    .param p1, "value"    # I

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 65
    .local v0, "anyMaSelected":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$NH_2vasCxMVn7scoo3q5zW5xA-M;

    invoke-direct {v2, v0, p1}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$NH_2vasCxMVn7scoo3q5zW5xA-M;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$UF59B4EXu0W6VouWuS5ErUQhZs4;

    invoke-direct {v2, p1}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$UF59B4EXu0W6VouWuS5ErUQhZs4;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 74
    :cond_0
    return-void
.end method"""

ADD_ALL_PART_VALUE_NEW = ADD_ALL_PART_VALUE_OLD

LAMBDA_ADD_ALL_OLD = """.method static synthetic lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p0, "anyMaSelected"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "value"    # I
    .param p2, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 66
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 70
    :cond_0
    return-void
.end method"""

LAMBDA_ADD_ALL_NEW = """.method static synthetic lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p0, "anySelected"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "value"    # I
    .param p2, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v0

    if-eqz v0, :cond_ma

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    return-void

    :cond_ma
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-eqz v0, :cond_end

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_end
    return-void
.end method"""

UPDATE_UI_SEEKBAR_OLD = """    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V"""

UPDATE_UI_SEEKBAR_NEW = """    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v2

    if-eqz v2, :cond_seek_strength

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x78

    goto :goto_seek_set

    :cond_seek_strength
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    mul-int/lit8 v2, v2, 0x4b

    div-int/lit8 v2, v2, 0x64

    :goto_seek_set
    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V"""

MA_CLICK_OLD = """    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 145
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V"""

MA_CLICK_NEW = """    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    if-eqz v1, :cond_clear_hz

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    :cond_clear_hz
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V"""


def next_drawable_id() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_DRAWABLE):
        if not path.exists():
            continue
        ids.extend(int(value, 16) for value in re.findall(r"0x7f08[0-9a-f]+", path.read_text(encoding="utf-8")))
    return max(ids) + 1 if ids else 0x7f0800db


def register_drawable(name: str) -> None:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    if f'name="{name}"' in public_text:
        return
    resource_hex = f"0x{next_drawable_id():08x}"
    PUBLIC_XML.write_text(
        public_text.replace(
            "</resources>",
            f'    <public type="drawable" name="{name}" id="{resource_hex}" />\n</resources>',
            1,
        ),
        encoding="utf-8",
    )
    r_text = R_DRAWABLE.read_text(encoding="utf-8")
    if f".field public static final {name}:I" not in r_text:
        R_DRAWABLE.write_text(
            r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {name}:I = {resource_hex}\n\n\n# direct methods",
                1,
            ),
            encoding="utf-8",
        )
    for src_dir in (DRAWABLE_SRC, DRAWABLE_NIGHT_SRC):
        src = src_dir / f"{name}.xml"
        if not src.exists():
            continue
        for dest_dir_name in ("drawable", "drawable-night"):
            dest = DECOMPILED / "res" / dest_dir_name / f"{name}.xml"
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_text(src.read_text(encoding="utf-8"), encoding="utf-8")


def next_id_value() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_ID):
        if path.exists():
            ids.extend(int(value, 16) for value in re.findall(r"0x7f09[0-9a-f]+", path.read_text(encoding="utf-8")))
    if not ids:
        raise RuntimeError("could not determine next view id")
    return max(ids) + 1


def register_ids() -> dict[str, int]:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    r_text = R_ID.read_text(encoding="utf-8")
    ids_xml = DECOMPILED / "res" / "values" / "ids.xml"
    ids_text = ids_xml.read_text(encoding="utf-8")
    assigned: dict[str, int] = {}
    for name in HZ_ID_NAMES:
        match = re.search(rf'type="id" name="{name}" id="(0x[0-9a-f]+)"', public_text)
        if match:
            assigned[name] = int(match.group(1), 16)
            continue
        resource_id = next_id_value()
        resource_hex = f"0x{resource_id:08x}"
        assigned[name] = resource_id
        public_text = public_text.replace(
            "</resources>",
            f'    <public type="id" name="{name}" id="{resource_hex}" />\n</resources>',
            1,
        )
        if f'name="{name}"' not in ids_text:
            ids_text = ids_text.replace(
                "</resources>",
                f'    <item type="id" name="{name}" />\n</resources>',
                1,
            )
        if f".field public static final {name}:I" not in r_text:
            r_text = r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {name}:I = {resource_hex}\n\n\n# direct methods",
                1,
            )
    PUBLIC_XML.write_text(public_text, encoding="utf-8")
    R_ID.write_text(r_text, encoding="utf-8")
    ids_xml.write_text(ids_text, encoding="utf-8")
    return assigned


def patch_layouts() -> None:
    for layout_dir in ("layout", "layout-night"):
        for name in ("new_user_train_control_item_layout.xml", "user_train_control_item_layout.xml"):
            path = DECOMPILED / "res" / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            if HZ_BUTTONS.search(text):
                text = HZ_BUTTONS.sub("", text, count=1)
                print(f"removed Hz +/- buttons from {layout_dir}/{name}")

            hz_value_chunk = text.split("@id/hzValue", 1)[1][:400] if "@id/hzValue" in text else ""
            avatar_done = (
                "@id/hzValue" in text
                and "@id/hzAdd" not in text
                and 'android:layout_alignParentBottom="true"' in hz_value_chunk
                and "@id/setting" not in text.split("@id/circleSeekBar", 1)[0]
            )
            if not avatar_done:
                if AVATAR_BLOCK.search(text):
                    text = AVATAR_BLOCK.sub(AVATAR_NEW, text, count=1)
                    print(f"patched {layout_dir}/{name} avatar area")
                elif "@id/hzValue" not in text:
                    raise RuntimeError(f"avatar block not found in {layout_dir}/{name}")
            else:
                print(f"{layout_dir}/{name}: avatar area already updated")

            if USER_INFO_BROKEN.search(text):
                text = USER_INFO_BROKEN.sub(r"\1\n            \2", text, count=1)
                print(f"fixed {layout_dir}/{name} user status row markup")

            if USER_INFO_PATCHED.search(text):
                print(f"{layout_dir}/{name}: user status row already updated")
            elif USER_INFO_FACTORY.search(text):
                print(f"{layout_dir}/{name}: user status row already factory style")
            elif USER_INFO_OLD.search(text):
                name_size = "14.0sp" if name.startswith("new_") else "16.0sp"
                time_size = "18.0sp" if name.startswith("new_") else "28.0sp"
                text = USER_INFO_OLD.sub(user_info_new(name_size, time_size), text, count=1)
                print(f"patched {layout_dir}/{name} user status row")
            elif "@drawable/ui_status_icon_bg" not in text:
                raise RuntimeError(f"user info block not found in {layout_dir}/{name}")

            path.write_text(text, encoding="utf-8")


def patch_train_item() -> None:
    text = TRAIN_ITEM.read_text(encoding="utf-8")
    if "addHz(I)V" not in text:
        marker = ".method public close()V"
        if marker not in text:
            raise RuntimeError("TrainItem.close marker not found")
        text = text.replace(marker, ADD_HZ_METHOD.strip() + "\n\n" + marker, 1)
        print("TrainItem: added addHz()")

    if "hzSelected:Z" not in text:
        text = text.replace(
            ".field private maSelected:Z\n",
            ".field private maSelected:Z\n\n.field private hzSelected:Z\n",
            1,
        )
        text = text.replace(
            "    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z\n",
            HZ_SELECTED_INIT,
            1,
        )
        text = text.replace(
            ".method public isMaSelected()Z",
            HZ_SELECTED_METHODS.strip() + "\n\n.method public isMaSelected()Z",
            1,
        )
        print("TrainItem: added hzSelected state")

    TRAIN_ITEM.write_text(text, encoding="utf-8")


def patch_train_view_holder(ids: dict[str, int]) -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    bind_block = bind_hz_value_click_smali(ids["hzValue"])
    display_block = update_hz_display_smali(ids["hzValue"])

    if "bindHzValueClick()V" not in text:
        if "bindHzControls()V" in text:
            text = re.sub(
                r"\.method private bindHzControls\(\)V.*?\.end method",
                bind_block,
                text,
                count=1,
                flags=re.DOTALL,
            )
            text = text.replace("bindHzControls()V", "bindHzValueClick()V")
        else:
            bind_end = """    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindHzControls()V

    return-void
.end method"""
            bind_new = """    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindHzValueClick()V

    return-void
.end method"""
            if bind_end not in text:
                bind_end2 = """    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method"""
                bind_new2 = """    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindHzValueClick()V

    return-void
.end method"""
                if bind_end2 in text:
                    text = text.replace(bind_end2, bind_new2, 1)
                else:
                    raise RuntimeError("TrainViewHolder.bindListener end marker not found")
            else:
                text = text.replace(bind_end, bind_new, 1)
            text = text.replace(
                ".method private bindNotEmpty()V",
                bind_block + "\n\n" + display_block + "\n\n.method private bindNotEmpty()V",
                1,
            )
        print("TrainViewHolder: added bindHzValueClick + updateHzDisplay")
    else:
        text = re.sub(
            r"\.method private bindHzValueClick\(\)V.*?\.end method",
            bind_block,
            text,
            count=1,
            flags=re.DOTALL,
        )
        text = re.sub(
            r"\.method private updateHzDisplay\(\)V.*?\.end method",
            display_block,
            text,
            count=1,
            flags=re.DOTALL,
        )

    if UPDATE_UI_SEEKBAR_OLD in text:
        text = text.replace(UPDATE_UI_SEEKBAR_OLD, UPDATE_UI_SEEKBAR_NEW, 1)
        print("TrainViewHolder.updateUI: Hz-aware seekbar position")

    if MA_CLICK_OLD in text:
        text = text.replace(MA_CLICK_OLD, MA_CLICK_NEW, 1)
        print("TrainViewHolder: ma click clears hz selection")

    if "updateHzDisplay()V" not in text.split("updateUI()V")[1].split(".method")[0]:
        update_marker = """    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateHzDisplay()V"""
        if update_marker not in text:
            text = text.replace(
                """    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateHzDisplay()V

    .line 218""",
                """    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateHzDisplay()V

    .line 218""",
                1,
            )
            alt = """    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218"""
            if alt in text:
                text = text.replace(
                    alt,
                    """    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateHzDisplay()V

    .line 218""",
                    1,
                )

    TRAIN_VIEW_HOLDER.write_text(text, encoding="utf-8")


def patch_seekbar_listener(hz_value_id: int) -> None:
    content = SEEKBAR_LISTENER.replace("0x7f090206", f"{hz_value_id:#x}")
    TRAIN_VIEW_HOLDER_4.write_text(content.strip() + "\n", encoding="utf-8")
    print("TrainViewHolder$4: Hz-aware circle slider")


def patch_train_item_manager() -> None:
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    lambda_body = text.split("lambda$addAllPartValue$6", 1)[-1].split(".method", 1)[0]
    if "isHzSelected()Z" in lambda_body and "addHz(I)V" in lambda_body:
        print("TrainItemManager: Hz master controls already patched")
        return
    if LAMBDA_ADD_ALL_OLD in text:
        text = text.replace(LAMBDA_ADD_ALL_OLD, LAMBDA_ADD_ALL_NEW, 1)
        print("TrainItemManager: lambda checks hzSelected first")
    elif LAMBDA_ADD_ALL_NEW not in text:
        raise RuntimeError("TrainItemManager lambda marker not found")

    if "isHzSelected()Z" not in text.split("addAllPartValue(I)V")[1].split(".method")[0]:
        print("TrainItemManager.addAllPartValue: unchanged (lambda handles Hz)")

    TRAIN_ITEM_MANAGER.write_text(text, encoding="utf-8")


def write_listener() -> None:
    (TRAIN_DIR / "TrainHzValueClickListener.smali").write_text(HZ_VALUE_CLICK_LISTENER.strip() + "\n", encoding="utf-8")
    for obsolete in ("TrainHzAddListener.smali", "TrainHzMinusListener.smali"):
        path = TRAIN_DIR / obsolete
        if path.exists():
            path.unlink()
            print(f"removed obsolete {obsolete}")


def main() -> None:
    ids = register_ids()
    for drawable in ("ui_hz_button_bg", "ui_hz_value_bg", "ui_status_icon_bg"):
        register_drawable(drawable)
    patch_layouts()
    patch_train_item()
    patch_train_view_holder(ids)
    patch_seekbar_listener(ids["hzValue"])
    patch_train_item_manager()
    write_listener()
    print("Hz shared-control patches applied.")


if __name__ == "__main__":
    main()
