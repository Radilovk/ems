#!/usr/bin/env python3
"""Train sidebar stability: keep binding-required controls, no risky row/overlay hacks."""

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
NEW_TRAIN_FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
NEW_TRAIN_FRAGMENT_LISTENER = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment$2.smali"
)

FRAGMENT_LAYOUTS = (
    RES / "layout/new_train_fragment_layout.xml",
    RES / "layout-night/new_train_fragment_layout.xml",
    RES / "layout/train_fragment_layout.xml",
    RES / "layout-night/train_fragment_layout.xml",
)

RECYCLER_PLAIN = (
    '<com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView '
    'android:id="@id/recyclerView" android:layout_width="fill_parent" '
    'android:layout_height="fill_parent" />'
)

RECYCLER_WRAPPED_RE = re.compile(
    r'<RelativeLayout android:layout_width="fill_parent" android:layout_height="fill_parent">\s*'
    r'<com\.yanzhenjie\.recyclerview\.swipe\.SwipeMenuRecyclerView '
    r'android:id="@id/recyclerView" android:layout_width="fill_parent" '
    r'android:layout_height="fill_parent" />\s*'
    r'<com\.isaigu\.gymapp\.widget\.MyButton android:id="@id/allAdd" '
    r'android:visibility="gone"[^/]*/>\s*</RelativeLayout>',
    re.MULTILINE,
)

BINDING_STUBS = """
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allPerson" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allminus" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allAdd" android:visibility="gone" android:layout_width="0.0dip" android:layout_height="0.0dip" />
"""

SIDEBAR_CONTROLS = """
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.15" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allAdd" android:background="@mipmap/add" android:layout_width="50.0dip" android:layout_height="50.0dip" />
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.1" />
        <com.isaigu.gymapp.widget.MyButton android:textSize="10.0sp" android:textColor="@color/white_color" android:id="@id/allPerson" android:background="@mipmap/zhukongduan" android:paddingTop="21.0dip" android:layout_width="55.0dip" android:layout_height="55.0dip" android:text="@string/maincontrol" />
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.1" />
        <com.isaigu.gymapp.widget.MyButton android:id="@id/allminus" android:background="@mipmap/minus" android:layout_width="50.0dip" android:layout_height="50.0dip" />
        <View android:layout_width="fill_parent" android:layout_height="0.0dip" android:layout_weight="0.3" />
"""

ADD_EMPTY_ITEM_RE = re.compile(
    r"\.method private addEmptyItem\(\)V\n.*?\.end method\n",
    re.DOTALL,
)

ADD_EMPTY_ITEM_NOOP = """.method private addEmptyItem()V
    .locals 0

    return-void
.end method
"""

HELPER_ATTACH_RE = re.compile(
    r"\n\s*invoke-static \{p0, v0\}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;"
    r"->attach\(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Landroid/view/View;\)V\n?"
)
HELPER_REFRESH_RE = re.compile(
    r"\n\s*invoke-static \{\}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->refresh\(\)V\n?"
)


def restore_fragment_layouts() -> None:
    """NewTrainFragmentLayoutBinding requires allAdd/allPerson/allminus in the layout."""
    hidden = 'android:id="@id/allAdd" android:visibility="gone"'
    for path in FRAGMENT_LAYOUTS:
        if not path.is_file():
            continue
        text = path.read_text(encoding="utf-8")
        changed = False
        wrapped = RECYCLER_WRAPPED_RE.search(text)
        if wrapped:
            text = text.replace(wrapped.group(0), RECYCLER_PLAIN, 1)
            changed = True
        if hidden in text:
            text = text.replace(BINDING_STUBS, SIDEBAR_CONTROLS, 1)
            changed = True
        elif "@id/allPerson" not in text or "@id/allminus" not in text or "@id/allAdd" not in text:
            close = text.rfind("</LinearLayout>")
            if close != -1 and "@id/allPerson" not in text:
                text = text[:close] + SIDEBAR_CONTROLS + text[close:]
                changed = True
        if changed:
            path.write_text(text, encoding="utf-8")
            print(f"{path.name}: restored sidebar MA+/sector/MA- controls")


def disable_empty_slots() -> None:
    """Factory addEmptyItem inserts a row at startup; skip it to avoid login-time list bind."""
    if not TRAIN_ITEM_MANAGER.is_file():
        print("TrainItemManager.smali missing; skipping empty-slot disable")
        return
    text = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    if "addEmptyItem()V\n    .locals 0\n\n    return-void" in text:
        print("TrainItemManager: empty slots already disabled")
        return
    if not ADD_EMPTY_ITEM_RE.search(text):
        raise RuntimeError("TrainItemManager.addEmptyItem marker not found")
    TRAIN_ITEM_MANAGER.write_text(
        ADD_EMPTY_ITEM_RE.sub(ADD_EMPTY_ITEM_NOOP + "\n", text, count=1),
        encoding="utf-8",
    )
    print("TrainItemManager: disabled empty participant slots (login-safe)")


def purge_train_add_participant_helper() -> None:
    train_dir = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train"
    for path in train_dir.glob("TrainAddParticipantHelper*.smali"):
        path.unlink()
        print(f"removed train/{path.name}")

    if NEW_TRAIN_FRAGMENT.is_file():
        text = NEW_TRAIN_FRAGMENT.read_text(encoding="utf-8")
        new_text = HELPER_ATTACH_RE.sub("\n", text, count=1)
        new_text = HELPER_REFRESH_RE.sub("\n", new_text)
        if new_text != text:
            NEW_TRAIN_FRAGMENT.write_text(new_text, encoding="utf-8")
            print("NewTrainFragment: removed TrainAddParticipantHelper hooks")

    if NEW_TRAIN_FRAGMENT_LISTENER.is_file():
        listener = NEW_TRAIN_FRAGMENT_LISTENER.read_text(encoding="utf-8")
        new_listener = HELPER_REFRESH_RE.sub("\n", listener)
        if new_listener != listener:
            NEW_TRAIN_FRAGMENT_LISTENER.write_text(new_listener, encoding="utf-8")
            print("NewTrainFragment listener: removed TrainAddParticipantHelper refresh")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    restore_fragment_layouts()
    disable_empty_slots()
    purge_train_add_participant_helper()
    print("Train participant UI: login-safe sidebar only.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
