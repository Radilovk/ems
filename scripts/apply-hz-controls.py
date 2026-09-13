#!/usr/bin/env python3
"""Live Hz +/- controls around the client avatar during training."""

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
TRAIN_DIR = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "train"
DRAWABLE_SRC = ROOT / "branding" / "drawable"
DRAWABLE_NIGHT_SRC = ROOT / "branding" / "drawable-night"

HZ_ID_NAMES = ("hzAdd", "hzMinus", "hzValue")

AVATAR_BLOCK = re.compile(
    r"<RelativeLayout android:layout_width=\"0\.0dip\" android:layout_height=\"fill_parent\" "
    r"android:layout_weight=\"0\.6\">[\s\S]*?"
    r"(?:<TextView android:id=\"@id/hzValue\"[\s\S]*?/>|"
    r"<com\.isaigu\.gymapp\.widget\.MyButton android:id=\"@id/setting\"[\s\S]*?/>)\s*"
    r"</RelativeLayout>",
)

AVATAR_NEW = """<RelativeLayout android:layout_width="0.0dip" android:layout_height="fill_parent" android:layout_weight="0.6">
            <TextView android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" android:gravity="center" android:id="@id/ma" android:background="@drawable/light_black_button_drawable_r30" android:layout_width="50.0dip" android:layout_height="50.0dip" android:layout_marginTop="10.0dip" android:text="35mA" />
            <ImageView android:id="@id/userIcon" android:padding="15.0dip" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_marginRight="1.0dip" android:src="@mipmap/icon_sample" />
            <TextView android:textColor="@color/text_primary" android:textSize="45.0sp" android:textStyle="bold" android:id="@id/wave_ball_progress_value" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_centerInParent="true" />
            <com.isaigu.gymapp.widget.WaveBallProgress android:id="@id/wave_ball_progress_act_view" android:visibility="gone" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_margin="42.0dip" android:layout_centerInParent="true" />
            <com.isaigu.gymapp.widget.MyButton android:id="@id/setting" android:background="@mipmap/set" android:layout_width="40.0dip" android:layout_height="40.0dip" android:layout_alignLeft="@id/circleSeekBar" android:layout_alignBottom="@id/circleSeekBar" android:layout_marginLeft="10.0dip" android:layout_marginBottom="10.0dip" />
            <com.isaigu.gymapp.widget.MyButton android:id="@id/hzAdd" android:background="@drawable/ui_hz_button_bg" android:layout_width="40.0dip" android:layout_height="40.0dip" android:layout_alignParentRight="true" android:layout_marginTop="10.0dip" android:gravity="center" android:text="+" android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" />
            <com.isaigu.gymapp.widget.MyButton android:id="@id/hzMinus" android:background="@drawable/ui_hz_button_bg" android:layout_width="40.0dip" android:layout_height="40.0dip" android:layout_alignParentRight="true" android:layout_alignParentBottom="true" android:layout_marginBottom="10.0dip" android:gravity="center" android:text="-" android:textColor="@color/white_color" android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" />
            <TextView android:id="@id/hzValue" android:background="@drawable/ui_hz_value_bg" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_alignParentRight="true" android:layout_centerVertical="true" android:layout_marginRight="2.0dip" android:gravity="center" android:paddingLeft="5.0dip" android:paddingRight="5.0dip" android:paddingTop="2.0dip" android:paddingBottom="2.0dip" android:text="80" android:textColor="@color/impulse_accent" android:textSize="10.0sp" android:textStyle="bold" />
            <com.isaigu.gymapp.widget.CircleSeekBar android:id="@id/circleSeekBar" android:paddingLeft="14.0dip" android:paddingTop="14.0dip" android:paddingRight="14.0dip" android:paddingBottom="10.0dip" android:layout_width="fill_parent" android:layout_height="fill_parent" android:layout_marginRight="2.0dip" android:layout_centerInParent="true" android:rotation="180.0" app:wave_bg_color="@color/blume_color" app:wheel_pointer_color="@color/grown_color" app:wheel_pointer_radius="18.0dip" app:wheel_reached_width="14.0dip" app:wheel_scroll_only_one_circle="true" app:wheel_unreached_color="@color/seekbar_back_gray" app:wheel_unreached_width="14.0dip" />
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

def bind_hz_controls_smali(hz_add_id: int, hz_minus_id: int) -> str:
    return f"""
.method private bindHzControls()V
    .locals 3

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, {hz_add_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_skip_add

    new-instance v2, Lcom/isaigu/gymapp/train/TrainHzAddListener;

    invoke-direct {{v2, p0}}, Lcom/isaigu/gymapp/train/TrainHzAddListener;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    invoke-virtual {{v1, v2}}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_skip_add
    const v1, {hz_minus_id:#x}

    invoke-virtual {{v0, v1}}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_end

    new-instance v1, Lcom/isaigu/gymapp/train/TrainHzMinusListener;

    invoke-direct {{v1, p0}}, Lcom/isaigu/gymapp/train/TrainHzMinusListener;-><init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

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

    const-string v1, " Hz"

    invoke-virtual {{v2, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v2}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {{v0, v1}}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
""".strip()

HZ_ADD_LISTENER = """.class public Lcom/isaigu/gymapp/train/TrainHzAddListener;
.super Ljava/lang/Object;
.source "TrainHzAddListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final holder:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainHzAddListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainHzAddListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainHzAddListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainHzAddListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void
.end method
"""

HZ_MINUS_LISTENER = """.class public Lcom/isaigu/gymapp/train/TrainHzMinusListener;
.super Ljava/lang/Object;
.source "TrainHzMinusListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final holder:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainHzMinusListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainHzMinusListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addHz(I)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainHzMinusListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainHzMinusListener;->holder:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    return-void
.end method
"""


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
            if (
                'android:layout_alignParentRight="true" android:layout_marginTop="10.0dip"' in text
                and "@drawable/ui_hz_button_bg" in text
                and text.find("@id/circleSeekBar") > text.find("@id/hzMinus")
            ):
                print(f"{layout_dir}/{name}: Hz controls already tucked under ring")
                continue
            if not AVATAR_BLOCK.search(text):
                raise RuntimeError(f"avatar block not found in {layout_dir}/{name}")
            text = AVATAR_BLOCK.sub(AVATAR_NEW, text, count=1)
            path.write_text(text, encoding="utf-8")
            print(f"patched {layout_dir}/{name} with inset Hz controls")


def patch_train_item() -> None:
    text = TRAIN_ITEM.read_text(encoding="utf-8")
    if "addHz(I)V" in text:
        print("TrainItem.addHz: already patched")
        return
    marker = ".method public close()V"
    if marker not in text:
        raise RuntimeError("TrainItem.close marker not found")
    text = text.replace(marker, ADD_HZ_METHOD.strip() + "\n\n" + marker, 1)
    TRAIN_ITEM.write_text(text, encoding="utf-8")
    print("TrainItem: added addHz()")


def patch_train_view_holder(ids: dict[str, int]) -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    bind_block = bind_hz_controls_smali(ids["hzAdd"], ids["hzMinus"])
    display_block = update_hz_display_smali(ids["hzValue"])
    if "bindHzControls()V" not in text:
        bind_end = """    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method"""
        bind_new = """    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindHzControls()V

    return-void
.end method"""
        if bind_end not in text:
            raise RuntimeError("TrainViewHolder.bindListener end marker not found")
        text = text.replace(bind_end, bind_new, 1)
        text = text.replace(
            ".method private bindNotEmpty()V",
            bind_block + "\n\n" + display_block + "\n\n.method private bindNotEmpty()V",
            1,
        )
        print("TrainViewHolder: added bindHzControls + updateHzDisplay")
    else:
        text = re.sub(
            r"\.method private bindHzControls\(\)V.*?\.end method",
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

    update_marker = """    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v1, 0x0"""
    update_replacement = """    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->updateHzDisplay()V

    .line 218
    const/4 v1, 0x0"""
    if update_marker in text and "updateHzDisplay()V" not in text.split("updateUI()V")[1].split(".method")[0]:
        text = text.replace(update_marker, update_replacement, 1)
        print("TrainViewHolder.updateUI: refresh Hz label")

    TRAIN_VIEW_HOLDER.write_text(text, encoding="utf-8")


def write_listeners() -> None:
    add_path = TRAIN_DIR / "TrainHzAddListener.smali"
    minus_path = TRAIN_DIR / "TrainHzMinusListener.smali"
    add_path.write_text(HZ_ADD_LISTENER.strip() + "\n", encoding="utf-8")
    minus_path.write_text(HZ_MINUS_LISTENER.strip() + "\n", encoding="utf-8")
    print("TrainHzAddListener / TrainHzMinusListener written")


def main() -> None:
    ids = register_ids()
    for drawable in ("ui_hz_button_bg", "ui_hz_value_bg"):
        register_drawable(drawable)
    patch_layouts()
    patch_train_item()
    patch_train_view_holder(ids)
    write_listeners()
    print("Hz control patches applied.")


if __name__ == "__main__":
    main()
