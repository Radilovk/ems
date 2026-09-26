#!/usr/bin/env python3
"""Token-cheap navigation for agents: generated repo map + per-file outline.

  python3 scripts/repo-map.py            # (re)write .claude/MAP.md
  python3 scripts/repo-map.py --check    # exit 1 if .claude/MAP.md is stale
  python3 scripts/repo-map.py outline FILE...   # symbols with line numbers (java/py/js/mjs/ux/sh/md/yaml)

MAP.md is meant to be grepped, not read whole: every entry is one line that
carries its path, size and purpose, so `grep -i <concept> .claude/MAP.md`
answers "where is X" without touching the sources.
"""
from __future__ import annotations

import ast
import fnmatch
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
MAP = ROOT / ".claude" / "MAP.md"


def rel(p: Path) -> str:
    return p.relative_to(ROOT).as_posix()


def read(p: Path) -> str:
    return p.read_text(encoding="utf-8", errors="replace")


def nlines(p: Path) -> int:
    return read(p).count("\n") + 1


def clip(s: str, n: int = 120) -> str:
    s = " ".join(s.split())
    return s if len(s) <= n else s[: n - 1] + "…"


# ---------------------------------------------------------------- purposes

# Files without a usable header comment. Keep short; prefer adding a header to the file itself.
NOTES = {
    "band-app/src/manifest.json": "band app id, versionName/versionCode (must match app.ux APP_VERSION + BandAppInstall.VERSION), page list",
    "band-app/src/pages/ai/index.ux": "band screen: Smart Session (AI) — live HR, strength, double impulse, hold-to-stop",
    "band-app/src/pages/music/index.ux": "band screen: music remote — play/pause, prev/next, impulse ceiling",
    "band-app/src/pages/pulse/index.ux": "band screen: heart rate, auto control on/off, last 3 minutes chart",
    "band-app/src/pages/summary/index.ux": "band screen: session summary after training",
    "band-app/src/pages/timer/index.ux": "band screen: interval timer remote",
    "server/src/index.js": "Worker entry: routes /v1/license/activate|refresh, /v1/app/update, releases, admin API, rate limits",
    "server/src/admin.js": "admin panel HTML/JS (licenses, suits/MAC, APK releases)",
}

def py_purpose(p: Path) -> str:
    try:
        d = ast.get_docstring(ast.parse(read(p)))
    except SyntaxError:
        d = None
    return clip(d.strip().split("\n\n")[0]) if d else sh_purpose(p)


def sh_purpose(p: Path) -> str:
    for line in read(p).splitlines()[:12]:
        if line.startswith("#!") or not line.startswith("#"):
            continue
        t = line.lstrip("#").strip()
        if t and not t.startswith("-*-"):
            return clip(t)
    return ""


def doc_comment(p: Path) -> str:
    """First /** … */ or // block in a java/js file (skipping license-ish noise)."""
    if rel(p) in NOTES:
        return NOTES[rel(p)]
    text = read(p)
    # a header only: before the first type declaration (java) or in the first 15 lines (js/ux)
    decl = re.search(r"^(?:public |final |abstract )*(?:class|interface|enum) ", text, re.M) if p.suffix == ".java" else None
    head = text[: decl.start()] if decl else "\n".join(text.splitlines()[:15])
    m = re.search(r"/\*\*(.*?)\*/", head, re.S)
    if m:
        body = " ".join(l.strip().lstrip("*").strip() for l in m.group(1).splitlines())
        body = re.split(r"(?<=[.!?])\s", body.strip(), maxsplit=1)[0]
        if body:
            return clip(body)
    for line in head.splitlines()[:15]:
        s = line.strip()
        if s.startswith("//") or s.startswith("<!--"):
            return clip(s.lstrip("/ ").removeprefix("<!--").removesuffix("-->").strip())
    return ""


# ---------------------------------------------------------------- outline

JAVA_TYPE = re.compile(r"^\s*(?:(?:public|private|protected|static|final|abstract)\s+)*(class|interface|enum)\s+(\w+)")
JAVA_METHOD = re.compile(
    r"^\s+(?:(?:public|private|protected|static|final|synchronized|abstract|native)\s+)*"
    r"(?:<[^>]+>\s+)?[\w<>\[\],.? ]+?\s+(\w+)\s*\([^;{]*\)?\s*(?:throws [\w., ]+)?\s*\{?\s*$"
)
JS_FUNC = re.compile(
    r"^\s*(?:export\s+)?(?:default\s+)?(?:async\s+)?(?:function\s*\*?\s*(\w+)\s*\(|(\w+)\s*\([^)]*\)\s*\{\s*$"
    r"|(?:const|let|var)\s+(\w+)\s*=\s*(?:async\s*)?(?:function|\([^)]*\)\s*=>|\w+\s*=>))"
)
NOT_METHOD = {"if", "for", "while", "switch", "catch", "return", "new", "else", "synchronized", "try", "do"}


def outline(p: Path) -> list[str]:
    ext = p.suffix.lower()
    lines = read(p).splitlines()
    out: list[str] = []
    if ext == ".py":
        try:
            tree = ast.parse("\n".join(lines))
        except SyntaxError:
            return ["(syntax error)"]
        for node in ast.walk(tree):
            if isinstance(node, (ast.FunctionDef, ast.AsyncFunctionDef, ast.ClassDef)):
                kind = "class" if isinstance(node, ast.ClassDef) else "def"
                out.append((node.lineno, f"L{node.lineno}-{node.end_lineno} {kind} {node.name}"))
        # module-level CONSTANT = … markers are how apply-*.py scripts hold smali snippets
        for node in tree.body:
            if isinstance(node, ast.Assign) and all(isinstance(t, ast.Name) and t.id.isupper() for t in node.targets):
                out.append((node.lineno, f"L{node.lineno}-{node.end_lineno} const {node.targets[0].id}"))
        return [s for _, s in sorted(out)]
    if ext == ".java":
        for i, l in enumerate(lines, 1):
            m = JAVA_TYPE.match(l)
            if m:
                out.append(f"L{i} {m.group(1)} {m.group(2)}")
                continue
            m = JAVA_METHOD.match(l)
            if m and m.group(1) not in NOT_METHOD and "=" not in l.split("(")[0] and not l.strip().startswith(("return", "new ", "else")):
                out.append(f"L{i} {clip(l.strip().rstrip('{').strip(), 110)}")
        return out
    if ext in (".js", ".mjs", ".ux"):
        for i, l in enumerate(lines, 1):
            if ext == ".ux" and re.match(r"^\s*</?(template|script|style)\b", l):
                out.append(f"L{i} {l.strip()}")
                continue
            m = JS_FUNC.match(l)
            if m:
                name = next(g for g in m.groups() if g)
                if name not in NOT_METHOD:
                    out.append(f"L{i} {name}")
        return out
    if ext == ".sh":
        for i, l in enumerate(lines, 1):
            if re.match(r"^\s*(?:function\s+)?\w+\s*\(\)\s*\{", l) or re.match(r"^\s*(if|else|elif|fi)\b", l) or "scripts/" in l and not l.lstrip().startswith("#"):
                out.append(f"L{i} {clip(l.strip(), 110)}")
        return out
    if ext == ".md":
        fence = False
        for i, l in enumerate(lines, 1):
            if l.startswith("```"):
                fence = not fence
            elif not fence and re.match(r"^#{1,4} ", l):
                out.append(f"L{i} {l.strip()}")
        return out
    if ext in (".yaml", ".yml"):
        for i, l in enumerate(lines, 1):
            if re.match(r"^( {0,2})[\w.-]+:", l):
                out.append(f"L{i} {l.rstrip()}")
        return out
    return [f"(no outliner for {ext}; {len(lines)} lines)"]


# ---------------------------------------------------------------- map sections

def build_refs() -> dict[str, str]:
    """scripts/<rel> -> "L<n>" or "L<n>[GATE,…]" for its first call in build-apk.sh."""
    refs: dict[str, str] = {}
    cond: list[str] = []
    for i, l in enumerate(read(ROOT / "build-apk.sh").splitlines(), 1):
        s = l.strip()
        if s.startswith("if "):
            v = re.findall(r"\$\{(\w+)", s)
            cond.append(v[0] if v else "")
        elif s == "else" and cond:
            cond[-1] = "!" + cond[-1] if cond[-1] else ""
        elif s == "fi" and cond:
            cond.pop()
        if s.startswith(("#", "echo")):
            continue
        for m in re.finditer(r"scripts/([\w./-]+\.(?:py|sh))", s):
            gate = ",".join(c for c in cond if c)
            refs.setdefault(m.group(1), f"L{i}" + (f"[{gate}]" if gate else ""))
    return refs


def compile_owners() -> dict[str, list[str]]:
    """basename.java -> compile scripts that list it (explicitly or via -name glob)."""
    owners: dict[str, list[str]] = {}
    javas = sorted((ROOT / "branding/java/src").rglob("*.java"))
    for sh in sorted((ROOT / "scripts").glob("compile-*-java.sh")):
        text = read(sh)
        short = sh.name.replace("compile-", "").replace("-java.sh", "")
        globs = re.findall(r"-name '([^']+\.java)'", text)
        catch_all = re.search(r'find "\$\{JAVA_SRC\}" -name', text)
        excl = re.findall(r"! -path '([^']+)'", text)
        for j in javas:
            b = j.name
            hit = re.search(rf"\b{re.escape(b)}\b", text) or any(fnmatch.fnmatch(b, g) for g in globs if g != "*.java")
            if not hit and catch_all:
                hit = not any(fnmatch.fnmatch("/" + rel(j), "*" + e.lstrip("*")) for e in excl)
                if hit:
                    short_ = short + "*"
                    owners.setdefault(b, []).append(short_)
                    continue
            if hit:
                owners.setdefault(b, []).append(short)
    return owners


def section_scripts() -> list[str]:
    refs = build_refs()
    out = []
    for p in sorted((ROOT / "scripts").rglob("*")):
        if p.suffix not in (".py", ".sh", ".java", ".mjs") or "__pycache__" in p.parts or "/stub" in rel(p):
            continue
        if "/rt/" in rel(p):  # JVM harness stubs for ble-sim — listed once below
            continue
        r = rel(p)[len("scripts/"):]
        purpose = py_purpose(p) if p.suffix == ".py" else sh_purpose(p) if p.suffix == ".sh" else doc_comment(p)
        b = f"build:{refs[r]}" if r in refs else ("NOT-IN-BUILD" if r.startswith(("apply-", "remove-")) else "")
        out.append(f"- `scripts/{r}` ({nlines(p)}L{', ' + b if b else ''}) — {purpose}")
    out.append("- `scripts/ble-sim/rt/**` — stubbed android.* + sim harnesses (SppHarness, HrPolicyHarness) for the JVM BLE tests")
    return out


def section_java() -> list[str]:
    owners = compile_owners()
    out, last = [], None
    base = ROOT / "branding/java/src/com/isaigu/gymapp"
    for p in sorted(base.rglob("*.java")):
        pkg = rel(p.parent)[len(rel(base)) + 1:]
        if pkg != last:
            out.append(f"\n**{pkg}/** (`branding/java/src/com/isaigu/gymapp/{pkg}/`)")
            last = pkg
        own = ",".join(owners.get(p.name, [])) or "?"
        out.append(f"- `{p.name}` ({nlines(p)}L, compile:{own}) — {doc_comment(p)}")
    return out


def section_simple(globs: list[str], purpose=doc_comment) -> list[str]:
    out = []
    for g in globs:
        for p in sorted(ROOT.glob(g)):
            if p.is_file() and "node_modules" not in p.parts and p.suffix not in (".png", ".jpg"):
                out.append(f"- `{rel(p)}` ({nlines(p)}L) — {purpose(p)}")
    return out


def section_docs() -> list[str]:
    out = []
    mds = [p for p in sorted(ROOT.rglob("*.md")) if not {".git", "node_modules", "build"} & set(p.parts) and p != MAP]
    for p in mds:
        heads = [h for h in outline(p) if re.match(r"L\d+ #{1,3} ", h)]
        out.append(f"\n`{rel(p)}` ({nlines(p)}L)")
        out.extend(f"  - {h}" for h in heads)
    return out


def section_yaml() -> list[str]:
    out = []
    for p in sorted((ROOT / "branding").glob("*.yaml")):
        keys = [h for h in outline(p) if re.match(r"L\d+ \S", h)]
        out.append(f"\n`{rel(p)}` ({nlines(p)}L): " + " · ".join(keys))
    return out


def generate() -> str:
    parts = [
        "# REPO MAP (generated — `python3 scripts/repo-map.py`; do not edit by hand)",
        "",
        "Grep this file, don't read it whole: `grep -in <concept> .claude/MAP.md`.",
        "Format: `path` (lines, build/compile info) — purpose. `NL` = line count.",
        "Big file? `python3 scripts/repo-map.py outline <file>` → symbols with line numbers → Read offset/limit.",
        "",
        "## scripts/",
        "build:Ln = called at line n of build-apk.sh (sort by n = pipeline order); [VAR] = inside `if` on that env var",
        "(BETA_MUSIC default 1, DESIGN_PIPELINE default 0, SKIP_JAVA_RECOMPILE default 0). NOT-IN-BUILD = dead/manual patch.",
        *section_scripts(),
        "",
        "## Java sources → smali (compile:X = scripts/compile-X-java.sh; X* = catch-all find)",
        *section_java(),
        "",
        "## band-app (Xiaomi Vela quick app, Band 10)",
        *section_simple(["band-app/src/app.ux", "band-app/src/manifest.json", "band-app/src/common/*.js",
                         "band-app/src/common/ui/*", "band-app/src/pages/*/index.ux"]),
        *section_simple(["band-app/test/*.mjs", "band-app/scripts/*.py", "band-app/scripts/*.sh",
                         "band-app/scripts/*.mjs"], purpose=lambda p: py_purpose(p) if p.suffix == ".py" else doc_comment(p) or sh_purpose(p)),
        "",
        "## server (Cloudflare Worker license server)",
        *section_simple(["server/src/*.js", "server/test/*.js", "server/migrations/*", "server/scripts/*"],
                        purpose=lambda p: doc_comment(p) or sh_purpose(p)),
        "",
        "## Branding YAML maps (top-level keys)",
        *section_yaml(),
        "",
        "## Docs (headings with line numbers → Read offset/limit)",
        *section_docs(),
        "",
    ]
    return "\n".join(parts)


def main(argv: list[str]) -> int:
    if argv and argv[0] == "outline":
        for f in argv[1:]:
            p = Path(f) if Path(f).is_absolute() else Path.cwd() / f
            print(f"== {f} ({nlines(p)}L)")
            print("\n".join(outline(p)))
        return 0
    text = generate()
    if argv and argv[0] == "--check":
        if not MAP.exists() or read(MAP) != text:
            print("STALE: .claude/MAP.md — run python3 scripts/repo-map.py")
            return 1
        return 0
    MAP.parent.mkdir(exist_ok=True)
    MAP.write_text(text, encoding="utf-8")
    print(f"wrote {rel(MAP)} ({text.count(chr(10))} lines)")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
