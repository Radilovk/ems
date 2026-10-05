#!/usr/bin/env python3
"""Training slot: the client's photo is a button, not part of the slider.

- CircleSeekBar.isTouch: a touch inside the ring (on the photo) is not the slider's
  (XemsLocalAvatar.inCenter) — the slider moves only on its ring;
- TrainViewHolder.bind (the training screen): a tap on userIcon picks the client for the master
  controls (the photo lights up), a long press opens the client card (XemsLocalAvatar.bindCard(View, TrainItem));
- master controls on the picked clients only (nobody picked = everyone):
  NewTrainFragment.lambda$settingAllUser$15 (⚙ Master),
  NewTrainFragment.startOrStopAll (▶ / ❚❚; ■ stays for everyone);
  + / − in apply-part-strength.py (apply-active-pause-control-fixes.py rewrites that lambda later);
- TrainFragment$UserTrainAdapter.onBindViewHolder (old list): same card.
- CircleSeekBar.onTouchEvent: the training ring moves only when the gesture starts on its handle
  (XemsLocalAvatar.grab); a tap anywhere else on the track does nothing.
"""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
SEEK = DECOMPILED / "smali_classes2/com/isaigu/gymapp/widget/CircleSeekBar.smali"
FRAGMENT = DECOMPILED / "smali_classes2/com/isaigu/gymapp/fragment/NewTrainFragment.smali"
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


GRAB = """
    iget v3, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelCurX:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mWheelCurY:F

    iget v5, p0, Lcom/isaigu/gymapp/widget/CircleSeekBar;->mPointerRadius:F

    move-object/from16 v6, p1

    invoke-static {v0, v6, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->grab(Landroid/view/View;Landroid/view/MotionEvent;FFF)Z

    move-result v3

    if-nez v3, :cond_xems_grab

    const/4 v3, 0x0

    return v3

    :cond_xems_grab
"""


def patch_grab() -> None:
    text = SEEK.read_text(encoding="utf-8")
    if AV + "->grab" in text:
        return
    a = text.find(".method public onTouchEvent(Landroid/view/MotionEvent;)Z")
    if a < 0:
        sys.exit("apply-avatar-card: CircleSeekBar.onTouchEvent not found")
    anchor = "    move-object v0, p0\n"
    k = text.find(anchor, a)
    if k < 0 or k > text.find(".end method", a):
        sys.exit("apply-avatar-card: onTouchEvent anchor not found")
    k += len(anchor)
    SEEK.write_text(text[:k] + GRAB + text[k:], encoding="utf-8")


ITEM = "Lcom/isaigu/gymapp/train/model/TrainItem;"


def guard_first(path: Path, sig: str, code: str, mark: str) -> None:
    """Insert {code} as the first statement of the method {sig} (right after .locals)."""
    text = path.read_text(encoding="utf-8")
    a = text.find(sig)
    if a < 0:
        sys.exit(f"apply-avatar-card: {sig} not found in {path.name}")
    b = text.find(".end method", a)
    if mark in text[a:b]:
        return
    loc = text.find(".locals", a)
    if loc < 0 or loc > b:
        sys.exit(f"apply-avatar-card: .locals of {sig} not found")
    eol = text.find("\n", loc)
    path.write_text(text[:eol + 1] + code + text[eol + 1:], encoding="utf-8")


def patch_master_pick() -> None:
    applies = f"{AV}->masterApplies({ITEM})Z"
    guard_first(
        FRAGMENT,
        ".method static synthetic lambda$settingAllUser$15(",
        f"    invoke-static {{p2}}, {applies}\n"
        "    move-result v0\n"
        "    if-nez v0, :cond_xems_pick_set\n"
        "    return-void\n"
        "    :cond_xems_pick_set\n",
        applies,
    )
    start = f"{AV}->masterStartOrStop()Z"
    guard_first(
        FRAGMENT,
        ".method public startOrStopAll()V",
        f"    invoke-static {{}}, {start}\n"
        "    move-result v0\n"
        "    if-eqz v0, :cond_xems_pick_start\n"
        "    return-void\n"
        "    :cond_xems_pick_start\n",
        start,
    )


def main() -> None:
    patch_master_pick()
    patch_seek()
    patch_grab()
    patch_holder()
    patch_adapter()
    print("apply-avatar-card: slider ring only, photo picks the client (long press: card)")


if __name__ == "__main__":
    main()
