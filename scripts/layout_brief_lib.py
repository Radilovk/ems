"""Shared layout brief load/validate (imported by CLI and implement)."""

from __future__ import annotations

import json
from pathlib import Path

from layout_brief_schema import SCREENS


def load_brief(path: Path) -> dict:
    text = path.read_text(encoding="utf-8")
    if path.suffix in (".yaml", ".yml"):
        try:
            import yaml
        except ImportError as e:
            raise RuntimeError("PyYAML required for YAML briefs") from e
        data = yaml.safe_load(text)
    else:
        data = json.loads(text)
    if not isinstance(data, dict):
        raise ValueError("brief must be a JSON/YAML object")
    return data


def collect_ids(brief: dict) -> set[str]:
    ids: set[str] = set()

    def walk(node: dict) -> None:
        if not isinstance(node, dict):
            return
        if node.get("id"):
            ids.add(str(node["id"]))
        for key in ("elements", "children", "columns"):
            for child in node.get(key) or []:
                walk(child)

    for col in brief.get("columns") or []:
        walk(col)
    for el in brief.get("elements") or []:
        walk(el)
    return ids


def validate(brief: dict) -> list[str]:
    errors: list[str] = []
    screen = brief.get("screen")
    if screen not in SCREENS:
        errors.append(f"unknown screen {screen!r}; known: {', '.join(SCREENS)}")
        return errors

    meta = SCREENS[screen]
    found = collect_ids(brief)
    has_slider = any(
        e.get("type") == "slider_bank"
        for c in brief.get("columns", [])
        for e in c.get("elements", [])
    )
    has_avatar = any(
        e.get("type") == "avatar_panel"
        for c in brief.get("columns", [])
        for e in c.get("elements", [])
    )
    has_actions = any(c.get("name") == "action_buttons" for c in brief.get("columns", []))
    has_info = any(c.get("name") == "user_info" for c in brief.get("columns", []))

    for rid in meta["required_ids"]:
        if brief.get("mode") == "freeform":
            continue
        if rid.startswith("vpb_brightness") and has_slider:
            continue
        if rid in {"circleSeekBar", "ma", "pauseMaValue", "hzValue", "pauseHzValue", "userIcon", "wave_ball_progress_value"} and has_avatar:
            continue
        if rid in {"stop", "startpaulse", "save"} and has_actions:
            continue
        if rid in {"name", "time"} and has_info:
            continue
        if rid in {"strenthExist", "youyangyundong", "anmo"} and any(
            c.get("name") == "mode_buttons" for c in brief.get("columns", [])
        ):
            continue
        if rid not in found:
            errors.append(f"missing required @id/{rid} (smali/code depends on it)")

    if brief.get("status") != "approved" and not brief.get("allow_draft"):
        errors.append("status is not 'approved' — одобри в Layout Workshop преди implement")

    return errors


def summarize(brief: dict) -> str:
    screen = brief.get("screen", "?")
    meta = SCREENS.get(screen, {})
    lines = [
        f"Brief: {brief.get('id', '?')}",
        f"Screen: {meta.get('label', screen)}",
        f"Status: {brief.get('status', 'draft')}",
        f"Target: {brief.get('target') or meta.get('target') or meta.get('target_new')}",
        f"User note: {brief.get('user_note', '')}",
        "",
        "Columns / structure:",
    ]
    for i, col in enumerate(brief.get("columns") or [], 1):
        w = col.get("weight", "?")
        name = col.get("name", f"col{i}")
        els = [f"{e.get('type')}:{e.get('id') or e.get('label') or '?'}" for e in col.get("elements") or []]
        lines.append(f"  {i}. {name} (weight={w}) → {', '.join(els) or '(auto)'}")
    return "\n".join(lines)
