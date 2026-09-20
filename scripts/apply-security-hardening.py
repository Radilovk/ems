#!/usr/bin/env python3
"""Harden APK manifest and network config to reduce install / Play Protect warnings."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
MANIFEST = DECOMPILED / "AndroidManifest.xml"
NETWORK_CFG = DECOMPILED / "res" / "xml" / "network_security_config.xml"

REMOVED_PERMISSIONS = (
    "android.permission.MOUNT_UNMOUNT_FILESYSTEMS",
    "android.permission.WRITE_SETTINGS",
    "android.permission.SYSTEM_ALERT_WINDOW",
    "android.permission.REQUEST_INSTALL_PACKAGES",
    "android.permission.CHANGE_CONFIGURATION",
)

# Install-time grant mode (targetSdk 22): fewer install warnings, no runtime prompts.
TARGET_SDK_VERSION = 22

DUPLICATE_PERMISSIONS = (
    "android.permission.WRITE_EXTERNAL_STORAGE",
)


def patch_manifest(text: str) -> str:
    if 'android:debuggable="true"' in text:
        text = text.replace('android:debuggable="true"', 'android:debuggable="false"', 1)
        print("manifest: debuggable=false")
    elif 'android:debuggable="false"' in text:
        print("manifest: debuggable already false")

    if 'android:allowBackup="true"' in text:
        text = text.replace('android:allowBackup="true"', 'android:allowBackup="false"', 1)
        print("manifest: allowBackup=false")

    if 'android:requestLegacyExternalStorage="true"' not in text:
        text = text.replace(
            "<application ",
            '<application android:requestLegacyExternalStorage="true" ',
            1,
        )
        print("manifest: requestLegacyExternalStorage=true")

    for perm in REMOVED_PERMISSIONS:
        pattern = rf'\s*<uses-permission android:name="{re.escape(perm)}"/>\n'
        if re.search(pattern, text):
            text = re.sub(pattern, "\n", text, count=1)
            print(f"manifest: removed deprecated {perm}")

    if "RECORD_AUDIO" not in text:
        text = text.replace(
            '<uses-permission android:name="android.permission.INTERNET"/>',
            '<uses-permission android:name="android.permission.INTERNET"/>\n'
            '    <uses-permission android:name="android.permission.RECORD_AUDIO"/>',
            1,
        )
        print("manifest: ensured RECORD_AUDIO declared")

    seen: set[str] = set()
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    for line in lines:
        match = re.search(r'<uses-permission android:name="([^"]+)"', line)
        if match:
            name = match.group(1)
            if name in DUPLICATE_PERMISSIONS and name in seen:
                print(f"manifest: deduped {name}")
                continue
            seen.add(name)
        out.append(line)
    return "".join(out)


def patch_target_sdk() -> None:
    apktool_yml = DECOMPILED / "apktool.yml"
    if not apktool_yml.is_file():
        return
    text = apktool_yml.read_text(encoding="utf-8")
    updated, count = re.subn(
        r"targetSdkVersion: \d+",
        f"targetSdkVersion: {TARGET_SDK_VERSION}",
        text,
        count=1,
    )
    if count:
        apktool_yml.write_text(updated, encoding="utf-8")
        print(f"apktool.yml: targetSdkVersion -> {TARGET_SDK_VERSION} (install-time permissions)")


def patch_network_config(text: str) -> str:
    if "cleartextTrafficPermitted=\"false\"" in text:
        print("network_security_config: cleartext already disabled")
        return text
    if "cleartextTrafficPermitted=\"true\"" in text:
        text = text.replace(
            'cleartextTrafficPermitted="true"',
            'cleartextTrafficPermitted="false"',
            1,
        )
        print("network_security_config: cleartextTrafficPermitted=false")
    return text


def main() -> int:
    if not DECOMPILED.is_dir():
        print("Decompiled tree missing; run decompile first.", file=sys.stderr)
        return 1
    if not MANIFEST.is_file():
        print(f"Missing {MANIFEST}", file=sys.stderr)
        return 1

    patch_target_sdk()
    MANIFEST.write_text(patch_manifest(MANIFEST.read_text(encoding="utf-8")), encoding="utf-8")
    if NETWORK_CFG.is_file():
        NETWORK_CFG.write_text(
            patch_network_config(NETWORK_CFG.read_text(encoding="utf-8")),
            encoding="utf-8",
        )
    print("Security hardening applied.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
