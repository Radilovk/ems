#!/usr/bin/env python3
"""The VR game's leg recording (vr-workout/scripts/game/legs_log.gd) by its code: fetch, unpack, and look at what the
game's own two-shin solve got and gave — which gamepads, which layout, the raw axes (ranges, unit norm), the status
and sides over time, the head, and the solved knees / feet.

  python3 scripts/vr-legs/pad_replay.py <CODE> [out.jsonl]      (out: the unpacked lines, default scratch)
"""
import gzip, json, math, sys, urllib.request

BASE = 'https://license.biocode-bg.com/v1/vrlog/'


def get(url):        # Cloudflare turns away the default Python client name
    return urllib.request.urlopen(urllib.request.Request(url, headers={'User-Agent': 'xems-pad-replay/1'})).read()


def fetch(code):
    info = json.loads(get(BASE + code))
    raw = b''.join(get(f'{BASE}{code}/{k}') for k in range(info['parts']))
    return [json.loads(l) for l in gzip.decompress(raw).decode().splitlines() if l.strip()]


def summary(L):
    print(f'{len(L)} frames, {L[-1]["t"] - L[0]["t"]:.1f} s, {len(L) / max(1e-6, L[-1]["t"] - L[0]["t"]):.0f} fps')
    ids = sorted({k for f in L for k in f['p']})
    for i in ids:
        fr = [f['p'][i] for f in L if i in f['p']]
        A = list(zip(*[x['a'] for x in fr]))
        n4 = [math.sqrt(sum(a * a for a in x['a'][:4])) for x in fr]
        print(f'pad {i}: name {fr[-1]["n"]!r} layout {fr[-1]["lay"]} side {fr[-1]["side"] or "-"} role {fr[-1]["role"] or "shin"}')
        for k, col in enumerate(A):
            print(f'   axis {k}: min {min(col):+.3f} max {max(col):+.3f} last {col[-1]:+.3f}')
        print(f'   |axes 0..3| min {min(n4):.3f} max {max(n4):.3f}  (fw 10–12: always 1.000)')
    st, last = [], None
    for f in L:
        if f['st'] != last:
            st.append((round(f['t'], 1), f['st'])); last = f['st']
    print('status:', st)
    hy = [f['h'][1] - f['f'] for f in L]
    print(f'head above floor {min(hy):.2f}..{max(hy):.2f} m, standing {L[-1]["sh"]:.2f}')
    solved = [f for f in L if f['o']]
    print(f'solved legs in {len(solved)} of {len(L)} frames')
    if solved:
        for k in ('knee_l', 'knee_r', 'foot_l', 'foot_r'):
            ys = [f['o'][k][1] - f['f'] for f in solved if k in f['o']]
            if ys:
                print(f'   {k} height {min(ys):.2f}..{max(ys):.2f} m')


if __name__ == '__main__':
    L = fetch(sys.argv[1])
    out = sys.argv[2] if len(sys.argv) > 2 else f'/tmp/vrlog-{sys.argv[1]}.jsonl'
    with open(out, 'w') as fh:
        fh.write('\n'.join(json.dumps(x) for x in L) + '\n')
    summary(L)
    print('lines →', out)
