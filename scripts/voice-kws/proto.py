"""Personal wake word "тренер" — the recipe the tablet will run on its own (prototype + measurement).

One reading by the trainer → their "тренер" cuts (positives) and the rest of their speech (their own negatives); a
fixed pack of other voices / look-alike words / music / noise (negatives, shipped with the app). The model: log-mel
windows (0.64 s), mean-normalised per band, into a small classifier trained with heavy augmentation (distance, room
echo, speed, music, babble, hiss). Measured here on held-out cuts of the trainer's own voice.

Usage: python3 proto.py <enroll dir with rec.raw + trener.npy> <dir of other-voice *.raw> [<tts 't_*.raw' dir>]
"""
import glob
import os
import sys

import numpy as np

import feat

SR = 16000
W = 64            # frames in a window (0.64 s)
STEP = 5          # frames between windows (50 ms)
SUB = int(os.environ.get('SUB', '2'))   # every SUB-th frame of a window goes into the features
HID = int(os.environ.get('HID', '96'))
FA_REPEAT = int(os.environ.get('FA_REPEAT', '1'))
rng = np.random.default_rng(592)


def raw(path):
    return np.frombuffer(open(path, 'rb').read(), dtype=np.int16).astype(np.float64)


# ------------------------------------------------------------------ the sounds of a hall


BANK = {}


def bank(kind, n, speech=None):
    """A random slice of a long pre-made background (made once: music / babble / hiss are slow to make)."""
    if kind not in BANK:
        L = SR * 240
        BANK[kind] = make_music(L) if kind == 'm' else make_babble(L, speech) if kind[0] == 'b' else make_hiss(L)
    b = BANK[kind]
    if n >= len(b):
        return np.tile(b, n // len(b) + 1)[:n]
    a = rng.integers(0, len(b) - n)
    return b[a:a + n]


def music(n):
    return bank('m', n)


def babble(n, speech):
    return bank('b%d' % id(speech), n, speech)


def hiss(n):
    return bank('h', n)


def make_music(n):
    t = np.arange(n) / SR
    out = np.zeros(n)
    bpm = rng.uniform(90, 140)
    beat = 60 / bpm
    # chords changing every 2 beats
    for k in range(int(n / SR / (2 * beat)) + 1):
        a, b = int(k * 2 * beat * SR), min(n, int((k + 1) * 2 * beat * SR))
        root = 110 * 2 ** (rng.integers(0, 12) / 12)
        for iv in (0, 4, 7, 12):
            f = root * 2 ** (iv / 12)
            out[a:b] += np.sin(2 * np.pi * f * t[a:b]) * 0.25 + 0.1 * np.sin(4 * np.pi * f * t[a:b])
    # kick + hi-hat
    for k in range(int(n / SR / beat) + 1):
        a = int(k * beat * SR)
        m = min(n - a, int(0.15 * SR))
        if m <= 0:
            continue
        tt = np.arange(m) / SR
        out[a:a + m] += 2.0 * np.sin(2 * np.pi * (60 + 80 * np.exp(-tt * 30)) * tt) * np.exp(-tt * 18)
        h = a + int(beat * SR / 2)
        m2 = min(n - h, int(0.04 * SR))
        if m2 > 0:
            out[h:h + m2] += rng.standard_normal(m2) * np.exp(-np.arange(m2) / SR * 80) * 0.6
    return out / (np.std(out) + 1e-9)


def make_babble(n, speech):
    out = np.zeros(n)
    for _ in range(int(n / SR / 2.5) * 4):
        s = speech[rng.integers(len(speech))]
        if len(s) == 0:
            continue
        p = rng.integers(0, max(1, n - len(s))) if len(s) < n else 0
        seg = s[:n - p]
        out[p:p + len(seg)] += seg / (np.std(seg) + 1e-9)
    return out / (np.std(out) + 1e-9)


def make_hiss(n):
    from scipy.signal import lfilter
    w = rng.standard_normal(n)
    p = lfilter([0.02], [1, -0.98], w)               # pinkish: a one-pole low-pass mixed in
    out = 0.3 * w + 3 * p
    return out / (np.std(out) + 1e-9)


def reverb(x, rt60):
    n = int(rt60 * SR)
    ir = rng.standard_normal(n) * np.exp(-6.9 * np.arange(n) / n)
    ir[0] = 1.0
    ir /= np.sqrt((ir ** 2).sum())
    y = np.convolve(x, ir)[:len(x)]
    return y * (np.std(x) / (np.std(y) + 1e-9))


def speed(x, f):
    n = int(len(x) / f)
    return np.interp(np.arange(n) * f, np.arange(len(x)), x)


def mix(sig, bg, snr_db):
    ps = np.mean(sig[np.abs(sig) > 0.1 * np.max(np.abs(sig))] ** 2) if np.any(sig) else 1.0
    pb = np.mean(bg ** 2) + 1e-9
    return sig + bg * np.sqrt(ps / pb / 10 ** (snr_db / 10))


# ------------------------------------------------------------------ windows → features


def windows(lm):
    """All 0.64 s windows of a log-mel matrix, mean-normalised per band, every other frame → (k, 32*26)."""
    out = []
    for s in range(0, max(1, lm.shape[0] - W + 1), STEP):
        w = lm[s:s + W]
        if w.shape[0] < W:
            break
        w = w - w.mean(0, keepdims=True)
        out.append(w[::SUB].ravel())
    return np.array(out)


def one(lm, start):
    w = lm[start:start + W]
    w = w - w.mean(0, keepdims=True)
    return w[::SUB].ravel()


def augment_word(word, bg_pool, speech, snr_range=(0, 25), far=0.5):
    """A positive in a random hall: speed, distance (gain + echo), noise around it; returns (audio, word start)."""
    x = speed(word, rng.uniform(0.9, 1.1))
    if rng.random() < far:
        x = reverb(x, rng.uniform(0.2, 0.7))
    x = x * 10 ** (rng.uniform(-20, 3) / 20)
    lead = int(rng.uniform(0.05, 0.22) * SR)
    n = lead + len(x) + int(0.3 * SR)
    clip = np.zeros(n)
    clip[lead:lead + len(x)] = x
    kind = rng.integers(4)
    bg = music(n) if kind == 0 else babble(n, speech) if kind == 1 else hiss(n) if kind == 2 else np.zeros(n)
    if kind < 3:
        clip = mix(clip, bg, rng.uniform(*snr_range))
    clip += rng.standard_normal(n) * 3
    return clip, lead


def main():
    en, negdir = sys.argv[1], sys.argv[2]
    tdir = sys.argv[3] if len(sys.argv) > 3 else None
    rec = raw(os.path.join(en, 'rec.raw'))
    pos = [np.asarray(w, dtype=np.float64) for w in np.load(os.path.join(en, 'trener.npy'), allow_pickle=True)]
    # the trainer's own other speech: the recording without the 11 "окей тренер" and the long sentences' heads
    keep = np.ones(len(rec), bool)
    for s, e in [(1.42, 2.26), (4.40, 5.24), (8.20, 9.00), (14.66, 15.40), (28.52, 29.30), (35.18, 35.88),
                 (37.54, 38.28), (41.74, 42.48), (49.70, 50.42), (54.76, 55.48), (60.82, 61.50)]:
        keep[int((s - 0.1) * SR):int((e + 0.1) * SR)] = False
    # their "окей" heads stay (a look-alike in the same voice); the long sentences may hold "тренер": out
    for s, e in [(16.50, 18.88), (24.42, 26.26), (31.26, 32.76), (44.08, 45.84), (57.54, 58.70), (65.44, 67.84)]:
        keep[int((s - 0.1) * SR):int((e + 0.1) * SR)] = False
    own_neg = rec[keep]
    files = sorted(glob.glob(os.path.join(negdir, 's_*.raw')))
    voices = sorted({os.path.basename(f).split('_')[1] for f in files})
    test_voices = set(voices[::3])                       # a third of the voices only ever in the test
    tr_speech = [raw(f) for f in files if os.path.basename(f).split('_')[1] not in test_voices]
    te_speech = [raw(f) for f in files if os.path.basename(f).split('_')[1] in test_voices]
    # other people saying the word (and its look-alikes): a third of the voices only in the test
    ofiles = []
    for pre in ('t_', 'tr_', 'tp_', 'tv_'):
        ofiles += sorted(glob.glob(os.path.join(tdir, pre + '*.raw'))) if tdir else []
    ovoices = sorted({os.path.basename(f).split('_')[1].split('.')[0] for f in ofiles})
    otest = set(ovoices[::3])
    def ovoice(f):
        return os.path.basename(f).split('_')[1].split('.')[0]
    others_train = [raw(f) for f in ofiles if ovoice(f) not in otest]
    others_trener = [raw(f) for f in ofiles if ovoice(f) in otest and os.path.basename(f)[:2] in ('t_', 'tr', 'tp')]
    print(f"positives {len(pos)}, own other speech {len(own_neg) / SR:.1f} s, other voices: train "
          f"{sum(map(len, tr_speech)) / SR / 60:.1f} min, test {sum(map(len, te_speech)) / SR / 60:.1f} min")

    folds = [[0, 4, 8], [1, 5, 9], [2, 6, 10], [3, 7]]
    results = []
    for fi, test in enumerate(folds):
        train = [p for i, p in enumerate(pos) if i not in test]
        X, y = [], []
        # positives: each cut 120× in random halls, the word fully inside the window
        for wv in train:
            for _ in range(120):
                clip, lead = augment_word(wv, None, tr_speech)
                lm = feat.logmel(clip)
                f0 = lead // feat.HOP
                wl = len(wv) // feat.HOP
                st = f0 - rng.integers(2, max(3, W - wl - 2))
                st = max(0, min(st, lm.shape[0] - W))
                if lm.shape[0] >= W:
                    X.append(one(lm, st))
                    y.append(1)
                    # the same clip, the word half outside: a negative (where it is matters)
                    st2 = min(lm.shape[0] - W, f0 + wl // 2)
                    if st2 >= 0 and st2 != st:
                        X.append(one(lm, st2))
                        y.append(0)
        # negatives: the trainer's own other words, other voices, halls with no voice
        def negs(audio, k, snr=(0, 25)):
            for _ in range(k):
                if len(audio) < W * feat.HOP + 400:
                    continue
                a = rng.integers(0, len(audio) - W * feat.HOP - 400)
                seg = audio[a:a + W * feat.HOP + 400] * 10 ** (rng.uniform(-20, 3) / 20)
                kind = rng.integers(4)
                n = len(seg)
                if kind < 3:
                    bg = music(n) if kind == 0 else babble(n, tr_speech) if kind == 1 else hiss(n)
                    seg = mix(seg, bg, rng.uniform(*snr))
                seg = seg + rng.standard_normal(n) * 3
                X.append(one(feat.logmel(seg), 0))
                y.append(0)
        negs(own_neg, 2500)
        allsp = np.concatenate(tr_speech)
        negs(allsp, 9000)
        # other people's "тренер" / "треньор" / "тренировка": the same word, another voice — not a wake
        for o in others_train:
            for _ in range(25):
                clip, lead = augment_word(o, None, tr_speech)
                lm = feat.logmel(clip)
                f0 = lead // feat.HOP
                wl = len(o) // feat.HOP
                st = max(0, min(f0 - rng.integers(2, max(3, W - min(wl, W - 4) - 2)), lm.shape[0] - W))
                if lm.shape[0] >= W:
                    X.append(one(lm, st))
                    y.append(0)
        for _ in range(1500):
            n = W * feat.HOP + 400
            kind = rng.integers(3)
            bg = music(n) if kind == 0 else babble(n, tr_speech) if kind == 1 else hiss(n)
            X.append(one(feat.logmel(bg * 10 ** rng.uniform(1, 3.5)), 0))
            y.append(0)
        X = np.array(X)
        y = np.array(y)
        from sklearn.neural_network import MLPClassifier
        clf = MLPClassifier(hidden_layer_sizes=(HID,), alpha=1e-3, max_iter=80, random_state=fi)
        mu, sd = X.mean(0), X.std(0) + 1e-6
        clf.fit((X - mu) / sd, y)

        def score_clip(clip):
            lm = feat.logmel(clip)
            ws = windows(lm)
            if len(ws) == 0:
                return np.zeros(0)
            p = clf.predict_proba((ws - mu) / sd)[:, 1]
            # two windows in a row (50 ms apart) must agree: a single odd window never wakes
            return np.minimum(p, np.append(p[1:], 0)) if len(p) > 1 else p

        # held-out positives in fixed halls
        conds = {'clean near': (None, 99, 0, 0), 'music 10dB': ('m', 10, 0, 0), 'music 5dB': ('m', 5, 0, 0),
                 'music 0dB': ('m', 0, 0, 0), 'babble 5dB': ('b', 5, 0, 0), 'far+echo+music 5dB': ('m', 5, -15, 0.5)}
        hits = {}
        for name, (kind, snr, g, rt) in conds.items():
            sc = []
            for i in test:
                for rep in range(6):
                    x = pos[i] * 10 ** (g / 20)
                    if rt:
                        x = reverb(x, rt)
                    n = int(1.0 * SR) * 2 + len(x)
                    clip = np.zeros(n)
                    clip[SR:SR + len(x)] = x
                    if kind:
                        bg = music(n) if kind == 'm' else babble(n, te_speech)
                        clip = mix(clip, bg, snr)
                    clip += rng.standard_normal(n) * 3
                    sc.append(score_clip(clip).max())
            hits[name] = np.array(sc)
        # false alarms: an hour-like stream of test voices (and other voices' "тренер") over music / babble
        stream_parts = []
        for s in te_speech * FA_REPEAT:
            stream_parts.append(s)
            stream_parts.append(np.zeros(int(rng.uniform(0.3, 1.5) * SR)))
        stream = np.concatenate(stream_parts)
        bg = music(len(stream)) * 0.5 + babble(len(stream), te_speech) * 0.5
        stream = mix(stream, bg, 8)
        sc_neg = score_clip(stream)
        hours = len(stream) / SR / 3600
        sc_others = [score_clip(np.concatenate([np.zeros(SR // 2), w, np.zeros(SR // 2)]) + rng.standard_normal(len(w) + SR) * 3).max()
                     for w in others_trener]
        results.append((hits, sc_neg, hours, sc_others))
        print(f"fold {fi}: trained on {len(X)} windows ({y.sum()} positive)")

    # one threshold for all: the lowest with ≤ 1 false alarm an hour (events: windows over it, 1 s apart)
    def events(sc, th):
        idx = np.where(sc > th)[0]
        n, last = 0, -999
        for i in idx:
            if i - last > 20:
                n += 1
            last = i
        return n

    for th in (0.5, 0.7, 0.8, 0.9, 0.95, 0.98, 0.99):
        fa = sum(events(r[1], th) for r in results) / sum(r[2] for r in results)
        line = f"th {th:.2f}: false alarms {fa:5.1f}/h | "
        for name in results[0][0]:
            allh = np.concatenate([r[0][name] for r in results])
            line += f"{name} {np.mean(allh > th) * 100:3.0f}%  "
        oth = np.concatenate([r[3] for r in results]) if results[0][3] else np.zeros(0)
        if len(oth):
            line += f"| other people's 'тренер' taken {np.mean(oth > th) * 100:3.0f}%"
        print(line)


if __name__ == '__main__':
    main()
