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
    .locals 4
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
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsControl:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_clear

    const v1, {selected_drawable_id}

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_done

    :cond_clear
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

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


def patch_muscle_layouts() -> None:
    for name in ("new_train_fragment_layout.xml", "train_fragment_layout.xml"):
        path = LAYOUT_NIGHT / name
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        text = text.replace(MUSCLE_ICON_OLD, MUSCLE_ICON_NEW)
        text = text.replace(
            'android:textSize="@dimen/ui_muscle_label_text_size"',
            'android:textSize="12.0sp" android:textStyle="bold"',
        )
        updated = reorder_muscle_cells(text)
        if updated != text:
            path.write_text(updated, encoding="utf-8")
            print(f"reordered muscle labels above icons in layout-night/{name}")


def patch_user_item_night() -> None:
    path = LAYOUT_NIGHT / "user_item_layout.xml"
    if not path.exists():
        return
    text = path.read_text(encoding="utf-8")
    replacements = (
        (
            'android:background="@mipmap/people" android:tint="@color/tab_icon_unselected" android:layout_width="wrap_content" android:layout_height="wrap_content"',
            'android:background="@mipmap/people" android:tint="@color/ui_list_icon" android:layout_width="28.0dip" android:layout_height="28.0dip"',
        ),
        (
            'android:background="@mipmap/register" android:tint="@color/tab_icon_unselected" android:layout_width="wrap_content" android:layout_height="wrap_content"',
            'android:background="@mipmap/register" android:tint="@color/ui_list_icon" android:layout_width="28.0dip" android:layout_height="28.0dip"',
        ),
        (
            'android:background="@mipmap/high" android:tint="@color/tab_icon_unselected" android:layout_width="wrap_content" android:layout_height="wrap_content"',
            'android:background="@mipmap/high" android:tint="@color/ui_list_icon" android:layout_width="28.0dip" android:layout_height="28.0dip"',
        ),
        (
            'android:background="@mipmap/weight" android:tint="@color/tab_icon_unselected" android:layout_width="wrap_content" android:layout_height="wrap_content"',
            'android:background="@mipmap/weight" android:tint="@color/ui_list_icon" android:layout_width="28.0dip" android:layout_height="28.0dip"',
        ),
        (
            'android:background="@mipmap/setting" android:tint="@color/tab_icon_unselected" android:layout_width="50.0dip" android:layout_height="50.0dip"',
            'android:background="@mipmap/setting" android:tint="@color/ui_list_icon" android:layout_width="28.0dip" android:layout_height="28.0dip"',
        ),
        (
            '<ImageView android:id="@id/recordImage" android:background="@mipmap/trainrecord" android:tint="@color/tab_icon_unselected" android:layout_width="40.0dip" android:layout_height="50.0dip" android:layout_marginRight="20.0dip" />',
            '<ImageView android:id="@id/recordImage" android:background="@drawable/ui_record_button_bg" android:src="@mipmap/trainrecord" android:tint="@color/text_on_accent" android:padding="8.0dip" android:layout_width="48.0dip" android:layout_height="48.0dip" android:layout_marginRight="20.0dip" />',
        ),
        (
            '    <RelativeLayout android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginRight="20.0dip">\n        <ImageView android:background="@mipmap/orderpic" android:tint="@color/tab_icon_unselected" android:layout_width="40.0dip" android:layout_height="63.0dip" android:layout_centerInParent="true" />\n        <TextView android:textSize="20.0sp" android:textColor="@color/text_primary" android:id="@id/orderText" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="30.0dip" android:text="10" android:layout_centerHorizontal="true" />\n    </RelativeLayout>',
            '    <RelativeLayout android:visibility="gone" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginRight="20.0dip">\n        <ImageView android:background="@mipmap/orderpic" android:layout_width="40.0dip" android:layout_height="63.0dip" android:layout_centerInParent="true" />\n        <TextView android:textSize="20.0sp" android:textColor="@color/text_primary" android:id="@id/orderText" android:layout_width="wrap_content" android:layout_height="wrap_content" android:layout_marginTop="30.0dip" android:text="10" android:layout_centerHorizontal="true" />\n    </RelativeLayout>',
        ),
    )
    for old, new in replacements:
        text = text.replace(old, new, 1)
    path.write_text(text, encoding="utf-8")
    print("patched layout-night/user_item_layout.xml icons and buttons")


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


def patch_new_train_fragment() -> None:
    selected_id = drawable_id("ui_muscle_selected_bg")
    text = NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")
    if "updateMuscleSelectionVisual" not in text:
        if CHANGE_PART_OLD not in text:
            raise RuntimeError("NewTrainFragment.changePartControl marker not found")
        new_block = CHANGE_PART_NEW.replace("{selected_drawable_id}", selected_id)
        text = text.replace(CHANGE_PART_OLD, new_block, 1)
        print("NewTrainFragment: added dark-mode muscle green selection highlight")
    else:
        print("NewTrainFragment muscle selection visual: already patched")
    if ON_CREATE_VIEW_OLD in text:
        text = text.replace(ON_CREATE_VIEW_OLD, ON_CREATE_VIEW_NEW, 1)
        print("NewTrainFragment: initial muscle selection visual on view create")
    NEW_TRAIN_FRAGMENT.write_text(text, encoding="utf-8")


def main() -> None:
    patch_muscle_layouts()
    patch_user_item_night()
    patch_train_serial_hide()
    patch_new_train_fragment()
    print("Dark polish patches applied.")


if __name__ == "__main__":
    main()
