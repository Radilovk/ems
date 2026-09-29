#!/usr/bin/env python3
"""Saved program = the base of the manual mode; the diskette saves it, the gear works while training.

wearable/ProgramFit (compile-wearable-java.sh) does the work; this wires it into the vendor smali:
- TrainViewHolder$2 (the row's diskette): ProgramFit.onSaveClick(activity, wrapper) — the row's settings
  into the client's profile (ClientPrograms, per program), ✓; the stock "save as" when the slot has no client.
- TrainViewHolder.bindListener: holding the diskette = the stock "save as" (ProgramFit.bindSaveAs).
- TrainViewHolder$1 (the row's gear): opens while the training runs too (the vendor returned when
  data.start); ProgramLive applies the new parameters and time live, for this client only.
- OperationUtil.lambda$settingAllUser$0 (⚙ Master): ProgramLive.stash(wrapper, originalProgram) before the
  rows are refreshed — the vendor had already replaced the program, so a new length never moved the end.
- EditUserProgramDataDialog.onStart: the "Персонализация" switch on top and the XEMS look
  (ProgramFit.attachSwitch → dialog/ParamDialogUi).
- TrainItem.xemsRefresh(): public onTrainItemChange() (the row redraws after a recalibration).
Runs after apply-live-settings.py and apply-ramp-setting.py.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
S2 = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
HOLDER = S2 / "train" / "TrainViewHolder.smali"
GEAR = S2 / "train" / "TrainViewHolder$1.smali"
SAVE = S2 / "train" / "TrainViewHolder$2.smali"
OPS = S2 / "train" / "utils" / "OperationUtil.smali"
DIALOG = S2 / "dialog" / "EditUserProgramDataDialog.smali"
ITEM = S2 / "train" / "model" / "TrainItem.smali"

PF = "Lcom/isaigu/gymapp/wearable/ProgramFit;"
PL = "Lcom/isaigu/gymapp/train/utils/ProgramLive;"
TP = "Lcom/isaigu/gymapp/bean/TrainProgram;"
W = "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;"
BA = "Lcom/isaigu/gymapp/BaseActivity;"
TVH = "Lcom/isaigu/gymapp/train/TrainViewHolder;"
TI = "Lcom/isaigu/gymapp/train/model/TrainItem;"
MARK = "# xems: program fit"


def method(text: str, sig: str) -> tuple[int, int]:
    a = text.find(sig)
    if a < 0:
        sys.exit(f"apply-program-fit: {sig} not found")
    return a, text.find(".end method", a)


def patch_save() -> None:
    text = SAVE.read_text(encoding="utf-8")
    if PF in text:
        print("TrainViewHolder$2: already quick save")
        return
    pat = re.compile(
        r"(invoke-virtual \{v1\}, " + re.escape(TVH) + r"->getData\(\)" + re.escape(W) + r"\n\s*\n"
        r"\s*move-result-object v1\n)((?:\s*\n|\s*\.line \d+\n)*)"
        r"\s*iget-object v1, v1, " + re.escape(W) + r"->trainProgram:" + re.escape(TP) + r"\n((?:\s*\n|\s*\.line \d+\n)*)"
        r"\s*invoke-static \{v0, v1\}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->save\(" + re.escape(BA + TP) + r"\)V\n"
    )
    new, n = pat.subn(
        lambda m: m.group(1) + f"\n    {MARK}\n    invoke-static {{v0, v1}}, {PF}->onSaveClick({BA}{W})V\n", text)
    if n != 1:
        sys.exit("apply-program-fit: TrainViewHolder$2 save call not found")
    SAVE.write_text(new, encoding="utf-8")
    print("TrainViewHolder$2: diskette = quick save into the saved program")


def patch_hold() -> None:
    text = HOLDER.read_text(encoding="utf-8")
    if PF in text:
        print("TrainViewHolder: already save-as on hold")
        return
    a, b = method(text, ".method private bindListener()V")
    body = text[a:b]
    anchor = ("    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/TrainViewHolder$2;-><init>(" + TVH + ")V\n\n"
              "    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener"
              "(Landroid/view/View$OnClickListener;)V\n")
    if body.count(anchor) != 1:
        sys.exit("apply-program-fit: bindListener diskette listener not found")
    body = body.replace(anchor, anchor + f"\n    {MARK}\n    invoke-static {{v0, p0}}, {PF}->bindSaveAs("
                                          "Landroid/view/View;Ljava/lang/Object;)V\n")
    HOLDER.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("TrainViewHolder: hold the diskette = save as")


def patch_gear() -> None:
    text = GEAR.read_text(encoding="utf-8")
    if MARK in text:
        print("TrainViewHolder$1: gear already opens while training")
        return
    a, b = method(text, ".method public onNoDoubleClick(Landroid/view/View;)V")
    body = text[a:b]
    guard = re.compile(r"(iget-boolean v0, v0, " + re.escape(W) + r"->start:Z\n\s*\n)\s*if-nez v0, :cond_0\n")
    body, n = guard.subn(lambda m: m.group(1) + f"    {MARK}: opens while the training runs\n", body)
    if n != 1:
        sys.exit("apply-program-fit: gear start guard not found")
    GEAR.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("TrainViewHolder$1: gear opens while the training runs")


def patch_master() -> None:
    text = OPS.read_text(encoding="utf-8")
    if PL + "->stash" in text:
        print("OperationUtil: master stash already present")
        return
    a, b = method(text, ".method static synthetic lambda$settingAllUser$0(")
    body = text[a:b]
    anchor = f"    iput v2, v5, {TP}->useType:I\n"
    if body.count(anchor) != 1 or "originalProgram" not in body:
        sys.exit("apply-program-fit: settingAllUser lambda is not the expected one")
    body = body.replace(anchor, anchor + f"\n    {MARK}\n    invoke-static {{v1, v4}}, {PL}->stash("
                                          f"Ljava/lang/Object;{TP})V\n")
    OPS.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("OperationUtil: ⚙ Master keeps each row's previous program for ProgramLive")


def patch_switch() -> None:
    text = DIALOG.read_text(encoding="utf-8")
    if PF in text:
        print("EditUserProgramDataDialog: switch already present")
        return
    a, b = method(text, ".method public onStart()V")
    sup = "    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->onStart()V\n"
    k = text.find(sup, a)
    if k < 0 or k > b:
        sys.exit("apply-program-fit: onStart invoke-super not found")
    k += len(sup)
    hook = (f"\n    {MARK}\n    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->inputramp:"
            f"Landroid/widget/TextView;\n\n    invoke-static {{v0}}, {PF}->attachSwitch(Landroid/view/View;)V\n")
    DIALOG.write_text(text[:k] + hook + text[k:], encoding="utf-8")
    print("EditUserProgramDataDialog: personalisation switch")


def patch_item() -> None:
    text = ITEM.read_text(encoding="utf-8")
    if "->xemsRefresh()V" in text or ".method public xemsRefresh()V" in text:
        print("TrainItem: xemsRefresh already present")
        return
    m = f""".method public xemsRefresh()V
    .locals 0

    invoke-direct {{p0}}, {TI}->onTrainItemChange()V

    return-void
.end method

"""
    a = text.find(".method private onTrainItemChange()V")
    if a < 0:
        sys.exit("apply-program-fit: TrainItem.onTrainItemChange not found")
    ITEM.write_text(text[:a] + m + text[a:], encoding="utf-8")
    print("TrainItem: xemsRefresh()")


def main() -> None:
    patch_save()
    patch_hold()
    patch_gear()
    patch_master()
    patch_switch()
    patch_item()


if __name__ == "__main__":
    main()
