#!/usr/bin/env python3
"""The "План" tab shows wearable/PlanScreen (appointments from the tablet's calendar, next client)
instead of the vendor's month planner: CalendarFragment.onCreateView returns PlanScreen.create(...)
when it builds, and onHiddenChanged skips the vendor's logo code for our page.
"""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SMALI = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "fragment" / "CalendarFragment.smali"

CREATE_MARKER = ".method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;\n    .locals 4\n"
CREATE_HOOK = """
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :xems_plan_vendor

    return-object v0

    :xems_plan_vendor
"""
HIDDEN_SUPER = "    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->onHiddenChanged(Z)V\n"
HIDDEN_HOOK = """
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->onHidden(Z)Z

    move-result v0

    if-eqz v0, :xems_plan_vendor_h

    return-void

    :xems_plan_vendor_h
"""


def main() -> int:
    text = SMALI.read_text(encoding="utf-8")
    if "wearable/PlanScreen" in text:
        print("CalendarFragment: plan hooks already in")
        return 0
    if text.count(CREATE_MARKER) != 1:
        raise SystemExit("apply-plan-tab: CalendarFragment.onCreateView anchor not found")
    if text.count(HIDDEN_SUPER) != 1:
        raise SystemExit("apply-plan-tab: CalendarFragment.onHiddenChanged anchor not found")
    # the hook goes after the .param lines of onCreateView
    start = text.index(CREATE_MARKER) + len(CREATE_MARKER)
    body_end = text.index(".end method", start)
    lines = text[start:body_end].split("\n")
    i = 0
    while i < len(lines) and (lines[i].strip().startswith(".param") or lines[i].strip() == ""):
        i += 1
    head = "\n".join(lines[:i])
    tail = "\n".join(lines[i:])
    text = text[:start] + head + "\n" + CREATE_HOOK + "\n" + tail + text[body_end:]
    text = text.replace(HIDDEN_SUPER, HIDDEN_SUPER + HIDDEN_HOOK, 1)
    SMALI.write_text(text, encoding="utf-8")
    print("CalendarFragment: План → PlanScreen")
    return 0


if __name__ == "__main__":
    sys.exit(main())
