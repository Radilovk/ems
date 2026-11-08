"""VR legs from two shin sensors (vr-workout/scripts/game/pad_legs.gd): the old model (hips under the head, thigh
guessed) vs the bottom-up one (planted feet, hips between the legs and the head, lifted foot at its measured height),
against scripted true movements. python3 scripts/vr-legs/legs_proto.py — the same movements as test/pad_truth_test.gd."""
import numpy as np, math, sys
UP = np.array([0., 1, 0]); FWD = np.array([0., 0, -1]); LEFT = np.cross(UP, FWD)  # (-1,0,0)
DT = 1 / 72.0
STAND_H = 1.65
H = STAND_H / 0.936
LT, LS, AH, HW = 0.245 * H, 0.246 * H, 0.039 * H, 0.052 * H
HIP_DROP = STAND_H - (AH + LS + LT)
T = math.hypot(HIP_DROP, 0.05)
import os
QA=float(os.environ.get('QA',0.25)); QR=float(os.environ.get('QR',1.0)); LIFT=float(os.environ.get('LIFT',0.05)); LAND=float(os.environ.get('LAND',0.05))
rng = np.random.default_rng(1)

def rot(v, axis, ang):
    axis = axis / np.linalg.norm(axis)
    return v * math.cos(ang) + np.cross(axis, v) * math.sin(ang) + axis * axis.dot(v) * (1 - math.cos(ang))

def sag(f, u):  # forward, up components -> world
    return FWD * f + UP * u

# ---------------- truth ----------------
# truth body slightly different from the model (thigh +4 %, shin -3 %)
TLT, TLS = LT * 1.04, LS * 0.97
THD = STAND_H - (AH + TLS + TLT)

def lean_vec(lam):
    l0 = math.atan2(0.05, THD)
    return sag(math.sin(lam + l0), math.cos(lam + l0)) * math.hypot(THD, 0.05)

def truth_frame(p):
    """p: dict with stance ('l'/'r'/'both'), per-leg params; returns joints + head.
    stance leg: t (shin fwd tilt), th (thigh back tilt). air leg: phi (thigh flex fwd), k (knee flex)."""
    J = {}
    side = {'l': 1, 'r': -1}
    # pelvis from the stance leg(s)
    st = p['stance']
    legs = ['l', 'r'] if st == 'both' else [st]
    pcs = []
    for s in legs:
        q = p[s]
        anc = p.get('anc_' + s, np.zeros(3)) + LEFT * HW * side[s] + UP * AH
        knee = anc + sag(math.sin(q['t']), math.cos(q['t'])) * TLS
        hip = knee + sag(-math.sin(q['th']), math.cos(q['th'])) * TLT
        J[s] = dict(ankle=anc, knee=knee, hip=hip, u=sag(math.sin(q['t']), math.cos(q['t'])), ground=True)
        pcs.append(hip - LEFT * HW * side[s])
    pc = np.mean(pcs, axis=0)
    for s in ['l', 'r']:
        if s in legs:
            continue
        q = p[s]
        hip = pc + LEFT * HW * side[s]
        knee = hip + sag(math.sin(q['phi']), -math.cos(q['phi'])) * TLT
        a = q['phi'] - q['k']
        ankle = knee + sag(math.sin(a), -math.cos(a)) * TLS
        u = (knee - ankle) / TLS
        J[s] = dict(ankle=ankle, knee=knee, hip=hip, u=u, ground=False)
    head = pc + lean_vec(p.get('lam', 0.0))
    return J, head

def stand():
    return dict(stance='both', l=dict(t=0, th=0), r=dict(t=0, th=0), lam=0)

def ease(x):
    return 0.5 - 0.5 * math.cos(math.pi * min(max(x, 0), 1))

def motion(name):
    """yields param dicts over time"""
    seq = []
    N = int(1.0 / DT)
    for i in range(N):
        seq.append(stand())
    def updown(n, f):
        for i in range(n):
            x = ease(i / n * 2) if i < n / 2 else ease(2 - i / n * 2)
            seq.append(f(x))
    if name == 'squat':
        updown(int(3 / DT), lambda x: dict(stance='both', l=dict(t=math.radians(35) * x, th=math.radians(75) * x),
                                            r=dict(t=math.radians(35) * x, th=math.radians(75) * x), lam=math.radians(30) * x))
    elif name == 'bend':   # hip hinge, near-straight legs
        updown(int(3 / DT), lambda x: dict(stance='both', l=dict(t=math.radians(-4) * x, th=math.radians(14) * x),
                                            r=dict(t=math.radians(-4) * x, th=math.radians(14) * x), lam=math.radians(85) * x))
    elif name == 'knee_raise':
        updown(int(1.6 / DT), lambda x: dict(stance='l', l=dict(t=0, th=0), r=dict(phi=math.radians(85) * x, k=math.radians(95) * x)))
    elif name == 'front_kick':
        n = int(1.4 / DT)
        for i in range(n):
            x = i / n
            if x < 0.35: phi, k = 80 * ease(x / 0.35), 110 * ease(x / 0.35)
            elif x < 0.55: phi, k = 80, 110 - 100 * ease((x - 0.35) / 0.2)
            elif x < 0.75: phi, k = 80, 10 + 100 * ease((x - 0.55) / 0.2)
            else: phi, k = 80 * (1 - ease((x - 0.75) / 0.25)), 110 * (1 - ease((x - 0.75) / 0.25))
            seq.append(dict(stance='l', l=dict(t=0, th=0), r=dict(phi=math.radians(phi), k=math.radians(k))))
    elif name == 'heel_curl':
        updown(int(1.4 / DT), lambda x: dict(stance='l', l=dict(t=0, th=0), r=dict(phi=math.radians(8) * x, k=math.radians(125) * x)))
    elif name == 'back_kick':
        updown(int(1.4 / DT), lambda x: dict(stance='l', l=dict(t=0, th=0), r=dict(phi=math.radians(-35) * x, k=math.radians(25) * x)))
    elif name == 'walk':
        for rep in range(4):
            for s, o in (('r', 'l'), ('l', 'r')):
                updown(int(0.6 / DT), lambda x, s=s, o=o: {'stance': o, o: dict(t=0, th=0), s: dict(phi=math.radians(45) * x, k=math.radians(70) * x)})
    for i in range(int(0.8 / DT)):
        seq.append(stand())
    return seq

# ---------------- solvers ----------------
def knee_bend_old(hip, u, a, ankle_y):
    f = lambda k: hip[1] - rot(u, a, -k)[1] * LT - u[1] * LS - ankle_y
    # signed angle u -> UP about a
    c = np.cross(u, UP); s = c.dot(a); up_k = min(max(-math.atan2(s, u.dot(UP)), 0), math.radians(150))
    if f(up_k) > 0.02:
        return 0.5 * up_k
    lo, hi = up_k, math.radians(150)
    if f(hi) < 0: return hi
    for _ in range(18):
        m = 0.5 * (lo + hi)
        if f(m) < 0: lo = m
        else: hi = m
    return 0.5 * (lo + hi)

def solve_old(J, head, st):
    out = {}
    pelvis = head - UP * HIP_DROP - FWD * 0.05
    for s, sg in (('l', 1), ('r', -1)):
        u = J[s]['u']; a = LEFT
        hip = pelvis + LEFT * HW * sg
        k = knee_bend_old(hip, u, a, AH)
        knee = hip - rot(u, a, -k) * LT
        ankle = knee - u * LS
        out[s] = dict(knee=knee, ankle=ankle, hip=hip)
    return out

class New:
    def __init__(s, use_acc=True):
        s.use_acc = use_acc
        s.pc = None; s.anc = {}; s.h = {'l': 0., 'r': 0.}; s.v = {'l': 0., 'r': 0.}; s.kp = {'l': 0., 'r': 0.}
        s.bias = {'l': 0., 'r': 0.}; s.still_t = {'l': 0., 'r': 0.}; s.air = {'l': False, 'r': False}
        s.off = None

    def vert(s, sd, acc_g, w_dps, dt, stand=False):
        a = acc_g * 9.81
        if not hasattr(s, 'am'):
            s.am = {'l': 0., 'r': 0.}; s.sig = {'l': 0.3, 'r': 0.3}; s.hold = {'l': 0., 'r': 0.}
        e = a - s.bias[sd]
        if stand:            # standing tall and still (the zero pose): the true vertical acceleration is 0
            s.bias[sd] += (a - s.bias[sd]) * min(1, dt / 0.5)
            s.sig[sd] += (abs(e) - s.sig[sd]) * min(1, dt / 0.5)
            s.h[sd] = 0; s.v[sd] = 0; s.am[sd] = abs(e)
            return
        s.am[sd] += (abs(e) - s.am[sd]) * min(1, dt / 0.1)
        quiet = w_dps < 15 and s.am[sd] < 0.3 + 2.0 * s.sig[sd]
        s.still_t[sd] = s.still_t[sd] + dt if quiet else 0.0
        if s.hold[sd] > 0:
            s.hold[sd] -= dt; s.v[sd] = 0.0
        else:
            s.v[sd] += e * dt
        s.h[sd] += s.v[sd] * dt
        if s.h[sd] <= 0:
            if s.v[sd] < -0.2:
                s.hold[sd] = 0.2
            s.h[sd] = 0; s.v[sd] = max(s.v[sd], 0.0)
        s.h[sd] = min(s.h[sd], LT + LS)
        if s.still_t[sd] > 0.12:
            s.v[sd] = 0
            s.h[sd] *= math.exp(-dt / (0.08 if s.h[sd] < 0.12 else 1.5))

    def zero(s, head, fwd):
        left = np.cross(UP, fwd)
        s.pc = head - UP * HIP_DROP - fwd * 0.05
        for sd, sg in (('l', 1), ('r', -1)):
            p = s.pc + left * HW * sg
            s.anc[sd] = np.array([p[0], AH, p[2]])
            s.h[sd] = 0; s.v[sd] = 0; s.kp[sd] = 0; s.air[sd] = False

    def solve(s, U, head, fwd):
        left = np.cross(UP, fwd)
        stand_off = -UP * HIP_DROP - fwd * 0.05
        if s.pc is None:
            s.zero(head, fwd)
        sg = {'l': 1, 'r': -1}
        # 1 · which feet are on the floor
        ground = {}
        for sd in 'lr':
            if s.use_acc:
                ground[sd] = s.h[sd] < (LIFT if not s.air[sd] else LAND)
                s.air[sd] = not ground[sd]
            else:
                hip = s.pc + left * HW * sg[sd]
                u = U[sd]
                c = np.cross(u, UP); up_k = min(max(-math.atan2(c.dot(left), u.dot(UP)), 0), math.radians(150))
                yk = hip[1] - rot(u, left, -up_k)[1] * LT - u[1] * LS - AH
                ground[sd] = yk < 0.05
        for sd in 'lr':
            if ground[sd] and (sd not in s.anc or s.anc[sd] is None):
                s.anc[sd] = None
        G = [sd for sd in 'lr' if ground[sd] and s.anc.get(sd) is not None]
        # 2 · the pelvis
        pc = s.pc.copy()
        if not G:
            pc = head + (s.off if s.off is not None else stand_off)
        else:
            knees = {sd: s.anc[sd] + U[sd] * LS for sd in G}
            for it in range(12):
                acc = np.zeros(3); n = 0.
                for sd in G:
                    hp = pc + left * HW * sg[sd]
                    d = hp - knees[sd]; L = np.linalg.norm(d)
                    acc += knees[sd] + d / max(L, 1e-6) * LT - left * HW * sg[sd]; n += 1
                d = pc - head; L = np.linalg.norm(d)
                acc += (head + d / max(L, 1e-6) * T) * 1.5; n += 1.5
                acc += (head + stand_off) * 0.03; n += 0.03
                pc = acc / n
                pc[1] = min(pc[1], head[1] - 0.1)
            # stretched past reach: the foot stepped → slide its anchor
            for sd in G:
                hp = pc + left * HW * sg[sd]
                d = hp - knees[sd]; e = np.linalg.norm(d) - LT
                if e > 0.03:
                    dh = d.copy(); dh[1] = 0
                    if np.linalg.norm(dh) > 1e-3:
                        s.anc[sd] = s.anc[sd] + dh / np.linalg.norm(dh) * (e - 0.03)
        s.pc = pc; s.off = pc - head
        out = {}
        for sd in 'lr':
            u = U[sd]; hip = pc + left * HW * sg[sd]
            if ground[sd] and s.anc.get(sd) is not None:
                ankle = s.anc[sd].copy(); knee = ankle + u * LS
            else:
                if s.use_acc:
                    target = AH + s.h[sd]
                    best = None
                    for i in range(51):
                        k = math.radians(150) * i / 50
                        ay = hip[1] - rot(u, left, -k)[1] * LT - u[1] * LS
                        c = abs(ay - target) + 0.03 * abs(k - s.kp[sd])
                        if best is None or c < best[0]: best = (c, k)
                    k = best[1]
                else:
                    k = knee_bend_old(hip, u, left, AH)
                s.kp[sd] = k
                knee = hip - rot(u, left, -k) * LT
                ankle = knee - u * LS
                ankle[1] = max(ankle[1], AH)
            if not ground[sd]:
                s.anc[sd] = None
            elif s.anc.get(sd) is None:
                s.anc[sd] = np.array([ankle[0], AH, ankle[2]])
                ankle = s.anc[sd].copy(); knee = ankle + u * LS
                s.land = getattr(s, 'land', {}); s.land[sd] = 0.5
            else:
                # a planted foot under a straight, upright leg sits under its hip (heals a landing placed off)
                s.land = getattr(s, 'land', {}); s.land[sd] = s.land.get(sd, 0) - DT
                upright = head[1] > HIP_DROP + LT + LS + AH - 0.025 and all(U[x][1] > math.cos(math.radians(5)) for x in 'lr')
                if (s.land[sd] > 0 and u[1] > math.cos(math.radians(12))):
                    tgt = hip - UP * (LT + LS)
                    k_ = min(1, DT / 0.25)
                    s.anc[sd][0] += (tgt[0] - s.anc[sd][0]) * k_; s.anc[sd][2] += (tgt[2] - s.anc[sd][2]) * k_
            out[sd] = dict(knee=knee, ankle=ankle, hip=hip)
        return out

def run(name, solver, acc_noise=0.02, acc_bias=0.01):
    seq = motion(name)
    frames = [truth_frame(p) for p in seq]
    # sensor height (ankle + u*0.05) → vertical acceleration
    hs = {sd: np.array([(f[0][sd]['ankle'] + f[0][sd]['u'] * 0.05)[1] for f in frames]) for sd in 'lr'}
    acc = {}
    for sd in 'lr':
        v = np.gradient(hs[sd], DT); a = np.gradient(v, DT)
        acc[sd] = a / 9.81 + rng.normal(0, acc_noise, len(a)) + acc_bias
    us = {sd: [f[0][sd]['u'] for f in frames] for sd in 'lr'}
    errs = []
    if isinstance(solver, New):
        solver.zero(frames[0][1], FWD)
    for i, (J, head) in enumerate(frames):
        U = {sd: J[sd]['u'] for sd in 'lr'}
        if isinstance(solver, New):
            for sd in 'lr':
                w = 0 if i == 0 else math.degrees(math.acos(min(1, us[sd][i].dot(us[sd][i - 1])))) / DT
                solver.vert(sd, acc[sd][i], w, DT, stand=seq[i] == stand() and (i == 0 or seq[i - 1] == stand()))
            out = solver.solve(U, head, FWD)
        else:
            out = solve_old(J, head, None)
        for sd in 'lr':
            errs.append((np.linalg.norm(out[sd]['knee'] - J[sd]['knee']), np.linalg.norm(out[sd]['ankle'] - J[sd]['ankle'])))
    e = np.array(errs) * 100
    return e[:, 0].mean(), e[:, 0].max(), e[:, 1].mean(), e[:, 1].max()

if __name__ == '__main__':
    names = ['squat', 'bend', 'knee_raise', 'front_kick', 'heel_curl', 'back_kick', 'walk']
    print('%-11s %-27s %-27s %-27s' % ('motion', 'OLD knee mean/max foot', 'NEW(no acc)', 'NEW(acc)'))
    for n in names:
        r0 = run(n, 'old'); r1 = run(n, New(False)); r2 = run(n, New(True))
        f = lambda r: '%5.1f/%5.1f %5.1f/%5.1f' % r
        print('%-11s %-27s %-27s %-27s' % (n, f(r0), f(r1), f(r2)))
