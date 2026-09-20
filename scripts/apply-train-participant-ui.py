#!/usr/bin/env python3
"""Train participant UX: initial empty slot, footer add-user control, sidebar intact."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
RES = DECOMPILED / "res"
TRAIN_ITEM_MANAGER = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainItemManager.smali"
)
TRAIN_ADAPTER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainAdapter.smali"
TRAIN_VIEW_HOLDER = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainViewHolder.smali"
)
PUBLIC_XML = RES / "values/public.xml"
IDS_XML = RES / "values/ids.xml"
R_ID = DECOMPILED / "smali_classes2/com/isaigu/gymapp/R$id.smali"
VALUES_DEFAULT = RES / "values/strings.xml"
VALUES_BG = ROOT / "translations/values-bg/strings.xml"
VALUES_BG_DECOMPILED = RES / "values-bg/strings.xml"

STRING_ID = 0x7F0D0174
STRING_NAME = "train_add_participant"
ADD_BTN_ID = 0x7F09028A
ADD_BTN_NAME = "trainAddParticipantBtn"
FOOTER_ROOT_ID = 0x7F09028B
FOOTER_ROOT_NAME = "trainAddParticipantFooter"
FOOTER_LAYOUT_ID = 0x7F0B007E
FOOTER_LAYOUT_FILE = "train_add_participant_footer.xml"

FRAGMENT_LAYOUTS = (
    RES / "layout/new_train_fragment_layout.xml",
    RES / "layout-night/new_train_fragment_layout.xml",
    RES / "layout/train_fragment_layout.xml",
    RES / "layout-night/train_fragment_layout.xml",
)

EMPTY_LAYOUTS = (
    RES / "layout/train_empty_item_layout.xml",
    RES / "layout-night/train_empty_item_layout.xml",
)

USER_ITEM_LAYOUTS = (
    RES / "layout/new_user_train_control_item_layout.xml",
    RES / "layout-night/new_user_train_control_item_layout.xml",
)

EMPTY_CENTER_GONE_RE = re.compile(
    r'(<LinearLayout android:gravity="center" android:orientation="vertical" '
    r'android:layout_width="wrap_content" android:layout_height="wrap_content" '
    r'android:layout_centerInParent="true") android:visibility="gone"',
)

ADD_CIRCLE_OUTER_DP = "64.0dip"
ADD_CIRCLE_INNER_DP = "52.0dip"

FOOTER_LAYOUT = f"""<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout android:id="@id/trainAddParticipantFooter" android:layout_width="fill_parent" android:layout_height="wrap_content" android:layout_marginTop="-48.0dip" android:paddingRight="16.0dip" android:paddingBottom="2.0dip"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <LinearLayout android:gravity="center_horizontal" android:orientation="vertical" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignParentRight="true" android:layout_alignParentBottom="true">
        <FrameLayout android:background="@drawable/shape_bg_white" android:layout_width="{ADD_CIRCLE_OUTER_DP}" android:layout_height="{ADD_CIRCLE_OUTER_DP}">
            <Button android:id="@id/trainAddParticipantBtn" android:background="@mipmap/add3" android:layout_width="{ADD_CIRCLE_INNER_DP}" android:layout_height="{ADD_CIRCLE_INNER_DP}" android:layout_gravity="center" />
        </FrameLayout>
        <TextView android:textSize="14.0sp" android:textColor="@color/text_secondary" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="6.0dip" android:text="@string/train_add_participant" />
    </LinearLayout>
</RelativeLayout>
"""

RECYCLER_PLAIN = (
    '<com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView '
    'android:id="@id/recyclerView" android:layout_width="fill_parent" '
    'android:layout_height="fill_parent" />'
)

RECYCLER_WRAPPED_RE = re.compile(
    r'<RelativeLayout android:layout_width="fill_parent" android:layout_height="fill_parent">\s*'
    r'<com\.yanzhenjie\.recyclerview\.swipe\.SwipeMenuRecyclerView '
    r'android:id="@id/recyclerView" android:layout_width="fill_parent" '
    r'android:layout_height="fill_parent" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/allAdd" '
    r'android:visibility="gone"[^/]*/>\s*</RelativeLayout>',
    re.MULTILINE,
)

BINDING_STUBS = """
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allPerson" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allminus" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allAdd" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
"""

SIDEBAR_CONTROLS = """
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.15" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allAdd" android:background="@mipmap/add" android:layout_width="50.0dip" android:layout_height="50.0dip" />
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.1" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="10.0sp" android:textColor="@color/white_color" android:id="@id/allPerson" android:background="@mipmap/zhukongduan" android:paddingTop="21.0dip" android:layout_width="55.0dip" android:layout_height="55.0dip" android:text="@string/maincontrol" />
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.1" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allminus" android:background="@mipmap/minus" android:layout_width="50.0dip" android:layout_height="50.0dip" />
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.3" />
"""

EMPTY_SLOT_BTN_RE = re.compile(
    r"(<LinearLayout android:gravity=\"center\" android:orientation=\"vertical\" "
    r'android:layout_width="wrap_content" android:layout_height="wrap_content" '
    r'android:layout_centerInParent="true">\s*)'
    r'<Button android[^>]*/>',
    re.DOTALL,
)

EN_STRING = f'    <string name="{STRING_NAME}">Add user</string>'
BG_STRING = f'    <string name="{STRING_NAME}">Добави потребител</string>'

ADD_EMPTY_ITEM_RE = re.compile(
    r"\.method private addEmptyItem\(\)V\n.*?\.end method\n",
    re.DOTALL,
)

ADD_EMPTY_ITEM_SINGLE_SLOT = """.method private addEmptyItem()V
    .locals 6

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "deviceCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "emptyItems":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/train/model/TrainItem;>;"
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 97
    .local v3, "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v3    # "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    :goto_1
    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 105
    .restart local v3    # "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    .end local v3    # "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    goto :goto_2

    .line 107
    :cond_2
    const/4 v2, 0x6

    if-lt v0, v2, :cond_3

    .line 108
    return-void

    .line 110
    :cond_3
    if-nez v0, :cond_4

    .line 111
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {v4, v2}, Lcom/isaigu/gymapp/train/model/TrainItem;-><init>(Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_4
    return-void
.end method
"""

# Revert mistaken allAdd -> add-user dialog patch; sidebar allAdd stays MA master +.
ALL_ADD_DIALOG_PATCH = """.method public synthetic lambda$onCreateView$2$NewTrainFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    return-void
.end method"""

ALL_ADD_ORIGINAL = """.method public synthetic lambda$onCreateView$2$NewTrainFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V

    return-void
.end method"""

VH_CONSTRUCTOR_MARKER = """    .line 51
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isEmpty:Z

    .line 52
    iput-object p3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 53
    if-eqz p1, :cond_0"""

VH_CONSTRUCTOR_FOOTER = """    .line 51
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isEmpty:Z

    .line 52
    iput-object p3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09028b

    if-eq v0, v1, :cond_footer

    goto :goto_footer_skip

    :cond_footer
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isFooter:Z

    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindFooterAddListener(Landroid/view/View;)V

    goto :goto_0

    :goto_footer_skip
    .line 53
    if-eqz p1, :cond_0"""

BIND_LISTENER_MARKER = """    iput-object p2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    .line 194
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isEmpty:Z"""

BIND_LISTENER_MARKER_NEW = """    iput-object p2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isFooter:Z

    if-eqz v0, :cond_footer_done

    .line 194
    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isEmpty:Z"""

BIND_END_MARKER = """    :cond_0
    return-void
.end method

.method public getData()"""

BIND_END_MARKER_NEW = """    :cond_0
    :cond_footer_done
    return-void
.end method

.method public getData()"""

VH_FOOTER_METHODS = """
.method private bindFooterAddListener(Landroid/view/View;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    const v0, 0x7f09028a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$ERzM4vl4JE2XmpD4TpYuFbGJwy4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$ERzM4vl4JE2XmpD4TpYuFbGJwy4;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
"""

ADAPTER_STATIC_FIELD = """.field private static final VIEW_TYPE_NON_EMPTY:I = 0x1
"""

ADAPTER_STATIC_FIELD_NEW = """.field private static final VIEW_TYPE_NON_EMPTY:I = 0x1

.field private static final VIEW_TYPE_ADD_FOOTER:I = 0x2
"""

ADAPTER_GET_ITEM_COUNT = """.method public getItemCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method"""

ADAPTER_GET_ITEM_COUNT_NEW = """.method public getItemCount()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainAdapter;->shouldShowAddFooter()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private shouldShowAddFooter()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method"""

ADAPTER_GET_ITEM_VIEW_TYPE = """.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method"""

ADAPTER_GET_ITEM_VIEW_TYPE_NEW = """.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainAdapter;->shouldShowAddFooter()Z

    move-result v1

    if-eqz v1, :cond_not_footer

    if-ne p1, v0, :cond_not_footer

    const/4 v0, 0x2

    return v0

    :cond_not_footer
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method"""

ADAPTER_ON_BIND = """.method public onBindViewHolder(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/isaigu/gymapp/train/TrainViewHolder;
    .param p2, "position"    # I

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 45
    .local v0, "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bind(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V

    .line 46
    return-void
.end method"""

ADAPTER_ON_BIND_NEW = """.method public onBindViewHolder(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/isaigu/gymapp/train/TrainViewHolder;
    .param p2, "position"    # I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainAdapter;->shouldShowAddFooter()Z

    move-result v1

    if-eqz v1, :cond_bind_item

    if-ne p2, v0, :cond_bind_item

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    iput-object v0, p1, Lcom/isaigu/gymapp/train/TrainViewHolder;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    return-void

    :cond_bind_item
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bind(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V

    return-void
.end method"""

ADAPTER_ON_CREATE = """.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/isaigu/gymapp/train/TrainViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 33
    const/4 v0, 0x0

    if-nez p2, :cond_0"""

ADAPTER_ON_CREATE_NEW = """.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/isaigu/gymapp/train/TrainViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_footer

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/TrainViewHolder;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {v2, v3, v1, v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;-><init>(ZLandroid/view/View;Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    return-object v2

    :cond_footer
    if-nez p2, :cond_0"""

# Undo in-row add button wrapper if present from older builds.
ROW_BTN_UNWRAP = (
    '<RelativeLayout android:layout_width="fill_parent" android:layout_height="fill_parent">\n'
    '        <LinearLayout android:orientation="horizontal" '
    'android:layout_width="fill_parent" android:layout_height="fill_parent">'
)
ROW_BTN_TAIL_RE = re.compile(
    r"        </LinearLayout>\n"
    r"        <com\.isaigu\.gymapp\.widget\.MyButton[^>]*@id/trainAddParticipantBtn[^>]*/>\n"
    r"    </RelativeLayout>\n</LinearLayout>\n$",
)


def register_ids() -> None:
    for name in (ADD_BTN_NAME, FOOTER_ROOT_NAME):
        if name not in IDS_XML.read_text(encoding="utf-8"):
            IDS_XML.write_text(
                IDS_XML.read_text(encoding="utf-8").replace(
                    "</resources>", f'    <item type="id" name="{name}" />\n</resources>', 1
                ),
                encoding="utf-8",
            )
    public = PUBLIC_XML.read_text(encoding="utf-8")
    entries = (
        ("id", ADD_BTN_NAME, ADD_BTN_ID),
        ("id", FOOTER_ROOT_NAME, FOOTER_ROOT_ID),
        ("layout", FOOTER_LAYOUT_FILE.removesuffix(".xml"), FOOTER_LAYOUT_ID),
    )
    for kind, name, val in entries:
        if name not in public:
            public = public.replace(
                "</resources>",
                f'    <public type="{kind}" name="{name}" id="{val:#x}" />\n</resources>',
                1,
            )
    PUBLIC_XML.write_text(public, encoding="utf-8")
    r_text = R_ID.read_text(encoding="utf-8")
    for name, val in ((ADD_BTN_NAME, ADD_BTN_ID), (FOOTER_ROOT_NAME, FOOTER_ROOT_ID)):
        if name not in r_text:
            r_text = r_text.replace(
                ".field public static final zhukongduan:I = 0x7f090",
                f".field public static final {name}:I = {val:#x}\n\n"
                ".field public static final zhukongduan:I = 0x7f090",
                1,
            )
    R_ID.write_text(r_text, encoding="utf-8")
    layout_path = RES / "layout" / FOOTER_LAYOUT_FILE
    layout_path.write_text(FOOTER_LAYOUT, encoding="utf-8")
    night = RES / "layout-night" / FOOTER_LAYOUT_FILE
    if night.parent.is_dir():
        night.write_text(FOOTER_LAYOUT, encoding="utf-8")
    stale = RES / "layout" / FOOTER_LAYOUT_FILE.removesuffix(".xml")
    if stale.is_file():
        stale.unlink()
    stale_night = RES / "layout-night" / FOOTER_LAYOUT_FILE.removesuffix(".xml")
    if stale_night.is_file():
        stale_night.unlink()
    print(f"registered {FOOTER_LAYOUT_FILE} footer layout")


def upsert_string(path: Path, line: str) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    pat = re.compile(rf'    <string name="{STRING_NAME}">.*?</string>\n?', re.DOTALL)
    text = pat.sub(line + "\n", text, count=1) if pat.search(text) else text.replace(
        "</resources>", line + "\n</resources>", 1
    )
    path.write_text(text, encoding="utf-8")


def revert_user_item_layout(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if "@id/trainAddParticipantBtn" not in text:
        return
    if ROW_BTN_UNWRAP not in text:
        return
    text = text.replace(ROW_BTN_UNWRAP, ROW_BTN_UNWRAP.split("\n", 1)[1], 1)
    text = ROW_BTN_TAIL_RE.sub("    </LinearLayout>\n</LinearLayout>\n", text, count=1)
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: removed in-row add-user button")


def restore_empty_layout(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    changed = False
    if EMPTY_CENTER_GONE_RE.search(text):
        text = EMPTY_CENTER_GONE_RE.sub(r"\1", text, count=1)
        changed = True
    white_circle = (
        f"\\1<FrameLayout android:background=\"@drawable/shape_bg_white\" "
        f'android:layout_width="{ADD_CIRCLE_OUTER_DP}" android:layout_height="{ADD_CIRCLE_OUTER_DP}">\n'
        f'        <Button android:id="@id/typeButton" android:background="@mipmap/add3" '
        f'android:clickable="false" android:layout_width="{ADD_CIRCLE_INNER_DP}" '
        f'android:layout_height="{ADD_CIRCLE_INNER_DP}" android:layout_gravity="center" />\n'
        f"    </FrameLayout>"
    )
    if "@drawable/shape_bg_white" not in text and EMPTY_SLOT_BTN_RE.search(text):
        text = EMPTY_SLOT_BTN_RE.sub(white_circle, text, count=1)
        changed = True
    if changed:
        path.write_text(text, encoding="utf-8")
        print(f"{path.name}: restored initial empty-slot add UI with white circle")


def restore_fragment_layouts() -> None:
    hidden = 'android:id="@id/allAdd" android:visibility="gone"'
    for path in FRAGMENT_LAYOUTS:
        if not path.is_file():
            continue
        text = path.read_text(encoding="utf-8")
        changed = False
        wrapped = RECYCLER_WRAPPED_RE.search(text)
        if wrapped:
            text = text.replace(wrapped.group(0), RECYCLER_PLAIN, 1)
            changed = True
        if hidden in text:
            text = text.replace(BINDING_STUBS, SIDEBAR_CONTROLS, 1)
            changed = True
        if changed:
            path.write_text(text, encoding="utf-8")
            print(f"{path.name}: restored sidebar MA+/sector/MA- controls")


def patch_train_item_manager() -> None:
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    if "if-nez v0, :cond_4" in text and "addEmptyItem()V\n    .locals 0" not in text:
        print("TrainItemManager: single initial empty slot already patched")
        return
    if not ADD_EMPTY_ITEM_RE.search(text):
        raise RuntimeError("TrainItemManager.addEmptyItem marker not found")
    TRAIN_ITEM_MANAGER.write_text(
        ADD_EMPTY_ITEM_RE.sub(ADD_EMPTY_ITEM_SINGLE_SLOT + "\n", text, count=1),
        encoding="utf-8",
    )
    print("TrainItemManager: one empty slot before first user, none after")


def revert_sidebar_alladd_click() -> None:
    path = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
    text = path.read_text(encoding="utf-8")
    if ALL_ADD_DIALOG_PATCH in text:
        path.write_text(text.replace(ALL_ADD_DIALOG_PATCH, ALL_ADD_ORIGINAL, 1), encoding="utf-8")
        print("NewTrainFragment: restored sidebar allAdd MA+ handler")


def cleanup_old_row_button_patches() -> None:
    vh = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    changed = False
    if "addParticipantBtn:Lcom/isaigu/gymapp/widget/MyButton;" in vh:
        vh = vh.replace(
            "\n.field private addParticipantBtn:Lcom/isaigu/gymapp/widget/MyButton;\n",
            "\n.field private isFooter:Z\n",
            1,
        )
        changed = True
    if "initAddParticipantButton()V" in vh:
        vh = vh.replace(
            "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->initAddParticipantButton()V\n\n",
            "",
            1,
        )
        vh = re.sub(
            r"\.method private initAddParticipantButton\(\)V\n.*?\.end method\n",
            "",
            vh,
            count=1,
            flags=re.DOTALL,
        )
        vh = re.sub(
            r"\.method public updateAddParticipantButton\(Z\)V\n.*?\.end method\n",
            "",
            vh,
            count=1,
            flags=re.DOTALL,
        )
        changed = True
    if "isFooter:Z" not in vh:
        vh = vh.replace(
            ".field private final isEmpty:Z\n",
            ".field private final isEmpty:Z\n\n.field private isFooter:Z\n",
            1,
        )
        changed = True
    if VH_CONSTRUCTOR_MARKER in vh and "bindFooterAddListener" not in vh:
        vh = vh.replace(VH_CONSTRUCTOR_MARKER, VH_CONSTRUCTOR_FOOTER, 1)
        if BIND_LISTENER_MARKER in vh:
            vh = vh.replace(BIND_LISTENER_MARKER, BIND_LISTENER_MARKER_NEW, 1)
        if BIND_END_MARKER in vh:
            vh = vh.replace(BIND_END_MARKER, BIND_END_MARKER_NEW, 1)
        vh = vh.replace(
            ".method private bindEmptyListener()V",
            VH_FOOTER_METHODS + "\n.method private bindEmptyListener()V",
            1,
        )
        changed = True
    if changed:
        TRAIN_VIEW_HOLDER.write_text(vh, encoding="utf-8")
        print("TrainViewHolder: footer add-user row support")

    ad = TRAIN_ADAPTER.read_text(encoding="utf-8")
    if "shouldShowAddFooter()Z" in ad:
        print("TrainAdapter: add-user footer already patched")
        return
    if "updateAddParticipantButton(Z)V" in ad:
        ad = ad.replace(ADAPTER_ON_BIND_NEW, ADAPTER_ON_BIND, 1)
    for old, new, label in (
        (ADAPTER_STATIC_FIELD, ADAPTER_STATIC_FIELD_NEW, "footer view type"),
        (ADAPTER_GET_ITEM_COUNT, ADAPTER_GET_ITEM_COUNT_NEW, "footer item count"),
        (ADAPTER_GET_ITEM_VIEW_TYPE, ADAPTER_GET_ITEM_VIEW_TYPE_NEW, "footer view typing"),
        (ADAPTER_ON_BIND, ADAPTER_ON_BIND_NEW, "footer bind"),
        (ADAPTER_ON_CREATE, ADAPTER_ON_CREATE_NEW, "footer create"),
    ):
        if old not in ad:
            raise RuntimeError(f"TrainAdapter {label} marker not found")
        ad = ad.replace(old, new, 1)
    TRAIN_ADAPTER.write_text(ad, encoding="utf-8")
    print("TrainAdapter: add-user footer below participant rows")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    register_ids()
    upsert_string(VALUES_DEFAULT, EN_STRING)
    upsert_string(VALUES_BG, BG_STRING)
    upsert_string(VALUES_BG_DECOMPILED, BG_STRING)
    restore_fragment_layouts()
    for path in USER_ITEM_LAYOUTS:
        revert_user_item_layout(path)
    for path in EMPTY_LAYOUTS:
        restore_empty_layout(path)
    patch_train_item_manager()
    revert_sidebar_alladd_click()
    cleanup_old_row_button_patches()
    print("Train participant UI patches applied (sidebar untouched).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
