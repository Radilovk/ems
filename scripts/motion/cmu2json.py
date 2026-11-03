#!/usr/bin/env python3
"""CMU Graphics Lab Motion Capture (mocap.cs.cmu.edu, free for any use) ASF/AMC → motion/mocap/cmu.js, the real
human movements the XEMS Motion demo and offline test replay (docs/xems-motion.md "Real movements").

  python3 scripts/motion/cmu2json.py <dir with .asf/.amc>            writes motion/mocap/cmu.js (CLIPS below)
  python3 scripts/motion/cmu2json.py <dir> --scan 14_06              prints knee/elbow/arm-raise per second

Keeps the bones the body needs (no fingers / toes), 60 fps, angles as int16 (deg × 50), root position in mm.
The page and the test rebuild the skeleton with the same forward kinematics (motion-core.js Mocap).
"""
import base64, json, math, os, re, struct, sys

KEEP = ['root', 'lowerback', 'upperback', 'thorax', 'lowerneck', 'upperneck', 'head',
        'lhipjoint', 'lfemur', 'ltibia', 'lfoot', 'rhipjoint', 'rfemur', 'rtibia', 'rfoot',
        'lclavicle', 'lhumerus', 'lradius', 'lwrist', 'rclavicle', 'rhumerus', 'rradius', 'rwrist']
UNIT_M = 0.0254 / 0.45          # ASF ":units length 0.45" → inches / 0.45

# (file, first s, last s, Bulgarian title, what it shows) — cut where the exercise is, from --scan
CLIPS = [
    ('86_02', 8.5, 16.0, 'Клякания с ръце напред', 'squats, arms forward'),
    ('14_14', 8.8, 13.8, 'Дълбоки клякания', 'deep squats'),
    ('86_02', 26.5, 40.5, 'Ръце над глава', 'overhead arm raises'),
    ('14_14', 0.3, 4.2, 'Джъмпинг джак', 'jumping jacks'),
    ('86_08', 15.8, 22.6, 'Завъртания на тялото', 'trunk twists'),
    ('14_20', 15.0, 30.2, 'Наклони напред', 'bend over, toe touch'),
    ('86_08', 59.8, 68.0, 'Удари', 'punches'),
    ('86_02', 49.8, 61.0, 'Клек с изскок', 'squat jumps'),
    ('13_29', 22.8, 31.5, 'Коляно към лакът', 'knee to elbow'),
]


def parse_asf(path):
    txt = open(path).read()
    bones = {'root': {'name': 'root', 'dir': [0, 0, 0], 'len': 0, 'axis': [0, 0, 0], 'dof': ['tx', 'ty', 'tz', 'rx', 'ry', 'rz']}}
    for blk in re.findall(r'begin(.*?)end', txt.split(':bonedata')[1].split(':hierarchy')[0], re.S):
        b = {}
        for line in blk.strip().split('\n'):
            p = line.split()
            if not p: continue
            if p[0] == 'name': b['name'] = p[1]
            elif p[0] == 'direction': b['dir'] = [float(x) for x in p[1:4]]
            elif p[0] == 'length': b['len'] = float(p[1])
            elif p[0] == 'axis': b['axis'] = [float(x) for x in p[1:4]]
            elif p[0] == 'dof': b['dof'] = p[1:]
        b.setdefault('dof', [])
        bones[b['name']] = b
    parent = {}
    for line in txt.split(':hierarchy')[1].split('begin')[1].split('end')[0].strip().split('\n'):
        p = line.split()
        for c in p[1:]: parent[c] = p[0]
    for n, b in bones.items(): b['parent'] = parent.get(n)
    return bones


def parse_amc(path):
    frames, cur = [], None
    for line in open(path):
        line = line.strip()
        if not line or line[0] in '#:': continue
        if line.isdigit():
            cur = {}; frames.append(cur); continue
        p = line.split()
        cur[p[0]] = [float(x) for x in p[1:]]
    return frames


# ---- forward kinematics (same as motion-core.js) — global rotation G maps the base-pose global frame to now
def rx(a): c, s = math.cos(a), math.sin(a); return [[1, 0, 0], [0, c, -s], [0, s, c]]
def ry(a): c, s = math.cos(a), math.sin(a); return [[c, 0, s], [0, 1, 0], [-s, 0, c]]
def rz(a): c, s = math.cos(a), math.sin(a); return [[c, -s, 0], [s, c, 0], [0, 0, 1]]
def mm(a, b): return [[sum(a[i][k] * b[k][j] for k in range(3)) for j in range(3)] for i in range(3)]
def mv(a, v): return [sum(a[i][k] * v[k] for k in range(3)) for i in range(3)]
def tr(a): return [[a[j][i] for j in range(3)] for i in range(3)]
def eul(x, y, z): return mm(rz(math.radians(z)), mm(ry(math.radians(y)), rx(math.radians(x))))


def fk(bones, fr):
    G, P = {}, {}
    order = ['root'] + [n for n in bones if n != 'root']
    done = set()
    while len(done) < len(bones):
        for n in order:
            b = bones[n]
            if n in done or (b['parent'] and b['parent'] not in done): continue
            C = eul(*b['axis']); Ci = tr(C)
            v = fr.get(n, [])
            if n == 'root':
                pos = [x * UNIT_M for x in v[:3]] if v else [0, 0, 0]
                rot = v[3:6] if v else [0, 0, 0]
                G[n] = mm(C, mm(eul(*rot), Ci)); P[n] = pos
            else:
                r = {'rx': 0, 'ry': 0, 'rz': 0}
                for d, x in zip(b['dof'], v): r[d] = x
                G[n] = mm(G[b['parent']], mm(C, mm(eul(r['rx'], r['ry'], r['rz']), Ci)))
                P[n] = [P[b['parent']][i] + b['len'] * UNIT_M * mv(G[n], b['dir'])[i] for i in range(3)]
            done.add(n)
    return G, P


def ang(a, b):
    d = sum(x * y for x, y in zip(a, b)) / (math.hypot(*a) * math.hypot(*b) + 1e-9)
    return math.degrees(math.acos(max(-1, min(1, d))))


STEP = 0.5


def scan(dirn, clip):
    subj = clip.split('_')[0]
    bones = parse_asf(os.path.join(dirn, subj + '.asf'))
    frames = parse_amc(os.path.join(dirn, clip + '.amc'))
    print(clip, len(frames), 'frames =', len(frames) / 120, 's')
    for i in range(0, len(frames), int(120 * STEP)):
        G, P = fk(bones, frames[i])
        sub = lambda a, b: [x - y for x, y in zip(P[a], P[b])]
        kl = ang(sub('lfemur', 'ltibia'), sub('lfemur', 'lhipjoint'))    # thigh end = knee; 180 = straight
        el = ang(sub('lhumerus', 'lclavicle'), sub('lradius', 'lhumerus'))
        arm = ang(sub('lhumerus', 'lclavicle'), [0, -1, 0])
        lat = lambda n: mv(G[n], [1, 0, 0])
        tw = math.degrees(math.atan2(lat('thorax')[2], lat('thorax')[0]) - math.atan2(lat('root')[2], lat('root')[0]))
        tw = (tw + 540) % 360 - 180
        lean = ang(sub('thorax', 'root'), [0, 1, 0])
        print(f'{i / 120:6.1f}s knee {180 - kl:4.0f} elbow {el:4.0f} armUp {arm:4.0f} lean {lean:3.0f} twist {tw:4.0f} hip y {P["root"][1]:.2f}')


def pack(dirn, out, clips=None):
    data = {'source': 'CMU Graphics Lab Motion Capture Database, mocap.cs.cmu.edu (NSF EIA-0196217)', 'unit_m': UNIT_M,
            'skeletons': {}, 'clips': []}
    for clip, a, b, title, what in (clips or CLIPS):
        subj = clip.split('_')[0]
        bones = parse_asf(os.path.join(dirn, subj + '.asf'))
        if subj not in data['skeletons']:
            data['skeletons'][subj] = [{'name': n, 'parent': bones[n]['parent'], 'dir': bones[n]['dir'],
                                        'len': round(bones[n]['len'] * UNIT_M, 5), 'axis': bones[n]['axis'],
                                        'dof': bones[n]['dof']} for n in KEEP]
        frames = parse_amc(os.path.join(dirn, clip + '.amc'))
        frames = frames[int(a * 120):int(b * 120) if b else None:2]                  # 120 → 60 fps
        vals = []
        for fr in frames:
            for n in KEEP:
                v = fr.get(n, [0] * len(bones[n]['dof']))
                if n == 'root':                 # position relative to the clip's start (x, z), so long walks fit int16
                    o = frames[0]['root']
                    pos = [v[0] - o[0], v[1], v[2] - o[2]]
                    vals += [max(-32767, min(32767, round(x * UNIT_M * 1000))) for x in pos] + [round(((x + 180) % 360 - 180) * 50) for x in v[3:6]]
                else:
                    vals += [round(((x + 180) % 360 - 180) * 50) for x in v]
        raw = struct.pack('<%dh' % len(vals), *vals)
        data['clips'].append({'id': clip, 'subject': subj, 'title': title, 'what': what, 'fps': 60,
                              'frames': len(frames), 'data': base64.b64encode(raw).decode()})
        print(clip, title, len(frames) / 60, 's', len(raw) // 1024, 'KB')
    os.makedirs(os.path.dirname(out), exist_ok=True)
    with open(out, 'w') as f:      # a script, not JSON: the page opens from file:// too (no fetch there)
        f.write('// ' + data['source'] + ' — generated by scripts/motion/cmu2json.py\n')
        f.write('self.XEMS_MOCAP=' + json.dumps(data, separators=(',', ':'), ensure_ascii=False) + ';\n')


if __name__ == '__main__':
    d = sys.argv[1]
    if '--scan' in sys.argv: scan(d, sys.argv[sys.argv.index('--scan') + 1])
    elif '--train' in sys.argv:          # whole trials for the arm prior: --train <out.js> 143_20 15_04 …
        i = sys.argv.index('--train')
        cl = []
        for t in sys.argv[i + 2:]:          # 143_20 = the whole take; 86_08:8:15.5 = seconds 8 to 15.5 of it
            p = t.split(':')
            cl.append((p[0], float(p[1]) if len(p) > 1 else 0, float(p[2]) if len(p) > 2 else 0, t, t))
        pack(d, sys.argv[i + 1], cl)
    else: pack(d, os.path.join(os.path.dirname(__file__), '..', '..', 'motion', 'mocap', 'cmu.js'))
