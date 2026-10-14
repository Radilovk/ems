#!/usr/bin/env python3
"""Bluetens programs → branding/bluetens/programs.json (shipped as assets/xems/bluetens.json by apply-exercise-assets.py).

Owner, 2026-10-14: every program of the native Bluetens app in XEMS, by body part, without the vendor app installed.
Input: the unpacked vendor APK's assets/www (Bluetens 7.0.105, APKPure — not kept in the repo):
  assets/i18n/scriptfile.json   FileName → Category_Id, Mode_Id, Master_Id, BodyParts  (what the app lists)
  assets/i18n/light.json        long variants (FEI_PFI_TH_30min…) of listed programs (relatedWithFile = scriptfile Id)
  assets/i18n/<bg|en>/master.json, cat.json, ui.json   names, descriptions, categories, body-part names
  assets/lok/<FileName>.lok     the programs themselves (checked by lok.py; played byte for byte)
Usage: python3 scripts/bluetens/import-vendor.py <path/to/assets/www>
"""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "branding" / "bluetens" / "programs.json"
sys.path.insert(0, str(Path(__file__).resolve().parent))
import lok as lokmod  # noqa: E402

# head → feet: the order of the body chips
PART_ORDER = ["shoulder", "upper_back", "pectorals", "upper_arm", "elbow", "forearm", "wrist", "back", "abdomen",
              "lower_back", "buttock", "perineum", "thigh", "knee", "calf", "ankle", "foot"]
PERINEUM = ("Тазово дъно", "Pelvic floor")
# what the vendor's bg files leave in English
CAT_BG = {"pelvic_pain": "Тазова болка", "incontinence": "Инконтиненция"}
MASTER_BG = {"menstrual_pain_1": "Менструална болка 1", "menstrual_pain_2": "Менструална болка 2",
             "menstrual_pain_3": "Менструална болка 3"}
# the short core exercises (no master in the catalog): name, level, and the belly as their part
EXERCISE = {"crunch": ("Коремни преси", "Crunches"), "leg_lift": ("Повдигане на крака", "Leg lifts"),
            "jack_knife": ("Джакнайф", "Jackknife"), "s_abd": ("Странични коремни", "Side abs"),
            "armouring": ("Планк", "Plank")}


def load(p: Path):
    return json.loads(p.read_text(encoding="utf-8"))


def clean(s):
    if not isinstance(s, str):
        return ""
    return re.sub(r"\s+\n", "\n", s.replace("\r\n", "\n").replace("\r", "\n")).strip()


def main() -> int:
    if len(sys.argv) != 2:
        print(__doc__)
        return 2
    www = Path(sys.argv[1])
    i18n = www / "assets" / "i18n"
    lokdir = www / "assets" / "lok"
    script = load(i18n / "scriptfile.json")
    light = load(i18n / "light.json")
    tr = {lang: {} for lang in ("bg", "en")}
    for lang in tr:
        for f in ("master.json", "cat.json", "ui.json"):
            tr[lang].update({k: v for k, v in load(i18n / lang / f).items() if isinstance(v, str)})

    def both(key, fallback=""):
        bg = tr["bg"].get(key) or tr["en"].get(key) or fallback
        en = tr["en"].get(key) or bg
        return [clean(bg), clean(en)]

    masters, cats, parts, programs = {}, {}, {}, []
    by_id = {}

    def add(file, entry, suffix=None):
        src = lokdir / f"{file}.lok"
        if not src.is_file():
            return False
        text = src.read_text(encoding="ascii").strip()
        lok = lokmod.parse(text)                                    # raises on anything our parser does not take
        m = entry.get("Master_Id") or ""
        c = entry.get("Category_Id") or ""
        if m and m not in masters:
            masters[m] = {"n": both(f"master.{m}.Name", m), "d": both(f"master.{m}.Description")}
            if m in MASTER_BG:
                masters[m]["n"][0] = MASTER_BG[m]
        if c and c not in cats:
            cats[c] = both(f"cat.{c}.Name", c)
            if c in CAT_BG:
                cats[c][0] = CAT_BG[c]
        bp = [b for b in entry.get("BodyParts", []) if b]
        ex = re.match(r"^([a-z_]+?)_(\d+)(s?)$", file)
        if not m and ex and ex.group(1) in EXERCISE:
            bp = bp or ["abdomen"]
            n = EXERCISE[ex.group(1)]
            lvl = ex.group(2) + " s" if ex.group(3) else str(int(ex.group(2)) // 10)
            suffix = suffix or ((f"{lvl}", f"{lvl}") if ex.group(3) else (f"ниво {lvl}", f"level {lvl}"))
            m = "x_" + ex.group(1)
            if m not in masters:
                masters[m] = {"n": [n[0], n[1]], "d": ["", ""]}
        for b in bp:
            if b not in parts:
                parts[b] = list(PERINEUM) if b == "perineum" else both(f"bodypart.{b}", b)
        name = masters[m]["n"] if m else [file.replace("_", " ").capitalize()] * 2
        if suffix:
            name = [name[0] + " · " + suffix[0], name[1] + " · " + suffix[1]]
        programs.append({"f": file, "c": c, "m": m, "mode": entry.get("Mode_Id", ""), "n": name, "b": bp,
                         "s": round(lok.ms() / 1000), "lok": text})
        return True

    for e in script:
        by_id[str(e.get("Id"))] = e
        add(e["FileName"], e)
    seen = {p["f"] for p in programs}
    for e in light.get("files", []):
        f = e.get("file")
        rel = by_id.get(str(e.get("relatedWithFile")))
        mm = re.search(r"_(\d+)min$", f or "")
        if not f or f in seen or rel is None:
            continue
        mins = mm.group(1) if mm else ""
        add(f, rel, (f"{mins} мин", f"{mins} min") if mins else None)
        seen.add(f)

    order = {b: i for i, b in enumerate(PART_ORDER)}
    data = {
        "source": "Bluetens 7.0.105 (assets/lok + assets/i18n), scripts/bluetens/import-vendor.py",
        "parts": [[b] + parts[b] for b in sorted(parts, key=lambda b: order.get(b, 99))],
        "cats": [[c] + cats[c] for c in cats],
        "masters": masters,
        "programs": programs,
    }
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(data, ensure_ascii=False, separators=(",", ":")), encoding="utf-8")
    print(f"{OUT.relative_to(ROOT)}: {len(programs)} programs, {len(parts)} body parts, {len(cats)} categories, "
          f"{OUT.stat().st_size // 1024} KB")
    return 0


if __name__ == "__main__":
    sys.exit(main())
