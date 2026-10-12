"""Motion capture → the coach's clips. Reads CMU ASF/AMC takes and Quaternius UAL .glb animations, puts them in one
frame (Y up, the figure faces +Z with its left on +X, metres) and gives, per frame and per body role, the bone's
world rotation *relative to its rest* (a "delta") plus the joint positions. The game applies a delta to any coach rig
(scripts/coach.gd): target = delta · swing(target rest dir → source rest dir) · target rest, so T-, A- or I-pose rests
of different rigs do not matter.

Roles: pelvis chest neck head, clavicle upperarm lowerarm hand, thigh calf foot ball (_l / _r = the figure's own side).
"""
import json
import math
import struct

import numpy as np

ROLES = ["pelvis", "chest", "neck", "head"] + [f"{b}_{s}" for s in "lr" for b in
         ["clavicle", "upperarm", "lowerarm", "hand", "thigh", "calf", "foot", "ball"]]
# the bone a role points at (its rest direction = towards that joint)
CHILD = {"clavicle": "upperarm", "upperarm": "lowerarm", "lowerarm": "hand", "hand": "hand_tip",
         "thigh": "calf", "calf": "foot", "foot": "ball", "ball": "ball_tip"}


# ---------------------------------------------------------------- small maths (quaternions are x, y, z, w)

def q_from_m(m):
    t = m[0, 0] + m[1, 1] + m[2, 2]
    if t > 0:
        s = math.sqrt(t + 1.0) * 2
        q = [(m[2, 1] - m[1, 2]) / s, (m[0, 2] - m[2, 0]) / s, (m[1, 0] - m[0, 1]) / s, 0.25 * s]
    elif m[0, 0] > m[1, 1] and m[0, 0] > m[2, 2]:
        s = math.sqrt(1.0 + m[0, 0] - m[1, 1] - m[2, 2]) * 2
        q = [0.25 * s, (m[0, 1] + m[1, 0]) / s, (m[0, 2] + m[2, 0]) / s, (m[2, 1] - m[1, 2]) / s]
    elif m[1, 1] > m[2, 2]:
        s = math.sqrt(1.0 + m[1, 1] - m[0, 0] - m[2, 2]) * 2
        q = [(m[0, 1] + m[1, 0]) / s, 0.25 * s, (m[1, 2] + m[2, 1]) / s, (m[0, 2] - m[2, 0]) / s]
    else:
        s = math.sqrt(1.0 + m[2, 2] - m[0, 0] - m[1, 1]) * 2
        q = [(m[0, 2] + m[2, 0]) / s, (m[1, 2] + m[2, 1]) / s, 0.25 * s, (m[1, 0] - m[0, 1]) / s]
    q = np.array(q)
    return q / np.linalg.norm(q)


def m_from_q(q):
    x, y, z, w = q / np.linalg.norm(q)
    return np.array([[1 - 2 * (y * y + z * z), 2 * (x * y - z * w), 2 * (x * z + y * w)],
                     [2 * (x * y + z * w), 1 - 2 * (x * x + z * z), 2 * (y * z - x * w)],
                     [2 * (x * z - y * w), 2 * (y * z + x * w), 1 - 2 * (x * x + y * y)]])


def rx(a):
    c, s = math.cos(a), math.sin(a)
    return np.array([[1, 0, 0], [0, c, -s], [0, s, c]])


def ry(a):
    c, s = math.cos(a), math.sin(a)
    return np.array([[c, 0, s], [0, 1, 0], [-s, 0, c]])


def rz(a):
    c, s = math.cos(a), math.sin(a)
    return np.array([[c, -s, 0], [s, c, 0], [0, 0, 1]])


def slerp(a, b, t):
    d = float(np.dot(a, b))
    if d < 0:
        b, d = -b, -d
    if d > 0.9995:
        r = a + (b - a) * t
        return r / np.linalg.norm(r)
    th = math.acos(d)
    return (math.sin((1 - t) * th) * a + math.sin(t * th) * b) / math.sin(th)


class Take:
    """frames × roles: rot[f][role] = 3×3 world delta from rest; pos[f][joint] = world position.
    rest_dir[role] = unit rest direction; fps."""

    def __init__(self, fps):
        self.fps = fps
        self.rot = []
        self.pos = []
        self.rest_pos = {}
        self.rest_dir = {}

    def finish(self):
        """Face +Z with the left on +X (by the hips at the first frame / at rest), floor at y = 0, pelvis over x = z = 0
        at the start, metres scaled so the rest pelvis is at its real height."""
        def yaw_to_front(p):
            left = p["thigh_l"] - p["thigh_r"]
            fwd = np.cross(left, [0, 1, 0])
            return -math.atan2(fwd[0], fwd[2])           # rotation about Y that takes fwd to +Z
        yr = ry(yaw_to_front(self.rest_pos))
        y0 = ry(yaw_to_front(self.pos[0]))
        for r in ROLES:
            if r in self.rest_dir:
                self.rest_dir[r] = yr @ self.rest_dir[r]
        self.rest_pos = {k: yr @ v for k, v in self.rest_pos.items()}
        start = self.pos[0]["pelvis"].copy()
        for f in range(len(self.rot)):
            for r in list(self.rot[f]):
                self.rot[f][r] = y0 @ self.rot[f][r] @ yr.T
            for k in self.pos[f]:
                v = self.pos[f][k] - np.array([start[0], 0, start[2]])
                self.pos[f][k] = y0 @ v
        feet = [min(p[j][1] for j in ("foot_l", "foot_r", "ball_l", "ball_r", "ball_tip_l", "ball_tip_r") if j in p)
                for p in self.pos]
        floor = float(np.percentile(feet, 5))
        rest_floor = min(self.rest_pos[j][1] for j in ("ball_tip_l", "ball_tip_r", "foot_l", "foot_r") if j in self.rest_pos)
        for p in self.pos:
            for k in p:
                p[k] = p[k] - np.array([0, floor, 0])
        self.rest_pos = {k: v - np.array([0, rest_floor, 0]) for k, v in self.rest_pos.items()}
        return self

    def cut(self, a, b, face=True):
        """Frames a..b, turned to face +Z and moved over x = z = 0 again (a long take wanders round the room)."""
        t = Take(self.fps)
        t.rest_pos, t.rest_dir = self.rest_pos, self.rest_dir
        p0 = self.pos[a]
        left = (p0["thigh_l"] - p0["thigh_r"]) + (p0["upperarm_l"] - p0["upperarm_r"])
        fwd = np.cross(left, [0, 1, 0])
        y = ry(-math.atan2(fwd[0], fwd[2])) if face else np.eye(3)
        c = np.array([p0["pelvis"][0], 0, p0["pelvis"][2]])
        for f in range(a, b):
            t.rot.append({r: y @ m for r, m in self.rot[f].items()})
            t.pos.append({k: y @ (v - c) + np.array([0, 0, 0]) for k, v in self.pos[f].items()})
        return t

    def resample(self, fps):
        n = len(self.rot)
        dur = (n - 1) / self.fps
        m = int(round(dur * fps)) + 1
        t = Take(fps)
        t.rest_pos, t.rest_dir = self.rest_pos, self.rest_dir
        for i in range(m):
            x = min(i / fps * self.fps, n - 1)
            a = int(x)
            b = min(a + 1, n - 1)
            u = x - a
            t.rot.append({r: m_from_q(slerp(q_from_m(self.rot[a][r]), q_from_m(self.rot[b][r]), u)) for r in self.rot[a]})
            t.pos.append({k: self.pos[a][k] * (1 - u) + self.pos[b][k] * u for k in self.pos[a]})
        return t


# ---------------------------------------------------------------- CMU ASF / AMC

CMU_ROLE = {"root": "pelvis", "thorax": "chest", "lowerneck": "neck", "head": "head",
            "lclavicle": "clavicle_l", "lhumerus": "upperarm_l", "lradius": "lowerarm_l", "lhand": "hand_l",
            "lfemur": "thigh_l", "ltibia": "calf_l", "lfoot": "foot_l", "ltoes": "ball_l",
            "rclavicle": "clavicle_r", "rhumerus": "upperarm_r", "rradius": "lowerarm_r", "rhand": "hand_r",
            "rfemur": "thigh_r", "rtibia": "calf_r", "rfoot": "foot_r", "rtoes": "ball_r"}
# joint positions the game uses (a bone's start = that joint)
CMU_JOINT = {"lfemur": "thigh_l", "ltibia": "calf_l", "lfoot": "foot_l", "ltoes": "ball_l", "rfemur": "thigh_r",
             "rtibia": "calf_r", "rfoot": "foot_r", "rtoes": "ball_r", "lhumerus": "upperarm_l", "lradius": "lowerarm_l",
             "lhand": "hand_l", "rhumerus": "upperarm_r", "rradius": "lowerarm_r", "rhand": "hand_r", "head": "head",
             "lowerneck": "neck", "lclavicle": "clavicle_l", "rclavicle": "clavicle_r"}
CMU_END = {"ltoes": "ball_tip_l", "rtoes": "ball_tip_r", "lhand": "hand_tip_l", "rhand": "hand_tip_r", "head": "head_top"}
UNIT = 1.0 / 0.45 * 2.54 / 100.0               # ASF length units → metres


def _euler(a):
    """ASF 'XYZ' axis / dof angles (deg): R = Rz · Ry · Rx."""
    return rz(math.radians(a[2])) @ ry(math.radians(a[1])) @ rx(math.radians(a[0]))


def read_asf(path):
    bones = {"root": {"dir": np.zeros(3), "len": 0.0, "C": np.eye(3), "dof": ["tx", "ty", "tz", "rx", "ry", "rz"]}}
    parent = {}
    lines = open(path).read().splitlines()
    i = 0
    cur = None
    mode = ""
    while i < len(lines):
        s = lines[i].strip()
        i += 1
        if s.startswith(":"):
            mode = s.split()[0]
            continue
        if mode == ":bonedata":
            w = s.split()
            if not w:
                continue
            if w[0] == "begin":
                cur = {"dof": []}
            elif w[0] == "name":
                cur["name"] = w[1]
            elif w[0] == "direction":
                cur["dir"] = np.array([float(x) for x in w[1:4]])
            elif w[0] == "length":
                cur["len"] = float(w[1]) * UNIT
            elif w[0] == "axis":
                cur["C"] = _euler([float(x) for x in w[1:4]])
            elif w[0] == "dof":
                cur["dof"] = w[1:]
            elif w[0] == "end":
                bones[cur["name"]] = cur
        elif mode == ":hierarchy":
            w = s.split()
            if not w or w[0] in ("begin", "end"):
                continue
            for c in w[1:]:
                parent[c] = w[0]
    order = ["root"]
    k = 0
    while k < len(order):
        order += [c for c, p in parent.items() if p == order[k]]
        k += 1
    return bones, parent, order


def read_amc(path):
    frames = []
    cur = None
    for s in open(path):
        s = s.strip()
        if not s or s[0] in "#:":
            continue
        if s.isdigit():
            cur = {}
            frames.append(cur)
            continue
        w = s.split()
        cur[w[0]] = [float(x) for x in w[1:]]
    return frames


def cmu_take(asf, amc, fps=120):
    bones, parent, order = read_asf(asf)
    t = Take(fps)

    def pose(fr):
        g = {}
        p = {}
        for b in order:
            B = bones[b]
            vals = fr.get(b, []) if fr else []
            ang = [0.0, 0.0, 0.0]
            off = np.zeros(3)
            for d, v in zip(B["dof"], vals):
                if d[0] == "r":
                    ang["xyz".index(d[1])] = v
                elif d[0] == "t":
                    off["xyz".index(d[1])] = v * UNIT
            L = B["C"] @ _euler(ang) @ B["C"].T
            if b == "root":
                g[b] = L
                p[b] = off
                start = off
            else:
                g[b] = g[parent[b]] @ L
                start = p[parent[b]]
                p[b] = start + g[b] @ B["dir"] * B["len"]
            if b in CMU_JOINT:
                p["@" + CMU_JOINT[b]] = start
            if b in CMU_END:
                p["@" + CMU_END[b]] = p[b]
        pos = {k[1:]: v for k, v in p.items() if k.startswith("@")}
        pos["pelvis"] = p["root"]
        return g, pos

    g0, p0 = pose(None)
    t.rest_pos = p0
    for b, r in CMU_ROLE.items():
        if b != "root" and r.split("_")[0] in CHILD:
            t.rest_dir[r] = g0[b] @ bones[b]["dir"]
    for fr in read_amc(amc):
        g, p = pose(fr)
        t.rot.append({r: g[b] for b, r in CMU_ROLE.items()})
        t.pos.append(p)
    return t.finish()


# ---------------------------------------------------------------- glTF (.glb) animations — Quaternius UAL

UAL_ROLE = {"pelvis": "pelvis", "spine_03": "chest", "neck_01": "neck", "Head": "head"}
for _s in "lr":
    for _b in ["clavicle", "upperarm", "lowerarm", "hand", "thigh", "calf", "foot", "ball"]:
        UAL_ROLE[f"{_b}_{_s}"] = f"{_b}_{_s}"
UAL_TIP = {"hand_tip_l": "middle_01_l", "hand_tip_r": "middle_01_r", "ball_tip_l": "ball_leaf_l",
           "ball_tip_r": "ball_leaf_r", "head_top": "Head"}


class Glb:
    def __init__(self, path):
        b = open(path, "rb").read()
        n = struct.unpack("<I", b[12:16])[0]
        self.j = json.loads(b[20:20 + n])
        self.bin = b[20 + n + 8:]
        self.names = [nd.get("name", "") for nd in self.j["nodes"]]
        self.parent = {}
        for i, nd in enumerate(self.j["nodes"]):
            for c in nd.get("children", []):
                self.parent[c] = i

    def acc(self, i):
        a = self.j["accessors"][i]
        v = self.j["bufferViews"][a["bufferView"]]
        k = {"SCALAR": 1, "VEC3": 3, "VEC4": 4}[a["type"]]
        off = v.get("byteOffset", 0) + a.get("byteOffset", 0)
        arr = np.frombuffer(self.bin, dtype=np.float32, count=a["count"] * k, offset=off)
        return arr.reshape(a["count"], k) if k > 1 else arr

    def rest_trs(self):
        out = []
        for nd in self.j["nodes"]:
            out.append([np.array(nd.get("translation", [0, 0, 0]), float), np.array(nd.get("rotation", [0, 0, 0, 1]), float),
                        np.array(nd.get("scale", [1, 1, 1]), float)])
        return out

    def anim(self, name):
        for a in self.j["animations"]:
            if a["name"] == name:
                return a
        raise KeyError(name)


def _globals(g, trs):
    G = {}

    def get(i):
        if i in G:
            return G[i]
        t, q, s = trs[i]
        m = np.eye(4)
        m[:3, :3] = m_from_q(q) @ np.diag(s)
        m[:3, 3] = t
        if i in g.parent:
            m = get(g.parent[i]) @ m
        G[i] = m
        return m
    for i in range(len(trs)):
        get(i)
    return G


def glb_take(path, clip, fps=30):
    g = Glb(path)
    idx = {n: i for i, n in enumerate(g.names)}
    rest = g.rest_trs()
    a = g.anim(clip)
    chans = []
    end = 0.0
    for ch in a["channels"]:
        s = a["samplers"][ch["sampler"]]
        times = g.acc(s["input"])
        vals = g.acc(s["output"])
        end = max(end, float(times[-1]))
        chans.append((ch["target"]["node"], ch["target"]["path"], times, vals))
    t = Take(fps)

    def snap(G):
        p = {r: G[idx[b]][:3, 3].copy() for b, r in UAL_ROLE.items()}
        for k, b in UAL_TIP.items():
            p[k] = G[idx[b]][:3, 3].copy()
        return p

    G0 = _globals(g, rest)
    R0 = {r: G0[idx[b]][:3, :3] / np.linalg.norm(G0[idx[b]][:3, :3], axis=0) for b, r in UAL_ROLE.items()}
    t.rest_pos = snap(G0)
    for r in ROLES:
        c = CHILD.get(r.split("_")[0])
        if c:
            tip = c + "_" + r[-1]
            t.rest_dir[r] = t.rest_pos[tip] - t.rest_pos[r]
            t.rest_dir[r] /= np.linalg.norm(t.rest_dir[r])
    n = int(round(end * fps)) + 1
    for f in range(n):
        tt = min(f / fps, end)
        trs = [[x.copy() for x in r] for r in rest]
        for node, path, times, vals in chans:
            k = int(np.searchsorted(times, tt, side="right")) - 1
            k = max(0, min(k, len(times) - 1))
            k2 = min(k + 1, len(times) - 1)
            u = 0.0 if k2 == k else (tt - times[k]) / (times[k2] - times[k])
            u = min(max(u, 0.0), 1.0)
            if path == "rotation":
                trs[node][1] = slerp(vals[k].astype(float), vals[k2].astype(float), u)
            elif path == "translation":
                trs[node][0] = vals[k] * (1 - u) + vals[k2] * u
            elif path == "scale":
                trs[node][2] = vals[k] * (1 - u) + vals[k2] * u
        G = _globals(g, trs)
        rot = {}
        for b, r in UAL_ROLE.items():
            m = G[idx[b]][:3, :3]
            m = m / np.linalg.norm(m, axis=0)
            rot[r] = m @ R0[r].T
        t.rot.append(rot)
        t.pos.append(snap(G))
    return t.finish()


# ---------------------------------------------------------------- edits: mirror, lean, loop seam

MIRROR = np.diag([-1.0, 1.0, 1.0])


def mirror(t):
    o = Take(t.fps)
    sw = lambda k: k[:-2] + ("_r" if k.endswith("_l") else "_l") if k[-2:] in ("_l", "_r") else k
    o.rest_pos = {sw(k): MIRROR @ v for k, v in t.rest_pos.items()}
    o.rest_dir = {sw(k): MIRROR @ v for k, v in t.rest_dir.items()}
    for rot, pos in zip(t.rot, t.pos):
        o.rot.append({sw(k): MIRROR @ m @ MIRROR for k, m in rot.items()})
        o.pos.append({sw(k): MIRROR @ v for k, v in pos.items()})
    return o


UPPER = ["chest", "neck", "head"] + [f"{b}_{s}" for s in "lr" for b in ["clavicle", "upperarm", "lowerarm", "hand"]]


def lean(t, frame, side, deg=24.0, down=0.25, hold=0.55, up=0.4, fps=30):
    """A side lean out of one held frame of `t`: the upper body bends over the pelvis (+ side = to the figure's left);
    the head stays a little more upright (it looks ahead). Minimum-jerk in and out."""
    o = Take(fps)
    o.rest_pos, o.rest_dir = t.rest_pos, t.rest_dir
    base_r, base_p = t.rot[frame], t.pos[frame]
    n = int(round((down + hold + up) * fps)) + 1
    for i in range(n):
        x = i / fps
        if x < down:
            k = x / down
        elif x < down + hold:
            k = 1.0
        else:
            k = max(0.0, 1.0 - (x - down - hold) / up)
        k = k * k * k * (10 - 15 * k + 6 * k * k)
        a = math.radians(deg) * k * side
        R = rz(-a)                                      # + side: the trunk tips towards +X (his left)
        rot = {}
        for r, m in base_r.items():
            if r in UPPER:
                rr = R if r not in ("neck", "head") else rz(-a * (0.75 if r == "neck" else 0.45))
                rot[r] = rr @ m
            elif r == "pelvis":
                rot[r] = rz(-a * 0.25) @ m
            else:
                rot[r] = m
        o.rot.append(rot)
        pel = base_p["pelvis"]
        pos = {}
        for kk, v in base_p.items():
            pos[kk] = pel + R @ (v - pel) if kk in UPPER or kk in ("hand_tip_l", "hand_tip_r", "head_top") else v.copy()
        pos["pelvis"] = pel + np.array([-0.03 * side * k, -0.02 * k, 0])
        o.pos.append(pos)
    return o


def seam(t, tail=0.25):
    """Make a loop seamless: the last `tail` seconds blend into the first frame."""
    n = len(t.rot)
    m = max(1, int(tail * t.fps))
    for i in range(n - m, n):
        u = (i - (n - m)) / max(m - 1, 1)
        u = u * u * (3 - 2 * u)
        t.rot[i] = {r: m_from_q(slerp(q_from_m(t.rot[i][r]), q_from_m(t.rot[0][r]), u)) for r in t.rot[i]}
        t.pos[i] = {k: t.pos[i][k] * (1 - u) + t.pos[0][k] * u for k in t.pos[i]}
    return t


def to_json(t, loop=False, marks=None):
    """{fps, n, loop, marks, pel: [x,y,z…] (pelvis, metres, floor = 0), rot: {role: [x,y,z,w…]}}"""
    d = {"fps": t.fps, "n": len(t.rot), "loop": loop, "marks": marks or {}, "pel": [], "rot": {r: [] for r in ROLES}}
    prev = {}
    for rot, pos in zip(t.rot, t.pos):
        d["pel"] += [round(float(x), 4) for x in pos["pelvis"]]
        for r in ROLES:
            q = q_from_m(rot[r])
            if r in prev and np.dot(prev[r], q) < 0:      # keep the sign continuous (the game lerps between frames)
                q = -q
            prev[r] = q
            d["rot"][r] += [round(float(x), 4) for x in q]
    return d
