#!/usr/bin/env python3
"""Disable swipe-delete on empty train slots; guard delete handler against empty items."""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build/decompiled"
MENU_CREATOR = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment$3.smali"
DELETE_HANDLER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment$4.smali"

MENU_GUARD = """    if-nez p3, :cond_create_delete

    return-void

    :cond_create_delete"""

DELETE_GUARD = """    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_delete_user

    return-void

    :cond_delete_user"""


def patch_menu_creator(text: str) -> str:
    marker = ".method public onCreateMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;"
    if marker not in text:
        raise RuntimeError(f"{MENU_CREATOR}: onCreateMenu not found")
    if "cond_create_delete" in text:
        return text
    insert_after = "    .param p3, \"viewType\"    # I\n\n    .line 239\n"
    if insert_after not in text:
        raise RuntimeError(f"{MENU_CREATOR}: onCreateMenu header not found")
    return text.replace(insert_after, insert_after + MENU_GUARD + "\n", 1)


def patch_delete_handler(text: str) -> str:
    marker = ".local v1, \"item\":Lcom/isaigu/gymapp/train/model/TrainItem;"
    if marker not in text:
        raise RuntimeError(f"{DELETE_HANDLER}: item local not found")
    if "cond_delete_user" in text:
        return text
    return text.replace(
        marker,
        marker + "\n" + DELETE_GUARD,
        1,
    )


def main() -> None:
    if not MENU_CREATOR.is_file():
        print(f"skip: {MENU_CREATOR} missing (decompile first)")
        return
    menu_text = MENU_CREATOR.read_text(encoding="utf-8")
    new_menu = patch_menu_creator(menu_text)
    if new_menu != menu_text:
        MENU_CREATOR.write_text(new_menu, encoding="utf-8")
        print("NewTrainFragment$3: skip swipe-delete menu for empty slots")

    if not DELETE_HANDLER.is_file():
        print(f"skip: {DELETE_HANDLER} missing")
        return
    delete_text = DELETE_HANDLER.read_text(encoding="utf-8")
    new_delete = patch_delete_handler(delete_text)
    if new_delete != delete_text:
        DELETE_HANDLER.write_text(new_delete, encoding="utf-8")
        print("NewTrainFragment$4: guard delete handler for empty slots")


if __name__ == "__main__":
    try:
        main()
    except RuntimeError as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        sys.exit(1)
