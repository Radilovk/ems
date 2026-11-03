// Offline end-to-end test of XEMS Motion (no sensors, no tablet): a scripted person (motion-core.js sim) wears the
// five sensors with random mounting/heading → raw IMU at 208 Hz with gyro bias, bias drift and noise → the firmware's
// own fusion (fusion.h via fusion_run) → host calibration (auto-identify) → pose solver → compared with the truth.
//   node sim.js gen <dir>      writes <dir>/raw_<id>.txt and <dir>/rig.json
//   node sim.js check <dir>    reads <dir>/out_<id>.txt (fusion output), prints the report, exit 1 on failure
'use strict';
const fs = require('fs');
const path = require('path');
const M = require('../../motion/viewer/motion-core.js');
const { mul, T, mv, sub, add, sc, norm, D2R, R2D, angBetween } = M.m;
const [, , mode, dir] = process.argv;
const dim = M.bodyDims(1.75);
const RATE = 208, LEN = M.sim.scriptLength();
const N = Math.floor(LEN * RATE) - 8;

if (mode === 'gen') {
  const rig = M.sim.makeRig(11);
  let seed = 3;
  const rnd = () => { seed = (seed * 16807) % 2147483647; return seed / 2147483647; };
  const gauss = () => { let u = 0; for (let i = 0; i < 6; i++) u += rnd(); return (u - 3) * Math.SQRT2; };
  const out = {}, bias = {}, drift = {};
  for (const id in rig) {
    out[id] = [];
    bias[id] = [0, 1, 2].map(() => (rnd() * 2 - 1) * 8 * D2R);        // ±8 °/s (LSM6DS3TR-C zero-rate level)
    drift[id] = [0, 1, 2].map(() => (rnd() * 2 - 1) * 0.6 * D2R / 60); // ±0.6 °/s per minute (warming up on the body)
  }
  const h = 1 / RATE;
  let prev = null, cur = M.sim.simBody(0, dim), next;
  for (let k = 1; k <= N; k++) {
    const t = k * h;
    next = M.sim.simBody(t + h, dim);
    if (!prev) { prev = cur; cur = M.sim.simBody(t, dim); continue; }
    for (const id in rig) {
      const r = rig[id];
      const seg = (b) => { const s = M.sim.simSegment(b, r.role, dim); return { R: mul(s.R, r.M), p: s.p }; };
      const a = seg(prev), m = seg(cur), c = seg(next);
      const dR = mul(T(m.R), c.R.map((x, i) => (x - a.R[i]) / (2 * h)));
      const w = [(dR[7] - dR[5]) / 2, (dR[2] - dR[6]) / 2, (dR[3] - dR[1]) / 2];
      const acc = mv(T(m.R), add(sc(add(sub(c.p, m.p), sub(a.p, m.p)), 1 / (h * h)), [0, 0, 9.81]));
      const g = w.map((x, i) => x + bias[id][i] + drift[id][i] * t + gauss() * 0.07 * D2R);
      const ac = acc.map((x) => x / 9.81 + gauss() * 0.003);
      out[id].push(g.map((x) => x.toFixed(6)).join(' ') + ' ' + ac.map((x) => x.toFixed(5)).join(' '));
    }
    prev = cur; cur = next;
  }
  fs.mkdirSync(dir, { recursive: true });
  for (const id in rig) fs.writeFileSync(path.join(dir, 'raw_' + id + '.txt'), out[id].join('\n') + '\n');
  fs.writeFileSync(path.join(dir, 'rig.json'), JSON.stringify(Object.fromEntries(Object.entries(rig).map(([k, v]) => [k, v.role]))));
  console.log('gen: ' + Object.keys(rig).length + ' sensors × ' + out[Object.keys(rig)[0]].length + ' samples (' + LEN + ' s)');
  process.exit(0);
}

// ---------- check
const rig = JSON.parse(fs.readFileSync(path.join(dir, 'rig.json')));
const ids = Object.keys(rig);
const streams = {};
for (const id of ids) {
  streams[id] = fs.readFileSync(path.join(dir, 'out_' + id + '.txt'), 'utf8').trim().split('\n').map((l) => l.split(' ').map(Number));
}
const nF = Math.min(...ids.map((id) => streams[id].length));
const tOf = (k) => ((k + 1) * 4 + 1) / RATE;     // sample index → time (gen starts at k=2 → t = 2h; ≈ ok to 1 sample)
const sample = (id, k) => { const v = streams[id][k]; return { t: tOf(k), q: v.slice(0, 4), gyro: v.slice(4, 7), acc: v.slice(7, 10), still: v[10] === 1 }; };

// block boundaries
const blocks = []; { let t0 = 0; for (const [name, dur] of M.sim.SCRIPT) { blocks.push({ name, t0, t1: t0 + dur }); t0 += dur; } }
const blockAt = (t) => blocks.find((b) => t >= b.t0 && t < b.t1) || { name: 'end' };

let fail = 0;
const ok = (cond, msg) => { console.log((cond ? '  ✓ ' : '  ✗ ') + msg); if (!cond) fail++; };

// 1) calibration: zero pose (0–3 s), the movement (3–8 s), finish at 9 s
const cal = new M.Calibration();
let k = 0;
for (; tOf(k) < 9.5 && k < nF; k++) {
  if (cal.phase === 'stand' && tOf(k) >= 2.8) cal.standDone();
  for (const id of ids) cal.feed(id, sample(id, k));
}
const res = cal.finish();
console.log('calibration: ' + (res.ok ? 'ok' : 'problems: ' + res.problems.join('; ')) + (res.flip ? ' (board normal flipped)' : ''));
for (const id of ids) console.log('  ' + id + ' → ' + (res.assign[id] || '?') + ' (truth ' + rig[id] + ')  move ' + res.feat[id].ang.toFixed(0) + '°, d=' + res.feat[id].d.toFixed(2));
ok(ids.every((id) => res.assign[id] === rig[id]), 'all five sensors found on the right place');

// 2) pose through the rest of the session
const body = new M.Body({ height: 1.75 });
body.calibrate(res);
const err = {}, add2 = (blk, key, e) => { const b = (err[blk] = err[blk] || {}); (b[key] = b[key] || []).push(Math.abs(e)); };
const repsAt = {};
let lastBlock = null, repStart = 0;
for (; k < nF; k++) {
  const t = tOf(k);
  for (const id of ids) body.feed(id, sample(id, k));
  const pose = body.solve(t);
  const blk = blockAt(t).name;
  if (blk !== lastBlock) { if (lastBlock) repsAt[lastBlock + '@' + repStart.toFixed(0)] = pose.rep.total - (repsAt._c || 0); repsAt._c = pose.rep.total; repStart = t; lastBlock = blk; }
  // truth
  const b = M.sim.simBody(t, dim);
  const trueKnee = { l: b.legs.l.kappa * R2D, r: b.legs.r.kappa * R2D };
  const trueElbow = {}, trueElev = {};
  for (const s of ['l', 'r']) {
    trueElbow[s] = angBetween(mv(b.arms[s].U, [0, 0, -1]), mv(b.arms[s].F, [0, 0, -1])) * R2D;
    trueElev[s] = angBetween(mv(T(b.Tr), mv(b.arms[s].U, [0, 0, -1])), [0, 0, -1]) * R2D;
  }
  const up = mv(b.Tr, [0, 0, 1]);
  const trueLean = Math.atan2(up[0] * Math.cos(0) + 0, up[2]) * R2D;
  for (const s of ['l', 'r']) {
    add2(blk, 'knee', pose.A[s + 'Knee'] - trueKnee[s]);
    add2(blk, 'elbow', pose.A[s + 'Elbow'] - trueElbow[s]);
    add2(blk, 'shoulder', pose.A[s + 'ShElev'] - trueElev[s]);
    // hand position relative to the neck (what a stick figure shows)
    const neck = add(b.P, mv(b.Tr, [0, 0, dim.trunk]));
    const sh = add(neck, mv(b.Tr, [0, (s === 'l' ? 1 : -1) * dim.shW, -0.03 * dim.H]));
    const wr = add(add(sh, mv(b.arms[s].U, [0, 0, -dim.upper])), mv(b.arms[s].F, [0, 0, -dim.fore]));
    add2(blk, 'wrist cm', 100 * norm(sub(sub(pose.J[s + 'wrist'], pose.J.neck), sub(wr, neck))));
    // pelvis height over the floor
  }
  add2(blk, 'trunk', pose.A.trunkLean - (Math.atan2(up[0], up[2]) * R2D));
  add2(blk, 'pelvis cm', 100 * (pose.J.pelvis[2] - Math.min(pose.J.lankle[2], pose.J.rankle[2]) - (b.P[2] - Math.min(b.legs.l.A[2], b.legs.r.A[2]))));
}
repsAt[lastBlock + "@" + repStart.toFixed(0)] = body.reps.total - (repsAt._c || 0);
delete repsAt._c;

const mean = (a) => a.reduce((x, y) => x + y, 0) / a.length;
const p95 = (a) => a.slice().sort((x, y) => x - y)[Math.floor(a.length * 0.95)];
console.log('\nerrors per exercise (mean / 95th percentile; angles °, positions cm):');
for (const blk in err) {
  const parts = [];
  for (const key in err[blk]) parts.push(key + ' ' + mean(err[blk][key]).toFixed(1) + '/' + p95(err[blk][key]).toFixed(1));
  console.log('  ' + blk.padEnd(8) + parts.join('  '));
}
console.log('\nrepetitions counted per block: ' + JSON.stringify(repsAt));
const E = (blk, key) => mean(err[blk][key]);
ok(E('squat', 'trunk') < 4, 'trunk lean in squats within 4° (' + E('squat', 'trunk').toFixed(1) + ')');
ok(E('squat', 'knee') < 12, 'knee angle in squats within 12° (' + E('squat', 'knee').toFixed(1) + ')');
ok(E('curl', 'elbow') < 15, 'elbow in curls within 15° (' + E('curl', 'elbow').toFixed(1) + ')');
ok(E('raise', 'elbow') < 15, 'front raise seen as straight arms (elbow err ' + E('raise', 'elbow').toFixed(1) + ')');
ok(E('raise', 'shoulder') < 15, 'shoulder elevation in front raises within 15° (' + E('raise', 'shoulder').toFixed(1) + ')');
ok(E('lateral', 'shoulder') < 15, 'shoulder elevation in lateral raises within 15° (' + E('lateral', 'shoulder').toFixed(1) + ')');
ok(E('lunge', 'knee') < 18, 'knees in the lunge within 18° (' + E('lunge', 'knee').toFixed(1) + ')');
ok(E('knee', 'knee') < 20, 'knee raise within 20° (' + E('knee', 'knee').toFixed(1) + ')');
const rc = (name) => Object.entries(repsAt).filter(([k2]) => k2.startsWith(name + '@')).reduce((s, [, v]) => s + v, 0);
ok(rc('squat') === 3, 'squats counted: ' + rc('squat') + ' / 3');
ok(rc('curl') === 3, 'curls counted: ' + rc('curl') + ' / 3');
ok(rc('raise') === 3, 'front raises counted: ' + rc('raise') + ' / 3');
ok(rc('lateral') === 3, 'lateral raises counted: ' + rc('lateral') + ' / 3');
console.log(fail ? '\nFAIL (' + fail + ')' : '\nPASS');
process.exit(fail ? 1 : 0);
