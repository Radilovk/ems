#!/usr/bin/env python3
"""Show impulse strength as percent instead of milliamps on the training screen."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"

MA_VALUE_REPLACEMENTS = (
    ('<string name="maValue">%1$d mA</string>', '<string name="maValue">%1$d%%</string>'),
    ('<string name="maValue">%1$d mA</string>', '<string name="maValue">%1$d%%</string>'),
)


def patch_ma_value_strings() -> None:
    for rel in ("values/strings.xml", "values-en/strings.xml", "values-bg/strings.xml"):
        path = DECOMPILED / "res" / rel
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        if '%1$d%%</string>' in text and 'name="maValue"' in text:
            print(f"maValue already percent in {rel}")
            continue
        updated = text.replace(
            '<string name="maValue">%1$d mA</string>',
            '<string name="maValue">%1$d%%</string>',
            1,
        )
        if updated == text:
            raise RuntimeError(f"maValue marker not found in {rel}")
        path.write_text(updated, encoding="utf-8")
        print(f"patched maValue -> percent in {rel}")


def main() -> None:
    patch_ma_value_strings()
    print("Impulse display patches applied.")


if __name__ == "__main__":
    main()
