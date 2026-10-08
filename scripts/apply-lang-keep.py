#!/usr/bin/env python3
"""Keep the app's language (bg / en) after Android puts the system locale back.

The vendor sets it once (MainActivity.onCreate). The first WebView of the process (the report, the client's card
right after a training) and every handled configuration change reset the resources to the tablet's system
language: the picker for the next client and his row came out in English. XemsLang.reapply sets it again:
- MainActivity.onConfigurationChanged (added: the activity handles orientation / keyboard / screen size itself);
- the start of both client / program / device pickers' onCreateView (before anything is inflated).
The WebView sites call it in Java (ReportScreen, CardPublisher, XemsExercisePage).
"""
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
G = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp"
LANG = "Lcom/isaigu/gymapp/widget/XemsLang;->reapply"
PICKERS = ("NewUserProgramDeviceConnectDialogFragment", "UserProgramDeviceConnectDialogFragment")


def patch_main() -> None:
    path = G / "MainActivity.smali"
    text = path.read_text(encoding="utf-8")
    if LANG in text:
        return
    if "onConfigurationChanged(" in text:
        sys.exit("apply-lang-keep: MainActivity already has onConfigurationChanged — hook it instead")
    sup = text.split(".super ", 1)[1].split("\n", 1)[0].strip()
    text = text.rstrip("\n") + f"""

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {{p0, p1}}, {sup}->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {{p0}}, {LANG}(Landroid/app/Activity;)V

    return-void
.end method
"""
    path.write_text(text, encoding="utf-8")
    print("MainActivity: the app's language again after a configuration change")


def patch_picker(name: str) -> None:
    path = G / "dialog" / f"{name}.smali"
    text = path.read_text(encoding="utf-8")
    if LANG in text:
        return
    sig = ".method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"
    a = text.find(sig)
    if a < 0:
        sys.exit(f"apply-lang-keep: {name}.onCreateView not found")
    at = text.find("\n", text.find(".locals", a)) + 1
    text = text[:at] + f"\n    invoke-static {{}}, {LANG}()V\n" + text[at:]
    path.write_text(text, encoding="utf-8")
    print(f"{name}: the app's language before the picker is built")


def main() -> None:
    if not (G / "widget" / "XemsLang.smali").is_file():
        print("apply-lang-keep: XemsLang not installed — skipped")
        return
    patch_main()
    for p in PICKERS:
        patch_picker(p)


if __name__ == "__main__":
    main()
