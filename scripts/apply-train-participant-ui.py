#!/usr/bin/env python3
"""Train participant UX: initial empty slot, add-user on last row bottom-right, sidebar intact."""

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
CARD_ID = 0x7F09028C
CARD_NAME = "trainUserCard"
WRAP_ID = 0x7F09028D
WRAP_NAME = "trainAddParticipantWrap"

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

ADD_CIRCLE_OUTER_DP = "64.0dip"
ADD_CIRCLE_INNER_DP = "52.0dip"

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

EMPTY_CENTER_GONE_RE = re.compile(
    r'(<LinearLayout android:gravity="center" android:orientation="vertical" '
    r'android:layout_width="wrap_content" android:layout_height="wrap_content" '
    r'android:layout_centerInParent="true") android:visibility="gone"',
)

EMPTY_SLOT_BTN_RE = re.compile(
    r"(<LinearLayout android:gravity=\"center\" android:orientation=\"vertical\" "
    r'android:layout_width="wrap_content" android:layout_height="wrap_content" '
    r'android:layout_centerInParent="true">\s*)'
    r'<Button android[^>]*/>',
    re.DOTALL,
)

CARD_OPEN = (
    '<LinearLayout android:orientation="horizontal" android:background="@drawable/ui_card_background" '
    'android:layout_width="fill_parent" android:layout_height="170.0dip" '
    'android:layout_margin="@dimen/ui_card_margin"\n'
    '  xmlns:android="http://schemas.android.com/apk/res/android" xmlns:app="http://schemas.android.com/apk/res-auto">'
)

CARD_WRAP_OPEN = (
    '<LinearLayout android:orientation="vertical" android:layout_width="fill_parent" '
    'android:layout_height="wrap_content" android:clipChildren="false" '
    'android:clipToPadding="false" android:paddingBottom="42.0dip" '
    'xmlns:android="http://schemas.android.com/apk/res/android" '
    'xmlns:app="http://schemas.android.com/apk/res-auto">\n'
    '    <RelativeLayout android:layout_width="fill_parent" '
    'android:layout_height="wrap_content">\n'
    '    <LinearLayout android:id="@id/trainUserCard" android:orientation="horizontal" '
    'android:background="@drawable/ui_card_background" android:layout_width="fill_parent" '
    'android:layout_height="170.0dip" android:layout_margin="@dimen/ui_card_margin">'
)

ADD_ROW_OVERLAY = f"""
        <LinearLayout android:id="@id/trainAddParticipantWrap" android:gravity="center_horizontal" android:orientation="vertical" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignRight="@id/trainUserCard" android:layout_alignBottom="@id/trainUserCard" android:layout_marginRight="6.0dip" android:layout_marginBottom="-38.0dip" android:visibility="gone">
            <FrameLayout android:background="@drawable/shape_bg_white" android:layout_width="{ADD_CIRCLE_OUTER_DP}" android:layout_height="{ADD_CIRCLE_OUTER_DP}">
                <Button android:id="@id/trainAddParticipantBtn" android:background="@mipmap/add3" android:layout_width="{ADD_CIRCLE_INNER_DP}" android:layout_height="{ADD_CIRCLE_INNER_DP}" android:layout_gravity="center" />
            </FrameLayout>
            <TextView android:textSize="13.0sp" android:textColor="@color/text_secondary" android:gravity="center" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="4.0dip" android:text="@string/train_add_participant" />
        </LinearLayout>
    </RelativeLayout>
</LinearLayout>
"""

# Broken 1.1.28 build used RelativeLayout as binding root -> ClassCastException on first user.
BROKEN_REL_ROOT_RE = re.compile(
    r"<RelativeLayout android:layout_width=\"fill_parent\" android:layout_height=\"wrap_content\" "
    r'android:clipToPadding="false" android:paddingBottom="42\.0dip" '
    r'xmlns:android="http://schemas.android.com/apk/res/android" '
    r'xmlns:app="http://schemas.android.com/apk/res-auto">\s*'
    r'<LinearLayout android:id="@id/trainUserCard"[^>]*>',
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

INIT_ADD_PARTICIPANT_HOOK = """    .line 77
    return-void
.end method"""

INIT_ADD_PARTICIPANT_HOOK_NEW = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->initAddParticipantButton()V

    .line 77
    return-void
.end method"""

INIT_ADD_PARTICIPANT_METHOD = """
.method private initAddParticipantButton()V
    .locals 3

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f09028d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->addParticipantWrap:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f09028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$ERzM4vl4JE2XmpD4TpYuFbGJwy4;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$ERzM4vl4JE2XmpD4TpYuFbGJwy4;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateAddParticipantButton(Z)V
    .locals 2
    .param p1, "visible"    # Z

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->addParticipantWrap:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_hide

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_hide
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
"""

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

ADAPTER_ON_BIND_LAST_ROW = """.method public onBindViewHolder(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/isaigu/gymapp/train/TrainViewHolder;
    .param p2, "position"    # I

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bind(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateAddParticipantButton(Z)V

    return-void

    :cond_0
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

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateAddParticipantButton(Z)V

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-ne v2, p2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateAddParticipantButton(Z)V

    return-void
.end method"""

# Footer-era adapter patches to revert when rebuilding after 1.1.27 footer experiment.
FOOTER_ADAPTER_MARKERS = (
    ".field private static final VIEW_TYPE_ADD_FOOTER:I = 0x2\n",
    ".method private shouldShowAddFooter()Z\n",
)

FOOTER_VH_MARKERS = (
    ".field private isFooter:Z\n",
    "bindFooterAddListener",
    "if-eqz v0, :cond_footer_done",
)


def register_ids() -> None:
    ids_text = IDS_XML.read_text(encoding="utf-8")
    for name in (ADD_BTN_NAME, CARD_NAME, WRAP_NAME):
        if name not in ids_text:
            ids_text = ids_text.replace(
                "</resources>", f'    <item type="id" name="{name}" />\n</resources>', 1
            )
    IDS_XML.write_text(ids_text, encoding="utf-8")

    public = PUBLIC_XML.read_text(encoding="utf-8")
    for kind, name, val in (
        ("id", ADD_BTN_NAME, ADD_BTN_ID),
        ("id", CARD_NAME, CARD_ID),
        ("id", WRAP_NAME, WRAP_ID),
        ("string", STRING_NAME, STRING_ID),
    ):
        if name not in public:
            public = public.replace(
                "</resources>",
                f'    <public type="{kind}" name="{name}" id="{val:#x}" />\n</resources>',
                1,
            )
    PUBLIC_XML.write_text(public, encoding="utf-8")

    r_text = R_ID.read_text(encoding="utf-8")
    for name, val in (
        (ADD_BTN_NAME, ADD_BTN_ID),
        (CARD_NAME, CARD_ID),
        (WRAP_NAME, WRAP_ID),
    ):
        if name not in r_text:
            r_text = r_text.replace(
                ".field public static final zhukongduan:I = 0x7f090",
                f".field public static final {name}:I = {val:#x}\n\n"
                ".field public static final zhukongduan:I = 0x7f090",
                1,
            )
    R_ID.write_text(r_text, encoding="utf-8")
    print("registered add-user row ids")


def upsert_string(path: Path, line: str) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    pat = re.compile(rf'    <string name="{STRING_NAME}">.*?</string>\n?', re.DOTALL)
    text = pat.sub(line + "\n", text, count=1) if pat.search(text) else text.replace(
        "</resources>", line + "\n</resources>", 1
    )
    path.write_text(text, encoding="utf-8")


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


def patch_user_item_layout(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if BROKEN_REL_ROOT_RE.search(text):
        text = BROKEN_REL_ROOT_RE.sub(CARD_WRAP_OPEN, text, count=1)
        text = text.replace(
            "    </LinearLayout>\n\n    <LinearLayout android:id=\"@id/trainAddParticipantWrap\"",
            "        <LinearLayout android:id=\"@id/trainAddParticipantWrap\"",
            1,
        )
        text = text.replace(
            "    </LinearLayout>\n</RelativeLayout>\n",
            ADD_ROW_OVERLAY,
            1,
        )
        path.write_text(text, encoding="utf-8")
        print(f"{path.name}: fixed binding root (LinearLayout) for add-user overlay")
        return
    if "@id/trainAddParticipantWrap" in text:
        print(f"{path.name}: add-user overlay already present")
        return
    if CARD_OPEN not in text:
        print(f"{path.name}: skipped (unexpected layout shape)")
        return
    text = text.replace(CARD_OPEN, CARD_WRAP_OPEN, 1)
    closing_tail = "    </LinearLayout>\n</LinearLayout>"
    if not text.rstrip().endswith(closing_tail):
        raise RuntimeError(f"{path.name}: unexpected layout ending")
    text = text.rstrip()[: -len(closing_tail)] + "    </LinearLayout>\n    </LinearLayout>\n" + ADD_ROW_OVERLAY
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: add-user overlay at slot bottom-right")


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


def revert_footer_smali() -> None:
    """Strip broken footer-row experiment from prior builds."""
    ad = TRAIN_ADAPTER.read_text(encoding="utf-8")
    if "shouldShowAddFooter()Z" in ad:
        ad = re.sub(
            r"\.method public getItemCount\(\)I\n.*?\.end method\n\n?",
            """.method public getItemCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

""",
            ad,
            count=1,
            flags=re.DOTALL,
        )
        ad = re.sub(
            r"\.method public getItemViewType\(I\)I\n.*?\.end method\n\n?",
            """.method public getItemViewType(I)I
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
.end method

""",
            ad,
            count=1,
            flags=re.DOTALL,
        )
        ad = re.sub(r"\.method private shouldShowAddFooter\(\)Z\n.*?\.end method\n\n?", "", ad, flags=re.DOTALL)
        ad = re.sub(r"\.field private static final VIEW_TYPE_ADD_FOOTER:I = 0x2\n\n?", "", ad)
        footer_create = re.compile(
            r"    const/4 v1, 0x2\n\n    if-ne p2, v1, :cond_footer\n.*?    :cond_footer\n",
            re.DOTALL,
        )
        ad = footer_create.sub("", ad)
        footer_bind = re.compile(
            r"    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainAdapter;->shouldShowAddFooter\(\)Z\n\n"
            r"    move-result v1\n\n    if-eqz v1, :cond_bind_item\n\n    if-ne p2, v0, :cond_bind_item\n\n"
            r"    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;\n\n"
            r"    iput-object v0, p1, Lcom/isaigu/gymapp/train/TrainViewHolder;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;\n\n"
            r"    return-void\n\n    :cond_bind_item\n",
            re.DOTALL,
        )
        ad = footer_bind.sub("", ad)
        TRAIN_ADAPTER.write_text(ad, encoding="utf-8")
        print("TrainAdapter: reverted footer-row experiment")

    vh = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    if any(marker in vh for marker in FOOTER_VH_MARKERS):
        vh = re.sub(r"\.field private isFooter:Z\n\n?", "", vh)
        vh = re.sub(r"\.method private bindFooterAddListener\(Landroid/view/View;\)V\n.*?\.end method\n\n?", "", vh, flags=re.DOTALL)
        vh = vh.replace(
            """    invoke-virtual {p2}, Landroid/view/View;->getId()I

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
    if-eqz p1, :cond_0""",
            """    .line 53
    if-eqz p1, :cond_0""",
        )
        vh = re.sub(
            r"    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->isFooter:Z\n\n"
            r"    if-eqz v0, :cond_footer_done\n\n",
            "",
            vh,
        )
        vh = vh.replace("    :cond_footer_done\n", "")
        if "addParticipantWrap:Landroid/view/View;" not in vh and "addParticipantBtn:" not in vh:
            vh = vh.replace(
                ".field private texts:[Landroid/widget/TextView;\n",
                ".field private texts:[Landroid/widget/TextView;\n\n"
                ".field private addParticipantWrap:Landroid/view/View;\n",
                1,
            )
        TRAIN_VIEW_HOLDER.write_text(vh, encoding="utf-8")
        print("TrainViewHolder: reverted footer bind bug, ready for row overlay")


def patch_train_view_holder() -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    if "addParticipantWrap:Landroid/view/View;" not in text:
        text = text.replace(
            ".field private texts:[Landroid/widget/TextView;\n",
            ".field private texts:[Landroid/widget/TextView;\n\n"
            ".field private addParticipantWrap:Landroid/view/View;\n",
            1,
        )
    if "initAddParticipantButton()V" not in text:
        if INIT_ADD_PARTICIPANT_HOOK not in text:
            raise RuntimeError("TrainViewHolder init() marker not found")
        text = text.replace(INIT_ADD_PARTICIPANT_HOOK, INIT_ADD_PARTICIPANT_HOOK_NEW, 1)
        text = text.replace(
            ".method private onItemChange()V",
            INIT_ADD_PARTICIPANT_METHOD + "\n.method private onItemChange()V",
            1,
        )
        TRAIN_VIEW_HOLDER.write_text(text, encoding="utf-8")
        print("TrainViewHolder: row add-user overlay wiring")
        return
    print("TrainViewHolder: row add-user overlay wiring already patched")


def patch_train_adapter() -> None:
    text = TRAIN_ADAPTER.read_text(encoding="utf-8")
    if ":cond_4" in text and "updateAddParticipantButton(Z)V" in text:
        print("TrainAdapter: last-row add-user visibility already patched")
        return
    if ADAPTER_ON_BIND not in text:
        raise RuntimeError("TrainAdapter.onBindViewHolder marker not found")
    text = text.replace(ADAPTER_ON_BIND, ADAPTER_ON_BIND_LAST_ROW, 1)
    TRAIN_ADAPTER.write_text(text, encoding="utf-8")
    print("TrainAdapter: show add-user overlay on last participant row only")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    register_ids()
    upsert_string(VALUES_DEFAULT, EN_STRING)
    upsert_string(VALUES_BG, BG_STRING)
    upsert_string(VALUES_BG_DECOMPILED, BG_STRING)
    restore_fragment_layouts()
    for path in EMPTY_LAYOUTS:
        restore_empty_layout(path)
    for path in USER_ITEM_LAYOUTS:
        patch_user_item_layout(path)
    patch_train_item_manager()
    revert_sidebar_alladd_click()
    revert_footer_smali()
    patch_train_view_holder()
    patch_train_adapter()
    print("Train participant UI patches applied (sidebar intact, row overlay).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
