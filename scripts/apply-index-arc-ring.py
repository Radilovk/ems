#!/usr/bin/env python3
"""Outer index ring: 4 arc segments (2× slider track width) as index buttons."""

from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
DESIGN = ROOT / "branding" / "design"
DRAWABLE_NIGHT = ROOT / "branding" / "drawable-night"
DRAWABLE = ROOT / "branding" / "drawable"
PUBLIC_XML = DECOMPILED / "res" / "values" / "public.xml"
R_DRAWABLE = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "R$drawable.smali"
TRAIN_VH = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp" / "train" / "TrainViewHolder.smali"

BLACK_BG = 0x7F080090
GREEN_BG = 0x7F080091

ARC_DRAWABLES = (
    "ui_index_arc_tl",
    "ui_index_arc_tl_active",
    "ui_index_arc_tr",
    "ui_index_arc_tr_active",
    "ui_index_arc_bl",
    "ui_index_arc_bl_active",
    "ui_index_arc_br",
    "ui_index_arc_br_active",
    "ui_index_arc_br_yellow",
)

# Ring placement: centered on avatar, offset along diagonals (dp)
RING_TX = 58
RING_TY = 58
BTN_DP = 56

INDEX_VIEWS = {
    "ma": {
        "bg": "ui_index_arc_tl",
        "tx": -RING_TX,
        "ty": -RING_TY,
        "black": "ui_index_arc_tl",
        "green": "ui_index_arc_tl_active",
    },
    "pauseMaValue": {
        "bg": "ui_index_arc_tr",
        "tx": RING_TX,
        "ty": -RING_TY,
        "black": "ui_index_arc_tr",
        "green": "ui_index_arc_tr_active",
    },
    "hzValue": {
        "bg": "ui_index_arc_bl",
        "tx": -RING_TX,
        "ty": RING_TY,
        "black": "ui_index_arc_bl",
        "green": "ui_index_arc_bl_active",
    },
    "pauseHzValue": {
        "bg": "ui_index_arc_br",
        "tx": RING_TX,
        "ty": RING_TY,
        "black": "ui_index_arc_br",
        "green": "ui_index_arc_br_active",
        "yellow": "ui_index_arc_br_yellow",
    },
}

LAYOUT_NAMES = ("new_user_train_control_item_layout.xml", "user_train_control_item_layout.xml")


def _next_drawable_id() -> int:
    ids: list[int] = []
    for path in (PUBLIC_XML, R_DRAWABLE):
        if path.is_file():
            ids.extend(int(x, 16) for x in re.findall(r"0x7f08[0-9a-f]+", path.read_text(encoding="utf-8")))
    return max(ids) + 1 if ids else 0x7F0800DC


def _register_drawable(name: str, resource_id: int) -> None:
    resource_hex = f"0x{resource_id:08x}"
    public = PUBLIC_XML.read_text(encoding="utf-8")
    if f'name="{name}"' not in public:
        public = public.replace(
            "</resources>",
            f'    <public type="drawable" name="{name}" id="{resource_hex}" />\n</resources>',
            1,
        )
        PUBLIC_XML.write_text(public, encoding="utf-8")
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
    print(f"registered drawable {name} -> {resource_hex}")


def copy_drawables() -> dict[str, int]:
    ids: dict[str, int] = {}
    for name in ARC_DRAWABLES:
        rid = _next_drawable_id()
        _register_drawable(name, rid)
        ids[name] = rid
        for src_dir in (DRAWABLE_NIGHT, DRAWABLE):
            src = src_dir / f"{name}.xml"
            if not src.is_file():
                src = DRAWABLE_NIGHT / f"{name}.xml"
            if not src.is_file():
                raise FileNotFoundError(src)
            for dest_name in ("drawable", "drawable-night"):
                dest = DECOMPILED / "res" / dest_name / f"{name}.xml"
                dest.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(src, dest)
        if not (DRAWABLE / f"{name}.xml").is_file():
            shutil.copy2(DRAWABLE_NIGHT / f"{name}.xml", DRAWABLE / f"{name}.xml")
    return ids


def _index_button_xml(view_id: str, spec: dict[str, object], text: str) -> str:
    bg = spec["bg"]
    tx = spec["tx"]
    ty = spec["ty"]
    return (
        f'<TextView android:textSize="@dimen/ui_ma_text_size" android:textStyle="bold" '
        f'android:textColor="@color/white_color" android:gravity="center" android:id="@id/{view_id}" '
        f'android:background="@drawable/{bg}" android:layout_width="{BTN_DP}.0dip" '
        f'android:layout_height="{BTN_DP}.0dip" android:layout_centerInParent="true" '
        f'android:translationX="{tx}.0dip" android:translationY="{ty}.0dip" '
        f'android:padding="0.0dip" android:text="{text}" />'
    )


def _patch_index_textview(text: str, view_id: str, spec: dict[str, object]) -> tuple[str, bool]:
    pattern = rf'<TextView[^>]*android:id="@id/{view_id}"[^>]*/>'
    match = re.search(pattern, text)
    if not match:
        return text, False
    old = match.group(0)
    text_m = re.search(r'android:text="([^"]*)"', old)
    label = text_m.group(1) if text_m else ""
    new = _index_button_xml(view_id, spec, label)
    return text[: match.start()] + new + text[match.end() :], old != new


def _reorder_avatar_z(text: str) -> tuple[str, bool]:
    """Place index buttons after circleSeekBar so they render (and receive touches) on top."""
    seek_m = re.search(
        r'(<com\.isaigu\.gymapp\.widget\.CircleSeekBar[^>]*/>)',
        text,
    )
    if not seek_m:
        return text, False
    seek_tag = seek_m.group(1)
    blocks: list[str] = []
    changed = False
    for vid in INDEX_VIEWS:
        m = re.search(rf'(<TextView[^>]*android:id="@id/{vid}"[^>]*/>)', text)
        if m:
            blocks.append(m.group(1))
            text = text[: m.start()] + text[m.end() :]
            changed = True
    if not blocks or not changed:
        return text, False
    insert = "\n            ".join(blocks)
    pos = text.find(seek_tag) + len(seek_tag)
    text = text[:pos] + "\n            " + insert + text[pos:]
    return text, True


def patch_layout_file(path: Path) -> None:
    if not path.is_file():
        return
    text = path.read_text(encoding="utf-8")
    changed = False
    for vid, spec in INDEX_VIEWS.items():
        text, upd = _patch_index_textview(text, vid, spec)
        changed = changed or upd
    text, reord = _reorder_avatar_z(text)
    changed = changed or reord
    if changed:
        path.write_text(text, encoding="utf-8")
        print(f"patched {path.relative_to(ROOT)}: arc index ring")
    else:
        print(f"{path.relative_to(ROOT)}: arc index ring already applied")


def patch_layouts() -> None:
    for name in LAYOUT_NAMES:
        patch_layout_file(DECOMPILED / "res" / "layout" / name)
        patch_layout_file(DECOMPILED / "res" / "layout-night" / name)
        patch_layout_file(DESIGN / name)


def _replace_in_method(text: str, method_name: str, mapping: dict[int, int]) -> str:
    m = re.search(rf"\.method private {re.escape(method_name)}.*?\.end method", text, re.DOTALL)
    if not m:
        return text
    block = m.group(0)
    new_block = block
    for old, new in mapping.items():
        new_block = new_block.replace(f"const v1, {old:#x}", f"const v1, {new:#x}")
        new_block = new_block.replace(f"const v2, {old:#x}", f"const v2, {new:#x}")
        new_block = re.sub(
            rf"const (v\d+), {old:#x}",
            lambda mm: f"const {mm.group(1)}, {new:#x}",
            new_block,
        )
    if new_block != block:
        text = text[: m.start()] + new_block + text[m.end() :]
        print(f"TrainViewHolder.{method_name}: arc drawable ids")
    return text


def _replace_ma_in_update_ui(text: str, black_id: int, green_id: int) -> str:
    m = re.search(r"\.method private updateUI\(\)V.*?\.end method", text, re.DOTALL)
    if not m:
        return text
    block = m.group(0)
    if "->ma:Landroid/widget/TextView;" not in block:
        return text
    parts = block.split("->ma:Landroid/widget/TextView;")
    if len(parts) < 2:
        return text
    new_block = parts[0]
    for segment in parts[1:]:
        for old, new in ((BLACK_BG, black_id), (GREEN_BG, green_id)):
            segment = re.sub(rf"const (v\d+), {old:#x}", rf"const \1, {new:#x}", segment)
        new_block += "->ma:Landroid/widget/TextView;" + segment
    if new_block != block:
        text = text[: m.start()] + new_block + text[m.end() :]
        print("TrainViewHolder.updateUI: ma arc drawable ids")
    return text


def patch_train_view_holder(ids: dict[str, int]) -> None:
    if not TRAIN_VH.is_file():
        print("TrainViewHolder.smali missing — skip smali arc ids")
        return
    text = TRAIN_VH.read_text(encoding="utf-8")
    bl = {BLACK_BG: ids["ui_index_arc_bl"], GREEN_BG: ids["ui_index_arc_bl_active"]}
    tr = {BLACK_BG: ids["ui_index_arc_tr"], GREEN_BG: ids["ui_index_arc_tr_active"]}
    br = {BLACK_BG: ids["ui_index_arc_br"], GREEN_BG: ids["ui_index_arc_br_active"]}
    br_yellow = ids["ui_index_arc_br_yellow"]

    text = _replace_in_method(text, "updateHzDisplay()V", bl)
    text = _replace_in_method(text, "updatePauseMaDisplay()V", tr)
    text = _replace_in_method(text, "updatePauseHzDisplay()V", br)
    text = _replace_ma_in_update_ui(text, ids["ui_index_arc_tl"], ids["ui_index_arc_tl_active"])

    # pause Hz yellow hint (replaces yellow drawable const in updatePauseHzDisplay)
    m = re.search(r"\.method .* updatePauseHzDisplay\(\)V.*?\.end method", text, re.DOTALL)
    if m:
        block = m.group(0)
        new_block = re.sub(
            r"const v2, 0x7f08[0-9a-f]+(?=\s*\n\s*invoke-virtual \{v0, v2\}, Landroid/widget/TextView;->setBackgroundResource)",
            f"const v2, {br_yellow:#x}",
            block,
            count=1,
        )
        if new_block != block:
            text = text[: m.start()] + new_block + text[m.end() :]
            print("TrainViewHolder.updatePauseHzDisplay: yellow arc segment")

    TRAIN_VH.write_text(text, encoding="utf-8")


def main() -> None:
    ids = copy_drawables()
    patch_layouts()
    patch_train_view_holder(ids)
    print("Outer index arc ring applied (4 segments, 2× track width).")


if __name__ == "__main__":
    main()
