#!/usr/bin/env python3
"""Generate train-screen-mockup.html from branding/design/ XML (pixel-accurate spec)."""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import importlib.util

ROOT = Path(__file__).resolve().parents[1]
MOCKUP = ROOT / "branding" / "train-screen-mockup.html"
TEMPLATE = ROOT / "branding" / "train-screen-mockup.template.html"


def _load_module(name: str, path: Path):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {path}")
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


_lib = _load_module("train_mockup_lib", ROOT / "scripts" / "train_mockup_lib.py")
_studio = _load_module("generate_design_studio", ROOT / "scripts" / "generate-design-studio.py")
build_train_mockup_spec = _lib.build_train_mockup_spec
build_boot = _studio.build_boot


def _embed_block(text: str, begin: str, end: str, var_name: str, payload: dict) -> str:
    pattern = rf"{re.escape(begin)}.*?{re.escape(end)}"
    block = (
        f"{begin}\n"
        f"  <script>\n"
        f"  {var_name} = {json.dumps(payload, ensure_ascii=False)};\n"
        f"  </script>\n"
        f"  {end}"
    )
    if not re.search(pattern, text, flags=re.DOTALL):
        raise RuntimeError(f"Marker block not found: {begin}")
    return re.sub(pattern, block, text, count=1, flags=re.DOTALL)


def main() -> int:
    if not TEMPLATE.is_file():
        print(f"Missing template: {TEMPLATE}", file=sys.stderr)
        return 1

    spec = build_train_mockup_spec()
    boot = build_boot()

    text = TEMPLATE.read_text(encoding="utf-8")
    text = _embed_block(
        text,
        "  <!-- TRAIN_MOCKUP_SPEC_BEGIN -->",
        "  <!-- TRAIN_MOCKUP_SPEC_END -->",
        "window.TRAIN_MOCKUP_SPEC",
        spec,
    )
    text = _embed_block(
        text,
        "  <!-- DESIGN_STUDIO_BOOT_BEGIN -->",
        "  <!-- DESIGN_STUDIO_BOOT_END -->",
        "window.DESIGN_STUDIO_BOOT",
        boot,
    )
    MOCKUP.write_text(text, encoding="utf-8")
    print(f"Generated {MOCKUP.relative_to(ROOT)} (source hash {spec['source']['hash']})")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
