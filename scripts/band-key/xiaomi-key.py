#!/usr/bin/env python3
"""Fetch a Xiaomi band's BLE MAC + auth key from the Xiaomi (Mi Fitness) cloud.

The band is already paired in Mi Fitness; this only reads back the per-device
auth key the cloud already holds, so the XEMS tablet can talk to the same band
directly. Values go into XEMS settings (WearableConfig: band_mac + auth_key).

Credentials are NEVER stored or committed. Give them at run time:
  - env:    XIAOMI_EMAIL / XIAOMI_PASSWORD
  - or you are prompted (password is not echoed)

Engine: the maintained `huami-token` project (does the Xiaomi login + the
hlth.io.mi.com/get_source_list call, incl. the RC4/signature crypto). We only
wrap it: read credentials safely, run it, and print MAC + key ready to paste
into the tablet (or push them with --adb).

Usage:
  pip install huami-token
  XIAOMI_EMAIL=you@example.com XIAOMI_PASSWORD=... python3 xiaomi-key.py
  python3 xiaomi-key.py --adb            # also write into the connected tablet
  python3 xiaomi-key.py --region de      # Xiaomi server region (default: de)

Notes:
  - Unpairing the band in Mi Fitness invalidates the key; re-run afterwards.
  - Xiaomi may ask for a one-time web login (captcha / 2FA) the first time.
"""

import argparse
import getpass
import json
import os
import re
import shutil
import subprocess
import sys


def read_credentials():
    email = os.environ.get("XIAOMI_EMAIL", "").strip()
    password = os.environ.get("XIAOMI_PASSWORD", "")
    if not email:
        email = input("Xiaomi акаунт (имейл): ").strip()
    if not password:
        password = getpass.getpass("Xiaomi парола (не се показва, не се пази): ")
    if not email or not password:
        sys.exit("Нужни са имейл и парола (env XIAOMI_EMAIL / XIAOMI_PASSWORD).")
    return email, password


def run_huami_token(email, password, region):
    """Run huami-token and return its raw stdout, or exit with a hint."""
    exe = shutil.which("huami-token")
    cmd = [exe] if exe else [sys.executable, "-m", "huami_token"]
    # Password goes via stdin-free argv on the user's own machine; still, prefer
    # not to leak it in shell history — we exec directly (no shell).
    args = cmd + [
        "--method", "xiaomi",
        "--email", email,
        "--password", password,
        "--bt_keys",
    ]
    if region:
        args += ["--region", region]
    try:
        out = subprocess.run(args, capture_output=True, text=True)
    except FileNotFoundError:
        sys.exit("huami-token липсва. Инсталирай го с:  pip install huami-token")
    if out.returncode != 0:
        sys.stderr.write(out.stdout)
        sys.stderr.write(out.stderr)
        sys.exit(
            "\nВходът не мина. Ако Xiaomi иска уеб-вход (captcha/2FA), пусни ръчно:\n"
            "  huami-token --method xiaomi --bt_keys\n"
            "и следвай линка, после копирай адреса обратно в терминала."
        )
    return out.stdout


HEX32 = re.compile(r"(?<![0-9a-fA-F])(?:0x)?([0-9a-fA-F]{32})(?![0-9a-fA-F])")
MAC = re.compile(r"([0-9A-Fa-f]{2}(?::[0-9A-Fa-f]{2}){5})")


def parse_devices(text):
    """Pull {mac, key, name} out of huami-token's output (JSON or plain)."""
    devices = []
    # Try JSON first (huami-token can emit a devices array).
    for m in re.finditer(r"\{[^{}]*\}", text):
        try:
            o = json.loads(m.group(0))
        except ValueError:
            continue
        mac = str(o.get("mac") or o.get("macAddress") or "")
        key = str(o.get("auth_key") or o.get("authKey") or o.get("key") or "")
        if MAC.search(mac) and HEX32.search(key.replace("0x", "")):
            devices.append({
                "mac": MAC.search(mac).group(1).upper(),
                "key": HEX32.search(key).group(1).lower(),
                "name": str(o.get("name") or o.get("deviceName") or ""),
            })
    if devices:
        return devices
    # Fallback: scan line pairs of MAC + 32-hex key.
    macs = MAC.findall(text)
    keys = HEX32.findall(text)
    for mac, key in zip(macs, keys):
        devices.append({"mac": mac.upper(), "key": key.lower(), "name": ""})
    return devices


def adb_push(mac, key):
    """Write MAC + key into the tablet's XEMS prefs via adb (debug build / root)."""
    if not shutil.which("adb"):
        sys.exit("adb липсва — прескочи --adb и въведи стойностите ръчно в приложението.")
    pkg = "com.isaigu.gymapp"
    xml = (
        '<?xml version="1.0" encoding="utf-8" standalone="yes" ?>\n'
        "<map>\n"
        f'    <string name="band_mac">{mac}</string>\n'
        f'    <string name="auth_key">{key}</string>\n'
        "</map>\n"
    )
    target = f"/data/data/{pkg}/shared_prefs/wearable_bridge.xml"
    # Prefer run-as (works on debuggable builds, no root); fall back to su.
    push = (
        f"run-as {pkg} sh -c 'mkdir -p /data/data/{pkg}/shared_prefs && "
        f"cat > {target}' 2>/dev/null || su -c 'cat > {target}'"
    )
    p = subprocess.run(["adb", "shell", push], input=xml, text=True)
    if p.returncode != 0:
        sys.exit("Записът през adb не мина (нужен е debug билд за run-as, или root).")
    print(f"→ записано в таблета ({target}). Рестартирай приложението.")


def main():
    ap = argparse.ArgumentParser(description="Xiaomi band auth key extractor for XEMS")
    ap.add_argument("--adb", action="store_true", help="write MAC+key into the connected tablet")
    ap.add_argument("--region", default="de", help="Xiaomi server region (default: de)")
    args = ap.parse_args()

    email, password = read_credentials()
    raw = run_huami_token(email, password, args.region)
    devices = parse_devices(raw)
    if not devices:
        sys.stderr.write(raw)
        sys.exit("\nНе намерих MAC/ключ в изхода. Виж съобщението по-горе.")

    print("\nНамерени ленти (MAC · ключ):")
    for d in devices:
        name = f"  [{d['name']}]" if d["name"] else ""
        print(f"  {d['mac']}   {d['key']}{name}")

    print(
        "\nВъведи ги в XEMS → настройки за лентата (MAC и Auth key, 32 hex),\n"
        "или пусни отново с --adb, за да ги запиша право в таблета."
    )
    if args.adb:
        if len(devices) > 1:
            print("\nПовече от една лента — записвам първата.")
        adb_push(devices[0]["mac"], devices[0]["key"])


if __name__ == "__main__":
    main()
