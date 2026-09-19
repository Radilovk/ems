#!/usr/bin/env python3
"""Embed design config into design-studio.html (works offline, no extra .js file)."""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

try:
    import yaml
except ImportError:
    print("PyYAML required", file=sys.stderr)
    sys.exit(1)

from design_config_schema import BOUNDS, sanitize

ROOT = Path(__file__).resolve().parents[1]
CONFIG = ROOT / "branding" / "design-config.yaml"
PRESETS = ROOT / "branding" / "design-presets.yaml"
STUDIO = ROOT / "branding" / "design-studio.html"
TRAIN_MOCKUP = ROOT / "branding" / "train-screen-mockup.html"
BOOT_JS = ROOT / "branding" / "design-studio.boot.js"

LABELS = {
    "row.height_dp": {"label": "Височина на реда", "step": 2, "unit": "dp", "group": "Ред"},
    "columns.mode_buttons": {"label": "Колона: mode бутони", "step": 0.05, "unit": "weight", "group": "Колони"},
    "columns.muscle_sliders": {"label": "Колона: muscle sliders", "step": 0.05, "unit": "weight", "group": "Колони"},
    "columns.avatar": {"label": "Колона: avatar", "step": 0.05, "unit": "weight", "group": "Колони", "hint": "По-голямо = повече място за ring + index бутони"},
    "columns.user_info": {"label": "Колона: име/импулси", "step": 0.05, "unit": "weight", "group": "Колони"},
    "columns.action_buttons": {"label": "Колона: stop/start/save", "step": 0.05, "unit": "weight", "group": "Колони"},
    "avatar.index_button_size_dp": {"label": "Index бутон — размер", "step": 1, "unit": "dp", "group": "Avatar"},
    "avatar.index_button_edge_dp": {"label": "Index бутон — от ръба (L/R)", "step": 1, "unit": "dp", "group": "Avatar"},
    "avatar.index_button_vertical_dp": {"label": "Index бутон — горе/долу", "step": 1, "unit": "dp", "group": "Avatar"},
    "avatar.slider_padding_dp": {"label": "Ring slider — padding", "step": 1, "unit": "dp", "group": "Avatar", "hint": "Ключово за tablet overlap"},
    "avatar.slider_track_width_dp": {"label": "Ring — дебелина", "step": 1, "unit": "dp", "group": "Avatar"},
    "sliders.channel_width_dp": {"label": "Muscle slider ширина", "step": 1, "unit": "dp", "group": "Sliders"},
}


def _flat_bounds() -> dict[str, list[float]]:
    out: dict[str, list[float]] = {}
    for section, fields in BOUNDS.items():
        for key, (lo, hi) in fields.items():
            out[f"{section}.{key}"] = [lo, hi]
    return out


def _load_yaml(path: Path) -> dict:
    if not path.is_file():
        return {}
    data = yaml.safe_load(path.read_text(encoding="utf-8")) or {}
    return data if isinstance(data, dict) else {}


def build_boot() -> dict:
    raw = _load_yaml(CONFIG)
    current, _ = sanitize(raw)
    preset_data = _load_yaml(PRESETS)
    presets = preset_data.get("presets", {})
    preset_meta = {
        pid: {"label": p.get("label", pid), "hint": p.get("hint", "")}
        for pid, p in presets.items()
    }
    return {
        "version": 1,
        "current": {**current, "active_preset": raw.get("active_preset", "phone")},
        "presets": presets,
        "presetMeta": preset_meta,
        "bounds": _flat_bounds(),
        "labels": LABELS,
    }


def _embed_boot_block(path: Path, boot: dict) -> None:
    text = path.read_text(encoding="utf-8")
    block = (
        "  <!-- DESIGN_STUDIO_BOOT_BEGIN -->\n"
        "  <script>\n"
        f"  window.DESIGN_STUDIO_BOOT = {json.dumps(boot, ensure_ascii=False)};\n"
        "  </script>\n"
        "  <!-- DESIGN_STUDIO_BOOT_END -->"
    )
    pattern = r"  <!-- DESIGN_STUDIO_BOOT_BEGIN -->.*?  <!-- DESIGN_STUDIO_BOOT_END -->"
    if not re.search(pattern, text, flags=re.DOTALL):
        raise RuntimeError(f"{path.name} boot markers missing")
    path.write_text(re.sub(pattern, block, text, count=1, flags=re.DOTALL), encoding="utf-8")
    print(f"Embedded boot data in {path.relative_to(ROOT)}")


def embed_in_html(boot: dict) -> None:
    _embed_boot_block(STUDIO, boot)
    if TRAIN_MOCKUP.is_file():
        _embed_boot_block(TRAIN_MOCKUP, boot)


def main() -> int:
    boot = build_boot()
    embed_in_html(boot)
    # Legacy file for tools that still read .boot.js
    BOOT_JS.write_text(
        "// Auto-generated — prefer inline data in design-studio.html\n"
        f"window.DESIGN_STUDIO_BOOT = {json.dumps(boot, ensure_ascii=False, indent=2)};\n",
        encoding="utf-8",
    )
    mockup_gen = ROOT / "scripts" / "generate-train-mockup.py"
    if mockup_gen.is_file():
        import subprocess

        subprocess.run([sys.executable, str(mockup_gen)], check=False)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
