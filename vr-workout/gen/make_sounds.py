"""Synthesise every sound of the game (no samples, nothing to license) → vr-workout/assets/sfx/*.ogg
usage: python gen/make_sounds.py [outdir]      needs numpy, scipy, ffmpeg (libvorbis)

Hits are layered (body thump + noise crack + click) and driven a little so they punch through a soundtrack;
plasma break = glass-like pings + a bright noise burst + a pop; hazards hum low and beat; the penalty is a sub boom
with a falling zap. The music bed is a placeholder soundtrack (A minor, 128 BPM) until the owner's own track is used.
"""
import os, subprocess, sys, tempfile, wave
import numpy as np
from scipy import signal

SR = 44100
OUT = sys.argv[1] if len(sys.argv) > 1 else os.path.join(os.path.dirname(__file__), "..", "assets", "sfx")
rng = np.random.default_rng(7)


def t_(dur):
    return np.arange(int(SR * dur)) / SR


def decay(t, tau, attack=0.002):
    a = np.clip(t / max(attack, 1e-4), 0, 1)
    return a * np.exp(-t / tau)


def sweep(t, f0, f1, k=18.0):
    """Exponential frequency sweep f0→f1; k = how fast (1/s)."""
    f = f1 + (f0 - f1) * np.exp(-k * t)
    return np.sin(2 * np.pi * np.cumsum(f) / SR)


def noise(n):
    return rng.standard_normal(n)


def bp(x, lo, hi, order=2):
    sos = signal.butter(order, [lo, hi], btype="band", fs=SR, output="sos")
    return signal.sosfilt(sos, x)


def lp(x, f, order=2):
    return signal.sosfilt(signal.butter(order, f, btype="low", fs=SR, output="sos"), x)


def hp(x, f, order=2):
    return signal.sosfilt(signal.butter(order, f, btype="high", fs=SR, output="sos"), x)


def drive(x, g):
    return np.tanh(x * g) / np.tanh(g)


def reverb(x, tail=0.5, wet=0.25, seed=3):
    r = np.random.default_rng(seed)
    n = int(SR * tail)
    ir = r.standard_normal(n) * np.exp(-np.arange(n) / (SR * tail / 5))
    ir = lp(ir, 5000)
    ir[0] = 0
    y = signal.fftconvolve(x, ir) * wet
    out = np.zeros(len(y))
    out[: len(x)] += x
    out += y
    return out


def fit(x, peak=0.89):
    x = np.asarray(x, dtype=float)
    m = np.max(np.abs(x))
    return x * (peak / m) if m > 0 else x


def fade_out(x, ms=8):
    n = int(SR * ms / 1000)
    x = x.copy()
    x[-n:] *= np.linspace(1, 0, n)
    return x


def save(name, x, stereo=False, q=5):
    os.makedirs(OUT, exist_ok=True)
    pcm = (np.clip(x, -1, 1) * 32767).astype("<i2")
    with tempfile.NamedTemporaryFile(suffix=".wav", delete=False) as f:
        path = f.name
    with wave.open(path, "wb") as w:
        w.setnchannels(2 if stereo else 1)
        w.setsampwidth(2)
        w.setframerate(SR)
        w.writeframes(pcm.tobytes())
    dst = os.path.join(OUT, name + ".ogg")
    subprocess.run(["ffmpeg", "-y", "-loglevel", "error", "-i", path, "-c:a", "libvorbis", "-q:a", str(q), dst], check=True)
    os.unlink(path)
    print("wrote", dst, os.path.getsize(dst) // 1024, "KB")


# ------------------------------------------------------------------ strikes

def hit(f0, f1, body_tau, click_hz, snap, dur=0.45, sub=0.0):
    t = t_(dur)
    body = sweep(t, f0, f1, 26) * decay(t, body_tau)
    crack = bp(noise(len(t)), click_hz * 0.6, click_hz * 1.9) * decay(t, 0.018, 0.0005) * snap
    click = hp(noise(len(t)), 3000) * decay(t, 0.006, 0.0002) * 0.35
    low = lp(noise(len(t)), 400) * decay(t, 0.05) * 0.5
    s = np.sin(2 * np.pi * 42 * t) * decay(t, 0.16) * sub
    return drive(body * 1.2 + crack + click + low + s, 2.4)


def make_hits():
    save("punch", fit(reverb(hit(190, 58, 0.085, 2200, 0.9), 0.25, 0.12)))
    save("knee", fit(reverb(hit(230, 82, 0.075, 1400, 0.7), 0.25, 0.12)))
    save("kick", fit(reverb(hit(150, 38, 0.15, 1700, 1.0, 0.6, sub=0.8), 0.35, 0.15)))


def make_shatter():
    n = int(SR * 1.0)
    t = np.arange(n) / SR
    x = np.zeros(n)
    for _ in range(46):                                   # glass-like pings
        f = rng.uniform(1800, 9500)
        s0 = int(rng.uniform(0, 0.09) * SR)
        tt = t[: n - s0]
        x[s0:] += np.sin(2 * np.pi * f * tt) * decay(tt, rng.uniform(0.04, 0.32), 0.0005) * rng.uniform(0.05, 0.16)
    x += hp(noise(n), 3500) * decay(t, 0.09, 0.0008) * 0.5          # bright burst
    x += sweep(t, 2400, 260, 38) * decay(t, 0.07, 0.0005) * 0.7     # plasma zap
    x += sweep(t, 140, 52, 30) * decay(t, 0.1) * 0.9                # pop
    save("shatter", fit(reverb(drive(x, 1.6), 0.55, 0.3)))


# ------------------------------------------------------------------ movement and warnings

def make_whoosh():
    for name, dur, lo0, lo1, peak in (("whoosh", 1.1, 250, 2600, 0.62), ("pass", 0.5, 400, 1800, 0.45)):
        t = t_(dur)
        x = noise(len(t))
        centre = lo0 * (lo1 / lo0) ** (t / dur)
        y = np.zeros(len(t))
        for i, hz in enumerate(np.geomspace(lo0, lo1, 12)):         # noise through a moving band, built from slices
            band = bp(x, hz * 0.7, hz * 1.4, 2)
            w = np.exp(-((np.log(centre / hz)) ** 2) / 0.08)
            y += band * w
        env = np.exp(-((t / dur - peak) ** 2) / (2 * 0.14 ** 2))
        save(name, fit(fade_out(y * env)))


def make_hum():
    t = t_(1.0)                                              # whole cycles in 1 s → loops without a click
    x = signal.sawtooth(2 * np.pi * 55 * t) + 0.8 * signal.sawtooth(2 * np.pi * 59 * t) + 0.5 * np.sin(2 * np.pi * 110 * t)
    x = lp(x, 900) * (0.65 + 0.35 * np.sin(2 * np.pi * 6 * t))
    x += bp(np.tile(noise(SR), 1)[: len(t)], 700, 1500) * 0.08 * (0.5 + 0.5 * np.sin(2 * np.pi * 12 * t))
    save("hum", fit(x, 0.6))


def make_alarm():
    t = t_(0.45)
    on = (np.sin(2 * np.pi * 8 * t) > 0).astype(float)
    x = (np.sin(2 * np.pi * 660 * t) + 0.5 * np.sin(2 * np.pi * 990 * t)) * lp(on, 60, 1) * decay(t, 0.4, 0.004)
    save("alarm", fit(drive(x, 1.5), 0.7))


def make_damage():
    t = t_(1.2)
    boom = sweep(t, 95, 26, 5) * decay(t, 0.5, 0.003)
    thud = lp(noise(len(t)), 700) * decay(t, 0.22, 0.001) * 1.1
    zap = signal.sawtooth(2 * np.pi * np.cumsum(70 + 900 * np.exp(-9 * t)) / SR) * decay(t, 0.22, 0.001) * 0.55
    grit = hp(noise(len(t)), 1500) * decay(t, 0.06, 0.0005) * 0.5
    save("damage", fit(reverb(drive(boom * 1.4 + thud + zap + grit, 3.2), 0.7, 0.28)))


def make_dodge():
    t = t_(0.5)
    sw = bp(noise(len(t)), 500, 5000) * np.exp(-((t - 0.16) ** 2) / (2 * 0.07 ** 2))
    ping = sum(np.sin(2 * np.pi * f * np.clip(t - d, 0, None)) * decay(np.clip(t - d, 0, None), 0.12) * (t >= d)
               for f, d in ((1320, 0.1), (1760, 0.18)))
    save("dodge", fit(reverb(sw * 0.6 + ping * 0.5, 0.3, 0.2), 0.8))


# ------------------------------------------------------------------ UI / feedback

def pluck(f, dur=0.5, tau=0.18):
    t = t_(dur)
    return (np.sin(2 * np.pi * f * t) + 0.35 * np.sin(2 * np.pi * 2 * f * t) + 0.15 * np.sin(2 * np.pi * 3 * f * t)) * decay(t, tau, 0.002)


def make_ui():
    save("combo", fit(reverb(pluck(659, 0.4, 0.12) + pluck(988, 0.4, 0.12) * 0.8, 0.3, 0.2), 0.8))
    arp = np.zeros(int(SR * 1.8))
    for i, f in enumerate((523.25, 659.25, 783.99, 987.77, 1318.5)):
        p = pluck(f, 1.2, 0.35)
        s = int(i * 0.1 * SR)
        arp[s : s + len(p)] += p[: len(arp) - s] * (0.9 - 0.1 * i)
    shimmer = hp(noise(len(arp)), 6000) * decay(t_(1.8), 0.5, 0.2) * 0.05
    save("levelup", fit(reverb(arp + shimmer, 0.8, 0.35), 0.85))
    save("beep", fit(fade_out(np.sin(2 * np.pi * 880 * t_(0.15)) * decay(t_(0.15), 0.1, 0.003)), 0.7))
    t = t_(0.6)
    go = (np.sin(2 * np.pi * 1320 * t) + 0.6 * np.sin(2 * np.pi * 1760 * t)) * decay(t, 0.25, 0.003)
    save("go", fit(reverb(go, 0.4, 0.25), 0.8))
    t = t_(0.05)
    save("tick", fit(hp(noise(len(t)), 2500) * decay(t, 0.006, 0.0002) + np.sin(2 * np.pi * 1800 * t) * decay(t, 0.01), 0.6))
    t = t_(0.11)
    save("blip", fit(fade_out(sweep(t, 620, 760, 6) * decay(t, 0.05, 0.004)), 0.5))
    t = t_(0.9)
    miss = sweep(t, 330, 110, 4) * decay(t, 0.3, 0.003) + lp(noise(len(t)), 900) * decay(t, 0.12) * 0.4
    save("fail", fit(reverb(drive(miss, 1.8), 0.4, 0.2), 0.8))


# ------------------------------------------------------------------ music bed (A minor, 128 BPM, 16 bars)

def make_music():
    bpm = 128
    beat = 60 / bpm
    bars = 16
    n = int(SR * beat * 4 * bars)
    L = np.zeros(n)
    R = np.zeros(n)

    def put(x, at, pan=0.0, gain=1.0):
        s = int(at * SR)
        e = min(n, s + len(x))
        if e <= s:
            return
        seg = x[: e - s] * gain
        L[s:e] += seg * (1 - max(pan, 0))
        R[s:e] += seg * (1 + min(pan, 0))

    def kick():
        t = t_(0.32)
        return drive(sweep(t, 150, 46, 30) * decay(t, 0.14, 0.001) * 1.3 + hp(noise(len(t)), 4000) * decay(t, 0.004) * 0.15, 1.8)

    def clap():
        t = t_(0.3)
        x = bp(noise(len(t)), 1200, 3800)
        env = sum(decay(np.clip(t - d, 0, None), 0.035, 0.001) * (t >= d) for d in (0, 0.012, 0.024)) * 0.5 + decay(t, 0.12) * 0.5
        return x * env * 0.8

    def hat(open_=False):
        t = t_(0.25 if open_ else 0.06)
        return hp(noise(len(t)), 7000) * decay(t, 0.09 if open_ else 0.012, 0.0005) * 0.35

    def saw_note(f, dur, cut=1200, tau=0.2):
        t = t_(dur)
        x = signal.sawtooth(2 * np.pi * f * t) + 0.6 * signal.sawtooth(2 * np.pi * f * 1.006 * t)
        return lp(x, cut) * decay(t, tau, 0.003)

    A, F, C, G = 55.0, 43.65, 65.41, 49.0                       # bass roots (A1 F1 C2 G1)
    prog = [(A, [220, 261.63, 329.63]), (F, [174.61, 220, 261.63]), (C, [196, 261.63, 329.63]), (G, [196, 246.94, 293.66])]
    for bar in range(bars):
        root, chord = prog[bar % 4]
        t0 = bar * 4 * beat
        for b in range(4):
            put(kick(), t0 + b * beat, 0, 0.95)
            if b in (1, 3):
                put(clap(), t0 + b * beat, 0.1, 0.7)
            put(hat(), t0 + b * beat + beat / 2, -0.25, 0.8)
            put(hat(), t0 + b * beat + beat / 4, 0.25, 0.35)
            put(hat(), t0 + b * beat + 3 * beat / 4, 0.2, 0.4)
            if b in (1, 3):
                put(hat(True), t0 + b * beat + beat / 2, -0.2, 0.55)
        for s in range(16):                                      # driving 16th bass, ducked by the kick below
            if s % 4 in (1, 2, 3) or s % 8 == 0:
                oct_ = 2 if s % 8 in (6, 7) else 1
                put(saw_note(root * oct_, beat / 4 * 0.9, 380 + 220 * (s % 3), 0.07), t0 + s * beat / 4, 0, 0.5)
        for s in range(16):                                      # arpeggio
            f = chord[(s * 5 // 3) % 3] * (2 if s % 8 >= 4 else 1)
            put(saw_note(f, beat / 4 * 1.4, 2600, 0.12), t0 + s * beat / 4, -0.35 if s % 2 else 0.35, 0.2)
        pad = sum(saw_note(f, beat * 4, 900, 1.6) for f in chord) * 0.12
        put(pad, t0, 0, 1.0)
    # side-chain: duck everything but the kick drum a little on every beat
    duck = np.ones(n)
    for k in range(bars * 4):
        s = int(k * beat * SR)
        m = min(n - s, int(0.22 * SR))
        duck[s : s + m] = np.minimum(duck[s : s + m], 0.55 + 0.45 * (np.arange(m) / m) ** 1.5)
    # (the kick is part of the mix too; ducking is mild so it stays punchy)
    L *= duck ** 0.6
    R *= duck ** 0.6
    stereo = np.stack([L, R], axis=1)
    stereo = fit(drive(stereo, 1.3), 0.7)
    stereo[: int(0.01 * SR)] *= np.linspace(0, 1, int(0.01 * SR))[:, None]
    stereo[-int(0.02 * SR):] *= np.linspace(1, 0, int(0.02 * SR))[:, None]
    save("music_bed", stereo.reshape(-1, 2).reshape(-1) if False else stereo.flatten(), stereo=True, q=4)


if __name__ == "__main__":
    make_hits()
    make_shatter()
    make_whoosh()
    make_hum()
    make_alarm()
    make_damage()
    make_dodge()
    make_ui()
    make_music()
