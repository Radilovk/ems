#!/usr/bin/env python3
"""Training slot: the client's photo is a button, not part of the slider.

- CircleSeekBar.isTouch: a touch inside the ring (on the photo) is not the slider's
  (XemsLocalAvatar.inCenter) — the slider moves only on its ring;
- TrainViewHolder.bind (the training screen): a tap on userIcon opens the client card
  (XemsLocalAvatar.bindCard(View, TrainItem));
- TrainFragment$UserTrainAdapter.onBindViewHolder (old list): same card.
"""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
SEEK = DECOMPILED / "smali_classes2/com/isaigu/gymapp/widget/CircleSeekBar.smali"
HOLDER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainViewHolder.smali"
ADAPTER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter.smali"
AV = "Lcom/isaigu/gymapp/widget/XemsLocalAvatar;"


def patch_seek() -> None:
    text = SEEK.read_text(encoding="utf-8")
    if AV + "->inCenter" in text:
        return
    sig = ".method private isTouch(FF)Z"
    a = text.find(sig)
    if a < 0:
        sys.exit("apply-avatar-card: CircleSeekBar.isTouch not found")
    loc = text.find(".locals", a)
    eol = text.find("\n", loc)
    hook = (
        f"\n\n    invoke-static {{p0, p1, p2}}, {AV}->inCenter(Landroid/view/View;FF)Z\n\n"
        "    move-result v0\n\n"
        "    if-eqz v0, :cond_xems_ring\n\n"
        "    const/4 v0, 0x0\n\n"
        "    return v0\n\n"
        "    :cond_xems_ring"
    )
    text = text[:eol] + hook + text[eol:]
    SEEK.write_text(text, encoding="utf-8")


def patch_adapter() -> None:
    text = ADAPTER.read_text(encoding="utf-8")
    if AV + "->bindCard" in text:
        return
    sig = ".method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V"
    a = text.find(sig)
    if a < 0:
        sys.exit("apply-avatar-card: onBindViewHolder not found")
    b = text.find(".end method", a)
    body = text[a:b]
    anchor = "    :goto_0\n"
    first = body.find(anchor)
    load = "->userIcon:Landroid/widget/ImageView;"
    if first < 0 or load not in body[:first]:
        sys.exit("apply-avatar-card: avatar load / :goto_0 not found")
    hook = (
        anchor
        + "    iget-object v2, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;"
        + "->userIcon:Landroid/widget/ImageView;\n\n"
        + f"    invoke-static {{v2, v1}}, {AV}->bindCard(Landroid/view/View;"
        + "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V\n\n"
    )
    body = body[:first] + hook + body[first + len(anchor):]
    ADAPTER.write_text(text[:a] + body + text[b:], encoding="utf-8")


def patch_holder() -> None:
    text = HOLDER.read_text(encoding="utf-8")
    if AV + "->bindCard(Landroid/view/View;Lcom/isaigu/gymapp/train/model/TrainItem;)V" in text:
        return
    sig = ".method public bind(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V"
    a = text.find(sig)
    if a < 0:
        sys.exit("apply-avatar-card: TrainViewHolder.bind not found")
    b = text.find(".end method", a)
    body = text[a:b]
    call = "    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bindNotEmpty()V\n"
    if body.count(call) != 1:
        sys.exit("apply-avatar-card: bindNotEmpty call not found once in TrainViewHolder.bind")
    hook = (
        call + "\n"
        "    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder;->binding:"
        "Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;\n\n"
        "    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;"
        "->userIcon:Landroid/widget/ImageView;\n\n"
        f"    invoke-static {{v0, p1}}, {AV}->bindCard(Landroid/view/View;Lcom/isaigu/gymapp/train/model/TrainItem;)V\n"
    )
    HOLDER.write_text(text[:a] + body.replace(call, hook) + text[b:], encoding="utf-8")


def main() -> None:
    patch_seek()
    patch_holder()
    patch_adapter()
    print("apply-avatar-card: slider ring only, photo opens the client card")


if __name__ == "__main__":
    main()
