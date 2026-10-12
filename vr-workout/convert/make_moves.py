"""Build assets/moves/moves.json — the coach's motion-captured moves — from free sources (downloaded once into
$XEMS_MOCAP, default /tmp/xems-mocap):
  CMU Graphics Lab Motion Capture Database (mocap.cs.cmu.edu, free for any use): front kick (144_05), knee strike
    (86_06), squat (13_29)
  Quaternius Universal Animation Library 1 + 2 (CC0, itch.io): idle, talking, arms folded, jab, cross, "yes"
Synthesised here from those frames: the fighting guard (a breathing loop) and the side leans.
Run:  python3 vr-workout/convert/make_moves.py        (numpy; ~1 min)
"""
import json
import math
import os
import re
import subprocess
import sys
import zipfile

import numpy as np

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import mocap as M  # noqa: E402

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "..", "assets", "moves", "moves.json")
CACHE = os.environ.get("XEMS_MOCAP", "/tmp/xems-mocap")
FPS = 30


def curl(*a):
    return subprocess.run(["curl", "-sSL", "-c", f"{CACHE}/ck", "-b", f"{CACHE}/ck", *a], capture_output=True,
                          text=True, check=True).stdout


def fetch_cmu(take):
    s = take.split("_")[0]
    for f in (f"{s}.asf", f"{take}.amc"):
        p = f"{CACHE}/cmu/{f}"
        if not os.path.exists(p):
            os.makedirs(f"{CACHE}/cmu", exist_ok=True)
            subprocess.run(["curl", "-sSfL", "-o", p, f"http://mocap.cs.cmu.edu/subjects/{s}/{f}"], check=True)
    return f"{CACHE}/cmu/{s}.asf", f"{CACHE}/cmu/{take}.amc"


def fetch_ual(slug, glb):
    """itch.io 'name your own price' (0): the page's csrf token → a signed file url."""
    out = f"{CACHE}/{slug}"
    found = [os.path.join(r, f) for r, _, fs in os.walk(out) for f in fs if f == glb] if os.path.isdir(out) else []
    if found:
        return found[0]
    os.makedirs(CACHE, exist_ok=True)
    page = curl(f"https://quaternius.itch.io/{slug}")
    tok = re.search(r'csrf_token" value="([^"]+)"', page).group(1)
    dl = json.loads(curl("-X", "POST", "--data-urlencode", "csrf_token=" + tok,
                         f"https://quaternius.itch.io/{slug}/download_url"))["url"]
    s = curl(dl)
    tok = re.search(r'csrf_token" value="([^"]+)"', s).group(1)
    uid = re.search(r'data-upload_id="(\d+)"', s).group(1)          # the first file = [Standard]
    url = json.loads(curl("-X", "POST", "--data-urlencode", "csrf_token=" + tok,
                          f"https://quaternius.itch.io/{slug}/file/{uid}?source=view_game&as_props=1"))["url"]
    subprocess.run(["curl", "-sSfL", "-o", f"{CACHE}/{slug}.zip", url], check=True)
    zipfile.ZipFile(f"{CACHE}/{slug}.zip").extractall(out)
    return fetch_ual(slug, glb)


# ---------------------------------------------------------------- marks: the instant of contact, found in the motion

def t_max(t, joint, axis):
    v = [p[joint][axis] for p in t.pos]
    return int(np.argmax(v)) / t.fps


def t_min(t, joint, axis):
    v = [p[joint][axis] for p in t.pos]
    return int(np.argmin(v)) / t.fps


def guard_loop(base, frame, sec=2.4):
    """The fighting guard, alive: a held frame of a punch clip with a breath (chest and arms rise a little), a small
    bounce in the knees' rhythm read as a slight pelvis/chest pitch, and the gaze kept level."""
    o = M.Take(FPS)
    o.rest_pos, o.rest_dir = base.rest_pos, base.rest_dir
    r0, p0 = base.rot[frame], base.pos[frame]
    n = int(sec * FPS)
    for i in range(n):
        ph = i / n * 2 * math.pi
        b = math.sin(ph)                    # one breath per loop
        w = math.sin(2 * ph)                # two small weight shifts
        chest = M.rx(math.radians(-1.6 * b)) @ M.ry(math.radians(2.0 * w))
        rot = {}
        for r, m in r0.items():
            if r in M.UPPER:
                rr = chest
                if r in ("neck", "head"):
                    rr = M.rx(math.radians(-0.6 * b)) @ M.ry(math.radians(1.2 * w))
                rot[r] = rr @ m
            elif r == "pelvis":
                rot[r] = M.ry(math.radians(1.0 * w)) @ m
            else:
                rot[r] = m
        o.rot.append(rot)
        pos = {k: v.copy() for k, v in p0.items()}
        pos["pelvis"] = p0["pelvis"] + np.array([0.006 * w, -0.006 * (1 - math.cos(2 * ph)) * 0.5, 0])
        o.pos.append(pos)
    return o


def main():
    ual1 = fetch_ual("universal-animation-library", "UAL1_Standard.glb")
    ual2 = fetch_ual("universal-animation-library-2", "UAL2_Standard.glb")
    clips = {}
    sources = {}

    def add(name, t, src, loop=False, marks=None, speed=1.0):
        if speed != 1.0:
            t.fps = t.fps * speed
            t = t.resample(FPS)
        if loop:
            t = M.seam(t)
        d = M.to_json(t, loop, {k: round(v / speed, 3) for k, v in (marks or {}).items()})
        d["src"] = src
        clips[name] = d
        if src not in sources:
            rp = t.rest_pos
            sources[src] = {"pel_h": round(float(rp["pelvis"][1]), 4),
                            "dir": {r: [round(float(x), 4) for x in v] for r, v in t.rest_dir.items()}}
        print(f"  {name:10s} {d['n'] / FPS:4.2f} s  {src}  {d['marks']}")

    # Quaternius UAL — whole clips
    jab = M.glb_take(ual1, "Punch_Jab", FPS)
    cross = M.glb_take(ual1, "Punch_Cross", FPS)
    add("idle", M.glb_take(ual1, "Idle_Loop", FPS), "ual", loop=True)
    add("talk", M.glb_take(ual1, "Idle_Talking_Loop", FPS), "ual", loop=True)
    add("watch", M.glb_take(ual2, "Idle_FoldArms_Loop", FPS), "ual", loop=True)
    add("yes", M.glb_take(ual2, "Yes", FPS), "ual")
    add("guard", guard_loop(jab, 0), "ual", loop=True)
    add("jab_l", jab, "ual", marks={"hit": t_max(jab, "hand_l", 2)})
    add("cross_r", cross, "ual", marks={"hit": t_max(cross, "hand_r", 2)})
    add("cross_l", M.mirror(cross), "ual_m", marks={"hit": t_max(cross, "hand_r", 2)})
    add("jab_r", M.mirror(jab), "ual_m", marks={"hit": t_max(jab, "hand_l", 2)})
    lean_l = M.lean(jab, 0, +1)
    add("lean_l", lean_l, "ual", marks={"hit": 0.25 + 0.55 / 2})
    add("lean_r", M.lean(jab, 0, -1), "ual", marks={"hit": 0.25 + 0.55 / 2})

    # CMU — cut out of long takes (seconds), turned to face ahead
    a, b = fetch_cmu("144_05")
    k = M.cmu_take(a, b).resample(FPS).cut(int(11.45 * FPS), int(12.95 * FPS))
    add("kick_r", k, "cmu144", marks={"hit": t_max(k, "ball_r", 2)})
    add("kick_l", M.mirror(k), "cmu144_m", marks={"hit": t_max(k, "ball_r", 2)})
    a, b = fetch_cmu("86_06")
    k = M.cmu_take(a, b).resample(FPS).cut(int(51.55 * FPS), int(53.15 * FPS))
    add("knee_r", k, "cmu86", marks={"hit": t_max(k, "calf_r", 1)})
    add("knee_l", M.mirror(k), "cmu86_m", marks={"hit": t_max(k, "calf_r", 1)})
    a, b = fetch_cmu("13_29")
    k = M.cmu_take(a, b).resample(FPS).cut(int(16.25 * FPS), int(17.95 * FPS))
    add("duck", k, "cmu13", marks={"hit": t_min(k, "head", 1)}, speed=1.35)

    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    data = {"about": "XEMS coach moves: per frame, each role's world rotation relative to its rest (x,y,z,w) and the "
                     "pelvis position (m, floor 0, facing +Z, left +X). Built by convert/make_moves.py from CMU mocap "
                     "and Quaternius UAL (CC0).",
            "fps": FPS, "roles": M.ROLES, "sources": sources, "clips": clips}
    json.dump(data, open(OUT, "w"), separators=(",", ":"))
    print(f"→ {os.path.relpath(OUT)}  {os.path.getsize(OUT) // 1024} KB, {len(clips)} clips")


if __name__ == "__main__":
    main()
