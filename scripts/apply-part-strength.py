#!/usr/bin/env python3
"""Main + / − and the avatar slider act on the selected muscle groups only (PartStrength).

Patches (idempotent; each site is checked and the build stops if it is not found):
  TrainItemManager.lambda$addAllPartValue$6  + / − : selected channels before MA / master
  TrainViewHolder$4.onChangedEnd              slider release: selected channels before master
  TrainViewHolder.updateUI                    slider shows the selected channels' level
"""
from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DEC = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
SRC = ROOT / "branding" / "smali" / "PartStrength.smali"
DEST = DEC / "train" / "utils" / "PartStrength.smali"
PS = "Lcom/isaigu/gymapp/train/utils/PartStrength;"
ITEM = "Lcom/isaigu/gymapp/train/model/TrainItem;"
MARK = "PartStrength;->"


def method_span(text: str, signature: str) -> tuple[int, int]:
    start = text.index(signature)
    end = text.index(".end method", start)
    return start, end


def patch_manager() -> None:
    path = DEC / "train" / "TrainItemManager.smali"
    text = path.read_text(encoding="utf-8")
    a, b = method_span(text, ".method static synthetic lambda$addAllPartValue$6(")
    body = text[a:b]
    if MARK in body:
        print("TrainItemManager: + / − already on selected channels")
        return
    # Right before "is MA selected?": pause / Hz selections keep their meaning, selected muscle
    # groups win over MA and over the plain master (the flag stops the master fallback lambda).
    anchor = re.search(r"\n(    invoke-virtual \{p2\}, " + re.escape(ITEM) + r"->isMaSelected\(\)Z\n)", body)
    if not anchor or body.count("->isMaSelected()Z") != 1:
        raise RuntimeError("TrainItemManager.lambda$addAllPartValue$6: isMaSelected site not found once")
    inject = (
        f"    invoke-static {{p2, p1}}, {PS}->addSelected({ITEM}I)Z\n"
        "    move-result v0\n"
        "    if-eqz v0, :cond_parts_none\n"
        "    const/4 v0, 0x1\n"
        "    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V\n"
        "    return-void\n"
        "    :cond_parts_none\n"
    )
    body = body[: anchor.start(1)] + inject + body[anchor.start(1):]
    path.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("patched TrainItemManager: + / − on selected channels")


def patch_slider_end() -> None:
    path = DEC / "train" / "TrainViewHolder$4.smali"
    text = path.read_text(encoding="utf-8")
    a, b = method_span(text, ".method public onChangedEnd(")
    body = text[a:b]
    if MARK in body:
        print("TrainViewHolder$4: slider already on selected channels")
        return
    holder = "Lcom/isaigu/gymapp/train/TrainViewHolder;"
    this0 = f"Lcom/isaigu/gymapp/train/TrainViewHolder$4;->this$0:{holder}"
    # the strength branch starts with: this$0 → item → isMaSelected()
    anchor = re.search(
        r"\n(    iget-object v0, p0, " + re.escape(this0) + r"\n(?:[ \t]*(?:\.line \d+)?\n)*"
        r"    iget-object v0, v0, " + re.escape(holder) + r"->item:" + re.escape(ITEM) + r"\n(?:[ \t]*(?:\.line \d+)?\n)*"
        r"    invoke-virtual \{v0\}, " + re.escape(ITEM) + r"->isMaSelected\(\)Z\n)",
        body,
    )
    if not anchor or body.count("->isMaSelected()Z") != 1:
        raise RuntimeError("TrainViewHolder$4.onChangedEnd: strength branch not found once")
    inject = (
        "    mul-int/lit8 v0, p2, 0x64\n"
        "    div-int/lit8 v0, v0, 0x4b\n"
        f"    iget-object v1, p0, {this0}\n"
        f"    iget-object v1, v1, {holder}->item:{ITEM}\n"
        f"    invoke-static {{v1, v0}}, {PS}->setSelected({ITEM}I)Z\n"
        "    move-result v0\n"
        "    if-eqz v0, :cond_parts_slider_none\n"
        f"    iget-object v0, p0, {this0}\n"
        f"    invoke-static {{v0}}, {holder}->access$100({holder})V\n"
        f"    iget-object v0, p0, {this0}\n"
        f"    invoke-static {{v0}}, {holder}->access$200({holder})V\n"
        "    return-void\n"
        "    :cond_parts_slider_none\n"
    )
    body = body[: anchor.start(1)] + inject + body[anchor.start(1):]
    path.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("patched TrainViewHolder$4: slider on selected channels")


def patch_display() -> None:
    path = DEC / "train" / "TrainViewHolder.smali"
    text = path.read_text(encoding="utf-8")
    a, b = method_span(text, ".method private updateUI()V")
    body = text[a:b]
    if MARK in body:
        print("TrainViewHolder: slider display already follows the selection")
        return
    pat = re.compile(
        r"(\n    :cond_seek_strength\n(?:[ \t]*(?:\.line \d+)?\n)*"
        r"    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I\n)"
    )
    m = pat.search(body)
    if not m:
        raise RuntimeError("TrainViewHolder.updateUI: seek strength site not found")
    add = (
        f"    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->item:{ITEM}\n"
        f"    invoke-static {{v3, v2}}, {PS}->displayLevel({ITEM}I)I\n"
        "    move-result v2\n"
    )
    body = body[: m.end()] + add + body[m.end():]
    path.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("patched TrainViewHolder.updateUI: slider shows the selected channels")


def main() -> None:
    if not SRC.is_file():
        raise FileNotFoundError(f"{SRC} missing")
    DEST.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(SRC, DEST)
    print(f"installed {DEST.relative_to(ROOT)}")
    patch_manager()
    patch_slider_end()
    patch_display()


if __name__ == "__main__":
    main()
