#!/usr/bin/env python3
"""CMU motion capture (mocap.cs.cmu.edu, free for any use) → what the VR legs see and what is true, per clip:
the eyes (the headset), both shins (direction ankle → knee, knee hinge axis, foot direction) and the true hips,
knees, ankles, toes, foot contact. Vectorised forward kinematics (same as cmu2json.py / motion-core.js Mocap).

  python3 scripts/vr-legs/cmu_legs.py <dir with .asf/.amc> <out dir>        → <out>/<clip>.npz (60 fps, metres, y up)
"""
import glob, os, re, sys
import numpy as np

sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..', 'motion'))
from cmu2json import parse_asf, UNIT_M  # noqa: E402


def parse_amc(path):
    names, rows, cur = None, [], {}
    for line in open(path):
        line = line.strip()
        if not line or line[0] in '#:':
            continue
        if line.isdigit():
            if cur:
                rows.append(cur)
            cur = {}
            continue
        p = line.split()
        cur[p[0]] = [float(x) for x in p[1:]]
    if cur:
        rows.append(cur)
    return rows


def R(axis, a):
    c, s = np.cos(a), np.sin(a)
    n = len(a)
    M = np.zeros((n, 3, 3))
    i, j = {'x': (1, 2), 'y': (2, 0), 'z': (0, 1)}[axis]
    k = 3 - i - j
    M[:, k, k] = 1
    M[:, i, i] = c; M[:, j, j] = c; M[:, i, j] = -s; M[:, j, i] = s
    return M


def eul(x, y, z):                                   # rz · ry · rx, degrees, arrays
    return R('z', np.radians(z)) @ R('y', np.radians(y)) @ R('x', np.radians(x))


def fk(bones, rows):
    n = len(rows)
    G, P, C = {}, {}, {}
    order, done = [], set()
    while len(done) < len(bones):
        for b in bones:
            if b in done or (bones[b]['parent'] and bones[b]['parent'] not in done):
                continue
            order.append(b); done.add(b)
    for b in order:
        bn = bones[b]
        c = eul(*[np.array([v]) for v in bn['axis']])[0]
        C[b] = c
        if b == 'root':
            v = np.array([r.get('root', [0] * 6) for r in rows])
            G[b] = c @ eul(v[:, 3], v[:, 4], v[:, 5]) @ c.T
            P[b] = v[:, :3] * UNIT_M
        else:
            r = {'rx': np.zeros(n), 'ry': np.zeros(n), 'rz': np.zeros(n)}
            vals = [rw.get(b, [0] * len(bn['dof'])) for rw in rows]
            for di, d in enumerate(bn['dof']):
                r[d] = np.array([vv[di] if di < len(vv) else 0 for vv in vals])
            G[b] = G[bn['parent']] @ (c @ eul(r['rx'], r['ry'], r['rz']) @ c.T)
            P[b] = P[bn['parent']] + bn['len'] * UNIT_M * (G[b] @ np.array(bn['dir']))
    return G, P, C


def clip(asf, amc):
    bones = parse_asf(asf)
    rows = parse_amc(amc)[::2]                        # 120 → 60 fps
    if len(rows) < 120:
        return None
    G, P, C = fk(bones, rows)
    out = {}
    floor = None
    for s in 'lr':
        hip, knee, ankle, toe = P[s + 'hipjoint'], P[s + 'femur'], P[s + 'tibia'], P[s + 'foot']
        u = knee - ankle
        u /= np.linalg.norm(u, axis=1, keepdims=True)
        a = G[s + 'tibia'] @ (C[s + 'tibia'] @ np.array([1.0, 0, 0]))      # tibia's own x = the knee's hinge
        if s == 'r':
            a = a                                                         # both: CMU x = the body's left? fixed below
        d = toe - ankle
        out.update({'hip_' + s: hip, 'knee_' + s: knee, 'ankle_' + s: ankle, 'toe_' + s: toe, 'u_' + s: u,
                    'a_' + s: a, 'd_' + s: d / np.linalg.norm(d, axis=1, keepdims=True)})
    out['wrist_l'], out['wrist_r'] = P['lwrist'], P['rwrist']          # the hands (the controllers in the game)
    eye = P['upperneck'] + 0.55 * (P['head'] - P['upperneck'])
    out['eye'] = eye
    # floor: the lowest the ankles get (both feet), the ankle's own height above it from the bone (≈ 0.039 × height)
    lo = np.minimum(out['ankle_l'][:, 1], out['ankle_r'][:, 1])
    out['floor'] = np.array(np.percentile(lo, 1))
    return {k: np.asarray(v, dtype=np.float32) for k, v in out.items()}


if __name__ == '__main__':
    src, dst = sys.argv[1], sys.argv[2]
    os.makedirs(dst, exist_ok=True)
    for amc in sorted(glob.glob(os.path.join(src, '*.amc'))):
        cid = os.path.basename(amc)[:-4]
        asf = os.path.join(src, cid.split('_')[0] + '.asf')
        if not os.path.exists(asf):
            asf = os.path.join(src, cid.split('_')[0].zfill(2) + '.asf')
        if not os.path.exists(asf):
            continue
        d = clip(asf, amc)
        if d is None:
            continue
        np.savez_compressed(os.path.join(dst, cid + '.npz'), **d)
        print(cid, len(d['eye']), 'frames')
