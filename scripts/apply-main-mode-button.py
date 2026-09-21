#!/usr/bin/env python3
"""Add 'Main' (Основен) as the 4th program mode button (useType=0) with muscle/cardio/massage."""

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
    f'android:id="@id/{MAIN_MODE_ID_NAME}" android:background="@drawable/round_corner_drawable_r10_gray" '
    'android:layout_width="120.0dip" '
    f'android:layout_height="{MODE_BTN_HEIGHT}" '
    f'android:layout_margin="{MODE_BTN_MARGIN_NEW}" '
    f'android:text="@string/{MAIN_MODE_STRING}" android:textAllCaps="true" />'
)

MAIN_MODE_BTN_USER = (
    '<com.isaigu.gymapp.widget.MyButton android:textSize="@dimen/ui_mode_button_text_size" '
    'android:textStyle="bold" android:textColor="@color/mode_button_text" '
    f'android:id="@id/{MAIN_MODE_ID_NAME}" android:background="@drawable/round_corner_drawable_r10_gray" '
    'android:layout_width="100.0dip" '
    f'android:layout_height="{MODE_BTN_HEIGHT}" '
    f'android:layout_margin="{MODE_BTN_MARGIN_USER}" '
    f'android:text="@string/{MAIN_MODE_STRING}" android:textAllCaps="true" />'
)

IS_MAIN_MODE_METHOD = """
.method public isMainModeSelected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-nez v0, :cond_not_main

    const/4 v0, 0x1

    return v0

    :cond_not_main
    const/4 v0, 0x0

    return v0
.end method
""".strip()

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setUserType(I)V

    return-void
.end method
"""

LAMBDA_MAIN_MODE_HEAD_WRONG = """    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMainModeSelected()Z

    move-result v0

    if-eqz v0, :cond_main_mode

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    return-void

    :cond_main_mode
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z"""

LAMBDA_MAIN_MODE_AFTER_MA = """    :cond_ma
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMainModeSelected()Z

    move-result v0

    if-eqz v0, :cond_main_mode

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    :cond_main_mode
    return-void"""

LAMBDA_MAIN_MODE_BROKEN_MUSIC = """    invoke-static {p2, p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_4
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMainModeSelected()Z

    move-result v0

    if-eqz v0, :cond_main_mode

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    :cond_main_mode
    return-void
.end method"""

LAMBDA_MAIN_MODE_BROKEN_INLINE = """    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMainModeSelected()Z

    move-result v0

    if-eqz v0, :cond_main_mode

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    :cond_main_mode
    return-void
.end method"""


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
            if f'@id/{MAIN_MODE_ID_NAME}' in text:
                text = text.replace(
                    f'android:id="@id/{MAIN_MODE_ID_NAME}" android:background="@drawable/{GREEN_BG_NAME}"',
                    f'android:id="@id/{MAIN_MODE_ID_NAME}" android:background="@drawable/round_corner_drawable_r10_gray"',
                )
                changed = True
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

    text = re.sub(
        r"\.method public isMainModeSelected\(\)Z.*?\.end method",
        IS_MAIN_MODE_METHOD,
        text,
        count=1,
        flags=re.DOTALL,
    )
    text = re.sub(
        r"\.method public setMainModeSelected\(Z\)V.*?\.end method",
        "",
        text,
        count=1,
        flags=re.DOTALL,
    )
    text = re.sub(
        r"\.method public syncMainModeFromIndexSelection\(\)V.*?\.end method",
        "",
        text,
        count=1,
        flags=re.DOTALL,
    )
    if "isMainModeSelected()Z" not in text:
        text = text.replace(
            ".method public isMaSelected()Z",
            IS_MAIN_MODE_METHOD + "\n\n.method public isMaSelected()Z",
            1,
        )

    if "mainModeSelected:Z" in text:
        text = text.replace(".field private mainModeSelected:Z\n\n", "")
        text = text.replace(".field private mainModeSelected:Z\n", "")
        text = re.sub(
            r"\n\s*iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z\n",
            "\n",
            text,
        )
        text = re.sub(
            r"\n\s*const/4 v0, 0x1\n\n\s*iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z\n",
            "\n",
            text,
        )
        text = re.sub(
            r"\n\s*iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z\n",
            "\n",
            text,
        )
        text = re.sub(
            r"\n\s*const/4 v1, 0x1\n\n\s*iput-boolean v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->mainModeSelected:Z\n",
            "\n",
            text,
        )
        print("TrainItem: main mode follows useType=0")

    TRAIN_ITEM.write_text(text, encoding="utf-8")
    print("TrainItem: isMainModeSelected() uses useType")


def patch_train_item_manager() -> None:
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    pause_head = "    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z"

    if LAMBDA_MAIN_MODE_HEAD_WRONG.split("\n", 1)[0] in text:
        text = text.replace(LAMBDA_MAIN_MODE_HEAD_WRONG, pause_head, 1)
        print("TrainItemManager: moved main mode routing after avatar indices")

    if LAMBDA_MAIN_MODE_BROKEN_MUSIC in text:
        text = text.replace(
            LAMBDA_MAIN_MODE_BROKEN_MUSIC,
            """    invoke-static {p2, p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v0

    if-nez v0, :cond_ma_return

    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    :cond_ma_return
    return-void

"""
            + LAMBDA_MAIN_MODE_AFTER_MA
            + "\n.end method",
            1,
        )
        print("TrainItemManager: fixed music-sync main mode routing")

    if LAMBDA_MAIN_MODE_BROKEN_INLINE in text:
        text = text.replace(
            LAMBDA_MAIN_MODE_BROKEN_INLINE,
            "    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V\n\n    return-void\n\n"
            + LAMBDA_MAIN_MODE_AFTER_MA
            + "\n.end method",
            1,
        )
        print("TrainItemManager: fixed inline main mode routing after MA")

    lambda_body = text.split("lambda$addAllPartValue$6", 1)[-1].split(".method", 1)[0]
    if "isMainModeSelected()Z" in lambda_body:
        ma_pos = lambda_body.find("isMaSelected()Z")
        main_pos = lambda_body.find("isMainModeSelected()Z")
        if ma_pos != -1 and main_pos > ma_pos and ":cond_ma_return" in lambda_body:
            TRAIN_ITEM_MANAGER.write_text(text, encoding="utf-8")
            print("TrainItemManager: main mode routing after avatar indices")
            return
        if ma_pos != -1 and main_pos > ma_pos and "return-void\n\n    :cond_ma\n" in lambda_body:
            TRAIN_ITEM_MANAGER.write_text(text, encoding="utf-8")
            print("TrainItemManager: main mode routing after avatar indices")
            return

    tail_markers = (
        (
            "    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V\n\n    :cond_ma\n    return-void\n.end method",
            "    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V\n\n    return-void\n\n"
            + LAMBDA_MAIN_MODE_AFTER_MA
            + "\n.end method",
        ),
        (
            "    :cond_ma\n    return-void\n.end method",
            LAMBDA_MAIN_MODE_AFTER_MA + "\n.end method",
        ),
    )
    patched = False
    for marker, replacement in tail_markers:
        if marker in text:
            text = text.replace(marker, replacement, 1)
            patched = True
            break
    if not patched:
        if "isMainModeSelected()Z" in lambda_body:
            raise RuntimeError("TrainItemManager lambda has main mode in wrong place")
        raise RuntimeError("TrainItemManager lambda$addAllPartValue$6 tail marker not found")
    TRAIN_ITEM_MANAGER.write_text(text, encoding="utf-8")
    print("TrainItemManager: route master +/- to main mode when no index selected")


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


def integrate_mode_button_highlight(text: str, main_mode_id: int, green_bg: int) -> str:
    gray_reset_marker = (
        "    .line 240\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->strenthExist:Lcom/isaigu/gymapp/widget/MyButton;\n\n"
        "    const v2, 0x7f0800c3"
    )
    gray_reset_new = (
        "    .line 240\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    invoke-virtual {v1}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;\n\n"
        "    move-result-object v1\n\n"
        f"    const v2, {main_mode_id:#x}\n\n"
        "    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;\n\n"
        "    move-result-object v1\n\n"
        "    check-cast v1, Lcom/isaigu/gymapp/widget/MyButton;\n\n"
        f"    const v2, {GRAY_BG:#x}\n\n"
        "    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V\n\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->strenthExist:Lcom/isaigu/gymapp/widget/MyButton;\n\n"
        "    const v2, 0x7f0800c3"
    )
    if gray_reset_marker in text and f"const v2, {main_mode_id:#x}" not in text.split(gray_reset_marker, 1)[0][-400:]:
        text = text.replace(gray_reset_marker, gray_reset_new, 1)
        print("TrainViewHolder.updateUI: reset main mode button with other modes")

    old_tail = (
        "    .line 252\n"
        "    :cond_8\n"
        "    :goto_4\n"
        "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateMainModeDisplay()V\n\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;"
    )
    new_tail = (
        "    .line 252\n"
        "    :cond_8\n"
        "    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;\n\n"
        "    move-result-object v1\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;\n\n"
        "    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I\n\n"
        "    if-nez v1, :cond_main_mode_on\n\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    invoke-virtual {v1}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;\n\n"
        "    move-result-object v1\n\n"
        f"    const v2, {main_mode_id:#x}\n\n"
        "    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;\n\n"
        "    move-result-object v1\n\n"
        "    check-cast v1, Lcom/isaigu/gymapp/widget/MyButton;\n\n"
        f"    const v2, {green_bg:#x}\n\n"
        "    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V\n\n"
        "    :cond_main_mode_on\n"
        "    :goto_4\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;"
    )
    alt_old_tail = (
        "    .line 252\n"
        "    :cond_8\n"
        "    :goto_4\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;"
    )
    alt_new_tail = (
        "    .line 252\n"
        "    :cond_8\n"
        "    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;\n\n"
        "    move-result-object v1\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;\n\n"
        "    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I\n\n"
        "    if-nez v1, :cond_main_mode_on\n\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    invoke-virtual {v1}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;\n\n"
        "    move-result-object v1\n\n"
        f"    const v2, {main_mode_id:#x}\n\n"
        "    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;\n\n"
        "    move-result-object v1\n\n"
        "    check-cast v1, Lcom/isaigu/gymapp/widget/MyButton;\n\n"
        f"    const v2, {green_bg:#x}\n\n"
        "    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V\n\n"
        "    :cond_main_mode_on\n"
        "    :goto_4\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;"
    )
    if old_tail in text:
        text = text.replace(old_tail, new_tail, 1)
        print("TrainViewHolder.updateUI: highlight main mode when useType=0")
    elif alt_old_tail in text and ":cond_main_mode_on" not in text:
        text = text.replace(alt_old_tail, alt_new_tail, 1)
        print("TrainViewHolder.updateUI: highlight main mode when useType=0")

    text = re.sub(
        r"\.method private updateMainModeDisplay\(\)V.*?\.end method\n+",
        "",
        text,
        count=1,
        flags=re.DOTALL,
    )
    return text


def strip_legacy_sync_calls(text: str) -> str:
    sync_block = (
        "    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->syncMainModeFromIndexSelection()V\n\n"
    )
    sync_block_v1 = (
        "    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->syncMainModeFromIndexSelection()V\n\n"
    )
    sync_block_v2 = (
        "    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->syncMainModeFromIndexSelection()V\n\n"
    )
    changed = False
    for block in (sync_block, sync_block_v1, sync_block_v2):
        if block in text:
            text = text.replace(block, "")
            changed = True
    if changed:
        print("TrainViewHolder: removed legacy main-mode sync hooks")
    ma_block_old = """    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->syncMainModeFromIndexSelection()V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V"""
    ma_block_new = """    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateUI()V"""
    if ma_block_old in text:
        text = text.replace(ma_block_old, ma_block_new, 1)
        print("TrainViewHolder MA click: removed legacy sync")
    return text


def strip_listener_sync() -> None:
    sync_line = (
        "    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->syncMainModeFromIndexSelection()V\n\n"
    )
    sync_line_v1 = (
        "    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->syncMainModeFromIndexSelection()V\n\n"
    )
    sync_line_v2 = (
        "    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->syncMainModeFromIndexSelection()V\n\n"
    )
    for path in TRAIN_DIR.glob("Train*ClickListener.smali"):
        text = path.read_text(encoding="utf-8")
        original = text
        for line in (sync_line, sync_line_v1, sync_line_v2):
            text = text.replace(line, "")
        if text != original:
            path.write_text(text, encoding="utf-8")
            print(f"{path.name}: removed legacy sync hook")


def patch_train_view_holder(main_mode_id: int, green_bg: int) -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    bind = bind_main_mode_click_smali(main_mode_id)

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

    if bind not in text:
        text = text.replace(
            ".method private bindPauseMaValueClick()V",
            bind + "\n\n.method private bindPauseMaValueClick()V",
            1,
        )

    text = integrate_mode_button_highlight(text, main_mode_id, green_bg)
    text = strip_legacy_sync_calls(text)
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
    strip_listener_sync()
    print("Main mode button patches applied (useType=0 program mode).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
