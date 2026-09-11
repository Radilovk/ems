#!/usr/bin/env python3
"""Install theme toggle via ThemeUtils (safe resource lookup, no hardcoded ids)."""

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING = ROOT / "branding"
SMALI_DIR = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp"
SETTING_FRAGMENT = SMALI_DIR / "fragment" / "SettingFragment.smali"

BIND_CALL = (
    "    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;"
    "->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;\n\n"
    "    move-result-object v1\n\n"
    "    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;"
    "->bindThemeSwitch(Landroid/app/Activity;Landroid/view/View;)V\n\n"
)

THEME_INIT_BLOCK_RE = re.compile(
    r"    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->themeSwitchButton:.*?"
    r"->setOnCheckedChangeListener\(Lcom/isaigu/gymapp/widget/SwitchButton\$OnCheckedChangeListener;\)V\n\n",
    re.DOTALL,
)

THEME_FIND_BLOCK_RE = re.compile(
    r"    const v1, 0x7f090203\n\n"
    r"    invoke-virtual \{v0, v1\}, Landroid/view/View;->findViewById\(I\)Landroid/view/View;\n\n"
    r"    move-result-object v1\n\n"
    r"    check-cast v1, Lcom/isaigu/gymapp/widget/SwitchButton;\n\n"
    r"    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->themeSwitchButton:.*?\n\n",
    re.DOTALL,
)


def install_smali_files() -> None:
    utils_dir = SMALI_DIR / "utils"
    utils_dir.mkdir(parents=True, exist_ok=True)
    for name in ("ThemeUtils.smali", "ThemeUtils$ThemeSwitchListener.smali"):
        shutil.copy2(BRANDING / "smali" / name, utils_dir / name)
        print(f"installed {name}")

    stale = SMALI_DIR / "fragment" / "SettingFragment$22.smali"
    if stale.exists():
        stale.unlink()
        print("removed stale SettingFragment$22.smali")


def cleanup_setting_fragment() -> None:
    text = SETTING_FRAGMENT.read_text(encoding="utf-8")
    text = text.replace(
        ".field private themeSwitchButton:Lcom/isaigu/gymapp/widget/SwitchButton;\n\n",
        "",
    )
    text = THEME_FIND_BLOCK_RE.sub("", text)
    text = THEME_INIT_BLOCK_RE.sub("", text)
    SETTING_FRAGMENT.write_text(text, encoding="utf-8")
    print("cleaned legacy SettingFragment theme patches")


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


def patch_setting_fragment_bind() -> None:
    text = SETTING_FRAGMENT.read_text(encoding="utf-8")
    if "ThemeUtils;->bindThemeSwitch" in text:
        print("SettingFragment already binds theme switch")
        return

    marker = "    .line 143\n    return-object v0\n.end method"
    replacement = f"{BIND_CALL}    .line 143\n    return-object v0\n.end method"
    if marker not in text:
        raise RuntimeError("SettingFragment.onCreateView return marker not found")
    text = text.replace(marker, replacement, 1)
    SETTING_FRAGMENT.write_text(text, encoding="utf-8")
    print("patched SettingFragment.bindThemeSwitch")


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
        text = text.replace("</resources>", f'    <string name="setdarktheme">{value}</string>\n</resources>')
        path.write_text(text, encoding="utf-8")
        print(f"added setdarktheme to {rel}")


def main() -> None:
    install_smali_files()
    cleanup_setting_fragment()
    patch_base_activity()
    patch_setting_fragment_bind()
    patch_theme_strings()
    print("Theme toggle installed.")


if __name__ == "__main__":
    main()
