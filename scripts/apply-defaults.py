#!/usr/bin/env python3
"""Default Bulgarian + dark theme."""

from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
SMALI = DECOMPILED / "smali_classes2/com/isaigu/gymapp"
LANGUAGE_UTILS = SMALI / "utils/LanguageUtils.smali"
USER_DATA = SMALI / "bean/UserData.smali"
THEME_UTILS = ROOT / "branding/smali/ThemeUtils.smali"
THEME_UTILS_INSTALLED = SMALI / "utils/ThemeUtils.smali"
def patch_defaults() -> None:
    lang = LANGUAGE_UTILS.read_text(encoding="utf-8")
    if 'const-string v2, "bg"' not in lang.split("getLang", 1)[-1][:400]:
        lang = lang.replace(
            '    const-string v2, "en"\n\n    invoke-interface {v0, v1, v2}, '
            'Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;',
            '    const-string v2, "bg"\n\n    invoke-interface {v0, v1, v2}, '
            'Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;',
            1,
        )
        LANGUAGE_UTILS.write_text(lang, encoding="utf-8")
        print("patched LanguageUtils default -> bg")

    user = USER_DATA.read_text(encoding="utf-8")
    marker = 'const-string v1, "bg"\n\n    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;'
    if marker not in user:
        old = """    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;"""
        new = """    const-string v1, "bg"

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;"""
        if old not in user:
            raise SystemExit("UserData default language block not found")
        USER_DATA.write_text(user.replace(old, new, 1), encoding="utf-8")
        print("patched UserData default language -> bg")

    for theme_path in (THEME_UTILS, THEME_UTILS_INSTALLED):
        if not theme_path.exists():
            continue
        theme = theme_path.read_text(encoding="utf-8")
        marker = """    const-string v2, "dark_mode"

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z"""
        if marker in theme:
            continue
        old = """    const-string v2, "dark_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z"""
        if old not in theme:
            raise SystemExit(f"ThemeUtils dark default block not found in {theme_path}")
        theme_path.write_text(theme.replace(old, marker, 1), encoding="utf-8")
        print(f"patched {theme_path.name} default theme -> dark")


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run build-apk.sh first", file=sys.stderr)
        return 1
    patch_defaults()
    print("Defaults applied (bg, dark theme)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
