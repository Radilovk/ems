#!/usr/bin/env python3
"""Make client-name search case-insensitive.

The vendor screens filter the client list with a case-sensitive String.contains, so a Bulgarian
name stored capitalised never matches a lower-case query (and vice-versa) — search looks dead in the
"Потребители" tab and in the client picker while configuring a training. Reroute the name filter
through widget/XemsSearch.matches (trim + lower-case, Cyrillic-safe).

Targets the four user-name filters (live watcher + the search button + both connect dialogs).
The matching is phonetic across Cyrillic / Latin too (Ivan = Иван).

Every search field of those screens also gets XemsSearch.attach (before its addTextChangedListener):
no full-screen keyboard in landscape, and the block above the field folds while it has focus, so the
results show under it, above the keyboard.
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
ATTACH_REF = "Lcom/isaigu/gymapp/widget/XemsSearch;->attach"
WATCH = re.compile(
    r"(    invoke-virtual \{(v\d+), v\d+\}, Landroid/widget/EditText;->addTextChangedListener"
    r"\(Landroid/text/TextWatcher;\)V\n)"
)
FIELD_SCREENS = (
    "fragment/UserFragment.smali",
    "dialog/NewUserProgramDeviceConnectDialogFragment.smali",
    "dialog/UserProgramDeviceConnectDialogFragment.smali",
)


def patch_fields() -> None:
    for rel in FIELD_SCREENS:
        path = SMALI / rel
        if not path.exists():
            print(f"{rel}: not found — skipped")
            continue
        text = path.read_text(encoding="utf-8")
        if ATTACH_REF in text:
            continue
        text, n = WATCH.subn(
            lambda m: f"    invoke-static {{{m.group(2)}}}, {ATTACH_REF}(Landroid/widget/EditText;)V\n\n"
            + m.group(1), text)
        if n == 0:
            raise SystemExit(f"{rel}: no search field watcher found")
        path.write_text(text, encoding="utf-8")
        print(f"{rel}: {n} search field(s) keep their results above the keyboard")


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
    patch_fields()


if __name__ == "__main__":
    main()
