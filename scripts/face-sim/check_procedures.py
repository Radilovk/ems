#!/usr/bin/env python3
"""Independent check of branding/face/procedures.json (docs/xems-face.md §10) — read the way the XBody panel will
read it, with the safety rules re-implemented here (docs/xems-safety-limits.md, xems-face.md), not taken from Java.
usage: check_procedures.py [file]"""
import json
import math
import sys

PATH = sys.argv[1] if len(sys.argv) > 1 else "branding/face/procedures.json"
fails = []


def check(ok, what):
    if not ok:
        fails.append(what)


d = json.load(open(PATH, encoding="utf-8"))
check(d.get("format") == "xems-face/1", "format")
lim = d["limits"]
pic = d["picture"]
cm = pic["px_per_cm"]
axis = pic["mirror_axis_x"]
sites = d["sites"]
check(len(sites) == 10, "ten sites")
for i, s in enumerate(sites):
    check(s["id"] == i and s["socket"] == "F%d" % (i + 1) and s["suit_channel"] == i, "site %d socket / channel" % i)
    check(len(s["pads"]) == 2 and s["name_bg"] and s["name_en"], "site %d pads / names" % i)

ko = d["keep_out"]


def mirrored(p):
    return [(p[0], p[1]), (2 * axis - p[0], p[1])]


def dist(a, b):
    return math.hypot(a[0] - b[0], a[1] - b[1])


for s in sites:
    for p in s["pads"]:
        for (ex, ey) in mirrored(ko["eye"]["centre"]):
            v = ((p[0] - ex) / ko["eye"]["rx"]) ** 2 + ((p[1] - ey) / ko["eye"]["ry"]) ** 2
            check(v > 1, "site %d pad inside the eye zone" % s["id"])
        check(min(dist(p, c) for c in mirrored(ko["eye_corner"])) / cm >= 2.0, "site %d pad < 2 cm from the eye" % s["id"])
        check(min(dist(p, c) for c in mirrored(ko["nerve_trunk"])) / cm >= 1.5, "site %d pad on the nerve trunk" % s["id"])
        check(min(dist(p, c) for c in mirrored(ko["neck_side"])) / cm >= 2.0, "site %d pad at the side of the neck" % s["id"])

PW = {"face_relax": lim["forehead_pw_us"], "face_calm": lim["forehead_pw_us"], "face_jaw": lim["jaw_pw_us"],
      "face_chin": lim["chin_pw_us"]}
FILES = {"FLF", "FTN", "FDR", "FDB", "FRX", "JAW", "CHN"}
procs = d["procedures"]
check(len(procs) == 8, "eight procedures")
check(len({p["auto_id"] for p in procs}) == len(procs), "unique auto ids")
for p in procs:
    tag = p["auto_id"]
    for k in ("name_bg", "name_en", "tag_bg", "tag_en", "how_bg", "how_en", "strength_goal_bg", "strength_goal_en"):
        check(bool(p.get(k)), "%s: %s" % (tag, k))
    xs = p["xems_sites"]
    check(len(set(xs)) == len(xs) and all(0 <= s < 10 for s in xs), tag + ": xems sites")
    bs = p["bluetens_sites"]
    check(1 <= len(bs) <= lim["bluetens_devices_max"] and len(p["bluetens_files"]) == len(bs), tag + ": bluetens devices")
    check(all(f in FILES for f in p["bluetens_files"]), tag + ": bluetens files")
    plan = p["plan"]
    z = plan["zones"]
    check(all((z[i] == 100) == (i in xs) and (z[i] in (0, 100)) for i in range(10)), tag + ": plan zones = its sites")
    check(plan["recovery_s"] == lim["recovery_s"], tag + ": recovery")
    check(plan["active_s"] + plan["recovery_s"] == plan["total_s"], tag + ": totals")
    check(sum(ph["duration_s"] for ph in plan["phases"]) == plan["total_s"], tag + ": phases add up")
    check(plan["phases"][-1]["cooldown"], tag + ": the let-go is last")
    for ph in plan["phases"]:
        for st in ph["steps"]:
            at = "%s/%s %s" % (tag, ph["id"], st)
            if st["sigma"] <= 0:
                continue
            hz, pw, on, off = st["hz"], st["pw_us"], st["on_s"], st["off_s"]
            check(pw == PW.get(tag, lim["motor_pw_us"]), at + ": width")
            check(1 <= hz <= 120, at + ": 1–120 Hz")
            check(hz < 100 or pw <= 300, at + ": ≤ 300 µs from 100 Hz")
            check(tag == "face_jaw" or hz >= lim["motor_hz_min"], at + ": ≥ 20 Hz on the face")
            if st["zones"] is not None:
                check(all(st["zones"][i] == 0 or i in xs for i in range(10)), at + ": a site outside the procedure")
            if hz >= 20:
                check(on <= (6 if hz >= 50 else 10), at + ": fused impulse too long")
                check(st["ramp_up_ms"] >= 300, at + ": soft rise")
                check(off >= on, at + ": the pause ≥ the hold")

if fails:
    for f in fails[:40]:
        print("FAIL " + f)
    print("procedures.json FAILED: %d" % len(fails))
    sys.exit(1)
print("procedures.json OK (%d procedures, %d sites)" % (len(procs), len(sites)))
