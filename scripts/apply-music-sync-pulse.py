#!/usr/bin/env python3
"""Remove PDU hooks — music-sync drives bean.strenth / slider directly."""

from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
COMMAND_UTIL = (
    ROOT
    / "build/decompiled/smali_classes2/com/isaigu/gymapp/train/utils/CommandUtil.smali"
)

WITH_STRENGTH_PLAIN = """.method public static getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    .locals 6
    .param p0, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p1, "partsDisabled"    # [Z
    .param p2, "strenth"    # I

    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;"""

WITH_STRENGTH_HOOK = """.method public static getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    .locals 6
    .param p0, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p1, "partsDisabled"    # [Z
    .param p2, "strenth"    # I

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_music_sync_strength

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v5

    mul-int v5, p2, v5

    div-int/lit8 p2, v5, 0x64

    :cond_music_sync_strength
    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;"""

PARTS_PLAIN = """.method public static getPartsParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[B
    .locals 2
    .param p0, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p1, "partsDisabled"    # [Z

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B"""

PARTS_HOOK = """.method public static getPartsParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[B
    .locals 2
    .param p0, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p1, "partsDisabled"    # [Z

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_music_work_strength

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v1

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    :cond_music_work_strength
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B"""


def main() -> int:
    if not COMMAND_UTIL.is_file():
        raise SystemExit(f"CommandUtil.smali not found: {COMMAND_UTIL}")
    text = COMMAND_UTIL.read_text(encoding="utf-8")
    changed = False

    if WITH_STRENGTH_HOOK in text:
        text = text.replace(WITH_STRENGTH_HOOK, WITH_STRENGTH_PLAIN, 1)
        print("CommandUtil: removed music hook from getPartsParamsPduWithStrength")
        changed = True

    if PARTS_HOOK in text:
        text = text.replace(PARTS_HOOK, PARTS_PLAIN, 1)
        print("CommandUtil: removed music hook from getPartsParamsPdu")
        changed = True
    elif PARTS_PLAIN in text:
        print("CommandUtil: no PDU music hook (plain getPartsParamsPdu)")
    else:
        raise RuntimeError("CommandUtil.getPartsParamsPdu marker not found")

    if changed:
        COMMAND_UTIL.write_text(text, encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
