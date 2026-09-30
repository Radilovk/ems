#!/usr/bin/env python3
"""branding/exercises/library-src.json (all 302 exercises: names, steps, muscles, pattern) → library.json, the
library the tablet reads (assets/xems/library.json, ai/ExerciseLibrary). Adds what the app needs per exercise:
  pos   stand / machine / bench / floor (the order of a workout: not up and down),
  met   the movement's own cost (Compendium-style estimate by pattern; the 40 built-in ones keep their hand values),
  mus   work per suit channel 0–100 (target muscle 100, secondary 50; built-ins keep theirs),
  zone  the picker's group (Корем, Седалище, Бедра, Гръб, Гърди, Ръце, Рамене, Кардио, Разтягане),
  b     1 when its frames ship in the APK (exercises.json); the others are downloaded when the admin enables them.
Run after editing library-src.json or exercises.json; commit library.json.
"""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
EX = ROOT / "branding" / "exercises"

CH = {"гърди": 0, "корем": 1, "предно бедро": 2, "привеждащи": 2, "прасци": 3, "бицепс": 4, "трицепс": 4,
      "предмишници": 4, "рамене": 5, "горен гръб": 5, "широк гръбен": 6, "гръбнак": 7, "седалищни": 8,
      "задно бедро": 9}
MET = {"cardio": 7.0, "plyo": 8.0, "olympic": 6.0, "squat": 5.0, "lunge": 4.5, "hinge": 5.0, "carry": 4.5,
       "push_h": 3.8, "push_v": 3.5, "pull_h": 3.5, "pull_v": 3.8, "dip": 3.8, "glute": 3.2, "core_static": 3.0,
       "core_flex": 3.0, "core_rot": 3.0, "core_hip": 3.0, "back_ext": 2.8, "stretch": 2.3}
FLOOR = {"core_static", "core_flex", "core_rot", "core_hip", "back_ext", "glute", "abductor", "adductor", "stretch"}


def zone(e: dict) -> str:
    if e["cat"] == "mobility" or e["pat"] == "stretch":
        return "stretch"
    if e["cat"] in ("cardio", "plyometric"):
        return "cardio"
    t = e["tg"]
    return {"корем": "abs", "седалищни": "glutes", "предно бедро": "legs", "задно бедро": "legs", "прасци": "legs",
            "привеждащи": "legs", "широк гръбен": "back", "гръбнак": "back", "горен гръб": "back", "гърди": "chest",
            "рамене": "shoulders", "бицепс": "arms", "трицепс": "arms", "предмишници": "arms"}.get(t, "legs")


def pos(e: dict) -> str:
    if e["eq"] in ("силова машина", "кабел", "кардио тренажор"):
        return "machine"
    name = (e["bg"] + " " + e["en"]).lower()
    if "bench" in name or "лежанк" in name or "пейк" in name:
        return "bench"
    if e["pat"] in FLOOR or "lying" in name or "plank" in name or "push-up" in name or "pushup" in name:
        return "floor"
    return "stand"


def main() -> None:
    src = json.loads((EX / "library-src.json").read_text(encoding="utf-8"))
    built = {e["id"]: e for e in json.loads((EX / "exercises.json").read_text(encoding="utf-8"))["exercises"]}
    out = []
    for e in src["exercises"]:
        b = built.get(e["id"])
        if b:
            mus, met, p = b["mus"], b["met"], b["pos"]
        else:
            mus = [0] * 10
            for s in e.get("sec", []):
                if s in CH:
                    mus[CH[s]] = max(mus[CH[s]], 50)
            if e["tg"] in CH:
                mus[CH[e["tg"]]] = 100
            met = MET.get(e["pat"], 3.0)
            if e["eq"] in ("щанга", "силова машина", "кабел") and e["pat"] in ("squat", "hinge", "lunge"):
                met += 0.5
            p = pos(e)
        out.append({"id": e["id"], "bg": e["bg"], "en": e["en"], "eq": e["eq"], "tg": e["tg"], "sec": e.get("sec", []),
                    "type": e["type"], "diff": e["diff"], "zone": zone(e), "pos": p, "met": met, "mus": mus,
                    "how": e["how"], "howEn": e.get("howEn", ""), "vb": e["vb"], "n": e["n"], "b": 1 if b else 0})
    missing = set(built) - {e["id"] for e in out}
    assert not missing, missing
    lib = {"source": src["source"], "frames": src["frames"], "exercises": out}
    (EX / "library.json").write_text(json.dumps(lib, ensure_ascii=False, separators=(",", ":")), encoding="utf-8")
    zones = {}
    for e in out:
        zones[e["zone"]] = zones.get(e["zone"], 0) + 1
    print(f"library.json: {len(out)} exercises ({sum(e['b'] for e in out)} built in), zones {zones}")


if __name__ == "__main__":
    main()
