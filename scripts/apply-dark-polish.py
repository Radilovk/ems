#!/usr/bin/env python3
"""Dark-theme-only UI polish: muscle bar, user list icons, device serial hide."""

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
LAYOUT_NIGHT = DECOMPILED / "res" / "layout-night"
PUBLIC_XML = DECOMPILED / "res" / "values" / "public.xml"
NEW_TRAIN_FRAGMENT = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "fragment"
    / "NewTrainFragment.smali"
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
R_DRAWABLE = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "R$drawable.smali"
)
DRAWABLE_NIGHT = ROOT / "branding" / "drawable-night"

MUSCLE_ICON_OLD = 'android:layout_width="36.0dip" android:layout_height="36.0dip"'
MUSCLE_ICON_NEW = 'android:layout_width="48.0dip" android:layout_height="48.0dip"'

MUSCLE_CELL_RE = re.compile(
    r'(<LinearLayout[^>]*android:id="@id/buwei\d+"[^>]*>)\s*'
    r'(<ImageView android:background="@mipmap/[^"]+" android:layout_width=")(?:36\.0|48\.0)dip(" android:layout_height=")(?:36\.0|48\.0)dip("[^/]*/>)\s*'
    r'(<TextView[^>]*android:textColor="@color/text_primary"[^>]*/>)\s*'
    r'(<ImageView android:background="@mipmap/sanjiaoxing"[^>]*/>)',
    re.DOTALL,
)

CHANGE_PART_OLD = """    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method private changePartDisabled(I)V"""

CHANGE_PART_NEW = """    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->updateMuscleSelectionVisual()V

    return-void
.end method

.method private updateMuscleSelectionVisual()V
    .locals 2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_end

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_end

    const/4 v0, 0x0

    :goto_loop
    const/16 v1, 0xa

    if-ge v0, v1, :cond_end

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->applyMuscleIndexVisual(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_loop

    :cond_end
    return-void
.end method

.method private applyMuscleIndexVisual(I)V
    .locals 6
    .param p1, "index"    # I

    packed-switch p1, :pswitch_data_0

    goto :goto_done

    :pswitch_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei1:Landroid/widget/LinearLayout;

    goto :goto_apply

    :pswitch_1
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei2:Landroid/widget/LinearLayout;

    goto :goto_apply

    :pswitch_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei3:Landroid/widget/LinearLayout;

    goto :goto_apply

    :pswitch_3
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei4:Landroid/widget/LinearLayout;

    goto :goto_apply

    :pswitch_4
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei5:Landroid/widget/LinearLayout;

    goto :goto_apply

    :pswitch_5
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei6:Landroid/widget/LinearLayout;

    goto :goto_apply

    :pswitch_6
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei7:Landroid/widget/LinearLayout;

    goto :goto_apply

    :pswitch_7
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei8:Landroid/widget/LinearLayout;

    goto :goto_apply

    :pswitch_8
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei9:Landroid/widget/LinearLayout;

    goto :goto_apply

    :pswitch_9
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei10:Landroid/widget/LinearLayout;

    goto :goto_apply

    :goto_apply
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsControl:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_clear

    const v4, {selected_drawable_id}

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v4, {icon_glow_id}

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/high16 v4, 0x41200000

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setElevation(F)V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f06005b

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_done

    :cond_clear
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setElevation(F)V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v4, 0x7f060025

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentActivity;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_done
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private changePartDisabled(I)V"""

CHANNEL_SELECTED_SIZE_OLD = """    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_1

    .line 226
    :cond_0"""

CHANNEL_SELECTED_SIZE_BROKEN = """    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :skip_selected_size

    const/4 v6, 0x2

    const/high16 v8, 0x41800000

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    :skip_selected_size
    goto :goto_1

    .line 226
    :cond_0"""

CHANNEL_SELECTED_SIZE_NEW = """    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :skip_selected_size

    const/4 v6, 0x2

    const/high16 v8, 0x41800000

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    :skip_selected_size
    goto :goto_1

    .line 226
    :cond_0"""

CHANNEL_NORMAL_SIZE_OLD = """    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 218
    .end local v2    # "value":I
    :goto_1"""

CHANNEL_NORMAL_SIZE_BROKEN = """    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :skip_normal_size

    const/4 v6, 0x2

    const/high16 v8, 0x41500000

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    :skip_normal_size

    .line 218
    .end local v2    # "value":I
    :goto_1"""

CHANNEL_NORMAL_SIZE_NEW = """    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v5, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->texts:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :skip_normal_size

    const/4 v6, 0x2

    const/high16 v8, 0x41500000

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    :skip_normal_size

    .line 218
    .end local v2    # "value":I
    :goto_1"""

LIST_ICON_ATTRS = (
    'android:scaleType="fitCenter" android:tint="@color/ui_list_icon" '
    'android:padding="5.0dip" android:background="@drawable/ui_list_icon_bg" '
    'android:layout_width="32.0dip" android:layout_height="32.0dip"'
)

ON_CREATE_VIEW_OLD = """    .line 125
    return-object v0
.end method

.method public onDestroy()V"""

ON_CREATE_VIEW_NEW = """    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->updateMuscleSelectionVisual()V

    return-object v0
.end method

.method public onDestroy()V"""


def next_drawable_id() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_DRAWABLE):
        if not path.exists():
            continue
        ids.extend(int(value, 16) for value in re.findall(r"0x7f08[0-9a-f]+", path.read_text(encoding="utf-8")))
    if not ids:
        raise RuntimeError("could not determine next drawable resource id")
    return max(ids) + 1


def register_drawable(name: str) -> str:
    public_text = PUBLIC_XML.read_text(encoding="utf-8")
    match = re.search(rf'type="drawable" name="{name}" id="(0x[0-9a-f]+)"', public_text)
    if match:
        return match.group(1)

    resource_id = next_drawable_id()
    resource_hex = f"0x{resource_id:08x}"

    public_text = public_text.replace(
        "</resources>",
        f'    <public type="drawable" name="{name}" id="{resource_hex}" />\n</resources>',
        1,
    )
    PUBLIC_XML.write_text(public_text, encoding="utf-8")

    r_text = R_DRAWABLE.read_text(encoding="utf-8")
    if f".field public static final {name}:I" not in r_text:
        r_text = r_text.replace(
            "\n\n# direct methods",
            f"\n.field public static final {name}:I = {resource_hex}\n\n\n# direct methods",
            1,
        )
        R_DRAWABLE.write_text(r_text, encoding="utf-8")

    src = DRAWABLE_NIGHT / f"{name}.xml"
    if src.exists():
        for dest_dir in (DECOMPILED / "res" / "drawable-night", DECOMPILED / "res" / "drawable"):
            dest = dest_dir / src.name
            dest.parent.mkdir(parents=True, exist_ok=True)
            if not dest.exists():
                dest.write_text(src.read_text(encoding="utf-8"), encoding="utf-8")

    print(f"registered drawable {name} -> {resource_hex}")
    return resource_hex


def drawable_id(name: str) -> str:
    return register_drawable(name)


def reorder_muscle_cells(text: str) -> str:
    def repl(match: re.Match[str]) -> str:
        return (
            f"{match.group(1)}\n"
            f"                    {match.group(5)}\n"
            f'                    {match.group(2)}48.0dip{match.group(3)}48.0dip{match.group(4)}\n'
            f"                    {match.group(6)}"
        )

    return MUSCLE_CELL_RE.sub(repl, text)


LABEL_STYLE = (
    'android:textSize="11.0sp" android:textColor="@color/text_primary" '
    'android:layout_width="52.0dip" android:layout_height="28.0dip" '
    'android:maxLines="2" android:ellipsize="end" android:gravity="center"'
)
ICON_STYLE = (
    'android:scaleType="fitCenter" android:layout_width="48.0dip" '
    'android:layout_height="48.0dip" android:layout_marginTop="2.0dip"'
)
HIDDEN_ARROW = (
    '<ImageView android:visibility="gone" android:layout_width="0.0dip" '
    'android:layout_height="0.0dip" />'
)

MUSCLE_CELL_ANY_ORDER = re.compile(
    r'(<LinearLayout[^>]*android:id="@id/buwei\d+"[^>]*>)\s*'
    r'(?:<TextView[^>]*android:textColor="@color/text_primary"[^>]*android:text="@string/[^"]+"[^>]*/>\s*)?'
    r'(?:<ImageView android:(?:background|src)="@mipmap/(?!sanjiaoxing)[^"]+"[^>]*/>\s*)?'
    r'(?:<TextView[^>]*android:textColor="@color/text_primary"[^>]*android:text="@string/[^"]+"[^>]*/>\s*)?'
    r'(?:<ImageView android:(?:background|src)="@mipmap/(?!sanjiaoxing)[^"]+"[^>]*/>\s*)?'
    r'(?:<ImageView[^>]*/>\s*)?',
    re.DOTALL,
)


def polish_muscle_cell_markup(text: str) -> str:
    def repl(match: re.Match[str]) -> str:
        block = match.group(0)
        label = re.search(
            r'<TextView[^>]*android:text="@string/([^"]+)"[^>]*/>',
            block,
        )
        icon = re.search(
            r'@mipmap/(?!sanjiaoxing)([^"]+)"',
            block,
        )
        if not label or not icon:
            return block
        return (
            f"{match.group(1)}\n"
            f'                    <TextView {LABEL_STYLE} android:text="@string/{label.group(1)}" />\n'
            f'                    <ImageView android:src="@mipmap/{icon.group(1)}" {ICON_STYLE} />\n'
            f"                    {HIDDEN_ARROW}"
        )

    text = MUSCLE_CELL_ANY_ORDER.sub(repl, text)
    if 'android:paddingLeft="2.0dip" android:paddingRight="2.0dip" android:id="@id/buwei' not in text:
        text = text.replace(
            'android:id="@id/buwei',
            'android:paddingLeft="2.0dip" android:paddingRight="2.0dip" android:id="@id/buwei',
        )
    return text


def patch_muscle_layouts() -> None:
    for name in ("new_train_fragment_layout.xml", "train_fragment_layout.xml"):
        path = LAYOUT_NIGHT / name
        if not path.exists():
            continue
        original = path.read_text(encoding="utf-8")
        updated = polish_muscle_cell_markup(original)
        if updated != original:
            path.write_text(updated, encoding="utf-8")
            print(f"polished muscle bar in layout-night/{name}")


def list_icon(mipmap: str) -> str:
    return f'<ImageView android:src="@mipmap/{mipmap}" {LIST_ICON_ATTRS} />'


def patch_user_item_night() -> None:
    path = LAYOUT_NIGHT / "user_item_layout.xml"
    if not path.exists():
        return
    text = path.read_text(encoding="utf-8")
    icon_map = (
        ("people", list_icon("people")),
        ("register", list_icon("register")),
        ("high", list_icon("high")),
        ("weight", list_icon("weight")),
        ("setting", list_icon("setting")),
    )
    for mipmap, replacement in icon_map:
        text = re.sub(
            rf'<ImageView[^>]*@mipmap/{mipmap}[^>]*/>',
            replacement,
            text,
            count=1,
        )
    record_replacement = (
        '<ImageView android:id="@id/recordImage" android:background="@drawable/ui_record_button_bg" '
        'android:src="@mipmap/trainrecord" android:scaleType="fitCenter" '
        'android:tint="@color/text_on_accent" android:padding="10.0dip" '
        'android:layout_width="48.0dip" android:layout_height="48.0dip" android:layout_marginRight="20.0dip" />'
    )
    text = re.sub(
        r'<ImageView android:id="@id/recordImage"[^>]*/>',
        record_replacement,
        text,
        count=1,
    )
    if 'orderText' in text and 'android:visibility="gone"' not in text.split("orderText")[0][-120:]:
        text = re.sub(
            r'    <RelativeLayout android:layout_width="wrap_content" android:layout_height="wrap_content" '
            r'android:layout_marginRight="20\.0dip">\s*'
            r'<ImageView android:background="@mipmap/orderpic"[^>]*/>\s*'
            r'<TextView[^>]*android:id="@id/orderText"[^>]*/>\s*'
            r'</RelativeLayout>',
            '    <RelativeLayout android:visibility="gone" android:layout_width="wrap_content" '
            'android:layout_height="wrap_content" android:layout_marginRight="20.0dip">\n'
            '        <ImageView android:background="@mipmap/orderpic" android:layout_width="40.0dip" '
            'android:layout_height="63.0dip" android:layout_centerInParent="true" />\n'
            '        <TextView android:textSize="20.0sp" android:textColor="@color/text_primary" '
            'android:id="@id/orderText" android:layout_width="wrap_content" '
            'android:layout_height="wrap_content" android:layout_marginTop="30.0dip" android:text="10" '
            'android:layout_centerHorizontal="true" />\n'
            '    </RelativeLayout>',
            text,
            count=1,
        )
    path.write_text(text, encoding="utf-8")
    print("patched layout-night/user_item_layout.xml uniform icons")


def patch_train_serial_hide() -> None:
    needle = (
        'android:id="@id/address" android:layout_width="wrap_content" '
        'android:layout_height="wrap_content" android:layout_marginLeft="5.0dip"'
    )
    replacement = (
        'android:id="@id/address" android:visibility="gone" android:layout_width="wrap_content" '
        'android:layout_height="wrap_content" android:layout_marginLeft="5.0dip"'
    )
    for name in ("new_user_train_control_item_layout.xml", "user_train_control_item_layout.xml"):
        path = LAYOUT_NIGHT / name
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if "address\" android:visibility=\"gone\"" in text:
            continue
        if needle not in text:
            raise RuntimeError(f"address marker not found in layout-night/{name}")
        path.write_text(text.replace(needle, replacement, 1), encoding="utf-8")
        print(f"hid device serial in layout-night/{name}")


def replace_method(text: str, method_name: str, new_body: str) -> str:
    pattern = re.compile(
        rf"\.method private {re.escape(method_name)}.*?\n\.end method\n",
        re.DOTALL,
    )
    if not pattern.search(text):
        raise RuntimeError(f"method {method_name} not found")
    return pattern.sub(new_body.rstrip() + "\n", text, count=1)


def muscle_visual_block(selected_id: str, icon_glow_id: str) -> str:
    return (
        CHANGE_PART_NEW.replace("{selected_drawable_id}", selected_id).replace(
            "{icon_glow_id}", icon_glow_id
        )
    )


def patch_new_train_fragment() -> None:
    selected_id = drawable_id("ui_muscle_selected_bg")
    icon_glow_id = drawable_id("ui_muscle_icon_glow")
    text = NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")
    if "updateMuscleSelectionVisual" not in text:
        if CHANGE_PART_OLD not in text:
            raise RuntimeError("NewTrainFragment.changePartControl marker not found")
        text = text.replace(CHANGE_PART_OLD, muscle_visual_block(selected_id, icon_glow_id), 1)
        print("NewTrainFragment: added dark-mode muscle selection visual")
    else:
        apply_method = (
            ".method private applyMuscleIndexVisual(I)V"
            + muscle_visual_block(selected_id, icon_glow_id).split(
                ".method private applyMuscleIndexVisual(I)V"
            )[1].split(".method private changePartDisabled(I)V")[0]
        )
        text = replace_method(text, "applyMuscleIndexVisual(I)V", apply_method)
        print("NewTrainFragment: upgraded muscle glow + label color visual")
    if ON_CREATE_VIEW_OLD in text:
        text = text.replace(ON_CREATE_VIEW_OLD, ON_CREATE_VIEW_NEW, 1)
        print("NewTrainFragment: initial muscle selection visual on view create")
    null_guard_old = (
        "    move-result-object v0\n\n"
        "    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z\n\n"
        "    move-result v0\n\n"
        "    if-nez v0, :cond_end\n\n"
        "    const/4 v0, 0x0\n\n"
        "    :goto_loop"
    )
    null_guard_new = (
        "    move-result-object v0\n\n"
        "    if-nez v0, :cond_end\n\n"
        "    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z\n\n"
        "    move-result v0\n\n"
        "    if-nez v0, :cond_end\n\n"
        "    const/4 v0, 0x0\n\n"
        "    :goto_loop"
    )
    if null_guard_old in text and null_guard_new not in text:
        text = text.replace(null_guard_old, null_guard_new, 1)
        print("NewTrainFragment: null-safe muscle selection visual")
    NEW_TRAIN_FRAGMENT.write_text(text, encoding="utf-8")


def patch_train_viewholder_channel_text() -> None:
    text = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
    if CHANNEL_SELECTED_SIZE_BROKEN in text:
        text = text.replace(CHANNEL_SELECTED_SIZE_BROKEN, CHANNEL_SELECTED_SIZE_NEW, 1)
        text = text.replace(CHANNEL_NORMAL_SIZE_BROKEN, CHANNEL_NORMAL_SIZE_NEW, 1)
        TRAIN_VIEW_HOLDER.write_text(text, encoding="utf-8")
        print("TrainViewHolder: fixed channel text size crash (TextPaint vs TextView)")
        return
    if ":skip_selected_size" in text:
        print("TrainViewHolder channel text size: already patched")
        return
    if CHANNEL_SELECTED_SIZE_OLD not in text:
        raise RuntimeError("TrainViewHolder channel selection marker not found")
    text = text.replace(CHANNEL_SELECTED_SIZE_OLD, CHANNEL_SELECTED_SIZE_NEW, 1)
    text = text.replace(CHANNEL_NORMAL_SIZE_OLD, CHANNEL_NORMAL_SIZE_NEW, 1)
    TRAIN_VIEW_HOLDER.write_text(text, encoding="utf-8")
    print("TrainViewHolder: dark-mode selected channel percent size bump")


def main() -> None:
    patch_muscle_layouts()
    patch_user_item_night()
    patch_train_serial_hide()
    patch_new_train_fragment()
    patch_train_viewholder_channel_text()
    print("Dark polish patches applied.")


if __name__ == "__main__":
    main()
