#!/usr/bin/env python3
"""Improve bottom-tab icon contrast in dark mode only."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MAIN_FRAGMENT = (
    ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "fragment" / "MainFragment.smali"
)

# Original unselected branch — no runtime tint logic.
UNSELECTED_ICON_ORIGINAL = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 488"""

# Wrong patch: white tint applied in light mode (if-nez skipped dark).
UNSELECTED_ICON_TINT_BROKEN = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

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

# Dark mode only: tint unselected icons to match unselected tab text (light_black_color).
UNSELECTED_ICON_TINT_DARK = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :goto_tab_icon_tint

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :goto_tab_icon_tint

    invoke-virtual {v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_tab_icon_tint
    .line 488"""

SELECTED_ICON_ORIGINAL = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 483"""

SELECTED_ICON_PATCHED = """    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_tab_sel_done

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_tab_sel_done
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 483"""

CHANGE_PAGE_LOCALS_OLD = """.method public changePageSelect(I)V
    .locals 4"""
CHANGE_PAGE_LOCALS_NEW = """.method public changePageSelect(I)V
    .locals 5"""


def patch_main_fragment() -> None:
    text = MAIN_FRAGMENT.read_text(encoding="utf-8")

    if UNSELECTED_ICON_TINT_DARK in text:
        print("MainFragment tab icon tint: already patched (dark-only)")
        return

    if UNSELECTED_ICON_TINT_BROKEN in text:
        text = text.replace(UNSELECTED_ICON_TINT_BROKEN, UNSELECTED_ICON_TINT_DARK, 1)
        MAIN_FRAGMENT.write_text(text, encoding="utf-8")
        print("MainFragment tab icon tint: fixed inverted light/dark logic")
        return

    if UNSELECTED_ICON_ORIGINAL not in text:
        raise RuntimeError("MainFragment unselected-tab marker not found")

    text = text.replace(UNSELECTED_ICON_ORIGINAL, UNSELECTED_ICON_TINT_DARK, 1)
    if SELECTED_ICON_ORIGINAL in text:
        text = text.replace(SELECTED_ICON_ORIGINAL, SELECTED_ICON_PATCHED, 1)
    if CHANGE_PAGE_LOCALS_OLD in text:
        text = text.replace(CHANGE_PAGE_LOCALS_OLD, CHANGE_PAGE_LOCALS_NEW, 1)
    MAIN_FRAGMENT.write_text(text, encoding="utf-8")
    print("MainFragment tab icon tint: patched for dark mode only")


def main() -> None:
    patch_main_fragment()
    print("Tab theme patches applied.")


if __name__ == "__main__":
    main()
