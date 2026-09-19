"""Safe bounds and validation for branding/design-config.yaml."""

from __future__ import annotations

import copy
from typing import Any

# Only numeric layout tweaks — never view ids or XML structure.
BOUNDS: dict[str, dict[str, tuple[float, float]]] = {
    "row": {
        "height_dp": (140, 220),
    },
    "columns": {
        "mode_buttons": (0.25, 0.7),
        "muscle_sliders": (1.4, 2.6),
        "avatar": (0.45, 0.95),
        "user_info": (0.35, 0.75),
        "action_buttons": (0.12, 0.35),
    },
    "avatar": {
        "index_button_size_dp": (34, 56),
        "index_button_edge_dp": (-8, 16),
        "index_button_vertical_dp": (4, 28),
        "icon_padding_dp": (4, 32),
        "timer_text_sp": (28, 52),
        "wave_margin_dp": (28, 52),
        "slider_padding_dp": (8, 32),
        "slider_padding_bottom_dp": (6, 24),
        "slider_track_width_dp": (8, 20),
        "slider_pointer_radius_dp": (10, 22),
    },
    "mode_buttons": {
        "width_dp": (80, 140),
        "height_dp": (36, 52),
    },
    "sliders": {
        "channel_width_dp": (28, 44),
    },
}

DEFAULTS: dict[str, Any] = {
    "row": {"height_dp": 170},
    "columns": {
        "mode_buttons": 0.4,
        "muscle_sliders": 2.0,
        "avatar": 0.6,
        "user_info": 0.5,
        "action_buttons": 0.2,
    },
    "avatar": {
        "index_button_size_dp": 45,
        "index_button_edge_dp": 0,
        "index_button_vertical_dp": 10,
        "icon_padding_dp": 27,
        "timer_text_sp": 45,
        "wave_margin_dp": 42,
        "slider_padding_dp": 14,
        "slider_padding_bottom_dp": 10,
        "slider_track_width_dp": 14,
        "slider_pointer_radius_dp": 18,
    },
    "mode_buttons": {"width_dp": 120, "height_dp": 42},
    "sliders": {"channel_width_dp": 35},
}

LAYOUT_MARKERS = (
    "@id/circleSeekBar",
    "@id/ma",
    "@id/pauseMaValue",
    "@id/hzValue",
    "@id/strenthExist",
    "@id/stop",
)

IGNORED_KEYS = frozenset({"active_preset", "preset"})


def _clamp(value: float, lo: float, hi: float) -> float:
    return max(lo, min(hi, float(value)))


def sanitize(cfg: dict[str, Any]) -> tuple[dict[str, Any], list[str]]:
    """Merge with defaults and clamp every known value to safe bounds."""
    merged = copy.deepcopy(DEFAULTS)
    warnings: list[str] = []

    for section, fields in cfg.items():
        if section in IGNORED_KEYS:
            continue
        if section not in BOUNDS or not isinstance(fields, dict):
            warnings.append(f"ignored unknown section '{section}'")
            continue
        merged.setdefault(section, {})
        for key, raw in fields.items():
            if key not in BOUNDS[section]:
                warnings.append(f"ignored unknown key '{section}.{key}'")
                continue
            lo, hi = BOUNDS[section][key]
            try:
                value = float(raw)
            except (TypeError, ValueError):
                warnings.append(f"invalid {section}.{key}={raw!r} — using default")
                continue
            clamped = _clamp(value, lo, hi)
            if clamped != value:
                warnings.append(
                    f"clamped {section}.{key}: {raw} -> {clamped} (safe range {lo}..{hi})"
                )
            merged[section][key] = clamped

    return merged, warnings


def verify_layout_structure(text: str) -> list[str]:
    return [marker for marker in LAYOUT_MARKERS if marker not in text]
