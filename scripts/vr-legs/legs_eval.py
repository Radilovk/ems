#!/usr/bin/env python3
"""The game's PadLegs (vr-workout/scripts/game/pad_legs.gd) in Python, run on REAL human movement (CMU, via
cmu_legs.py): the headset = the true eyes, the shin sensors = the true shins (+ vertical acceleration with noise and
an offset), and the solved knees / ankles against the true ones. Mirrors the GDScript step by step (stand detection,
vertical tracker, planted feet, hips between legs and head, lifted leg at its height); `prior` plugs in a learned
model (legs_prior.py).

  python3 scripts/vr-legs/legs_eval.py <npz dir> [clip …]           per clip: knee / ankle error mean, p95 (cm)
"""
import glob, math, os, sys
import numpy as np

UP = np.array([0.0, 1, 0])
DT = 1 / 60.0
LIFT = 0.05
CAM_FOV = float(__import__('os').environ.get('CAM_FOV', 40))
CAL = __import__('os').environ.get('CAL', '') == '1'
SENSE = __import__('os').environ.get('SENSE', '')   # '' · tof (height under the shin) · ankle (IR camera: ankle position)
HANDS = __import__('os').environ.get('HANDS', '1') == '1'
PW = float(__import__('os').environ.get('PW', 0.5))


def rot(v, axis, ang):
    axis = axis / np.linalg.norm(axis)
    return v * math.cos(ang) + np.cross(axis, v) * math.sin(ang) + axis * axis.dot(v) * (1 - math.cos(ang))


def nrm(v):
    n = np.linalg.norm(v)
    return v / n if n > 1e-9 else v


def knee_bend_old(hip, u, a, lt, ls, ankle_y):
    f = lambda k: hip[1] - rot(u, a, -k)[1] * lt - u[1] * ls - ankle_y
    c = np.cross(u, UP)
    up_k = min(max(-math.atan2(c.dot(nrm(a)), u.dot(UP)), 0), math.radians(150))
    if f(up_k) > 0.02:
        return 0.5 * up_k
    lo, hi = up_k, math.radians(150)
    if f(hi) < 0:
        return hi
    for _ in range(18):
        m = 0.5 * (lo + hi)
        if f(m) < 0:
            lo = m
        else:
            hi = m
    return 0.5 * (lo + hi)


class Legs:
    def __init__(s, stand_h, floor_y, use_acc=True, prior=None):
        s.stand_h, s.floor_y, s.use_acc, s.prior = stand_h, floor_y, use_acc, prior
        H = stand_h / 0.936
        s.lt, s.ls, s.ah, s.hw = 0.245 * H, 0.246 * H, 0.039 * H, 0.052 * H
        s.hip_drop = stand_h - (s.ah + s.ls + s.lt)
        s.trunk = math.hypot(s.hip_drop, 0.05)
        s.v = {'l': dict(bias=0., sig=0.3, am=0., v=0., h=0., hold=0., st=0.) for _ in [0]}
        s.v = {sd: dict(bias=0., sig=0.3, am=0., v=0., h=0., hold=0., st=0.) for sd in 'lr'}
        s.still = {'l': 0., 'r': 0.}
        s.w = {'l': 0., 'r': 0.}
        s.uprev = {}
        s.head_prev = None
        s.head_v = 0.
        s.rezero = True
        s.pc = None
        s.pc_off = None
        s.anc = {}
        s.kprev = {'l': 0., 'r': 0.}
        s.land = {'l': 0., 'r': 0.}
        s.hist = []

    # ---- poll(): stillness, the stand, the vertical trackers
    def poll(s, U, acc, head):
        for sd in 'lr':
            if sd in s.uprev:
                ang = math.degrees(math.acos(min(1, max(-1, U[sd].dot(s.uprev[sd]))))) / DT
                s.w[sd] += (ang - s.w[sd]) * min(1, DT / 0.1)
            s.uprev[sd] = U[sd]
            busy = s.use_acc and s.v[sd]['am'] > 0.3 + 2 * s.v[sd]['sig']
            s.still[sd] = s.still[sd] + DT if s.w[sd] < 8 and not busy else 0.
        upright = head[1] - s.floor_y > s.stand_h - 0.04
        shins_up = all(math.degrees(math.acos(min(1, U[sd][1]))) < 8 for sd in 'lr')
        stand = all(s.still[sd] >= 1.0 for sd in 'lr') and upright and s.head_v < 0.08 and shins_up
        s.acc_now = acc
        if s.use_acc:
            for sd in 'lr':
                s.vert(sd, acc[sd], stand)
        if stand:
            s.rezero = True
        return stand

    def vert(s, sd, g, stand):
        v = s.v[sd]
        a = max(-4, min(4, g)) * 9.81
        e = a - v['bias']
        if stand:
            v['bias'] += (a - v['bias']) * min(1, DT / 0.5)
            v['sig'] += (abs(e) - v['sig']) * min(1, DT / 0.5)
            v['h'] = v['v'] = 0.; v['am'] = abs(e)
            return
        v['am'] += (abs(e) - v['am']) * min(1, DT / 0.1)
        quiet = s.w[sd] < 15 and v['am'] < 0.3 + 2 * v['sig']
        v['st'] = v['st'] + DT if quiet else 0.
        if v['hold'] > 0:
            v['hold'] -= DT; v['v'] = 0.
        else:
            v['v'] += e * DT
        v['h'] += v['v'] * DT
        if v['h'] <= 0:
            if v['v'] < -0.2:
                v['hold'] = 0.2
            v['h'] = 0.; v['v'] = max(v['v'], 0.)
        v['h'] = min(v['h'], 1.2)
        if v['st'] > 0.12:
            v['v'] = 0.
            v['h'] *= math.exp(-DT / (0.08 if v['h'] < 0.12 else 1.5))

    # ---- limbs()
    def limbs(s, U, A, D, head):
        if s.head_prev is not None:
            s.head_v += (np.linalg.norm(head - s.head_prev) / DT - s.head_v) * min(1, DT / 0.15)
        s.head_prev = head.copy()
        lt, ls, ah, hw, fy = s.lt, s.ls, s.ah, s.hw, s.floor_y
        bf = np.zeros(3)
        for sd in 'lr':
            f = np.cross(A[sd], UP)
            if np.linalg.norm(f) > 0.3:
                bf += nrm(f)
        bf = nrm(bf)
        left = nrm(np.cross(UP, bf))
        stand_off = -UP * s.hip_drop - bf * 0.05
        sg = {'l': 1., 'r': -1.}
        if s.rezero or s.pc is None or np.linalg.norm(s.pc - head) > s.trunk + 0.5:
            s.rezero = False
            s.pc = head + stand_off; s.pc_off = stand_off
            for sd in 'lr':
                p = s.pc + left * hw * sg[sd]
                s.anc[sd] = np.array([p[0], fy + ah, p[2]])
                s.kprev[sd] = 0.
        P = s.prior(s, U, A, head, bf) if s.prior else None
        ground = {}
        for sd in 'lr':
            u = U[sd]
            m = getattr(s, 'meas', {}).get(sd)
            if SENSE == 'tof' and m is not None:
                ground[sd] = m < 0.03                                  # measured height of the ankle above the floor
            elif SENSE in ('ankle', 'cam') and m is not None:
                ground[sd] = m[1] - (fy + ah) < 0.03
            elif P is not None and 'ground' in P:
                ground[sd] = P['ground'][sd]
            elif s.use_acc:
                ground[sd] = s.v[sd]['h'] < LIFT
            else:
                hip = s.pc + left * hw * sg[sd]
                c = np.cross(u, UP)
                up_k = min(max(-math.atan2(c.dot(A[sd]), u.dot(UP)), 0), math.radians(150))
                ground[sd] = hip[1] - rot(u, A[sd], -up_k)[1] * lt - u[1] * ls - (fy + ah) < LIFT
            if not ground[sd]:
                s.anc.pop(sd, None)
        if SENSE == 'ankle':                                           # measured ankles: both anchor the hips
            for sd in 'lr':
                if s.meas.get(sd) is not None:
                    s.anc[sd] = s.meas[sd].copy()
            planted = [sd for sd in 'lr' if sd in s.anc and s.meas.get(sd) is not None]
        elif SENSE == 'cam':                                           # seen this frame and on the floor: there
            for sd in 'lr':
                if s.meas.get(sd) is not None and ground[sd]:
                    s.anc[sd] = np.array([s.meas[sd][0], fy + ah, s.meas[sd][2]])
            planted = [sd for sd in 'lr' if ground[sd] and sd in s.anc]
        else:
            planted = [sd for sd in 'lr' if ground[sd] and sd in s.anc]
        pc = s.pc.copy()
        if not planted:
            pc = P['pc'] if P is not None else head + s.pc_off
        else:
            knees = {sd: s.anc[sd] + U[sd] * ls for sd in planted}
            for _ in range(12):
                acc = np.zeros(3); n = 0.
                for sd in planted:
                    off = left * hw * sg[sd]
                    acc += knees[sd] + nrm(pc + off - knees[sd]) * lt - off; n += 1
                acc += (head + nrm(pc - head) * s.trunk) * 1.5; n += 1.5
                if P is not None:
                    acc += P['pc'] * PW; n += PW
                else:
                    acc += (head + stand_off) * 0.03; n += 0.03
                pc = acc / n
                pc[1] = min(pc[1], head[1] - 0.1)
            for sd in planted:
                d = pc + left * hw * sg[sd] - knees[sd]
                e = np.linalg.norm(d) - lt
                dh = np.array([d[0], 0, d[2]])
                if e > 0.03 and np.linalg.norm(dh) > 1e-3:
                    s.anc[sd] = s.anc[sd] + nrm(dh) * (e - 0.03)
            s.pc_off = pc - head
        s.pc = pc
        out = {}
        for sd in 'lr':
            u, a = U[sd], A[sd]
            hip = pc + left * hw * sg[sd]
            m = getattr(s, 'meas', {}).get(sd)
            if SENSE in ('ankle', 'cam') and m is not None:
                ankle = m.copy(); knee = ankle + u * ls
            elif ground[sd] and sd in s.anc:
                ankle = s.anc[sd].copy(); knee = ankle + u * ls
                s.land[sd] -= DT
                if s.land[sd] > 0 and u[1] > math.cos(math.radians(12)):
                    t = hip - UP * (lt + ls); k = min(1, DT / 0.25)
                    s.anc[sd][0] += (t[0] - s.anc[sd][0]) * k; s.anc[sd][2] += (t[2] - s.anc[sd][2]) * k
            else:
                if SENSE == 'tof' and m is not None:                   # bend the knee to the measured height
                    target = fy + ah + m
                    kp_ = hip + P['thigh'][sd] * lt if P is not None else None
                    best, k = 1e9, 0.
                    for i in range(51):
                        kk = math.radians(150) * i / 50
                        kn = hip - rot(u, a, -kk) * lt
                        ay = kn[1] - u[1] * ls
                        c = abs(ay - target) + (0.3 * np.linalg.norm(kn - kp_) if kp_ is not None else 0.03 * abs(kk - s.kprev[sd]))
                        if c < best:
                            best, k = c, kk
                elif P is not None:
                    k = None
                elif s.use_acc:
                    target = fy + ah + s.v[sd]['h']
                    best, k = 1e9, 0.
                    for i in range(51):
                        kk = math.radians(150) * i / 50
                        ay = hip[1] - rot(u, a, -kk)[1] * lt - u[1] * ls
                        c = abs(ay - target) + 0.03 * abs(kk - s.kprev[sd])
                        if c < best:
                            best, k = c, kk
                else:
                    k = knee_bend_old(hip, u, a, lt, ls, fy + ah)
                if k is None:
                    knee = hip + P['thigh'][sd] * lt
                else:
                    s.kprev[sd] = k
                    knee = hip - rot(u, a, -k) * lt
                ankle = knee - u * ls
                ankle[1] = max(ankle[1], fy + ah)
                if ground[sd]:
                    s.anc[sd] = np.array([ankle[0], fy + ah, ankle[2]])
                    ankle = s.anc[sd].copy(); knee = ankle + u * ls
                    s.land[sd] = 0.5
            out[sd] = dict(knee=knee, ankle=ankle, hip=hip, ground=ground[sd])
        return out


def old_limbs(s, U, A, head, fwd):
    """the model before 2026-11-08: hips under the head, knee bent to the floor or halfway"""
    left = nrm(np.cross(UP, fwd))
    pelvis = head - UP * s.hip_drop - fwd * 0.05
    out = {}
    for sd, sg in (('l', 1), ('r', -1)):
        hip = pelvis + left * s.hw * sg
        k = knee_bend_old(hip, U[sd], A[sd], s.lt, s.ls, s.floor_y + s.ah)
        knee = hip - rot(U[sd], A[sd], -k) * s.lt
        out[sd] = dict(knee=knee, ankle=knee - U[sd] * s.ls)
    return out


def load(path):
    d = dict(np.load(path))
    n = len(d['eye'])
    # stand height: eye above the floor when the person stands tallest (95th percentile); floor = ankles' low − ankle
    eye_h = d['eye'][:, 1]
    floor_ankle = float(d['floor'])
    return d, n, floor_ankle, eye_h


def run(path, use_acc=True, prior=None, noise=0.02, bias=0.01, seed=1, old=False, collect=None):
    d, n, floor_ankle, eye_h = load(path)
    rng = np.random.default_rng(seed)
    # the person's own proportions → the game's model (eye height standing); the floor from the ankle's rest height
    stand_h0 = float(np.percentile(eye_h, 95)) - floor_ankle
    H = (stand_h0 + 0.039 * stand_h0 / 0.936 * 0) / 0.936
    stand_h = stand_h0 + 0.039 * (stand_h0 / 0.936)        # eye above the ground ≈ above the ankle + ankle height
    H = stand_h / 0.936
    floor_y = floor_ankle - 0.039 * H
    s = Legs(stand_h, floor_y, use_acc, prior)
    if CAL and 'len' in d:     # calibrated by the camera: the person's own thigh, shin, hip width, eye → hips
        s.lt, s.ls = float(d['len'][0]), float(d['len'][1])
        top = np.argsort(eye_h)[-max(1, n // 20):]
        hm = (d['hip_l'][top] + d['hip_r'][top]) / 2
        s.hw = float(np.median(np.linalg.norm(d['hip_l'][top] - d['hip_r'][top], axis=1))) / 2
        s.hip_drop = float(np.median(d['eye'][top, 1] - hm[:, 1]))
        s.trunk = float(np.median(np.linalg.norm(d['eye'][top] - hm, axis=1)))
    for sd in 'lr':                       # as after the game's calibration stand: offset and noise level learnt
        s.v[sd]['bias'] = bias * 9.81; s.v[sd]['sig'] = noise * 9.81 * 0.8
    acc = {}
    for sd in 'lr':
        hs = d['ankle_' + sd][:, 1] + d['u_' + sd][:, 1] * 0.05
        acc[sd] = np.gradient(np.gradient(hs, DT), DT) / 9.81 + rng.normal(0, noise, n) + bias
    ek, ea, eo = [], [], []
    for i in range(n):
        U = {sd: d['u_' + sd][i].astype(float) for sd in 'lr'}
        A = {sd: nrm(d['a_' + sd][i].astype(float)) for sd in 'lr'}
        Dd = {sd: d['d_' + sd][i].astype(float) for sd in 'lr'}
        head = d['eye'][i].astype(float)
        s.hands_now = {sd: d['wrist_' + sd][i].astype(float) for sd in 'lr'} if HANDS and 'wrist_l' in d else None
        if SENSE == 'tof':      # a downward range sensor on the shin: ±1 cm, sees the floor while the shin is < 60° tilted
            s.meas = {sd: (float(d['ankle_' + sd][i][1]) - floor_ankle + rng.normal(0, 0.01)) if d['u_' + sd][i][1] > 0.5 else None for sd in 'lr'}
        elif SENSE == 'ankle':  # an IR camera on the belt seeing LEDs at the ankles: ±2 cm, always
            s.meas = {sd: d['ankle_' + sd][i].astype(float) + rng.normal(0, 0.02, 3) for sd in 'lr'}
        elif SENSE == 'cam':    # the headset's front camera, a printed marker on the front of the shin (15 cm up):
            s.meas = {}         # seen only inside the camera's view (±CAM_FOV°), < 2.5 m, facing it; 2 frames late, ±1.5 cm
            for sd in 'lr':
                j = max(0, i - 2)
                u_ = d["u_" + sd][j]; a_ = nrm(d["a_" + sd][j].astype(float)); front = nrm(nrm(np.cross(a_, u_)) + UP)   # tilted up-forward (shoe laces)
                p = d['ankle_' + sd][j] + u_ * 0.15 + front * 0.04
                r = p - d['eye'][j]; dist = np.linalg.norm(r); rn = r / dist
                ok = (rn.dot(d['look'][j]) > math.cos(math.radians(CAM_FOV)) and dist < 2.5 and front.dot(-rn) > 0.26)
                s.meas[sd] = d['ankle_' + sd][j].astype(float) + rng.normal(0, 0.015, 3) if ok else None
                s.seen = getattr(s, 'seen', 0) + (1 if ok else 0)
        stand = s.poll(U, {sd: acc[sd][i] for sd in 'lr'}, head)
        out = s.limbs(U, A, Dd, head)
        if collect is not None:
            collect.append((s, i, U, A, head, out))
        if i < 60:
            continue
        for sd in 'lr':
            ek.append(np.linalg.norm(out[sd]['knee'] - d['knee_' + sd][i]))
            ea.append(np.linalg.norm(out[sd]['ankle'] - d['ankle_' + sd][i]))
        if old:
            f = np.zeros(3)
            for sd in 'lr':
                f += nrm(np.cross(A[sd], UP))
            o = old_limbs(s, U, A, head, nrm(f))
            for sd in 'lr':
                eo.append(np.linalg.norm(o[sd]['knee'] - d['knee_' + sd][i]))
    ek, ea = np.array(ek) * 100, np.array(ea) * 100
    r = dict(knee=ek.mean(), knee95=np.percentile(ek, 95), ankle=ea.mean(), ankle95=np.percentile(ea, 95),
             seen=getattr(s, 'seen', 0) / (2.0 * n))
    if old:
        eo = np.array(eo) * 100
        r.update(old=eo.mean(), old95=np.percentile(eo, 95))
    return r


if __name__ == '__main__':
    src = sys.argv[1]
    clips = sys.argv[2:] or [os.path.basename(p)[:-4] for p in sorted(glob.glob(os.path.join(src, '*.npz')))]
    allr = []
    for c in clips:
        r = run(os.path.join(src, c + '.npz'), old=True)
        allr.append(r)
        print('%-8s knee %5.1f p95 %5.1f | ankle %5.1f p95 %5.1f | old knee %5.1f p95 %5.1f' % (
            c, r['knee'], r['knee95'], r['ankle'], r['ankle95'], r['old'], r['old95']), flush=True)
    print('ALL      knee %5.1f | ankle %5.1f | old knee %5.1f' % (
        np.mean([r['knee'] for r in allr]), np.mean([r['ankle'] for r in allr]), np.mean([r['old'] for r in allr])))
