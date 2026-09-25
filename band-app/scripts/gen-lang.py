#!/usr/bin/env python3
"""Make the English band app from the Bulgarian source: copy the project, replace every
Bulgarian phrase from scripts/en.json (longest first), set APP_LANG = 'en', and stop when any
Cyrillic is left outside comments. Usage: gen-lang.py <out-dir>"""
import json
import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CYR = re.compile(r"[А-Яа-я]")


def strip_comments(s: str) -> str:
    s = re.sub(r"/\*.*?\*/", "", s, flags=re.S)
    s = re.sub(r"<!--.*?-->", "", s, flags=re.S)
    return re.sub(r"(?m)(^|\s)//.*$", "", s)


def main() -> None:
    out = Path(sys.argv[1]).resolve()
    if out.exists():
        shutil.rmtree(out)
    shutil.copytree(ROOT / "src", out / "src")
    for f in ("package.json", "package-lock.json"):
        shutil.copy2(ROOT / f, out / f)
    words = json.loads((ROOT / "scripts" / "en.json").read_text(encoding="utf-8"))
    keys = sorted(words, key=len, reverse=True)
    left = []
    for p in list((out / "src").rglob("*.ux")) + list((out / "src").rglob("*.js")):
        s = p.read_text(encoding="utf-8")
        for k in keys:
            s = s.replace(k, words[k])
        s = s.replace("const APP_LANG = 'bg'", "const APP_LANG = 'en'")
        p.write_text(s, encoding="utf-8")
        for line in strip_comments(s).splitlines():
            if CYR.search(line):
                left.append(f"{p.relative_to(out)}: {line.strip()}")
    if left:
        raise SystemExit("gen-lang: untranslated Bulgarian left:\n  " + "\n  ".join(left))
    print(f"gen-lang: English project in {out}")


if __name__ == "__main__":
    main()
