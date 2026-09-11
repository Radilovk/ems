#!/usr/bin/env python3
"""Install theme toggle smali hooks and resource ids."""

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING = ROOT / "branding"
SMALI_DIR = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp"
THEME_SWITCH_ID = 0x7F090203


def install_smali_files() -> None:
    for name in ("ThemeUtils.smali",):
        src = BRANDING / "smali" / name
        dest = SMALI_DIR / "utils" / name
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dest)
        print(f"installed {name}")

    src = BRANDING / "smali" / "SettingFragment$22.smali"
    dest = SMALI_DIR / "fragment" / "SettingFragment$22.smali"
    shutil.copy2(src, dest)
    print("installed SettingFragment$22.smali")


def patch_public_xml() -> None:
    path = DECOMPILED / "res" / "values" / "public.xml"
    text = path.read_text(encoding="utf-8")
    if 'name="theme_switch_button"' not in text:
        text = text.replace(
            '    <public type="id" name="youyangyundong" id="0x7f090202" />',
            '    <public type="id" name="youyangyundong" id="0x7f090202" />\n'
            '    <public type="id" name="theme_switch_button" id="0x7f090203" />',
        )
        path.write_text(text, encoding="utf-8")
        print("patched public.xml theme_switch_button id")


def patch_ids_xml() -> None:
    path = DECOMPILED / "res" / "values" / "ids.xml"
    text = path.read_text(encoding="utf-8")
    if 'name="theme_switch_button"' not in text:
        text = text.replace(
            "</resources>",
            '    <item type="id" name="theme_switch_button" />\n</resources>',
        )
        path.write_text(text, encoding="utf-8")
        print("patched ids.xml")


def patch_base_activity() -> None:
    path = SMALI_DIR / "BaseActivity.smali"
    text = path.read_text(encoding="utf-8")
    marker = "invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V"
    inject = (
        "    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->applyStoredNightMode(Landroid/content/Context;)V\n\n"
        f"    {marker}"
    )
    if "ThemeUtils;->applyStoredNightMode" not in text:
        if marker not in text:
            raise RuntimeError("BaseActivity.onCreate marker not found")
        text = text.replace(marker, inject, 1)
        path.write_text(text, encoding="utf-8")
        print("patched BaseActivity.onCreate")


def patch_setting_fragment() -> None:
    path = SMALI_DIR / "fragment" / "SettingFragment.smali"
    text = path.read_text(encoding="utf-8")

    if "themeSwitchButton" not in text:
        text = text.replace(
            ".field private switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;\n",
            ".field private switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;\n\n"
            ".field private themeSwitchButton:Lcom/isaigu/gymapp/widget/SwitchButton;\n",
        )

    find_switch = (
        "    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:"
        "Lcom/isaigu/gymapp/widget/SwitchButton;\n"
    )
    theme_find = (
        f"    const v1, {hex(THEME_SWITCH_ID)}\n\n"
        "    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;\n\n"
        "    move-result-object v1\n\n"
        "    check-cast v1, Lcom/isaigu/gymapp/widget/SwitchButton;\n\n"
        "    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->themeSwitchButton:"
        "Lcom/isaigu/gymapp/widget/SwitchButton;\n\n"
    )
    if hex(THEME_SWITCH_ID) not in text:
        text = text.replace(find_switch, find_switch + theme_find, 1)

    init_marker = (
        "    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/SwitchButton;"
        "->setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V\n"
    )
    theme_init = (
        "    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->themeSwitchButton:"
        "Lcom/isaigu/gymapp/widget/SwitchButton;\n\n"
        "    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;"
        "->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;\n\n"
        "    move-result-object v2\n\n"
        "    invoke-static {v2}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z\n\n"
        "    move-result v2\n\n"
        "    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V\n\n"
        "    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->themeSwitchButton:"
        "Lcom/isaigu/gymapp/widget/SwitchButton;\n\n"
        "    new-instance v2, Lcom/isaigu/gymapp/fragment/SettingFragment$22;\n\n"
        "    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$22;-><init>"
        "(Lcom/isaigu/gymapp/fragment/SettingFragment;)V\n\n"
        "    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/SwitchButton;"
        "->setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V\n\n"
    )

    if "SettingFragment$22" not in text:
        if init_marker not in text:
            raise RuntimeError("SettingFragment switch listener marker not found")
        text = text.replace(init_marker, init_marker + theme_init, 1)

    path.write_text(text, encoding="utf-8")
    print("patched SettingFragment theme toggle")


def patch_theme_strings() -> None:
    strings = {
        "values/strings.xml": "Dark theme:",
        "values-en/strings.xml": "Dark theme:",
        "values-bg/strings.xml": "Тъмна тема:",
    }
    for rel, value in strings.items():
        path = DECOMPILED / "res" / rel
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if 'name="setdarktheme"' in text:
            continue
        text = text.replace(
            "</resources>",
            f'    <string name="setdarktheme">{value}</string>\n</resources>',
        )
        path.write_text(text, encoding="utf-8")
        print(f"added setdarktheme to {rel}")


def main() -> None:
    install_smali_files()
    patch_public_xml()
    patch_ids_xml()
    patch_base_activity()
    patch_setting_fragment()
    patch_theme_strings()
    print("Theme toggle installed.")


if __name__ == "__main__":
    main()
