#!/usr/bin/env python3
"""Inject music-sync strength at PDU build time (same path as real EMS impulses)."""

from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
COMMAND_UTIL = (
    ROOT
    / "build/decompiled/smali_classes2/com/isaigu/gymapp/train/utils/CommandUtil.smali"
)

MARKER = """.method public static getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    .locals 6
    .param p0, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p1, "partsDisabled"    # [Z
    .param p2, "strenth"    # I

    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;"""

HOOK = """.method public static getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    .locals 6
    .param p0, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p1, "partsDisabled"    # [Z
    .param p2, "strenth"    # I

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_music_sync_strength

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result p2

    :cond_music_sync_strength
    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;"""


def main() -> int:
    if not COMMAND_UTIL.is_file():
        raise SystemExit(f"CommandUtil.smali not found: {COMMAND_UTIL}")
    text = COMMAND_UTIL.read_text(encoding="utf-8")
    if "MusicSync;->getLiveStrength()I" in text:
        print("CommandUtil: music-sync PDU hook already applied")
        return 0
    if MARKER not in text:
        raise RuntimeError("CommandUtil.getPartsParamsPduWithStrength marker not found")
    COMMAND_UTIL.write_text(text.replace(MARKER, HOOK, 1), encoding="utf-8")
    print("CommandUtil: music-sync replaces PDU strength when mic sync is active")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
