#!/usr/bin/env python3
"""The learned leg prior for the VR game (owner 2026-11-08: "improve it — real improvements, no needless
complications"). What two shin sensors and a headset cannot tell by geometry — is this foot on the floor, where is
the thigh, where are the hips — learnt from real people (CMU motion capture, free for any use) and checked on
people it never saw.

One small network for both legs (the right leg mirrored): input = what the game has, over the last 0.6 s (now, 0.1,
0.2, 0.4, 0.6 s ago): both shins' direction in the body's frame, their turn speed, their vertical acceleration (as
measured: noise and a small offset, NOT integrated — nothing to drift), the headset's height and velocity. Output:
the foot on the floor (probability), the thigh's direction, the hip centre relative to the eyes. Physics stays on
top in the game (planted feet, the measured shin, lengths).

  python3 scripts/vr-legs/legs_prior.py train <npz dir> <out.json>      train (subjects split), report, export
  python3 scripts/vr-legs/legs_prior.py eval <npz dir> <weights.json>   PadLegs + prior on the held-out clips
"""
import glob, json, math, os, sys
SENSOR_AT = os.environ.get("SENSOR_AT", "ankle")   # where the shin sensor sits: ankle · knee (just below the kneecap)
import numpy as np

sys.path.insert(0, os.path.dirname(__file__))
import legs_eval as LE  # noqa: E402

LAGS = [0, 6, 12, 24, 36]                  # frames at 60 fps
HID = 64
UP = np.array([0.0, 1, 0])
TEST_SUBJECTS = {'13', '86', '135', '144'}   # never seen in training


def body_frame(a_l, a_r):
    """forward and left from both knee hinges (the legs' own heading), per frame: (n,3) each"""
    f = np.cross(a_l, UP) + np.cross(a_r, UP)
    f[:, 1] = 0
    f /= np.linalg.norm(f, axis=1, keepdims=True) + 1e-9
    left = np.cross(UP, f)
    return f, left


def to_body(v, f, left, side):
    """world (n,3) → body (n,3): forward, outward-left (mirrored for the right leg), up"""
    return np.stack([(v * f).sum(1), side * (v * left).sum(1), v[:, 1]], 1)


def clip_arrays(d, rng, noise):
    """per-frame raw signals for one clip + truth, both legs (this, other) as two mirrored samples"""
    n = len(d['eye'])
    f, left = body_frame(d['a_l'], d['a_r'])
    fl = float(d['floor'])
    eye_h = d['eye'][:, 1]
    stand_ankle = float(np.percentile(eye_h, 95)) - fl            # eye above the ankle's rest height
    S = stand_ankle                                                # the scale (m)
    hv = np.gradient(d['eye'], LE.DT, axis=0)
    out = []
    for sd, od, side in (('l', 'r', 1.0), ('r', 'l', -1.0)):
        u_t = to_body(d['u_' + sd], f, left, side)
        u_o = to_body(d['u_' + od], f, left, side)
        def w_of(u):
            dots = np.clip((u[1:] * u[:-1]).sum(1), -1, 1)
            w = np.degrees(np.arccos(dots)) / LE.DT
            return np.concatenate([[0], w])
        acc = {}
        for x in (sd, od):
            hs = (d['knee_' + x][:, 1] - d['u_' + x][:, 1] * 0.06) if SENSOR_AT == 'knee' else (d['ankle_' + x][:, 1] + d['u_' + x][:, 1] * 0.05)   # the sensor's point on the shin
            a = np.gradient(np.gradient(hs, LE.DT), LE.DT) / 9.81
            a = np.convolve(a, np.ones(3) / 3, 'same')                 # ~the firmware's 20 Hz low-pass at 60 fps
            acc[x] = a + rng.normal(0, noise, n) + rng.normal(0, 0.005)
        hvb = to_body(hv, f, left, side)
        if 'wrist_l' in d:                                              # the hands (controllers) from the eyes
            ht = to_body(d['wrist_' + sd] - d['eye'], f, left, side) / S
            ho = to_body(d['wrist_' + od] - d['eye'], f, left, side) / S
        else:
            ht = ho = np.zeros((n, 3))
        sig = np.stack([*u_t.T, *u_o.T, np.clip(acc[sd], -4, 4), np.clip(acc[od], -4, 4),
                        (eye_h - fl) / S - 1.0, *(hvb.T / 2.0), *ht.T, *ho.T], 1)   # 18 per lag
        wt, wo = w_of(d['u_' + sd]) / 300.0, w_of(d['u_' + od]) / 300.0
        # truth: on the floor = ankle (or toe) low and slow; thigh direction hip → knee; hip centre from the eyes
        ank = d['ankle_' + sd]; toe = d['toe_' + sd]
        spd = np.linalg.norm(np.gradient(ank, LE.DT, axis=0), axis=1)
        low = np.minimum(ank[:, 1] - fl, toe[:, 1] - (np.percentile(np.minimum(d['toe_l'][:, 1], d['toe_r'][:, 1]), 1)))
        contact = ((low < 0.035) & (spd < 0.35)).astype(np.float32)
        th = d['knee_' + sd] - d['hip_' + sd]
        th /= np.linalg.norm(th, axis=1, keepdims=True)
        thb = to_body(th, f, left, side)
        pc = (d['hip_l'] + d['hip_r']) / 2 - d['eye']
        pcb = to_body(pc, f, left, side) / S
        out.append(dict(sig=sig, w=np.stack([wt, wo], 1), contact=contact, thigh=thb, pc=pcb))
    return out


def features(sig, w, i):
    """the network's input at frame i from the signal history (clamped at the start)"""
    parts = [sig[max(0, i - L)] for L in LAGS]
    return np.concatenate(parts + [w[i]])


def dataset(paths, seed, noise=0.03):
    rng = np.random.default_rng(seed)
    X, Y = [], []
    for p in paths:
        d = dict(np.load(p))
        for leg in clip_arrays(d, rng, noise):
            n = len(leg['sig'])
            idx = np.arange(n)
            sig = leg['sig'].copy()
            flag = np.ones((n, 1))
            hflag = np.ones((n, 1)) if 'wrist_l' in d else np.zeros((n, 1))
            if rng.random() < 0.3:              # trained also without the acceleration (old firmware / axis not found)
                sig[:, 6:8] = 0; flag[:] = 0
            if rng.random() < 0.2:              # … and without the hands (not tracked for a moment)
                sig[:, 12:18] = 0; hflag[:] = 0
            lagged = np.concatenate([sig[np.maximum(0, idx - L)] for L in LAGS] + [leg['w'], flag, hflag], 1)
            X.append(lagged)
            Y.append(np.concatenate([leg['contact'][:, None], leg['thigh'], leg['pc']], 1))
    return np.concatenate(X).astype(np.float32), np.concatenate(Y).astype(np.float32)


class MLP:
    def __init__(s, nin, nout, rng):
        s.W = [rng.normal(0, 1 / math.sqrt(nin), (nin, HID)), rng.normal(0, 1 / math.sqrt(HID), (HID, HID)),
               rng.normal(0, 1 / math.sqrt(HID), (HID, nout))]
        s.b = [np.zeros(HID), np.zeros(HID), np.zeros(nout)]
        s.mu = np.zeros(nin); s.sd = np.ones(nin)

    def forward(s, X, keep=False):
        Z = (X - s.mu) / s.sd
        h1 = np.tanh(Z @ s.W[0] + s.b[0])
        h2 = np.tanh(h1 @ s.W[1] + s.b[1])
        o = h2 @ s.W[2] + s.b[2]
        return (o, (Z, h1, h2)) if keep else o


def loss_grad(net, X, Y):
    o, (Z, h1, h2) = net.forward(X, keep=True)
    n = len(X)
    p = 1 / (1 + np.exp(-o[:, 0]))
    g = np.zeros_like(o)
    g[:, 0] = (p - Y[:, 0]) / n                                  # contact: cross-entropy
    g[:, 1:4] = 2 * (o[:, 1:4] - Y[:, 1:4]) / n                  # thigh direction
    g[:, 4:7] = 2 * 4 * (o[:, 4:7] - Y[:, 4:7]) / n              # hip centre (scaled, weighted)
    L = -np.mean(Y[:, 0] * np.log(p + 1e-7) + (1 - Y[:, 0]) * np.log(1 - p + 1e-7)) + \
        np.mean(((o[:, 1:4] - Y[:, 1:4]) ** 2).sum(1)) + 4 * np.mean(((o[:, 4:7] - Y[:, 4:7]) ** 2).sum(1))
    gW2 = h2.T @ g; gb2 = g.sum(0)
    d2 = (g @ net.W[2].T) * (1 - h2 ** 2)
    gW1 = h1.T @ d2; gb1 = d2.sum(0)
    d1 = (d2 @ net.W[1].T) * (1 - h1 ** 2)
    gW0 = Z.T @ d1; gb0 = d1.sum(0)
    return L, [gW0, gW1, gW2], [gb0, gb1, gb2]


def train(X, Y, epochs=30, seed=0):
    rng = np.random.default_rng(seed)
    net = MLP(X.shape[1], Y.shape[1], rng)
    net.mu = X.mean(0); net.sd = X.std(0) + 1e-6
    params = net.W + net.b
    m = [np.zeros_like(p) for p in params]; v = [np.zeros_like(p) for p in params]
    t = 0; lr = 2e-3; B = 512
    for ep in range(epochs):
        perm = rng.permutation(len(X)); tot = 0
        for k in range(0, len(X), B):
            j = perm[k:k + B]
            L, gW, gb = loss_grad(net, X[j], Y[j])
            tot += L * len(j)
            grads = gW + gb
            t += 1
            for q, (p, g) in enumerate(zip(params, grads)):
                m[q] = 0.9 * m[q] + 0.1 * g; v[q] = 0.999 * v[q] + 0.001 * g * g
                p -= lr * (m[q] / (1 - 0.9 ** t)) / (np.sqrt(v[q] / (1 - 0.999 ** t)) + 1e-8)
        if ep in (epochs // 2, 3 * epochs // 4):
            lr *= 0.3
        print('epoch %2d loss %.4f' % (ep, tot / len(X)), flush=True)
    return net


def report(net, X, Y, tag):
    o = net.forward(X)
    p = 1 / (1 + np.exp(-o[:, 0]))
    acc = np.mean((p > 0.5) == (Y[:, 0] > 0.5))
    th = o[:, 1:4] / (np.linalg.norm(o[:, 1:4], axis=1, keepdims=True) + 1e-9)
    ang = np.degrees(np.arccos(np.clip((th * Y[:, 1:4]).sum(1), -1, 1)))
    air = Y[:, 0] < 0.5
    pce = np.linalg.norm(o[:, 4:7] - Y[:, 4:7], axis=1)
    print('%s: contact %.1f %% right · thigh %.1f° (in the air %.1f°) · hips %.1f %% of eye height' % (
        tag, 100 * acc, ang.mean(), ang[air].mean() if air.any() else 0, 100 * pce.mean()))


def export(net, path):
    json.dump({'lags': LAGS, 'mu': net.mu.tolist(), 'sd': net.sd.tolist(),
               'W': [w.T.flatten().tolist() for w in net.W], 'b': [b.tolist() for b in net.b],
               'shape': [[w.shape[0], w.shape[1]] for w in net.W]}, open(path, 'w'))


def load(path):
    j = json.load(open(path))
    net = MLP(len(j['mu']), j['shape'][2][1], np.random.default_rng(0))
    net.W = [np.array(w).reshape(s[1], s[0]).T for w, s in zip(j['W'], j['shape'])]
    net.b = [np.array(b) for b in j['b']]
    net.mu = np.array(j['mu']); net.sd = np.array(j['sd'])
    return net


def split(src):
    paths = sorted(glob.glob(os.path.join(src, '*.npz')))
    te = [p for p in paths if os.path.basename(p).split('_')[0] in TEST_SUBJECTS]
    tr = [p for p in paths if p not in te]
    return tr, te


if __name__ == '__main__':
    cmd, src = sys.argv[1], sys.argv[2]
    tr, te = split(src)
    if cmd == 'train':
        X, Y = dataset(tr, 1)
        Xt, Yt = dataset(te, 2)
        print('train', X.shape, 'test', Xt.shape, 'contact share', Y[:, 0].mean())
        net = train(X, Y, epochs=int(os.environ.get('EPOCHS', 30)))
        report(net, X, Y, 'train')
        report(net, Xt, Yt, 'TEST (unseen people)')
        export(net, sys.argv[3])


class Prior:
    """the network inside the PadLegs loop (legs_eval.Legs.prior): keeps the signal history, returns per frame
    {'ground': {sd: bool}, 'thigh': {sd: world dir}, 'pc': world hip centre}"""

    def __init__(s, net):
        s.net = net
        s.hist = {'l': [], 'r': []}
        s.uprev = {}
        s.head_prev = None
        s.gnd = {'l': True, 'r': True}

    def __call__(s, legs, U, A, head, bf=None):
        bf = np.cross(A['l'], UP) + np.cross(A['r'], UP)          # as in training (body_frame): raw sum
        bf[1] = 0
        bf = bf / (np.linalg.norm(bf) + 1e-9)
        left = np.cross(UP, bf)
        S = legs.stand_h - legs.ah
        hv = (head - s.head_prev) / LE.DT if s.head_prev is not None else np.zeros(3)
        s.head_prev = head.copy()
        w = {}
        for sd in 'lr':
            w[sd] = math.degrees(math.acos(min(1, max(-1, U[sd].dot(s.uprev[sd]))))) / LE.DT if sd in s.uprev else 0.
            s.uprev[sd] = U[sd]
        acc = {sd: float(np.clip(legs.acc_now[sd] - legs.v[sd]['bias'] / 9.81, -4, 4)) if legs.use_acc else 0.0 for sd in 'lr'}
        out = {'ground': {}, 'thigh': {}, 'pcs': []}
        for sd, od, side in (('l', 'r', 1.0), ('r', 'l', -1.0)):
            tb = lambda v: np.array([v.dot(bf), side * v.dot(left), v[1]])
            hands = getattr(legs, 'hands_now', None)
            hh = [*(tb(hands[sd] - head) / S), *(tb(hands[od] - head) / S)] if hands else [0.0] * 6
            sig = np.concatenate([tb(U[sd]), tb(U[od]), [acc[sd], acc[od], (head[1] - legs.floor_y - legs.ah) / S - 1.0],
                                  tb(hv) / 2.0, hh])
            h = s.hist[sd]
            h.append(sig)
            if len(h) > LAGS[-1] + 1:
                h.pop(0)
            x = np.concatenate([h[max(0, len(h) - 1 - L)] for L in LAGS] + [[w[sd] / 300.0, w[od] / 300.0, 1.0 if legs.use_acc else 0.0, 1.0 if hands else 0.0]])
            o = s.net.forward(x[None])[0]
            p = 1 / (1 + math.exp(-o[0]))
            s.gnd[sd] = p > 0.4 if s.gnd[sd] else p > 0.6
            out['ground'][sd] = s.gnd[sd]
            th = o[1:4] / (np.linalg.norm(o[1:4]) + 1e-9)
            out['thigh'][sd] = th[0] * bf + side * th[1] * left + th[2] * UP
            out['pcs'].append(head + (o[4] * bf + side * o[5] * left + o[6] * UP) * S)
        out['pc'] = np.mean(out['pcs'], axis=0)
        return out


if __name__ == '__main__' and sys.argv[1] == 'eval':
    net = load(sys.argv[3])
    rs = []
    for p in te:
        r0 = LE.run(p, old=True)
        r1 = LE.run(p, prior=Prior(net))
        r2 = LE.run(p, prior=Prior(net), use_acc=False)
        r1['noacc'] = r2['knee']
        rs.append((r0, r1))
        print('%-8s knee now %5.1f | +prior %5.1f (p95 %5.1f, no acc %5.1f) | old %5.1f   ankle now %5.1f | +prior %5.1f' % (
            os.path.basename(p)[:-4], r0['knee'], r1['knee'], r1['knee95'], r1['noacc'], r0['old'], r0['ankle'], r1['ankle']), flush=True)
    m = lambda k, j: np.mean([r[j][k] for r in rs])
    print('HELD-OUT  knee now %.1f | +prior %.1f (no acc %.1f) | old %.1f   ankle now %.1f | +prior %.1f' % (
        m('knee', 0), m('knee', 1), m('noacc', 1), m('old', 0), m('ankle', 0), m('ankle', 1)))


def export_gd(net, path, info):
    """the weights as a GDScript file (consts) — compiled into the game, nothing to load at run time"""
    f6 = lambda a: '[' + ','.join('%.6g' % x for x in np.asarray(a).flatten()) + ']'
    with open(path, 'w') as f:
        f.write('## GENERATED by scripts/vr-legs/legs_prior.py — the learned leg prior (CMU motion capture). Do not edit.\n')
        f.write('## %s\n' % info)
        f.write('extends RefCounted\n\n')
        f.write('const LAGS := %s\n' % json.dumps(LAGS))
        f.write('const SHAPE := %s\n' % json.dumps([[int(w.shape[0]), int(w.shape[1])] for w in net.W]))
        f.write('const MU := %s\n' % f6(net.mu))
        f.write('const SD := %s\n' % f6(net.sd))
        for k, (w, b) in enumerate(zip(net.W, net.b)):
            f.write('const W%d := %s\n' % (k, f6(w.T)))          # row = one output: [o * n_in + i]
            f.write('const B%d := %s\n' % (k, f6(b)))


if __name__ == '__main__' and sys.argv[1] == 'gd':
    net = load(sys.argv[3])
    export_gd(net, sys.argv[4], ' '.join(sys.argv[5:]))
