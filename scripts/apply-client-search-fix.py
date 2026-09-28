#!/usr/bin/env python3
"""Make client-name search case-insensitive.

The vendor screens filter the client list with a case-sensitive String.contains, so a Bulgarian
name stored capitalised never matches a lower-case query (and vice-versa) — search looks dead in the
"Потребители" tab and in the client picker while configuring a training. Reroute the name filter
through widget/XemsSearch.matches (trim + lower-case, Cyrillic-safe).

Targets the four user-name filters (live watcher + the search button + both connect dialogs).
"""

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SMALI = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"

TARGETS = (
    "fragment/UserFragment$4.smali",                              # live search (Потребители tab)
    "fragment/UserFragment$3.smali",                              # search button
    "dialog/NewUserProgramDeviceConnectDialogFragment$8.smali",   # training picker
    "dialog/UserProgramDeviceConnectDialogFragment$8.smali",      # training picker (older dialog)
)

CONTAINS = re.compile(
    r"invoke-virtual (\{v\d+, v\d+\}), Ljava/lang/String;->contains\(Ljava/lang/CharSequence;\)Z"
)
REPLACEMENT = (
    r"invoke-static \1, Lcom/isaigu/gymapp/widget/XemsSearch;->matches"
    r"(Ljava/lang/String;Ljava/lang/String;)Z"
)
MATCHES_REF = "Lcom/isaigu/gymapp/widget/XemsSearch;->matches"


def main() -> None:
    for rel in TARGETS:
        path = SMALI / rel
        if not path.exists():
            print(f"{rel}: not found — skipped")
            continue
        text = path.read_text(encoding="utf-8")
        if MATCHES_REF in text:
            print(f"{rel}: already rerouted")
            continue
        if "Lcom/isaigu/gymapp/bean/TrainUser;->name:" not in text:
            print(f"{rel}: no name filter — skipped")
            continue
        text, n = CONTAINS.subn(REPLACEMENT, text)
        if n != 1:
            raise SystemExit(f"{rel}: expected exactly one name filter, changed {n}")
        path.write_text(text, encoding="utf-8")
        print(f"{rel}: name search -> XemsSearch.matches (case-insensitive)")


if __name__ == "__main__":
    main()
