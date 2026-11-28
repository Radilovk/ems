"""Log-mel / MFCC features — the same math as WakeWord.Front (16 kHz, 25 ms window, 10 ms hop, 512 FFT, 26 mel 100–7600 Hz)."""
import numpy as np

SR, FRAME, HOP, NFFT, NMEL = 16000, 400, 160, 512, 26


def mel(f):
    return 1127.0 * np.log(1 + f / 700.0)


def melbank():
    mlo, mhi = mel(100), mel(7600)
    pts = mlo + (mhi - mlo) * np.arange(NMEL + 2) / (NMEL + 1)
    fb = np.zeros((NMEL, NFFT // 2 + 1))
    for k in range(NFFT // 2 + 1):
        m = mel(k * SR / NFFT)
        for j in range(NMEL + 1):
            if pts[j] <= m < pts[j + 1]:
                w = (m - pts[j]) / (pts[j + 1] - pts[j])
                if j < NMEL:
                    fb[j, k] += w
                if j > 0:
                    fb[j - 1, k] += 1 - w
    return fb


FB = melbank()
WIN = 0.54 - 0.46 * np.cos(2 * np.pi * np.arange(FRAME) / (FRAME - 1))


def logmel(x):
    x = np.asarray(x, dtype=np.float64)
    pre = np.append(x[0], x[1:] - 0.97 * x[:-1])
    n = 1 + max(0, (len(x) - FRAME) // HOP)
    idx = np.arange(FRAME)[None, :] + HOP * np.arange(n)[:, None]
    fr = pre[idx] * WIN
    p = np.abs(np.fft.rfft(fr, NFFT)) ** 2
    return np.log(p @ FB.T + 1.0)


def mfcc(x, n=13):
    lm = logmel(x)
    j = np.arange(NMEL)
    dct = np.cos(np.pi * np.arange(1, n + 1)[:, None] * (j + 0.5)[None, :] / NMEL)
    c = lm @ dct.T
    return c - c.mean(0)


def dtw(a, b):
    d = np.sqrt(((a[:, None, :] - b[None, :, :]) ** 2).sum(-1))
    n, m = d.shape
    D = np.full((n + 1, m + 1), np.inf)
    D[0, 0] = 0
    for i in range(1, n + 1):
        for j in range(1, m + 1):
            D[i, j] = d[i - 1, j - 1] + min(D[i - 1, j], D[i, j - 1], D[i - 1, j - 1])
    return D[n, m] / (n + m)
