#!/usr/bin/env python3
"""Second impulse per channel: the muscle icon cycles green → yellow → off, yellow changes the second impulse alone.

With the second impulse on:
  1st tap  green   + / − and the slider change the channel's main impulse alone (PartStrength)
  2nd tap  yellow  they change the channel's second impulse alone (wearable/SecondParts, kept per client)
  3rd tap  off
  a mark clears itself 5 s after its last action (wearable/PartPick.tick), with or without the second impulse
Without the second impulse a tap marks / unmarks as the stock code does.

Patches (idempotent; each site is checked and the build stops if it is not found):
  NewTrainFragment.changePartControl      the tap goes through PartPick.click first (true = handled); the
                                          fragment's package-private manager is passed along
  NewTrainFragment.updateMuscleSelectionVisual  at its end PartPick.tintAll: yellow channels get the yellow frame
  NewTrainFragment.xemsRefreshParts()     new: adapter + icons redraw (the 5 s clear runs off the UI thread)
  CommandSender.sendActivePause           the second impulse's channel packet through PartStrength.secondPdu
  TrainViewHolder$5.onStopTrackingTouch   a channel's own bar sets what it shows: yellow → second impulse alone
                                          (PartStrength.bar with the bar, its look from PartLook)

What the row shows, main (green) or second impulse (yellow) — train/utils/PartLook (1.1.369):
  TrainViewHolder.updateUI (after the bars)   PartLook.paint: bars / texts / ring in the look of the impulse that
                                              runs; what is being set keeps its own look
  TrainViewHolder$5.OnStateChangeListener     a bar under the finger: its look locked, its text at that impulse
  TrainViewHolder$4.onChanged                 the ring under the finger: locked; yellow → the 2nd MA label follows
  TrainViewHolder$4.onChangedEnd              the free yellow ring sets the second impulse's strength
"""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DEC = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
FRAG = "Lcom/isaigu/gymapp/fragment/NewTrainFragment;"
PICK = "Lcom/isaigu/gymapp/wearable/PartPick;"
PS = "Lcom/isaigu/gymapp/train/utils/PartStrength;"
BEAN = "Lcom/isaigu/gymapp/bean/ProgramDataBean;"


def method_span(text: str, signature: str) -> tuple[int, int]:
    start = text.index(signature)
    end = text.index(".end method", start)
    return start, end


def patch_fragment() -> None:
    path = DEC / "fragment" / "NewTrainFragment.smali"
    text = path.read_text(encoding="utf-8")

    # --- the tap (the fragment's manager goes along: the field is package-private, PartPick cannot read it)
    a, b = method_span(text, ".method private changePartControl(I)V")
    body = text[a:b]
    if f"{PICK}->click(" in body:
        print("NewTrainFragment.changePartControl: tap cycle already applied")
    else:
        toggle = re.compile(
            r"(    iget-object v0, p0, " + re.escape(FRAG) + r"->partsControl:\[Z\n)"
            r"(\s*aget-boolean v1, v0, p1\n\s*xor-int/lit8 v1, v1, 0x1\n\s*aput-boolean v1, v0, p1\n)"
        )
        m = toggle.search(body)
        if not m:
            raise RuntimeError("NewTrainFragment.changePartControl: toggle site not found")
        inject = (
            f"\n    iget-object v1, p0, {FRAG}->manager:Lcom/isaigu/gymapp/train/TrainItemManager;\n\n"
            f"    invoke-static {{p0, v1, v0, p1}}, {PICK}->click({FRAG}Lcom/isaigu/gymapp/train/TrainItemManager;[ZI)Z\n\n"
            "    move-result v1\n\n"
            "    if-nez v1, :cond_xems_picked\n"
        )
        body = body[: m.end(1)] + inject + m.group(2) + "\n    :cond_xems_picked\n" + body[m.end(2):]
        text = text[:a] + body + text[b:]
        print("patched NewTrainFragment.changePartControl: green / yellow / off")

    # --- the yellow frame: after the stock redraw of the ten header boxes (its own method stays untouched)
    a, b = method_span(text, ".method private updateMuscleSelectionVisual()V")
    body = text[a:b]
    if f"{PICK}->tintAll(" in body:
        print("NewTrainFragment.updateMuscleSelectionVisual: tint already applied")
    else:
        if body.count("return-void") != 1:
            raise RuntimeError("NewTrainFragment.updateMuscleSelectionVisual: one return-void expected")
        hook = (
            "invoke-virtual {p0}, " + FRAG + "->getView()Landroid/view/View;\n\n"
            "    move-result-object v0\n\n"
            f"    invoke-static {{v0}}, {PICK}->tintAll(Landroid/view/View;)V\n\n"
            "    return-void"
        )
        body = body.replace("return-void", hook, 1)
        text = text[:a] + body + text[b:]
        print("patched NewTrainFragment.updateMuscleSelectionVisual: yellow frame")

    # --- the redraw
    if ".method public xemsRefreshParts()V" in text:
        print("NewTrainFragment: xemsRefreshParts already present")
    else:
        method = f""".method public xemsRefreshParts()V
    .locals 1

    iget-object v0, p0, {FRAG}->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    if-eqz v0, :cond_xems_none

    invoke-virtual {{v0}}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    invoke-direct {{p0}}, {FRAG}->updateMuscleSelectionVisual()V

    :cond_xems_none
    return-void
.end method

"""
        k = text.index(".method private changePartControl(I)V")
        text = text[:k] + method + text[k:]
        print("NewTrainFragment: xemsRefreshParts()")
    path.write_text(text, encoding="utf-8")


def patch_sender() -> None:
    path = DEC / "train" / "model" / "CommandSender.smali"
    text = path.read_text(encoding="utf-8")
    a, b = method_span(text, ".method public sendActivePause(")
    body = text[a:b]
    if f"{PS}->secondPdu(" in body:
        print("CommandSender.sendActivePause: second packet already through PartStrength")
        return
    old = f"invoke-static {{p1, p2, p5}}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength({BEAN}[ZI)[B"
    new = f"invoke-static {{p1, p2, p5}}, {PS}->secondPdu({BEAN}[ZI)[B"
    if body.count(old) != 1:
        raise RuntimeError("CommandSender.sendActivePause: packet builder call not found once")
    text = text[:a] + body.replace(old, new, 1) + text[b:]
    path.write_text(text, encoding="utf-8")
    print("patched CommandSender.sendActivePause: second impulse's own channel percents")


def patch_bar() -> None:
    """A channel's bar in the row: yellow → its second impulse alone (PartStrength.bar), green → main as stock."""
    path = DEC / "train" / "TrainViewHolder$5.smali"
    text = path.read_text(encoding="utf-8")
    a, b = method_span(text, ".method public onStopTrackingTouch(")
    body = text[a:b]
    if f"{PS}->bar(" in body:
        print("TrainViewHolder$5.onStopTrackingTouch: bar already through PartStrength")
        return
    old = "    aput v3, v1, v2\n"
    if body.count(old) != 1:
        raise RuntimeError("TrainViewHolder$5.onStopTrackingTouch: the buwei store not found once")
    holder = "Lcom/isaigu/gymapp/train/TrainViewHolder"
    new = (
        f"    iget-object v1, p0, {holder}$5;->this$0:{holder};\n\n"
        f"    invoke-virtual {{v1}}, {holder};->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;\n\n"
        "    move-result-object v1\n\n"
        "    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;\n\n"
        f"    invoke-static {{p1, v1, v0, v2, v3}}, {PS}->bar(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainProgram;{BEAN}II)V\n"
    )
    text = text[:a] + body.replace(old, new, 1) + text[b:]
    path.write_text(text, encoding="utf-8")
    print("patched TrainViewHolder$5.onStopTrackingTouch: yellow bar → second impulse alone")


HOLDER = "Lcom/isaigu/gymapp/train/TrainViewHolder;"
ITEM = "Lcom/isaigu/gymapp/train/model/TrainItem;"
LOOK = "Lcom/isaigu/gymapp/train/utils/PartLook;"


def patch_paint() -> None:
    """End of the bars' loop in updateUI: PartLook.paint (bars, texts, ring in the look of what runs / is set)."""
    path = DEC / "train" / "TrainViewHolder.smali"
    text = path.read_text(encoding="utf-8")
    a, b = method_span(text, ".method private updateUI()V")
    body = text[a:b]
    if f"{LOOK}->paint(" in body:
        print("TrainViewHolder.updateUI: PartLook.paint already applied")
        return
    site = "    :cond_4\n"
    if body.count(site) != 1 or "if-ge v1, v2, :cond_4" not in body:
        raise RuntimeError("TrainViewHolder.updateUI: end of the bars' loop (:cond_4) not found once")
    bind = "Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;"
    hook = (
        f"    iget-object v1, p0, {HOLDER}->item:{ITEM}\n\n"
        f"    iget-object v2, p0, {HOLDER}->bars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;\n\n"
        f"    iget-object v5, p0, {HOLDER}->texts:[Landroid/widget/TextView;\n\n"
        f"    iget-object v6, p0, {HOLDER}->binding:{bind}\n\n"
        f"    iget-object v6, v6, {bind}->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;\n\n"
        f"    invoke-static {{v1, v0, v2, v5, v6}}, {LOOK}->paint({ITEM}{BEAN}"
        "[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;[Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/CircleSeekBar;)V\n\n"
    )
    body = body.replace(site, site + "\n" + hook, 1)
    path.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("patched TrainViewHolder.updateUI: PartLook.paint (main green / second yellow)")


def patch_bar_move() -> None:
    """A bar under the finger: PartLook.drag locks its look and gives the strength its text is shown at."""
    path = DEC / "train" / "TrainViewHolder$5.smali"
    text = path.read_text(encoding="utf-8")
    a, b = method_span(text, ".method public OnStateChangeListener(")
    body = text[a:b]
    if f"{LOOK}->drag(" in body:
        print("TrainViewHolder$5.OnStateChangeListener: PartLook.drag already applied")
        return
    old = f"    iget v5, v0, {BEAN}->strenth:I\n"
    if body.count(old) != 1 or body.count("    .locals 6\n") != 1:
        raise RuntimeError("TrainViewHolder$5.OnStateChangeListener: strength read / .locals 6 not found once")
    holder5 = "Lcom/isaigu/gymapp/train/TrainViewHolder$5;"
    new = (
        f"    iget-object v5, p0, {holder5}->this$0:{HOLDER}\n\n"
        f"    iget-object v5, v5, {HOLDER}->item:{ITEM}\n\n"
        f"    iget v6, p0, {holder5}->val$index:I\n\n"
        f"    invoke-static {{v5, p1, v6, p2}}, {LOOK}->drag({ITEM}Landroid/view/View;IF)I\n\n"
        "    move-result v5\n"
    )
    body = body.replace("    .locals 6\n", "    .locals 8\n", 1).replace(old, new, 1)
    path.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("patched TrainViewHolder$5.OnStateChangeListener: the bar keeps its look while it moves")


def patch_ring() -> None:
    """The ring: its look locked while it moves; the free yellow ring sets the second impulse's strength."""
    path = DEC / "train" / "TrainViewHolder$4.smali"
    text = path.read_text(encoding="utf-8")
    holder4 = "Lcom/isaigu/gymapp/train/TrainViewHolder$4;"
    a, b = method_span(text, ".method public onChanged(")
    body = text[a:b]
    if f"{LOOK}->ringMove(" in body:
        print("TrainViewHolder$4.onChanged: PartLook.ringMove already applied")
    else:
        first = f"    iget-object v0, p0, {holder4}->this$0:{HOLDER}\n"
        branch = "    if-eqz v0, :cond_pause_ma_change\n"
        if body.count(branch) != 1 or first not in body:
            raise RuntimeError("TrainViewHolder$4.onChanged: 2nd MA branch not found once")
        hook = (
            f"{first}\n"
            f"    iget-object v0, v0, {HOLDER}->item:{ITEM}\n\n"
            f"    invoke-static {{v0}}, {LOOK}->ringMove({ITEM})Z\n\n"
            "    move-result v0\n\n"
            "    if-nez v0, :cond_xems_ring_second\n\n"
        )
        k = body.index(first)
        body = body[:k] + hook + body[k:]
        body = body.replace(branch, branch + "\n    :cond_xems_ring_second\n", 1)
        text = text[:a] + body + text[b:]
        print("patched TrainViewHolder$4.onChanged: ring look locked; yellow → 2nd MA label")
    a, b = method_span(text, ".method public onChangedEnd(")
    body = text[a:b]
    if f"{LOOK}->ringEnd(" in body:
        print("TrainViewHolder$4.onChangedEnd: PartLook.ringEnd already applied")
    else:
        site = "    :cond_allow_slider_end\n"
        if body.count(site) != 1:
            raise RuntimeError("TrainViewHolder$4.onChangedEnd: :cond_allow_slider_end not found once")
        hook = (
            "    mul-int/lit8 v0, p2, 0x64\n\n"
            "    div-int/lit8 v0, v0, 0x4b\n\n"
            f"    iget-object v1, p0, {holder4}->this$0:{HOLDER}\n\n"
            f"    iget-object v1, v1, {HOLDER}->item:{ITEM}\n\n"
            f"    invoke-static {{v1, v0}}, {LOOK}->ringEnd({ITEM}I)Z\n\n"
            "    move-result v0\n\n"
            "    if-eqz v0, :cond_xems_ring_main\n\n"
            f"    iget-object v0, p0, {holder4}->this$0:{HOLDER}\n\n"
            f"    invoke-static {{v0}}, {HOLDER}->access$100({HOLDER})V\n\n"
            f"    iget-object v0, p0, {holder4}->this$0:{HOLDER}\n\n"
            f"    invoke-static {{v0}}, {HOLDER}->access$200({HOLDER})V\n\n"
            "    return-void\n\n"
            "    :cond_xems_ring_main\n"
        )
        body = body.replace(site, site + "\n" + hook, 1)
        text = text[:a] + body + text[b:]
        print("patched TrainViewHolder$4.onChangedEnd: the free yellow ring sets the second impulse")
    path.write_text(text, encoding="utf-8")


def main() -> None:
    patch_fragment()
    patch_sender()
    patch_bar()
    patch_paint()
    patch_bar_move()
    patch_ring()


if __name__ == "__main__":
    main()
