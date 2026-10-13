#!/usr/bin/env python3
"""Rename the product in one go: the name lives in branding/brand.json ("name" = the short brand shown in texts,
"app_name" = the launcher label, read by apply-languages.py at build time).

    python3 scripts/rebrand.py "NewName" ["New App Label"]   # shows every change (dry run)
    python3 scripts/rebrand.py "NewName" ["New App Label"] --write

Only what a person reads changes: Java string literals, translations, the report / card pages, the band app's
texts, the server's pages. Technical tokens keep the old spelling so stored data, prefs keys, file folders and
license keys stay valid: XEMS_*, __XEMS*, XEMS-Android, XEMS-XXXX (key format), /XEMS/ folders, .XEMS members,
lowercase xems (package names, ids, URLs). After --write: bump RELEASE_VERSION (+ band versions if band-app
changed), rebuild the APK and both .rpk, and run the tests listed in CLAUDE.md.
"""
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
BRAND = ROOT / "branding" / "brand.json"

# (directory, file globs, literals_only) — literals_only: change only inside "…" (code); else the whole text
TARGETS = [
    ("branding/java/src", ["**/*.java"], True),
    ("translations", ["**/*.xml"], False),
    ("branding/report", ["*.html"], False),
    ("band-app/src", ["**/*.ux", "**/*.js", "**/*.json"], True),
    ("server/src", ["*.js", "*.html"], True),
]

# names that are not the product: the suit standard of the hardware, the band auth device name, the local
# operator account stored in the database — renaming them would change behaviour, not branding
SKIP = {
    "branding/java/src/com/isaigu/gymapp/bodytech/SuitStandard.java",
    "branding/java/src/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient.java",
    "branding/java/src/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages.java",
    "branding/java/src/com/isaigu/gymapp/widget/XemsLocalGate.java",
}

JAVA_STR = re.compile(r'"(?:[^"\\\n]|\\.)*"')


def token_re(old: str) -> re.Pattern:
    # a whole word, not glued to an identifier, a path, a member access or a key/UA suffix
    return re.compile(r"(?<![A-Za-z0-9_./\-])" + re.escape(old) + r"(?![A-Za-z0-9_/\-])")


def rewrite(text: str, pairs, literals_only: bool):
    def sub_all(s: str) -> str:
        for rx, new in pairs:
            s = rx.sub(new, s)
        return s

    if not literals_only:
        return sub_all(text)
    return JAVA_STR.sub(lambda m: sub_all(m.group(0)), text)


def main() -> int:
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    write = "--write" in sys.argv
    if not args:
        print(__doc__)
        return 2
    cur = json.loads(BRAND.read_text(encoding="utf-8"))
    new_name = args[0].strip()
    new_app = (args[1] if len(args) > 1 else new_name).strip()
    pairs = []
    if cur["app_name"] != new_app:
        pairs.append((re.compile(re.escape(cur["app_name"])), new_app))
    if cur["name"] != new_name:
        pairs.append((token_re(cur["name"]), new_name))
    changed = 0
    for base, globs, lit in TARGETS:
        for g in globs:
            for p in sorted((ROOT / base).glob(g)):
                if str(p.relative_to(ROOT)) in SKIP:
                    continue
                old = p.read_text(encoding="utf-8")
                new = rewrite(old, pairs, lit)
                if new == old:
                    continue
                changed += 1
                for i, (a, b) in enumerate(zip(old.splitlines(), new.splitlines()), 1):
                    if a != b:
                        print(f"{p.relative_to(ROOT)}:{i}: {b.strip()[:140]}")
                if write:
                    p.write_text(new, encoding="utf-8")
    if write:
        BRAND.write_text(json.dumps({"name": new_name, "app_name": new_app}, ensure_ascii=False, indent=2) + "\n",
                         encoding="utf-8")
    print(f"{changed} files {'changed' if write else 'would change'}; brand.json "
          f"{'updated' if write else 'unchanged (dry run, add --write)'}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
