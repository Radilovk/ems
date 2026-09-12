#!/usr/bin/env python3
"""Improve bottom-tab icon contrast in dark mode."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MAIN_FRAGMENT = (
    ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "fragment" / "MainFragment.smali"
)

SELECTED_ICON_CLEAR = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 483"""

SELECTED_ICON_CLEAR_NEW = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_tab_sel_done

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_tab_sel_done
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 483"""

SELECTED_ICON_CLEAR_V1 = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 483"""

UNSELECTED_ICON_TINT = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 488"""

UNSELECTED_ICON_TINT_NEW = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_tab_icon_light

    const v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :goto_tab_icon_tint

    invoke-virtual {v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_tab_icon_tint

    :cond_tab_icon_light
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :goto_tab_icon_tint

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :goto_tab_icon_tint
    .line 488"""

UNSELECTED_ICON_TINT_IMAGE = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_tab_icon_light

    const v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_tab_icon_tint

    :cond_tab_icon_light
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_tab_icon_tint
    .line 488"""

CHANGE_PAGE_LOCALS_OLD = """.method public changePageSelect(I)V
    .locals 4"""
CHANGE_PAGE_LOCALS_NEW = """.method public changePageSelect(I)V
    .locals 5"""


def patch_main_fragment() -> None:
    text = MAIN_FRAGMENT.read_text(encoding="utf-8")
    if "getBackground()Landroid/graphics/drawable/Drawable;" in text and "cond_tab_icon_light" in text:
        print("MainFragment tab icon tint: already patched (background drawable)")
        return

    if UNSELECTED_ICON_TINT_IMAGE in text:
        text = text.replace(UNSELECTED_ICON_TINT_IMAGE, UNSELECTED_ICON_TINT_NEW, 1)
        if SELECTED_ICON_CLEAR_V1 in text:
            text = text.replace(SELECTED_ICON_CLEAR_V1, SELECTED_ICON_CLEAR_NEW, 1)
        if CHANGE_PAGE_LOCALS_OLD in text:
            text = text.replace(CHANGE_PAGE_LOCALS_OLD, CHANGE_PAGE_LOCALS_NEW, 1)
        MAIN_FRAGMENT.write_text(text, encoding="utf-8")
        print("MainFragment tab icon tint: upgraded to background drawable tint")
        return

    if SELECTED_ICON_CLEAR not in text:
        raise RuntimeError("MainFragment selected-tab marker not found")
    if UNSELECTED_ICON_TINT not in text:
        raise RuntimeError("MainFragment unselected-tab marker not found")
    text = text.replace(SELECTED_ICON_CLEAR, SELECTED_ICON_CLEAR_NEW, 1)
    text = text.replace(UNSELECTED_ICON_TINT, UNSELECTED_ICON_TINT_NEW, 1)
    if CHANGE_PAGE_LOCALS_OLD in text:
        text = text.replace(CHANGE_PAGE_LOCALS_OLD, CHANGE_PAGE_LOCALS_NEW, 1)
    MAIN_FRAGMENT.write_text(text, encoding="utf-8")
    print("MainFragment tab icon tint: patched for dark mode")


def main() -> None:
    patch_main_fragment()
    print("Tab theme patches applied.")


if __name__ == "__main__":
    main()
