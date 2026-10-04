#!/usr/bin/env python3
"""
Fail when APK-shipping source changed but xems27.apk was not rebuilt and committed.

Run in CI on every PR/push, and locally before push:
  python3 scripts/verify-apk-shipped.py
  python3 scripts/verify-apk-shipped.py --base origin/main
"""
from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

# Touching any of these requires a fresh xems27.apk + RELEASE_VERSION in the same change set.
APK_SOURCE_PREFIXES = (
    "band-app/src/",
    "band-app/scripts/",
    "branding/java/",
    "branding/smali/",
    "translations/",
    "scripts/apply-",
    "scripts/remove-",
    "scripts/compile-",
    "branding/layouts/",
    "build-apk.sh",
)

# Hand-written smali kept on purpose (no Java source).
SMALI_WITHOUT_JAVA = {"ThemeUtils"}

APK_ARTIFACTS = (
    "xems27.apk",
    "RELEASE_VERSION",
)

BAND_ARTIFACTS = (
    "band-app/xems-band.rpk",
    "band-app/xems-band-en.rpk",
)

BAND_SOURCE_PREFIXES = (
    "band-app/src/",
    "band-app/scripts/",
)


def git(*args: str) -> str:
    return subprocess.check_output(["git", *args], cwd=ROOT, text=True).strip()


def changed_files(base: str, head: str) -> list[str]:
    if base == head:
        return []
    return [ln for ln in git("diff", "--name-only", f"{base}...{head}").splitlines() if ln]


def matches_prefix(path: str, prefixes: tuple[str, ...]) -> bool:
    return any(path.startswith(p) for p in prefixes)


def check_band_versions() -> list[str]:
    errors: list[str] = []
    manifest = ROOT / "band-app" / "src" / "manifest.json"
    install_java = ROOT / "branding" / "java" / "src" / "com" / "isaigu" / "gymapp" / "wearable" / "BandAppInstall.java"
    app_ux = ROOT / "band-app" / "src" / "app.ux"
    if not manifest.is_file():
        return errors
    code = json.loads(manifest.read_text(encoding="utf-8"))["versionCode"]
    if install_java.is_file():
        m = re.search(r"public static final int VERSION = (\d+);", install_java.read_text(encoding="utf-8"))
        if not m or int(m.group(1)) != code:
            errors.append(
                f"BandAppInstall.VERSION ({m.group(1) if m else '?'}) != band manifest versionCode ({code})"
            )
    if app_ux.is_file() and f"const APP_VERSION = {code}" not in app_ux.read_text(encoding="utf-8"):
        errors.append(f"band-app/src/app.ux APP_VERSION != manifest versionCode ({code})")
    return errors


def java_sources() -> dict[str, Path]:
    out: dict[str, Path] = {}
    for p in (ROOT / "branding" / "java" / "src").rglob("*.java"):
        out[p.stem] = p
    return out


def java_code(text: str) -> str:
    """The Java without comments and whitespace: a comment-only edit compiles to the same smali."""
    text = re.sub(r"/\*.*?\*/", "", text, flags=re.S)
    text = re.sub(r"//[^\n]*", "", text)
    return re.sub(r"\s+", "", text)


def code_changed(base: str, path: str) -> bool:
    try:
        old = git("show", f"{base}:{path}")
    except subprocess.CalledProcessError:
        return True
    return java_code(old) != java_code((ROOT / path).read_text(encoding="utf-8"))


def check_smali_matches_java(files: list[str], base: str = "origin/main") -> list[str]:
    """
    branding/smali is compiler output of branding/java. Two drifts ship silently otherwise:
    a Java edit whose smali was never regenerated (missing SDK, a class left out of a compile list), and smali
    whose Java was deleted (still copied into the APK).
    """
    errors: list[str] = []
    smali_root = ROOT / "branding" / "smali"
    by_outer: dict[str, list[str]] = {}
    for p in smali_root.rglob("*.smali"):
        by_outer.setdefault(p.stem.split("$")[0], []).append(p.relative_to(ROOT).as_posix())
    java = java_sources()
    orphans = sorted(o for o in by_outer if o not in java and o not in SMALI_WITHOUT_JAVA)
    if orphans:
        errors.append("smali without Java source (delete it): " + ", ".join(orphans))
    changed = set(files)
    stale = []
    for f in files:
        if not (f.startswith("branding/java/src/") and f.endswith(".java")) or not (ROOT / f).is_file():
            continue
        smali = by_outer.get(Path(f).stem)
        if smali and not any(s in changed for s in smali) and code_changed(base, f):
            stale.append(Path(f).stem)
    if stale:
        errors.append(
            "Java changed but its smali was not regenerated: " + ", ".join(sorted(stale))
            + "\n  Fix: run the class's compile script (MAP: compile:X) and commit branding/smali."
        )
    return errors


def verify_shipment(base: str, head: str) -> list[str]:
    files = changed_files(base, head)
    if not files:
        return []

    source_touched = [f for f in files if matches_prefix(f, APK_SOURCE_PREFIXES)]
    band_source_touched = [f for f in files if matches_prefix(f, BAND_SOURCE_PREFIXES)]
    apk_touched = "xems27.apk" in files
    release_touched = "RELEASE_VERSION" in files
    band_rpks_touched = all(a in files for a in BAND_ARTIFACTS)

    errors: list[str] = []

    if source_touched and not (apk_touched and release_touched):
        errors.append(
            "APK source changed but xems27.apk and/or RELEASE_VERSION were not updated in the same branch.\n"
            f"  source files ({len(source_touched)}): " + ", ".join(source_touched[:8])
            + (" …" if len(source_touched) > 8 else "")
            + "\n  Fix: bump RELEASE_VERSION if needed, run `bash build-apk.sh`, then commit:\n"
            "    git add xems27.apk RELEASE_VERSION band-app/xems-band.rpk band-app/xems-band-en.rpk"
        )

    if band_source_touched and not band_rpks_touched:
        errors.append(
            "band-app source changed but xems-band.rpk / xems-band-en.rpk were not updated.\n"
            "  Fix: cd band-app && bash build.sh, then commit the .rpk files (and rebuild APK)."
        )

    return errors


def verify_worktree_clean() -> list[str]:
    """Catch uncommitted APK after local edits."""
    errors: list[str] = []
    dirty = git("status", "--porcelain").splitlines()
    dirty_paths = [ln[3:] for ln in dirty if len(ln) > 3]

    source_dirty = [p for p in dirty_paths if matches_prefix(p, APK_SOURCE_PREFIXES)]
    apk_dirty = any(p in APK_ARTIFACTS or p.endswith("xems27.apk") for p in dirty_paths)
    release_dirty = "RELEASE_VERSION" in dirty_paths

    if source_dirty and not (apk_dirty and release_dirty):
        errors.append(
            "Working tree has uncommitted APK-source edits without xems27.apk + RELEASE_VERSION.\n"
            "  Run `bash build-apk.sh` and commit all artifacts before push."
        )
    return errors


def main() -> int:
    parser = argparse.ArgumentParser(description="Verify APK is shipped with source changes")
    parser.add_argument("--base", default="origin/main", help="Git ref to compare against (default: origin/main)")
    parser.add_argument("--head", default="HEAD", help="Git ref for tip (default: HEAD)")
    parser.add_argument("--skip-worktree", action="store_true", help="Only compare base..head, ignore dirty worktree")
    args = parser.parse_args()

    try:
        git("rev-parse", "--verify", args.base)
    except subprocess.CalledProcessError:
        # Shallow clone or no remote: compare against first parent or empty tree
        try:
            args.base = git("rev-parse", "HEAD~1")
        except subprocess.CalledProcessError:
            args.base = git("hash-object", "-t", "tree", "/dev/null")

    errors = verify_shipment(args.base, args.head)
    errors.extend(check_smali_matches_java(changed_files(args.base, args.head), args.base))
    errors.extend(check_band_versions())
    if not args.skip_worktree:
        errors.extend(verify_worktree_clean())

    if errors:
        print("APK shipment verification FAILED:\n", file=sys.stderr)
        for err in errors:
            print(f"  • {err}\n", file=sys.stderr)
        print(
            "Rule: any band-app / branding/java / translations / apply-* change MUST ship with\n"
            "  xems27.apk + RELEASE_VERSION (+ band .rpk when band-app changed).",
            file=sys.stderr,
        )
        return 1

    print("OK: APK shipment verification passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
