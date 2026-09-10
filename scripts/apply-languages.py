#!/usr/bin/env python3
"""Limit app languages to Bulgarian and English."""

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
SMALI = DECOMPILED / "smali_classes2" / "com" / "isaigu" / "gymapp"

GET_LOCALE_METHOD = """.method public static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .param p0, "language"    # Ljava/lang/String;

    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bg

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object v0

    :cond_bg
    const-string v0, "bg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_legacy

    new-instance v0, Ljava/util/Locale;

    const-string v1, "bg"

    const-string v2, "BG"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_legacy
    const-string v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_default

    new-instance v0, Ljava/util/Locale;

    const-string v1, "bg"

    const-string v2, "BG"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_default
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object v0
.end method"""

BG_ERROR_STRINGS = {
    "4": "Грешен потребител или парола",
    "5": "Заявката е неуспешна",
    "6": "Изтекъл token",
    "7": "Грешка при проверка",
    "51": "Параметърът не съществува",
    "53": "Вече съществува",
    "54": "Невалидни данни",
    "55": "Операцията не се поддържа",
    "102": "Грешни данни за парола",
    "108": "Грешен код за потвърждение",
    "109": "Грешка при обновяване на token",
    "117": "Ролята не може да се изтрие",
    "118": "Грешна стара парола",
    "801": "Файлът не може да е празен",
    "802": "Грешка при качване",
    "804": "Файлът е твърде голям",
    "805": "Неподдържан формат",
}


def patch_file(path: Path, replacements: list[tuple[str, str]]) -> None:
    text = path.read_text(encoding="utf-8")
    original = text
    for old, new in replacements:
        text = text.replace(old, new)
    if text != original:
        path.write_text(text, encoding="utf-8")
        print(f"patched {path.name}")


def patch_get_locale() -> None:
    path = SMALI / "utils" / "LanguageUtils.smali"
    text = path.read_text(encoding="utf-8")
    text, count = re.subn(
        r"\.method public static getLocale\(Ljava/lang/String;\)Ljava/util/Locale;.*?\.end method",
        GET_LOCALE_METHOD,
        text,
        count=1,
        flags=re.DOTALL,
    )
    if count != 1:
        raise RuntimeError("Failed to patch LanguageUtils.getLocale")
    path.write_text(text, encoding="utf-8")
    print("patched LanguageUtils.getLocale")


def patch_common_utils() -> None:
    path = SMALI / "mgr" / "CommonUtils.smali"
    text = path.read_text(encoding="utf-8")
    text = text.replace('const-string v7, "zh"\n\n    invoke-interface {v1, v7, v0}', 'const-string v7, "bg"\n\n    invoke-interface {v1, v7, v0}')
    for code, message in BG_ERROR_STRINGS.items():
        for vars_ in (("v2", "v3"), ("v1", "v2")):
            a, b = vars_
            pattern = rf'(const-string {a}, "{code}"\s*\n\s*const-string {b}, )"[^"]*"'
            replacement = rf'\1"{message}"'
            text, _ = re.subn(pattern, replacement, text, count=1)
    path.write_text(text, encoding="utf-8")
    print("patched CommonUtils.smali")


def main() -> None:
    patch_get_locale()
    patch_common_utils()

    for rel in (
        "bean/UserData.smali",
        "fragment/SettingFragment.smali",
        "fragment/SettingFragment$7.smali",
    ):
        patch_file(SMALI / rel, [('const-string v1, "zh"', 'const-string v1, "bg"'), ('const-string v2, "zh"', 'const-string v2, "bg"'), ('const-string v0, "zh"', 'const-string v0, "bg"'), ('= "zh"', '= "bg"')])

    import runpy

    runpy.run_path(str(ROOT / "scripts" / "prune-languages.py"), run_name="__main__")
    print("Languages limited to bg/en.")


if __name__ == "__main__":
    main()
