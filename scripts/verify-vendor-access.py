#!/usr/bin/env python3
"""Fail the build when app smali reads a field or calls a method it may not reach from its own package.

javac checks access against branding/java-stubs, and a stub can say "public" where the app's class has a
package-private member (NewTrainFragment.manager, 1.1.362). On the tablet the access then throws
IllegalAccessError — usually inside a try/catch, so the feature silently does nothing. This compares every
com.isaigu.gymapp member reference with the real declaration in build/decompiled (or a directory given as argument).
Protected members and members not declared on the named class (inherited) are not judged.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
REF = re.compile(r"L(com/isaigu/gymapp/[\w/$]+);->([\w$<>]+)(:[^\s,}]+|\([^)]*\)\S+)")
CLASS = re.compile(r"^\.class [^\n]*?L([\w/$]+);", re.M)
FIELD = re.compile(r"^\.field ([a-z ]*?)([\w$]+):(\S+)", re.M)
METHOD = re.compile(r"^\.method ([a-z ]*?)([\w$<>]+)(\([^)]*\)\S+)", re.M)


def main() -> int:
    roots = [Path(a) for a in sys.argv[1:]] or list((ROOT / "build" / "decompiled").glob("smali*"))
    texts: dict[str, str] = {}
    members: dict[tuple[str, str], str] = {}
    for d in roots:
        for f in d.rglob("*.smali"):
            t = f.read_text(encoding="utf-8", errors="replace")
            m = CLASS.search(t)
            if not m:
                continue
            cls = m.group(1)
            texts[cls] = t
            for flags, name, typ in FIELD.findall(t):
                members[(cls, name + ":" + typ)] = flags
            for flags, name, sig in METHOD.findall(t):
                members[(cls, name + sig)] = flags
    bad = []
    for cls, t in texts.items():
        if not cls.startswith("com/isaigu/gymapp/"):
            continue
        pkg = cls.rsplit("/", 1)[0]
        for target, name, rest in set(REF.findall(t)):
            if target == cls or target.rsplit("/", 1)[0] == pkg:
                continue
            flags = members.get((target, name + rest))
            if flags is None or "public" in flags or "protected" in flags:
                continue
            bad.append(f"  {cls} -> {target}.{name}{rest} ({flags.strip() or 'package-private'})")
    if bad:
        print("verify-vendor-access: members not reachable from the calling package (IllegalAccessError on the tablet):")
        print("\n".join(sorted(bad)))
        return 1
    print(f"verify-vendor-access: OK ({len(texts)} classes)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
