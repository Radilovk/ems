#!/usr/bin/env python3
"""Own names for the suits in the device list (both connect dialogs), kept on the tablet only.

DeviceAdapter.onBindViewHolder end → bodytech/DeviceAlias.attach(row, nameView, mac, name): shows the owner's name
instead of the suit's, long-press / the "i" at the row's end renames (xems_device_alias, by MAC).
Runs after apply-bodytech.py (which installs the bodytech smali, DeviceAlias among it).
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
D = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "dialog"
MARKER = "DeviceAlias;->attach"


def patch(dlg: str) -> None:
    f = D / f"{dlg}$DeviceAdapter.smali"
    if not f.is_file():
        sys.exit(f"apply-device-alias: {f.name} missing")
    text = f.read_text(encoding="utf-8")
    if MARKER in text:
        print(f"{f.name}: already hooked")
        return
    m = re.search(r"\.method public onBindViewHolder\(.*?\n\.end method", text, re.S)
    if not m:
        sys.exit(f"apply-device-alias: onBindViewHolder not found in {f.name}")
    body = m.group(0)
    holder = f"L{'com/isaigu/gymapp/dialog/' + dlg}$DeviceAdapter$DeviceHolder;"
    acc = re.search(re.escape("invoke-static {v0}, " + holder + "->access$") + r"(\d+)\(" + re.escape(holder)
                    + r"\)Landroid/widget/TextView;", body)
    if not acc or ".locals 5" not in body:
        sys.exit(f"apply-device-alias: name view / registers not as expected in {f.name}")
    tail = re.search(r"\n    \.line \d+\n    return-void\n\.end method$", body)
    if not tail:
        sys.exit(f"apply-device-alias: method end not as expected in {f.name}")
    bean = "Lcom/isaigu/gymapp/bean/DeviceBean;"
    hook = (
        f"\n    invoke-static {{v0}}, {holder}->access${acc.group(1)}({holder})Landroid/widget/TextView;\n"
        "    move-result-object v2\n"
        f"    iget-object v0, v0, {holder}->itemView:Landroid/view/View;\n"
        f"    iget-object v3, v1, {bean}->macAddress:Ljava/lang/String;\n"
        f"    iget-object v4, v1, {bean}->name:Ljava/lang/String;\n"
        "    invoke-static {v0, v2, v3, v4}, Lcom/isaigu/gymapp/bodytech/DeviceAlias;->attach("
        "Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V\n"
    )
    new_body = body[: tail.start()] + hook + body[tail.start():]
    f.write_text(text.replace(body, new_body), encoding="utf-8")
    print(f"{f.name}: device alias hooked")


def main() -> None:
    if not (ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "bodytech" / "DeviceAlias.smali").is_file():
        sys.exit("apply-device-alias: DeviceAlias.smali not installed (run apply-bodytech.py after compile-bodytech-java.sh)")
    for dlg in ("NewUserProgramDeviceConnectDialogFragment", "UserProgramDeviceConnectDialogFragment"):
        patch(dlg)


if __name__ == "__main__":
    main()
