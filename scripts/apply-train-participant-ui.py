#!/usr/bin/env python3
"""Train participant UX: initial empty slot, then per-row add-user button."""

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
NEW_TRAIN_FRAGMENT = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
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

FRAGMENT_LAYOUTS = (
    RES / "layout/new_train_fragment_layout.xml",
    RES / "layout-night/new_train_fragment_layout.xml",
    RES / "layout/train_fragment_layout.xml",
    RES / "layout-night/train_fragment_layout.xml",
)

USER_ITEM_LAYOUTS = (
    RES / "layout/new_user_train_control_item_layout.xml",
    RES / "layout-night/new_user_train_control_item_layout.xml",
    RES / "layout/user_train_control_item_layout.xml",
    RES / "layout-night/user_train_control_item_layout.xml",
)

EMPTY_LAYOUTS = (
    RES / "layout/train_empty_item_layout.xml",
    RES / "layout-night/train_empty_item_layout.xml",
)

RECYCLER_RE = re.compile(
    r"\s*<com\.yanzhenjie\.recyclerview\.swipe\.SwipeMenuRecyclerView "
    r'android:id="@id/recyclerView" android:layout_width="fill_parent" '
    r'android:layout_height="fill_parent" />\s*',
    re.MULTILINE,
)

# Hidden binding stub; real add control lives on the user row.
RECYCLER_REPLACEMENT = """
        <RelativeLayout android:layout_width="fill_parent" android:layout_height="fill_parent">
            <com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView android:id="@id/recyclerView" android:layout_width="fill_parent" android:layout_height="fill_parent" />
            <com.isaigu.gymapp.widget.MyButton android:id="@id/allAdd" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
        </RelativeLayout>
"""

SIDEBAR_BLOCK_RE = re.compile(
    r"\s*<View android:layout_width=\"fill_parent\" android:layout_height=\"0\.0dip\" "
    r'android:layout_weight="0\.15" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/allAdd"[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.1" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton[^>]*@id/allPerson[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.1" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/allminus"[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.3" />\s*',
    re.MULTILINE,
)

SIDEBAR_BLOCK_ALT_RE = re.compile(
    r"\s*<View android:layout_width=\"fill_parent\" android:layout_height=\"0\.0dip\" "
    r'android:layout_weight="1\.0" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/allAdd"[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.1" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton[^>]*@id/allPerson[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.1" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/allminus"[^>]*/>\s*'
    r'<View android:layout_width="fill_parent" android:layout_height="0\.0dip" '
    r'android:layout_weight="0\.3" />\s*',
    re.MULTILINE,
)

EMPTY_CENTER_GONE_RE = re.compile(
    r'(<LinearLayout android:gravity="center" android:orientation="vertical" '
    r'android:layout_width="wrap_content" android:layout_height="wrap_content" '
    r'android:layout_centerInParent="true") android:visibility="gone"',
)

INNER_ROW_OPEN = (
    '<LinearLayout android:orientation="horizontal" '
    'android:layout_width="fill_parent" android:layout_height="fill_parent">'
)
INNER_ROW_WRAPPED = (
    '<RelativeLayout android:layout_width="fill_parent" android:layout_height="fill_parent">\n'
    '        <LinearLayout android:orientation="horizontal" '
    'android:layout_width="fill_parent" android:layout_height="fill_parent">'
)
ADD_BTN_VIEW = (
    '        </LinearLayout>\n'
    '        <com.isaigu.gymapp.widget.MyButton android:textSize="14.0sp" '
    'android:textStyle="bold" android:textColor="@color/text_primary" '
    'android:gravity="center" android:id="@id/trainAddParticipantBtn" '
    'android:background="@drawable/shape_bg_white" android:paddingLeft="12.0dip" '
    'android:paddingRight="14.0dip" android:layout_width="wrap_content" '
    'android:layout_height="36.0dip" android:layout_marginRight="8.0dip" '
    'android:layout_marginBottom="6.0dip" android:layout_alignParentRight="true" '
    'android:layout_alignParentBottom="true" android:text="@string/train_add_participant" '
    'android:textAllCaps="false" android:visibility="gone" />\n'
    '    </RelativeLayout>'
)

EN_STRING = f'    <string name="{STRING_NAME}">+ Add user</string>'
BG_STRING = f'    <string name="{STRING_NAME}">+ Добави потребител</string>'

BINDING_STUBS = """
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allPerson" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allminus" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allAdd" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
"""

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

ALL_ADD_CLICK_OLD = """.method public synthetic lambda$onCreateView$2$NewTrainFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V

    return-void
.end method"""

ALL_ADD_CLICK_NEW = """.method public synthetic lambda$onCreateView$2$NewTrainFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

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

    const v1, 0x7f09028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->addParticipantBtn:Lcom/isaigu/gymapp/widget/MyButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$ERzM4vl4JE2XmpD4TpYuFbGJwy4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainViewHolder$ERzM4vl4JE2XmpD4TpYuFbGJwy4;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateAddParticipantButton(Z)V
    .locals 2
    .param p1, "visible"    # Z

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->addParticipantBtn:Lcom/isaigu/gymapp/widget/MyButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_hide

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setVisibility(I)V

    goto :goto_0

    :cond_hide
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setVisibility(I)V

    :goto_0
    return-void
.end method
"""

ON_BIND_OLD = """.method public onBindViewHolder(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V
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

ON_BIND_NEW = """.method public onBindViewHolder(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V
    .locals 6
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

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :goto_2
    if-ne p2, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateAddParticipantButton(Z)V

    return-void
.end method"""


def register_add_btn_id() -> None:
    id_line = f'    <item type="id" name="{ADD_BTN_NAME}" />'
    if ADD_BTN_NAME not in IDS_XML.read_text(encoding="utf-8"):
        IDS_XML.write_text(
            IDS_XML.read_text(encoding="utf-8").replace(
                "</resources>", id_line + "\n</resources>", 1
            ),
            encoding="utf-8",
        )
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    if ADD_BTN_NAME not in public_text:
        PUBLIC_XML.write_text(
            public_text.replace(
                "</resources>",
                f'    <public type="id" name="{ADD_BTN_NAME}" id="{ADD_BTN_ID:#x}" />\n</resources>',
                1,
            ),
            encoding="utf-8",
        )
    r_text = R_ID.read_text(encoding="utf-8")
    if ADD_BTN_NAME not in r_text:
        R_ID.write_text(
            r_text.replace(
                ".field public static final zhukongduan:I = 0x7f090",
                f".field public static final {ADD_BTN_NAME}:I = {ADD_BTN_ID:#x}\n\n"
                ".field public static final zhukongduan:I = 0x7f090",
                1,
            ),
            encoding="utf-8",
        )
        print(f"registered id {ADD_BTN_NAME} -> {ADD_BTN_ID:#x}")


def patch_public_xml(text: str) -> str:
    if STRING_NAME not in text:
        text = text.replace(
            "</resources>",
            f'    <public type="string" name="{STRING_NAME}" id="{STRING_ID:#x}" />\n</resources>',
            1,
        )
    return text


def upsert_string(path: Path, line: str) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    pat = re.compile(rf'    <string name="{STRING_NAME}">.*?</string>\n?', re.DOTALL)
    if pat.search(text):
        text = pat.sub(line + "\n", text, count=1)
    else:
        text = text.replace("</resources>", line + "\n</resources>", 1)
    path.write_text(text, encoding="utf-8")
    print(f"updated {STRING_NAME} in {path.name}")


def ensure_binding_stubs(text: str) -> tuple[str, bool]:
    if '@id/allPerson' in text and '@id/allAdd' in text:
        return text, False
    close = text.rfind("</LinearLayout>")
    if close == -1:
        return text, False
    return text[:close] + BINDING_STUBS + text[close:], True


def patch_fragment(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    overlay_changed = False
    if "@id/allAdd" in text and 'android:id="@id/allAdd" android:visibility="gone"' not in text:
        if RECYCLER_RE.search(text):
            text = RECYCLER_RE.sub(RECYCLER_REPLACEMENT, text, count=1)
            overlay_changed = True
        if SIDEBAR_BLOCK_RE.search(text):
            text = SIDEBAR_BLOCK_RE.sub(BINDING_STUBS, text, count=1)
            overlay_changed = True
        elif SIDEBAR_BLOCK_ALT_RE.search(text):
            text = SIDEBAR_BLOCK_ALT_RE.sub(BINDING_STUBS, text, count=1)
            overlay_changed = True
    text, stub_added = ensure_binding_stubs(text)
    if overlay_changed or stub_added:
        path.write_text(text, encoding="utf-8")
        print(f"{path.name}: binding stubs for allAdd/allPerson/allminus")


def patch_user_item_layout(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if "@id/trainAddParticipantBtn" in text:
        print(f"{path.name}: row add-user button already present")
        return
    if INNER_ROW_OPEN not in text:
        print(f"{path.name}: skipped (legacy layout shape; unused by TrainAdapter)")
        return
    text = text.replace(INNER_ROW_OPEN, INNER_ROW_WRAPPED, 1)
    closing_tail = "    </LinearLayout>\n</LinearLayout>"
    if not text.rstrip().endswith(closing_tail):
        raise RuntimeError(f"{path.name}: unexpected layout ending")
    text = text.rstrip()[: -len(closing_tail)] + ADD_BTN_VIEW + "\n</LinearLayout>\n"
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: row add-user button at bottom-right")


def restore_empty_layout(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    if EMPTY_CENTER_GONE_RE.search(text):
        text = EMPTY_CENTER_GONE_RE.sub(r"\1", text, count=1)
        path.write_text(text, encoding="utf-8")
        print(f"{path.name}: restored initial empty-slot add UI")


def patch_train_item_manager() -> None:
    if not TRAIN_ITEM_MANAGER.is_file():
        raise RuntimeError("TrainItemManager.smali missing")
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    marker = "if-nez v0, :cond_4"
    if marker in text and "addEmptyItem()V\n    .locals 0" not in text:
        print("TrainItemManager: single initial empty slot already patched")
        return
    if not ADD_EMPTY_ITEM_RE.search(text):
        raise RuntimeError("TrainItemManager.addEmptyItem marker not found")
    text = ADD_EMPTY_ITEM_RE.sub(ADD_EMPTY_ITEM_SINGLE_SLOT + "\n", text, count=1)
    TRAIN_ITEM_MANAGER.write_text(text, encoding="utf-8")
    print("TrainItemManager: one empty slot before first user, none after")


def patch_new_train_fragment() -> None:
    text = NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")
    if ALL_ADD_CLICK_NEW.splitlines()[0] in text:
        print("NewTrainFragment: allAdd opens add-user dialog already patched")
        return
    if ALL_ADD_CLICK_OLD not in text:
        raise RuntimeError("NewTrainFragment allAdd click marker not found")
    text = text.replace(ALL_ADD_CLICK_OLD, ALL_ADD_CLICK_NEW, 1)
    NEW_TRAIN_FRAGMENT.write_text(text, encoding="utf-8")
    print("NewTrainFragment: allAdd opens add-user dialog")


def patch_train_view_holder() -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    if "addParticipantBtn:Lcom/isaigu/gymapp/widget/MyButton;" not in text:
        text = text.replace(
            ".field private texts:[Landroid/widget/TextView;\n",
            ".field private texts:[Landroid/widget/TextView;\n\n"
            ".field private addParticipantBtn:Lcom/isaigu/gymapp/widget/MyButton;\n",
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
        print("TrainViewHolder: row add-user button wiring")
        return
    print("TrainViewHolder: row add-user button wiring already patched")


def patch_train_adapter() -> None:
    text = TRAIN_ADAPTER.read_text(encoding="utf-8")
    if "updateAddParticipantButton(Z)V" in text:
        print("TrainAdapter: row add-user visibility already patched")
        return
    if ON_BIND_OLD not in text:
        raise RuntimeError("TrainAdapter.onBindViewHolder marker not found")
    text = text.replace(ON_BIND_OLD, ON_BIND_NEW, 1)
    TRAIN_ADAPTER.write_text(text, encoding="utf-8")
    print("TrainAdapter: show add-user button on last participant row")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    register_add_btn_id()
    PUBLIC_XML.write_text(
        patch_public_xml(PUBLIC_XML.read_text(encoding="utf-8")),
        encoding="utf-8",
    )
    upsert_string(VALUES_DEFAULT, EN_STRING)
    upsert_string(VALUES_BG, BG_STRING)
    upsert_string(VALUES_BG_DECOMPILED, BG_STRING)
    for path in FRAGMENT_LAYOUTS:
        patch_fragment(path)
    for path in USER_ITEM_LAYOUTS:
        patch_user_item_layout(path)
    for path in EMPTY_LAYOUTS:
        restore_empty_layout(path)
    patch_train_item_manager()
    patch_new_train_fragment()
    patch_train_view_holder()
    patch_train_adapter()
    print("Train participant UI patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
