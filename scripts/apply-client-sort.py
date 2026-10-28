#!/usr/bin/env python3
"""Client lists: order + filters ("⇅" next to the search), and the picker hides clients already in a row.

wearable/ClientSort:
- UserFragment$UserAdapter.updateAdapter(List) (Потребители tab): the list → ClientSort.list (a new list).
- {New,}UserProgramDeviceConnectDialogFragment$UserAdapter.updateData(List) (the picker): → ClientSort.pick —
  without the clients in a training row (the edited row's own client stays), ordered and filtered.
- The user search fields (searchuserEdittext): ClientSort.bar → the "⇅" pill and its sheet.
- Both pickers' UserAdapter.onBindViewHolder, right after the name is written: ClientSort.mark → "⏰ 10:30" on a
  client due now or soon (calendar, NextClient.soon); ClientSort.view already put those clients on top.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
G = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
CS = "Lcom/isaigu/gymapp/wearable/ClientSort;"
TAB_ADAPTER = G / "fragment" / "UserFragment$UserAdapter.smali"
TAB = G / "fragment" / "UserFragment.smali"
PICKERS = ("NewUserProgramDeviceConnectDialogFragment", "UserProgramDeviceConnectDialogFragment")


def hook_method(path: Path, sig: str, code: str) -> None:
    text = path.read_text(encoding="utf-8")
    if CS in text:
        return
    a = text.find(sig)
    if a < 0:
        sys.exit(f"apply-client-sort: {path.name}: {sig} not found")
    b = text.find(".end method", a)
    body = text[a:b]
    end_ann = body.rfind(".end annotation\n")
    at = end_ann + len(".end annotation\n") if end_ann >= 0 else body.find("\n", body.find(".locals")) + 1
    body = body[:at] + "\n" + code + body[at:]
    path.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print(f"{path.name}: client list -> ClientSort")


def hook_bar(path: Path, cls: str, owner: bool) -> None:
    text = path.read_text(encoding="utf-8")
    if f"{CS}->bar" in text:
        return
    pat = re.compile(rf"(    iput-object (v\d+), p0, {re.escape(cls)}->searchuserEdittext:Landroid/widget/EditText;\n)")
    m = list(pat.finditer(text))
    if len(m) != 1:
        sys.exit(f"apply-client-sort: {path.name}: expected one searchuserEdittext assignment, found {len(m)}")
    reg = m[0].group(2)
    call = (f"    invoke-static {{{reg}, p0}}, {CS}->bar(Landroid/view/View;Ljava/lang/Object;)V\n" if owner
            else f"    invoke-static {{{reg}}}, {CS}->bar(Landroid/view/View;)V\n")
    text = text[:m[0].end()] + "\n" + call + text[m[0].end():]
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: ⇅ sort / filter next to the client search")


def hook_mark(path: Path) -> None:
    text = path.read_text(encoding="utf-8")
    if f"{CS}->mark" in text:
        return
    a = text.find(".method public onBindViewHolder(")
    b = text.find(".end method", a)
    body = text[a:b]
    m = re.search(r"    iget-object (v\d+), (v\d+), L[^;]+\$UserHolder;->username:Landroid/widget/TextView;\n\n"
                  r"    iget-object (v\d+), (v\d+), Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;\n\n"
                  r"    invoke-virtual \{\1, \3\}, Landroid/widget/TextView;->setText\(Ljava/lang/CharSequence;\)V\n", body)
    if not m:
        sys.exit(f"apply-client-sort: {path.name}: onBindViewHolder name setText not found")
    call = (f"\n    invoke-static {{{m.group(1)}, {m.group(4)}}}, {CS}->mark(Landroid/widget/TextView;"
            "Lcom/isaigu/gymapp/bean/TrainUser;)V\n")
    body = body[:m.end()] + call + body[m.end():]
    path.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print(f"{path.name}: ⏰ next client on the picker row")


def main() -> None:
    if not (G / "wearable" / "ClientSort.smali").is_file():
        print("apply-client-sort: ClientSort not installed (BETA_MUSIC=0) — skipped")
        return
    hook_method(TAB_ADAPTER, ".method public updateAdapter(Ljava/util/List;)V",
                f"    invoke-static {{p1}}, {CS}->list(Ljava/util/List;)Ljava/util/List;\n\n"
                "    move-result-object p1\n\n")
    hook_bar(TAB, "Lcom/isaigu/gymapp/fragment/UserFragment;", False)
    for d in PICKERS:
        adapter = G / "dialog" / f"{d}$UserAdapter.smali"
        hook_method(adapter, ".method public updateData(Ljava/util/List;)V",
                    f"    invoke-static {{p0, p1}}, {CS}->pick(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;\n\n"
                    "    move-result-object p1\n\n")
        hook_bar(G / "dialog" / f"{d}.smali", f"Lcom/isaigu/gymapp/dialog/{d};", True)
        hook_mark(adapter)


if __name__ == "__main__":
    main()
