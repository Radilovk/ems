#!/usr/bin/env python3
"""Reorder muscle group columns in train UI layouts (visual only, IDs unchanged)."""

from __future__ import annotations

import re
import sys
from pathlib import Path

# Visual order: calf, front thigh, back thigh, glutes, abs, lower back, back, traps, chest, arms
ORDER = [4, 3, 10, 9, 2, 8, 7, 6, 1, 5]

BUWEI_BLOCK_RE = re.compile(
    r'(<LinearLayout[^>]*android:id="@id/buwei(\d+)"[^>]*>.*?</LinearLayout>)',
    re.DOTALL,
)

COLUMN_BLOCK_RE = re.compile(
    r'(<LinearLayout[^>]*>\s*'
    r'<TextView[^>]*android:id="@id/textview(\d+)"[^>]*/>\s*'
    r'<com\.isaigu\.gymapp\.widget\.VerticalColorSeekBar[^>]*android:id="@id/vpb_brightness\2"[^>]*/>\s*'
    r'</LinearLayout>)',
    re.DOTALL,
)


def _reorder_blocks(content: str, pattern: re.Pattern[str], order: list[int]) -> str:
    matches = list(pattern.finditer(content))
    if len(matches) != 10:
        raise RuntimeError(f"expected 10 blocks, found {len(matches)}")

    by_index: dict[int, str] = {}
    for match in matches:
        idx = int(match.group(2))
        by_index[idx] = match.group(1)

    if set(by_index) != set(range(1, 11)):
        raise RuntimeError(f"unexpected block indices: {sorted(by_index)}")

    first = matches[0]
    last = matches[-1]
    replacement = "\n".join(by_index[idx] for idx in order)
    return content[: first.start()] + replacement + content[last.end() :]


def _reorder_train_layout(path: Path) -> None:
    original = path.read_text(encoding="utf-8")
    updated = _reorder_blocks(original, BUWEI_BLOCK_RE, ORDER)
    path.write_text(updated, encoding="utf-8")


def _reorder_user_row_layout(path: Path) -> None:
    original = path.read_text(encoding="utf-8")
    updated = _reorder_blocks(original, COLUMN_BLOCK_RE, ORDER)
    path.write_text(updated, encoding="utf-8")


def main() -> int:
    if len(sys.argv) != 2:
        print(f"usage: {sys.argv[0]} <decompiled-dir>", file=sys.stderr)
        return 1

    layout_dir = Path(sys.argv[1]) / "res" / "layout"
    targets = {
        "new_train_fragment_layout.xml": _reorder_train_layout,
        "train_fragment_layout.xml": _reorder_train_layout,
        "new_user_train_control_item_layout.xml": _reorder_user_row_layout,
        "user_train_control_item_layout.xml": _reorder_user_row_layout,
    }

    for name, handler in targets.items():
        path = layout_dir / name
        if not path.exists():
            print(f"skip missing layout: {path}")
            continue
        handler(path)
        print(f"reordered muscles in {name}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
