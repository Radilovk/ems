# Compare the app's recorded angles (xems-motion-*.csv) with the clip's (video-pose.py): finds the time offset, prints
# per movement block (edit BLOCKS for a new clip) video / app / difference, and the mean error per angle.
#   python3 scripts/motion/video-compare.py <recording.csv> <video-pose.json>
import json, csv, sys, numpy as np
V = [r for r in json.load(open(sys.argv[2])) if 'lean' in r]
rows = list(csv.DictReader(open(sys.argv[1])))
t0 = float(rows[0]['t']); C = {k: np.array([float(r[k]) for r in rows]) for k in rows[0]}; tc = C['t'] - t0
vt = np.array([r['t'] for r in V])
def at(key, ts): return np.interp(ts, tc, C[key])
def vk(k): return np.array([r[k] for r in V])
# sync: best offset for trunk lean + knees
best = None
for off in np.arange(15, 40, 0.1):
    e = np.mean(np.abs(at('trunkLean', vt + off) - vk('lean'))) + np.mean(np.abs(at('lKnee', vt + off) - vk('lKnee'))) + np.mean(np.abs(at('rKnee', vt + off) - vk('rKnee')))
    if best is None or e < best[0]: best = (e, off)
off = best[1]; print('offset (csv = video + s):', round(off, 1))
blocks = [(0, 5, 'стоене'), (5.5, 9, 'калибр. полуклек, ръце напред'), (11.5, 15, 'ръце встрани (T)'), (19, 23, 'лакти свити отпред'), (23.5, 31, 'сгъване в профил'),
          (33, 35, 'ръце към главата'), (35, 37.5, 'вдигане на коляно'), (38, 43, 'стоене в профил'), (43.5, 51, 'напади'), (53.5, 61, 'ръце встрани ×3'),
          (61.5, 63.5, 'ръце напред'), (69, 71, 'навеждане отпред'), (73, 85, 'навеждане в профил'), (89, 97, 'странични наклони'), (101, 107, 'широка стойка, ръце встрани'),
          (107.5, 115, 'сумо клек, ръце напред'), (115.5, 124, 'вдигане напред в профил')]
keys = [('lElbow', 'lElbow'), ('rElbow', 'rElbow'), ('lShElev', 'lShElev'), ('rShElev', 'rShElev'), ('lKnee', 'lKnee'), ('rKnee', 'rKnee'), ('trunkLean', 'lean')]
print('%-30s' % 'движение (видео s)' + ''.join('%17s' % k for k, _ in keys))
allerr = {k: [] for k, _ in keys}
for a, b, name in blocks:
    m = (vt >= a) & (vt < b); line = '%-30s' % (name + ' %g–%g' % (a, b))
    for kc, kv in keys:
        app, vid = at(kc, vt[m] + off), vk(kv)[m]
        if kc == 'trunkLean': vid = vid * np.sign(np.mean(app) + 1e-9)          # video lean has no sign
        e = app - vid; allerr[kc] += list(np.abs(e))
        line += '  %5.0f/%5.0f %+4.0f' % (np.mean(vid), np.mean(app), np.mean(e))
    print(line)
print('mean |error| all frames:', '  '.join('%s %.1f' % (k, np.mean(v)) for k, v in allerr.items()))
