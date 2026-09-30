#!/usr/bin/env python3
"""Client list: ▶ quick start in every row, ↻ refresh next to the search (wearable/QuickStart).

- UserFragment$UserAdapter.onBindViewHolder: QuickStart.bindRow(itemView, user) — a green ▶ at the row's
  end: the client's last program onto a free connected suit, then the training page (active only while
  such a suit exists).
- UserFragment / the connect dialogs: QuickStart.refreshButton(firstSearchField, this) right after the
  field's XemsSearch.attach (apply-client-search-fix.py) — ↻ pulls the clients again and redraws.
- The connect dialogs get public xemsRefresh() = their private startScan() (↻ also scans for suits).
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
G = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
QS = "Lcom/isaigu/gymapp/wearable/QuickStart;"
ADAPTER = G / "fragment" / "UserFragment$UserAdapter.smali"
SCREENS = (
    G / "fragment" / "UserFragment.smali",
    G / "dialog" / "NewUserProgramDeviceConnectDialogFragment.smali",
    G / "dialog" / "UserProgramDeviceConnectDialogFragment.smali",
)
ATTACH = re.compile(r"    invoke-static \{(v\d+)\}, Lcom/isaigu/gymapp/widget/XemsSearch;->attach\(Landroid/widget/EditText;\)V\n")


def patch_adapter() -> None:
    text = ADAPTER.read_text(encoding="utf-8")
    if QS in text:
        return
    sig = ".method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V"
    a = text.find(sig)
    if a < 0:
        sys.exit("apply-quick-start: UserAdapter.onBindViewHolder not found")
    b = text.find(".end method", a)
    body = text[a:b]
    if ".locals 11" not in body:
        sys.exit("apply-quick-start: onBindViewHolder is not the expected one")
    r = body.rfind("    return-void")
    hook = (
        "    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;\n\n"
        "    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;\n\n"
        "    move-result-object v2\n\n"
        "    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;\n\n"
        "    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;\n\n"
        f"    invoke-static {{v3, v2}}, {QS}->bindRow(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainUser;)V\n\n"
    )
    body = body[:r] + hook + body[r:]
    ADAPTER.write_text(text[:a] + body + text[b:], encoding="utf-8")
    print("UserFragment$UserAdapter: ▶ quick start in every client row")


def patch_screen(path: Path) -> None:
    if not path.is_file():
        print(f"{path.name}: not found — skipped")
        return
    text = path.read_text(encoding="utf-8")
    if QS in text:
        return
    m = ATTACH.search(text)
    if not m:
        sys.exit(f"apply-quick-start: {path.name}: no XemsSearch.attach (run apply-client-search-fix.py first)")
    hook = f"\n    invoke-static {{{m.group(1)}, p0}}, {QS}->refreshButton(Landroid/view/View;Ljava/lang/Object;)V\n\n"
    text = text[:m.end()] + hook + text[m.end():]
    cls = "L" + str(path.relative_to(G.parents[2])).replace(".smali", "") + ";"
    if ".method private startScan()V" in text and ".method public xemsRefresh()V" not in text:
        text = text.rstrip("\n") + f"""

.method public xemsRefresh()V
    .locals 0

    invoke-direct {{p0}}, {cls}->startScan()V

    return-void
.end method
"""
    path.write_text(text, encoding="utf-8")
    print(f"{path.name}: ↻ refresh next to the search")


def main() -> None:
    if not (G / "wearable" / "QuickStart.smali").is_file():
        print("apply-quick-start: QuickStart not installed (BETA_MUSIC=0) — skipped")
        return
    patch_adapter()
    for s in SCREENS:
        patch_screen(s)


if __name__ == "__main__":
    main()
