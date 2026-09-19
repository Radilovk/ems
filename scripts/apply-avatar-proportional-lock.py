#!/usr/bin/env python3
"""Replace avatar column RelativeLayout with proportional AvatarClusterLayout."""

from __future__ import annotations

import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
SMALI_SRC = ROOT / "branding" / "smali" / "widget" / "AvatarClusterLayout.smali"
SMALI_DEST = (
    DECOMPILED
    / "smali_classes2"
    / "com"
    / "isaigu"
    / "gymapp"
    / "widget"
    / "AvatarClusterLayout.smali"
)

LAYOUT_NAMES = ("new_user_train_control_item_layout.xml", "user_train_control_item_layout.xml")

AVATAR_COLUMN_OPEN = (
    '<RelativeLayout android:layout_width="0.0dip" android:layout_height="fill_parent" '
    'android:layout_weight="0.6">'
)
CLUSTER_OPEN = (
    '<com.isaigu.gymapp.widget.AvatarClusterLayout android:layout_width="0.0dip" '
    'android:layout_height="fill_parent" android:layout_weight="0.6">'
)


def install_smali() -> None:
    if not SMALI_SRC.is_file():
        raise FileNotFoundError(
            f"{SMALI_SRC} missing — run scripts/compile-avatar-cluster-java.sh with Android SDK"
        )
    SMALI_DEST.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(SMALI_SRC, SMALI_DEST)
    print(f"installed {SMALI_DEST.relative_to(ROOT)}")


def patch_avatar_column(text: str) -> tuple[str, bool]:
    if "AvatarClusterLayout" in text:
        return text, False
    if AVATAR_COLUMN_OPEN not in text or "@id/circleSeekBar" not in text:
        return text, False
    text = text.replace(AVATAR_COLUMN_OPEN, CLUSTER_OPEN, 1)
    # Close tag: first closing RelativeLayout after circleSeekBar in avatar block
    pattern = (
        r'(<com\.isaigu\.gymapp\.widget\.AvatarClusterLayout[^>]*>[\s\S]*?'
        r'<com\.isaigu\.gymapp\.widget\.CircleSeekBar[^>]*/>[\s\S]*?)(</RelativeLayout>)'
    )
    match = re.search(pattern, text)
    if not match:
        raise RuntimeError("avatar cluster close tag not found after CircleSeekBar")
    text = text[: match.start(2)] + "</com.isaigu.gymapp.widget.AvatarClusterLayout>" + text[match.end(2) :]
    return text, True


def patch_layouts() -> None:
    for layout_dir in ("layout", "layout-night"):
        for name in LAYOUT_NAMES:
            path = DECOMPILED / "res" / layout_dir / name
            if not path.is_file():
                continue
            text = path.read_text(encoding="utf-8")
            text, changed = patch_avatar_column(text)
            if changed:
                path.write_text(text, encoding="utf-8")
                print(f"patched {path.relative_to(ROOT)}: AvatarClusterLayout")
            else:
                print(f"{path.relative_to(ROOT)}: avatar cluster already applied")


def main() -> None:
    install_smali()
    patch_layouts()
    print("Avatar proportional lock applied (130×170dp reference, no container shift).")


if __name__ == "__main__":
    main()
