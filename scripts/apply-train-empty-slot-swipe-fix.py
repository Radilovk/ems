#!/usr/bin/env python3
"""Disable swipe-to-delete on empty training slots (prevents NPE crash)."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
MENU_CREATOR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment$3.smali"
MENU_CLICK = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment$4.smali"

ON_CREATE_MENU_ORIGINAL = """.method public onCreateMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;I)V
    .locals 3
    .param p1, "swipeLeftMenu"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    .param p2, "swipeRightMenu"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    .param p3, "viewType"    # I

    .line 239
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;
"""

ON_CREATE_MENU_PATCHED = """.method public onCreateMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;I)V
    .locals 3
    .param p1, "swipeLeftMenu"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    .param p2, "swipeRightMenu"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    .param p3, "viewType"    # I

    if-nez p3, :goto_create_delete

    return-void

    :goto_create_delete
    .line 239
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;
"""

ON_ITEM_CLICK_GUARD = """    .local v1, "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_empty_guard

    return-void

    :cond_empty_guard
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;
"""


def patch_menu_creator() -> None:
    text = MENU_CREATOR.read_text(encoding="utf-8")
    if ":cond_empty_slot" in text:
        print("NewTrainFragment$3: empty-slot swipe menu guard already applied")
        return
    if ON_CREATE_MENU_ORIGINAL not in text:
        raise RuntimeError("NewTrainFragment$3.onCreateMenu marker not found")
    MENU_CREATOR.write_text(text.replace(ON_CREATE_MENU_ORIGINAL, ON_CREATE_MENU_PATCHED, 1), encoding="utf-8")
    print("NewTrainFragment$3: skip DELETE swipe menu for empty slots")


def patch_menu_click() -> None:
    text = MENU_CLICK.read_text(encoding="utf-8")
    if ":cond_empty_guard" in text:
        print("NewTrainFragment$4: empty-slot delete guard already applied")
        return
    marker = """    .local v1, "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;->this$0:Lcom/isaigu/gymapp/fragment/NewTrainFragment;
"""
    if marker not in text:
        raise RuntimeError("NewTrainFragment$4.onItemClick marker not found")
    MENU_CLICK.write_text(text.replace(marker, ON_ITEM_CLICK_GUARD, 1), encoding="utf-8")
    print("NewTrainFragment$4: guard delete click for empty slots")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    patch_menu_creator()
    patch_menu_click()
    print("Empty-slot swipe delete fix applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
