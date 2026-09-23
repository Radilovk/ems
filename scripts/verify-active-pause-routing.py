#!/usr/bin/env python3
"""Verify master slider and +/- routing stay aligned for active pause."""

from __future__ import annotations

import os
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = Path(os.environ.get("DECOMPILED", ROOT / "build" / "decompiled"))
TRAIN_ITEM = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/model/TrainItem.smali"
)
TRAIN_ITEM_MANAGER = (
    DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainItemManager.smali"
)
SLIDER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainViewHolder$4.smali"
TRAIN_VIEW_HOLDER = DECOMPILED / "smali_classes2/com/isaigu/gymapp/train/TrainViewHolder.smali"
MASTER_STRENGTH_CONTROL = (
    DECOMPILED
    / "smali_classes2/com/isaigu/gymapp/train/utils/MasterStrengthControl.smali"
)

ROUTES = (
    "pause_ma",
    "pause_hz",
    "hz",
    "ma",
    "coupled",
    "main",
)


def scale_pause(main_old: int, pause_old: int, main_new: int) -> int:
    if main_new == 0:
        return 0
    if main_old > 0:
        if pause_old == 0:
            pause_new = main_new
        else:
            pause_new = (main_new * pause_old + main_old // 2) // main_old
    elif pause_old == 0:
        pause_new = main_new
    else:
        pause_new = pause_old
    return max(0, min(100, pause_new))


def route_plus_minus(
    pause_ma: bool,
    pause_hz: bool,
    hz: bool,
    ma: bool,
    active_pause: bool,
) -> str:
    if pause_ma:
        return "noop" if not active_pause else "pause_ma"
    if pause_hz:
        return "noop" if not active_pause else "pause_hz"
    if hz:
        return "hz"
    if ma:
        return "ma"
    if active_pause:
        return "coupled"
    return "main"


def route_slider(
    pause_ma: bool,
    pause_hz: bool,
    hz: bool,
    ma: bool,
    active_pause: bool,
) -> str:
    if pause_ma:
        return "noop" if not active_pause else "pause_ma"
    if pause_hz:
        return "noop" if not active_pause else "pause_hz"
    if hz:
        return "hz"
    if ma:
        return "main"
    if active_pause:
        return "coupled"
    return "main"


def check_smali() -> list[str]:
    errors: list[str] = []
    if not TRAIN_ITEM.exists():
        return ["TrainItem.smali missing"]
    if not TRAIN_ITEM_MANAGER.exists():
        return ["TrainItemManager.smali missing"]
    if not SLIDER.exists():
        return ["TrainViewHolder$4.smali missing"]
    if not MASTER_STRENGTH_CONTROL.exists():
        return ["MasterStrengthControl.smali missing"]

    item = TRAIN_ITEM.read_text(encoding="utf-8")
    manager = TRAIN_ITEM_MANAGER.read_text(encoding="utf-8")
    slider = SLIDER.read_text(encoding="utf-8")

    slider_match = re.search(
        r"\.method public setMainAndPauseStrenthFromSlider\(I\)V.*?\.end method",
        item,
        flags=re.DOTALL,
    )
    if not slider_match:
        errors.append("setMainAndPauseStrenthFromSlider missing")
    else:
        slider_body = slider_match.group(0)
        if "sendPulse()V" in slider_body:
            errors.append("setMainAndPauseStrenthFromSlider must not call sendPulse (slider uses onItemChange)")
        if ":cond_scale_pause" not in slider_body:
            errors.append("setMainAndPauseStrenthFromSlider missing zero-pause coupled bootstrap")

    coupled_body = item.split("addMainAndPauseStrenth(I)V", 1)[-1].split(".end method", 1)[0]
    if "sendPulse()V" not in coupled_body:
        errors.append("addMainAndPauseStrenth must call sendPulse for +/- controls")
    if "setMainAndPauseStrenthFromSlider(I)V" not in coupled_body:
        errors.append("addMainAndPauseStrenth must delegate to setMainAndPauseStrenthFromSlider")
    if not TRAIN_VIEW_HOLDER.exists():
        errors.append("TrainViewHolder.smali missing")
    else:
        holder = TRAIN_VIEW_HOLDER.read_text(encoding="utf-8")
        display_hz = holder.split("updatePauseHzDisplay()V", 1)[-1].split(".end method", 1)[0]
        if ":cond_yellow" in display_hz and "setMaSelected(Z)V" in display_hz.split(":cond_yellow", 1)[1].split(
            ":cond_black", 1
        )[0]:
            errors.append("updatePauseHzDisplay must not clear maSelected in yellow mode")

    lambda_body = manager.split("lambda$addAllPartValue$6", 1)[-1].split(".end method", 1)[0]
    markers = (
        "isPauseMaSelected()Z",
        "isPauseHzSelected()Z",
        "isHzSelected()Z",
        "isMaSelected()Z",
        "addMainAndPauseStrenth(I)V",
    )
    positions = [lambda_body.find(marker) for marker in markers]
    if any(pos < 0 for pos in positions) or positions != sorted(positions):
        errors.append("lambda$addAllPartValue$6 routing order is wrong")

    on_changed_end = slider.split("onChangedEnd", 1)[1].split(".end method", 1)[0]
    if ":cond_pause_ma_active" not in on_changed_end or ":cond_pause_hz_active" not in on_changed_end:
        errors.append("slider onChangedEnd missing pause no-op guards")
    if "if-nez v1, :cond_pause_ma_end" in on_changed_end:
        errors.append("slider pause MA still falls through when activePause is off")
    if "if-nez v1, :cond_pause_hz_end" in on_changed_end:
        errors.append("slider pause Hz still falls through when activePause is off")
    if "setMainAndPauseStrenthFromSlider(I)V" not in on_changed_end:
        errors.append("slider missing coupled setter call")

    slider_markers = (
        "isPauseMaSelected()Z",
        "isPauseHzSelected()Z",
        "isHzSelected()Z",
        "isMaSelected()Z",
        "setMainAndPauseStrenthFromSlider(I)V",
    )
    slider_positions = [on_changed_end.find(marker) for marker in slider_markers]
    if any(pos < 0 for pos in slider_positions) or slider_positions != sorted(slider_positions):
        errors.append("slider onChangedEnd routing order is wrong")

    master = MASTER_STRENGTH_CONTROL.read_text(encoding="utf-8")
    ensure_body = master.split(
        ".method public static ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V",
        1,
    )[-1].split(".end method", 1)[0]
    if "activePause:Z" not in ensure_body:
        errors.append("MasterStrengthControl.ensureMaMode missing activePause guard")
    else:
        active_pause_head = ensure_body.split("activePause:Z", 1)[1].split(
            "setMaSelected(Z)V", 1
        )[0]
        legacy_guard = "if-nez v0, :goto_13" in active_pause_head
        early_return_guard = (
            "if-eqz v0," in active_pause_head
            and "return-void" in active_pause_head
        )
        if not legacy_guard and not early_return_guard and not branches_to_return(
            ensure_body, active_pause_head
        ):
            errors.append(
                "MasterStrengthControl.ensureMaMode must skip MA mode when activePause is on"
            )
        if "if-eqz v0, :cond_do_ma" in active_pause_head:
            errors.append("MasterStrengthControl.ensureMaMode activePause branch is inverted")

    release_body = master.split("releaseMaModeForActivePause()V", 1)[-1].split(
        ".end method", 1
    )[0]
    if "setMaSelected(Z)V" not in release_body:
        errors.append("MasterStrengthControl.releaseMaModeForActivePause must clear maSelected")

    return errors


def branches_to_return(body: str, head: str) -> bool:
    """dx form: `if-nez v0, :label` where the label's block is just `return-void`."""
    match = re.search(r"if-nez v0, (:\w+)", head)
    if not match:
        return False
    lines = body.split("\n")
    for i, line in enumerate(lines):
        if line.strip() != match.group(1):
            continue
        for follow in lines[i + 1:]:
            stripped = follow.strip()
            if not stripped or stripped.startswith((":", ".line")):
                continue
            return stripped == "return-void"
    return False


def check_routing_matrix() -> list[str]:
    errors: list[str] = []
    scenarios = [
        (True, False, False, False, True, "pause_ma"),
        (True, False, False, False, False, "noop"),
        (False, True, False, False, True, "pause_hz"),
        (False, True, False, False, False, "noop"),
        (False, False, True, False, True, "hz"),
        (False, False, True, False, False, "hz"),
        (False, False, False, True, True, "ma"),
        (False, False, False, True, False, "ma"),
        (False, False, False, False, True, "coupled"),
        (False, False, False, False, False, "main"),
        (False, False, True, True, True, "hz"),
        (True, False, False, True, True, "pause_ma"),
    ]
    for pause_ma, pause_hz, hz, ma, active_pause, expected_pm in scenarios:
        state = (pause_ma, pause_hz, hz, ma, active_pause)
        pm = route_plus_minus(*state)
        sl = route_slider(*state)
        if pm != expected_pm:
            errors.append(f"+/- routing mismatch for {state}: got {pm}, expected {expected_pm}")
        slider_expected = "main" if expected_pm == "ma" else expected_pm
        if sl != slider_expected:
            errors.append(
                f"slider routing mismatch for {state}: got {sl}, expected {slider_expected}"
            )
        if pm == "noop" and sl != "noop":
            errors.append(f"slider should no-op when +/- no-ops: state={state}")
    return errors


def check_coupled_math() -> list[str]:
    errors: list[str] = []
    cases = [
        (40, 20, 50, 25),
        (60, 30, 90, 45),
        (0, 0, 35, 35),
        (0, 25, 40, 25),
        (80, 10, 100, 13),
        (50, 0, 55, 55),
        (30, 0, 31, 31),
    ]
    for main_old, pause_old, main_new, expected in cases:
        got = scale_pause(main_old, pause_old, main_new)
        if got != expected:
            errors.append(
                f"coupled scale mismatch main {main_old}->{main_new}, pause {pause_old}: got {got}, expected {expected}"
            )
    return errors


def main() -> int:
    errors = check_smali() + check_routing_matrix() + check_coupled_math()
    if errors:
        print("Active pause routing check FAILED:", file=sys.stderr)
        for line in errors:
            print(f"  - {line}", file=sys.stderr)
        return 1
    print("Active pause routing check passed (slider/+/- aligned, coupled math OK).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
