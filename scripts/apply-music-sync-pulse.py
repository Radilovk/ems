#!/usr/bin/env python3
"""Inject music-sync strength at PDU build time (slider ceiling * music ratio)."""

from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
COMMAND_UTIL = (
    ROOT
    / "build/decompiled/smali_classes2/com/isaigu/gymapp/train/utils/CommandUtil.smali"
)

METHOD_HEAD = """.method public static getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    .locals 6
    .param p0, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p1, "partsDisabled"    # [Z
    .param p2, "strenth"    # I

"""

HOOK_BODY = """    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_music_sync_strength

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v5

    mul-int v5, p2, v5

    div-int/lit8 p2, v5, 0x64

    :cond_music_sync_strength
"""

PLAIN_HEAD = METHOD_HEAD + "    .line 17\n    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;"

OLD_REPLACE_HEAD = METHOD_HEAD + """    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_music_sync_strength

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result p2

    :cond_music_sync_strength
    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;"""

NEW_HEAD = METHOD_HEAD + HOOK_BODY + "    .line 17\n    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;"


def main() -> int:
    if not COMMAND_UTIL.is_file():
        raise SystemExit(f"CommandUtil.smali not found: {COMMAND_UTIL}")
    text = COMMAND_UTIL.read_text(encoding="utf-8")
    if "div-int/lit8 p2, v5, 0x64" in text and "MusicSync;->getLiveStrength()I" in text:
        print("CommandUtil: music-sync slider-ceiling PDU hook already applied")
        return 0
    if OLD_REPLACE_HEAD in text:
        text = text.replace(OLD_REPLACE_HEAD, NEW_HEAD, 1)
        print("CommandUtil: upgraded music-sync hook to slider ceiling * music ratio")
    elif PLAIN_HEAD in text:
        text = text.replace(PLAIN_HEAD, NEW_HEAD, 1)
        print("CommandUtil: music-sync slider-ceiling PDU hook applied")
    else:
        raise RuntimeError("CommandUtil.getPartsParamsPduWithStrength marker not found")
    COMMAND_UTIL.write_text(text, encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
