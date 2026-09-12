#!/usr/bin/env python3
"""Fix dark-theme form fields: LineEditText underline + add-user layout text colors."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
BRANDING = ROOT / "branding"
LINE_EDIT_TEXT = (
    ROOT
    / "build"
    / "decompiled"
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "widget"
    / "LineEditText.smali"
)

LINE_PAINT_OLD = """    iget-object v0, p0, Lcom/isaigu/gymapp/widget/LineEditText;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V"""

LINE_PAINT_NEW = """    iget-object v0, p0, Lcom/isaigu/gymapp/widget/LineEditText;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V"""


def patch_line_edit_text() -> None:
    text = LINE_EDIT_TEXT.read_text(encoding="utf-8")
    if "0x7f0600b9" in text:
        print("LineEditText underline: already patched")
        return
    if LINE_PAINT_OLD not in text:
        raise RuntimeError("LineEditText paint color marker not found")
    text = text.replace(LINE_PAINT_OLD, LINE_PAINT_NEW, 1)
    LINE_EDIT_TEXT.write_text(text, encoding="utf-8")
    print("LineEditText underline: patched to themed underline_color")


def add_line_edittext_theme_attrs(content: str) -> str:
    tag = "<com.isaigu.gymapp.widget.LineEditText "
    result: list[str] = []
    index = 0
    while True:
        start = content.find(tag, index)
        if start == -1:
            result.append(content[index:])
            break
        result.append(content[index:start])
        end = content.find(">", start)
        if end == -1:
            result.append(content[start:])
            break
        block = content[start : end + 1]
        if "textColor=" not in block:
            block = block.replace(tag, tag + 'android:textColor="@color/text_primary" ', 1)
        if "textColorHint=" not in block and "android:hint=" in block:
            block = block.replace(tag, tag + 'android:textColorHint="@color/text_hint" ', 1)
        result.append(block)
        index = end + 1
    return "".join(result)


def patch_add_user_layout() -> None:
    src = BRANDING / "layouts" / "add_user_layout.xml"
    dest = DECOMPILED / "res" / "layout" / "add_user_layout.xml"
    if not src.exists():
        raise RuntimeError("branding/layouts/add_user_layout.xml is missing")
    text = add_line_edittext_theme_attrs(src.read_text(encoding="utf-8"))
    dest.write_text(text, encoding="utf-8")
    print("patched add_user_layout.xml form field colors")


def main() -> None:
    patch_line_edit_text()
    patch_add_user_layout()
    print("Form theme patches applied.")


if __name__ == "__main__":
    main()
