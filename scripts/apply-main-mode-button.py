#!/usr/bin/env python3
"""Add 'Main' (Основен) index-mode button above muscle/cardio/massage mode buttons."""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
PUBLIC_XML = DECOMPILED / "res" / "values" / "public.xml"
IDS_XML = DECOMPILED / "res" / "values" / "ids.xml"
R_ID = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "R$id.smali"
R_DRAWABLE = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "R$drawable.smali"
STRINGS = DECOMPILED / "res" / "values" / "strings.xml"
STRINGS_BG = DECOMPILED / "res" / "values-bg" / "strings.xml"
TRAIN_ITEM = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
)
TRAIN_VIEW_HOLDER = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainViewHolder.smali"
)
TRAIN_ITEM_MANAGER = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainItemManager.smali"
)
TRAIN_DIR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train"
DRAWABLE_SRC = ROOT / "branding" / "drawable"
DRAWABLE_NIGHT_SRC = ROOT / "branding" / "drawable-night"

MAIN_MODE_ID_NAME = "mainModeBtn"
MAIN_MODE_STRING = "main_mode_btn"
MODE_BTN_HEIGHT = "32.0dip"
MODE_BTN_MARGIN_NEW = "3.0dip"
MODE_BTN_MARGIN_USER = "8.0dip"
GRAY_BG = 0x7F0800C3
GREEN_BG_NAME = "round_corner_drawable_r10_green"

LAYOUTS = (
    "new_user_train_control_item_layout.xml",
    "user_train_control_item_layout.xml",
)

MAIN_MODE_BTN_NEW = (
    '<com.isaigu.gymapp.widget.MyButton android:textSize="@dimen/ui_mode_button_text_size" '
    'android:textStyle="bold" android:textColor="@color/mode_button_text" '
    f'android:id="@id/{MAIN_MODE_ID_NAME}" android:background="@drawable/{GREEN_BG_NAME}" '
    'android:layout_width="120.0dip" '
    f'android:layout_height="{MODE_BTN_HEIGHT}" '
    f'android:layout_margin="{MODE_BTN_MARGIN_NEW}" '
    f'android:text="@string/{MAIN_MODE_STRING}" android:textAllCaps="true" />'
)

MAIN_MODE_BTN_USER = (
    '<com.isaigu.gymapp.widget.MyButton android:textSize="@dimen/ui_mode_button_text_size" '
    'android:textStyle="bold" android:textColor="@color/mode_button_text" '
    f'android:id="@id/{MAIN_MODE_ID_NAME}" android:background="@drawable/{GREEN_BG_NAME}" '
    'android:layout_width="100.0dip" '
    f'android:layout_height="{MODE_BTN_HEIGHT}" '
    f'android:layout_margin="{MODE_BTN_MARGIN_USER}" '
    f'android:text="@string/{MAIN_MODE_STRING}" android:textAllCaps="true" />'
)

MAIN_MODE_FIELD = ".field private mainModeSelected:Z\n"

MAIN_MODE_INIT = """    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseHzSelected:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseMaSelected:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z"""

MAIN_MODE_METHODS = """
.method public isMainModeSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z

    return v0
.end method

.method public setMainModeSelected(Z)V
    .locals 1
    .param p1, "mainModeSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z

    if-eqz p1, :cond_end

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    :cond_end
    return-void
.end method
"""

SET_MA_SELECTED_OLD = """.method public setMaSelected(Z)V
    .locals 0
    .param p1, "maSelected"    # Z

    .line 239
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    .line 240
    return-void
.end method"""

SET_MA_SELECTED_NEW = """.method public setMaSelected(Z)V
    .locals 0
    .param p1, "maSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->maSelected:Z

    if-eqz p1, :cond_end

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z

    :cond_end
    return-void
.end method"""

SET_HZ_SELECTED_OLD = """.method public setHzSelected(Z)V
    .locals 0
    .param p1, "hzSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z

    return-void
.end method"""

SET_HZ_SELECTED_NEW = """.method public setHzSelected(Z)V
    .locals 0
    .param p1, "hzSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z

    if-eqz p1, :cond_end

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z

    :cond_end
    return-void
.end method"""

SET_PAUSE_MA_OLD = """.method public setPauseMaSelected(Z)V
    .locals 0
    .param p1, "pauseMaSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseMaSelected:Z

    return-void
.end method"""

SET_PAUSE_MA_NEW = """.method public setPauseMaSelected(Z)V
    .locals 0
    .param p1, "pauseMaSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseMaSelected:Z

    if-eqz p1, :cond_end

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z

    :cond_end
    return-void
.end method"""

SET_PAUSE_HZ_OLD = """.method public setPauseHzSelected(Z)V
    .locals 0
    .param p1, "pauseHzSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseHzSelected:Z

    return-void
.end method"""

SET_PAUSE_HZ_NEW = """.method public setPauseHzSelected(Z)V
    .locals 0
    .param p1, "pauseHzSelected"    # Z

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseHzSelected:Z

    if-eqz p1, :cond_end

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z

    :cond_end
    return-void
.end method"""

MAIN_MODE_CLICK_LISTENER = """.class public Lcom/isaigu/gymapp/train/TrainMainModeClickListener;
.super Ljava/lang/Object;
.source "TrainMainModeClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final holder:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainMainModeClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainMainModeClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMainModeSelected(Z)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainMainModeClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainMainModeClickListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void
.end method
"""

LAMBDA_MAIN_MODE_HEAD = """    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMainModeSelected()Z

    move-result v0

    if-eqz v0, :cond_main_mode

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    return-void

    :cond_main_mode
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z"""


def next_id_value() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_ID):
        if path.exists():
            ids.extend(int(v, 16) for v in re.findall(r"0x7f09[0-9a-f]+", path.read_text(encoding="utf-8")))
    return max(ids) + 1 if ids else 0x7F090295


def next_drawable_id() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_DRAWABLE):
        if path.exists():
            ids.extend(int(v, 16) for v in re.findall(r"0x7f08[0-9a-f]+", path.read_text(encoding="utf-8")))
    return max(ids) + 1 if ids else 0x7F0800DB


def register_id(name: str) -> int:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    match = re.search(rf'type="id" name="{name}" id="(0x[0-9a-f]+)"', public_text)
    if match:
        return int(match.group(1), 16)
    resource_id = next_id_value()
    resource_hex = f"0x{resource_id:08x}"
    PUBLIC_XML.write_text(
        public_text.replace(
            "</resources>",
            f'    <public type="id" name="{name}" id="{resource_hex}" />\n</resources>',
            1,
        ),
        encoding="utf-8",
    )
    ids_text = IDS_XML.read_text(encoding="utf-8")
    if f'name="{name}"' not in ids_text:
        IDS_XML.write_text(
            ids_text.replace(
                "</resources>",
                f'    <item type="id" name="{name}" />\n</resources>',
                1,
            ),
            encoding="utf-8",
        )
    r_text = R_ID.read_text(encoding="utf-8")
    if f".field public static final {name}:I" not in r_text:
        R_ID.write_text(
            r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {name}:I = {resource_hex}\n\n\n# direct methods",
                1,
            ),
            encoding="utf-8",
        )
    return resource_id


def register_green_drawable() -> int:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    match = re.search(
        rf'type="drawable" name="{GREEN_BG_NAME}" id="(0x[0-9a-f]+)"',
        public_text,
    )
    if match:
        return int(match.group(1), 16)
    resource_id = next_drawable_id()
    resource_hex = f"0x{resource_id:08x}"
    PUBLIC_XML.write_text(
        public_text.replace(
            "</resources>",
            f'    <public type="drawable" name="{GREEN_BG_NAME}" id="{resource_hex}" />\n</resources>',
            1,
        ),
        encoding="utf-8",
    )
    r_text = R_DRAWABLE.read_text(encoding="utf-8")
    if f".field public static final {GREEN_BG_NAME}:I" not in r_text:
        R_DRAWABLE.write_text(
            r_text.replace(
                "\n\n# direct methods",
                f"\n.field public static final {GREEN_BG_NAME}:I = {resource_hex}\n\n\n# direct methods",
                1,
            ),
            encoding="utf-8",
        )
    for src_dir in (DRAWABLE_SRC, DRAWABLE_NIGHT_SRC):
        src = src_dir / f"{GREEN_BG_NAME}.xml"
        if not src.exists():
            continue
        for dest_dir in ("drawable", "drawable-night"):
            dest = DECOMPILED / "res" / dest_dir / f"{GREEN_BG_NAME}.xml"
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_text(src.read_text(encoding="utf-8"), encoding="utf-8")
    return resource_id


def add_strings() -> None:
    entries = (
        (STRINGS, "Main"),
        (STRINGS_BG, "Основен"),
    )
    for path, label in entries:
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if MAIN_MODE_STRING in text:
            continue
        text = text.replace(
            "</resources>",
            f'    <string name="{MAIN_MODE_STRING}">{label}</string>\n</resources>',
            1,
        )
        path.write_text(text, encoding="utf-8")
        print(f"added string {MAIN_MODE_STRING} to {path.parent.name}/{path.name}")


def shrink_mode_button(tag: str, *, user_layout: bool) -> str:
    height = MODE_BTN_HEIGHT
    margin = MODE_BTN_MARGIN_USER if user_layout else MODE_BTN_MARGIN_NEW
    tag = re.sub(r'android:layout_height="[\d.]+dip"', f'android:layout_height="{height}"', tag)
    if user_layout:
        tag = re.sub(r'android:layout_margin="[\d.]+dip"', f'android:layout_margin="{margin}"', tag)
        tag = re.sub(
            r'android:layout_marginLeft="[\d.]+dip" android:layout_marginRight="[\d.]+dip"',
            f'android:layout_marginLeft="{margin}" android:layout_marginRight="{margin}"',
            tag,
        )
    else:
        tag = re.sub(r'android:layout_margin="[\d.]+dip"', f'android:layout_margin="{margin}"', tag)
        tag = re.sub(
            r'android:layout_marginLeft="[\d.]+dip" android:layout_marginRight="[\d.]+dip"',
            f'android:layout_marginLeft="{margin}" android:layout_marginRight="{margin}"',
            tag,
        )
    return tag


def patch_layouts(main_mode_id: int) -> None:
    _ = main_mode_id
    btn_new = MAIN_MODE_BTN_NEW
    btn_user = MAIN_MODE_BTN_USER
    for layout_dir in ("layout", "layout-night"):
        for name in LAYOUTS:
            path = DECOMPILED / "res" / layout_dir / name
            if not path.exists():
                continue
            text = path.read_text(encoding="utf-8")
            user_layout = name.startswith("user_")
            changed = False
            if f'@id/{MAIN_MODE_ID_NAME}' not in text:
                marker = '<com.isaigu.gymapp.widget.MyButton android:textSize="@dimen/ui_mode_button_text_size"'
                if marker not in text:
                    raise RuntimeError(f"mode button column not found in {path}")
                insert = btn_user if user_layout else btn_new
                text = text.replace(marker, insert + "\n            " + marker, 1)
                changed = True
                print(f"patched {layout_dir}/{name}: added {MAIN_MODE_ID_NAME}")
            for view_id in ("strenthExist", "youyangyundong", "anmo", MAIN_MODE_ID_NAME):
                pattern = rf'(<com\.isaigu\.gymapp\.widget\.MyButton[^>]*android:id="@id/{view_id}"[^>]*/>)'
                while True:
                    match = re.search(pattern, text)
                    if not match:
                        break
                    shrunk = shrink_mode_button(match.group(1), user_layout=user_layout)
                    if shrunk == match.group(1):
                        break
                    text = text[: match.start()] + shrunk + text[match.end() :]
                    changed = True
            if changed:
                path.write_text(text, encoding="utf-8")
            else:
                print(f"{layout_dir}/{name}: main mode button already present")


def patch_train_item() -> None:
    text = TRAIN_ITEM.read_text(encoding="utf-8")
    if "mainModeSelected:Z" not in text:
        if "pauseMaSelected:Z" in text:
            text = text.replace(
                ".field private pauseMaSelected:Z\n",
                ".field private pauseMaSelected:Z\n\n.field private mainModeSelected:Z\n",
                1,
            )
        else:
            text = text.replace(
                ".field private maSelected:Z\n",
                ".field private maSelected:Z\n\n.field private mainModeSelected:Z\n",
                1,
            )
    if "isMainModeSelected()Z" not in text:
        text = text.replace(
            ".method public isMaSelected()Z",
            MAIN_MODE_METHODS.strip() + "\n\n.method public isMaSelected()Z",
            1,
        )
    if "setMainModeSelected(Z)V" not in text.split("isMainModeSelected()Z")[0]:
        pass  # included in MAIN_MODE_METHODS
    if "->mainModeSelected:Z" not in text.split("<init>", 1)[-1].split(".method", 1)[0]:
        old2 = """    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseMaSelected:Z

    .line 40"""
        new2 = """    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->pauseMaSelected:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z

    .line 40"""
        old1 = """    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z

    .line 40"""
        new1 = """    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->hzSelected:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z

    .line 40"""
        if old2 in text:
            text = text.replace(old2, new2, 1)
            print("TrainItem.<init>: default mainModeSelected=true")
        elif old1 in text:
            text = text.replace(old1, new1, 1)
            print("TrainItem.<init>: default mainModeSelected=true")
    for old, new, label in (
        (SET_MA_SELECTED_OLD, SET_MA_SELECTED_NEW, "setMaSelected"),
        (SET_HZ_SELECTED_OLD, SET_HZ_SELECTED_NEW, "setHzSelected"),
        (SET_PAUSE_MA_OLD, SET_PAUSE_MA_NEW, "setPauseMaSelected"),
        (SET_PAUSE_HZ_OLD, SET_PAUSE_HZ_NEW, "setPauseHzSelected"),
    ):
        if "mainModeSelected:Z" in text.split(f".method public {label}", 1)[-1].split(".end method", 1)[0]:
            continue
        if old in text:
            text = text.replace(old, new, 1)
            print(f"TrainItem: patched {label} clears main mode")
    TRAIN_ITEM.write_text(text, encoding="utf-8")
    print("TrainItem: mainModeSelected state added")


def patch_train_item_manager() -> None:
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    if "isMainModeSelected()Z" in text.split("lambda$addAllPartValue$6", 1)[-1].split(".method", 1)[0]:
        print("TrainItemManager: main mode routing already patched")
        return
    pause_head = "    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z"
    if pause_head not in text:
        raise RuntimeError("TrainItemManager lambda marker not found")
    text = text.replace(pause_head, LAMBDA_MAIN_MODE_HEAD, 1)
    TRAIN_ITEM_MANAGER.write_text(text, encoding="utf-8")
    print("TrainItemManager: route master +/- to main mode first")


def bind_main_mode_click_smali(main_mode_id: int) -> str:
    return f"""
.method private bindMainModeClick()V
    .locals 3

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {main_mode_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_end

    new-instance v1, Lcom/isaigu/gymapp/train/TrainMainModeClickListener;

    invoke-direct {{v1, p0}}, Lcom/isaigu/gymapp/train/TrainMainModeClickListener;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {{v0, v1}}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_end
    return-void
.end method
""".strip()


def update_main_mode_display_smali(main_mode_id: int, green_bg: int) -> str:
    return f"""
.method private updateMainModeDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {main_mode_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {{v1}}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMainModeSelected()Z

    move-result v1

    if-eqz v1, :cond_gray

    const v1, {green_bg:#x}

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_gray
    const v1, {GRAY_BG:#x}

    invoke-virtual {{v0, v1}}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
""".strip()


def patch_train_view_holder(main_mode_id: int, green_bg: int) -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    bind = bind_main_mode_click_smali(main_mode_id)
    display = update_main_mode_display_smali(main_mode_id, green_bg)

    if "bindMainModeClick()V" not in text:
        if "bindPauseMaValueClick()V" in text:
            text = text.replace(
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindPauseMaValueClick()V\n",
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindMainModeClick()V\n\n"
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindPauseMaValueClick()V\n",
                1,
            )
        elif "bindListener()V" in text:
            text = text.replace(
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindListener()V\n",
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindListener()V\n\n"
                "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindMainModeClick()V\n",
                1,
            )
        else:
            raise RuntimeError("TrainViewHolder bind hook not found")
        print("TrainViewHolder: bind main mode click")

    if "updateMainModeDisplay()V" not in text:
        marker = "    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->strenthExist:Lcom/isaigu/gymapp/widget/MyButton;\n\n    const v2, 0x7f0800c3"
        if marker not in text:
            raise RuntimeError("TrainViewHolder updateUI mode button marker not found")
        text = text.replace(
            marker,
            "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateMainModeDisplay()V\n\n" + marker,
            1,
        )
        print("TrainViewHolder.updateUI: refresh main mode button")

    if bind not in text:
        text = text.replace(
            ".method private bindPauseMaValueClick()V",
            bind + "\n\n.method private bindPauseMaValueClick()V",
            1,
        )
    if display not in text:
        text = text.replace(
            ".method private updatePauseMaDisplay()V",
            display + "\n\n.method private updatePauseMaDisplay()V",
            1,
        )
    TRAIN_VIEW_HOLDER.write_text(text, encoding="utf-8")


def write_listener() -> None:
    path = TRAIN_DIR / "TrainMainModeClickListener.smali"
    path.write_text(MAIN_MODE_CLICK_LISTENER.strip() + "\n", encoding="utf-8")


def main() -> int:
    if not DECOMPILED.exists():
        raise SystemExit("Decompiled tree missing; run decompile first.")
    main_mode_id = register_id(MAIN_MODE_ID_NAME)
    green_bg = register_green_drawable()
    add_strings()
    patch_layouts(main_mode_id)
    patch_train_item()
    patch_train_item_manager()
    patch_train_view_holder(main_mode_id, green_bg)
    write_listener()
    print("Main mode button patches applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
