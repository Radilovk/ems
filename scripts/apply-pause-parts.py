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
  TrainViewHolder$5.onStopTrackingTouch   a channel's own bar: yellow → second impulse alone (PartStrength.bar)
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
        f"    invoke-static {{v1, v0, v2, v3}}, {PS}->bar(Lcom/isaigu/gymapp/bean/TrainProgram;{BEAN}II)V\n"
    )
    text = text[:a] + body.replace(old, new, 1) + text[b:]
    path.write_text(text, encoding="utf-8")
    print("patched TrainViewHolder$5.onStopTrackingTouch: yellow bar → second impulse alone")


def main() -> None:
    patch_fragment()
    patch_sender()
    patch_bar()


if __name__ == "__main__":
    main()
