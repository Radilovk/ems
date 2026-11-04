// Offline end-to-end test of XEMS Motion (no sensors, no tablet). A person wears the five sensors with random
// mounting/heading → raw IMU at 208 Hz with gyro bias, bias drift and noise → the firmware's own fusion (fusion.h via
// fusion_run) → host calibration (auto-identify) → pose solver → compared with the truth.
// The person is either the scripted one (motion-core.js SCRIPT; pass/fail limits below) or REAL people: CMU motion
// capture clips (motion/mocap/cmu.js) after the scripted calibration in the clip person's size (report only).
//   node sim.js gen <dir> [mocap]      writes <dir>/raw_<id>.txt and <dir>/rig.json
//   node sim.js check <dir> [mocap]    reads <dir>/out_<id>.txt (fusion output), prints the report
'use strict';
const fs = require('fs');
const path = require('path');
const vm = require('vm');
const M = require('../../motion/viewer/motion-core.js');
// the arm prior (learned from other people's motion capture), as the page loads it
{ const f = path.join(__dirname, '../../motion/viewer/models/armdb.js');
  if (fs.existsSync(f) && !process.env.NO_ARMDB) { const c = { self: {} }; vm.runInNewContext(fs.readFileSync(f, 'utf8'), c); global.XEMS_ARMDB = c.self.XEMS_ARMDB; } }
const { mul, T, mv, sub, add, sc, norm, D2R } = M.m;
const [, , mode, dir, kind, clipArg] = process.argv;
const MOCAP = kind === 'mocap';
const RATE = 208;
// where the trunk sensor sits: PLACE=T1 (default) | T6 | L3 | S1 | navel / sternum (front); RIGID=1 = old rigid trunk
const PLACE = (() => { const v = process.env.PLACE || 'T1'; return M.FRONT[v] ? { v, front: true } : { v }; })();
const BODY = { place: PLACE, rigidSpine: process.env.RIGID === '1' };

function source() {
  if (!MOCAP) { const tl = M.sim.Timeline.script(M.bodyDims(1.75)); tl.height = 1.75; return tl; }
  const ctx = { self: {} };
  vm.runInNewContext(fs.readFileSync(path.join(__dirname, '../../motion/mocap/cmu.js'), 'utf8'), ctx);
  const data = ctx.self.XEMS_MOCAP;
  // one clip per run, after its own calibration in that person's size (as a real session)
  return M.sim.Timeline.session(data, [+clipArg]);
}
const src = source();
const N = Math.floor(src.len * RATE) - 8;

if (mode === 'gen') {
  const rig = M.sim.makeRig(11, null, PLACE);
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
  let prev = src.frame(0), cur = src.frame(h), next;
  for (let k = 2; k <= N; k++) {
    const t = k * h;
    next = src.frame(t + h);
    for (const id in rig) {
      const r = rig[id];
      const seg = (f) => { const s = M.sim.sensorOnFrame(f, r.role, PLACE); return { R: mul(s.R, r.M), p: s.p }; };
      const a = seg(prev), m = seg(cur), c = seg(next);
      const dR = mul(T(m.R), c.R.map((x, i) => (x - a.R[i]) / (2 * h)));
      const w = [(dR[7] - dR[5]) / 2, (dR[2] - dR[6]) / 2, (dR[3] - dR[1]) / 2];
      const acc = mv(T(m.R), add(sc(add(sub(c.p, m.p), sub(a.p, m.p)), 1 / (h * h)), [0, 0, 9.81]));
      const g = w.map((x, i) => x + bias[id][i] + drift[id][i] * t + gauss() * 0.07 * D2R);
      const ac = acc.map((x) => Math.max(-16, Math.min(16, x / 9.81 + gauss() * 0.003)));   // ±16 g range
      out[id].push(g.map((x) => x.toFixed(6)).join(' ') + ' ' + ac.map((x) => x.toFixed(5)).join(' '));
    }
    prev = cur; cur = next;
  }
  fs.mkdirSync(dir, { recursive: true });
  for (const id in rig) fs.writeFileSync(path.join(dir, 'raw_' + id + '.txt'), out[id].join('\n') + '\n');
  fs.writeFileSync(path.join(dir, 'rig.json'), JSON.stringify(Object.fromEntries(Object.entries(rig).map(([k, v]) => [k, v.role]))));
  console.log('gen: ' + Object.keys(rig).length + ' sensors × ' + out[Object.keys(rig)[0]].length + ' samples (' + src.len.toFixed(1) + ' s, ' + (MOCAP ? 'real people, CMU mocap' : 'scripted person') + ')');
  process.exit(0);
}

// ---------- check
const rig = JSON.parse(fs.readFileSync(path.join(dir, 'rig.json')));
const ids = Object.keys(rig);
const streams = {};
for (const id of ids) streams[id] = fs.readFileSync(path.join(dir, 'out_' + id + '.txt'), 'utf8').trim().split('\n').map((l) => l.split(' ').map(Number));
const nF = Math.min(...ids.map((id) => streams[id].length));
const tOf = (k) => (2 + 4 * k + 3) / RATE;      // fusion output k = raw sample 4k+3 of the file, which starts at t = 2h
const sample = (id, k) => { const v = streams[id][k]; return { t: tOf(k), q: v.slice(0, 4), gyro: v.slice(4, 7), acc: v.slice(7, 10), still: v[10] === 1 }; };
const blockAt = (t) => {
  if (MOCAP) return src.nameAt(t);
  let t0 = 0; for (const [name, dur] of M.sim.SCRIPT) { if (t < t0 + dur) return name; t0 += dur; } return 'end';
};

let fail = 0;
const ok = (cond, msg) => { console.log((cond ? '  ✓ ' : '  ✗ ') + msg); if (!cond) fail++; };

// 1) calibration: zero pose (0–3 s), the movement (3–8 s), finish at 9.5 s
const cal = new M.Calibration({ place: PLACE });
let k = 0;
for (; tOf(k) < 9.5 && k < nF; k++) {
  if (cal.phase === 'stand' && tOf(k) >= 2.8) cal.standDone();
  for (const id of ids) cal.feed(id, sample(id, k));
}
const res = cal.finish();
console.log('calibration: ' + (res.ok ? 'ok' : 'problems: ' + res.problems.join('; ')) + (res.flip ? ' (board normal flipped)' : ''));
for (const id of ids) console.log('  ' + id + ' → ' + (res.assign[id] || '?') + ' (truth ' + rig[id] + ')  move ' + res.feat[id].ang.toFixed(0) + '°, d=' + res.feat[id].d.toFixed(2));
ok(ids.every((id) => res.assign[id] === rig[id]), 'all five sensors found on the right place');

// 2) pose through the rest of the session; truth reps counted by the same counter on the true angles
const body = new M.Body({ height: src.height, ...BODY });
body.calibrate(res);
const truthReps = new M.RepCounter();
const err = {}, add2 = (blk, key, e) => { const b = (err[blk] = err[blk] || {}); (b[key] = b[key] || []).push(Math.abs(e)); };
const reps = {};
let lastBlock = null, c0 = 0, ct0 = 0, falseWarn = 0, nPose = 0;
const closeBlock = (est, tru) => { if (lastBlock) reps[lastBlock] = [est - c0, tru - ct0]; };
for (; k < nF; k++) {
  const t = tOf(k);
  for (const id of ids) body.feed(id, sample(id, k));
  const pose = body.solve(t);
  nPose++; if (pose.warn && pose.warn.length) falseWarn++;
  const f = src.frame(t), A = M.sim.truthAngles(f);
  const tr = truthReps.feed(t, A);
  const blk = blockAt(t);
  if (blk !== lastBlock) { closeBlock(pose.rep.total, tr.total); c0 = pose.rep.total; ct0 = tr.total; lastBlock = blk; }
  if (blk === 'blend' || blk === 'stand' || blk === 'calib') continue;
  for (const s of ['l', 'r']) {
    add2(blk, 'knee', pose.A[s + 'Knee'] - A[s + 'Knee']);
    add2(blk, 'elbow', pose.A[s + 'Elbow'] - A[s + 'Elbow']);
    add2(blk, 'shoulder', pose.A[s + 'ShElev'] - A[s + 'ShElev']);
    add2(blk, 'hand cm', 100 * norm(sub(sub(pose.J[s + 'wrist'], pose.J.neck), sub(f.J[s + 'wrist'], f.J.neck))));
  }
  add2(blk, 'trunk', pose.A.trunkLean - A.trunkLean);
}
closeBlock(body.reps.total, truthReps.total);

const mean = (a) => a.reduce((x, y) => x + y, 0) / a.length;
if (MOCAP) {
  const blk = Object.keys(err)[0], r = reps[blk] || ['', ''], title = src.parts[2].title;
  const line = [title.padEnd(24), ...['knee', 'elbow', 'shoulder', 'trunk', 'hand cm'].map((key) => mean(err[blk][key]).toFixed(1).padStart(9)), '   ' + r[0] + ' / ' + r[1], '   faults ' + (100 * falseWarn / nPose).toFixed(1) + ' %', fail ? '  (places wrong)' : ''].join('');
  fs.writeFileSync(path.join(dir, 'summary.txt'), line + '\n');
  console.log(line);
  process.exit(0);
}
console.log('\nmean error per exercise (angles °, hand position vs. neck cm):');
console.log('  ' + 'exercise'.padEnd(22) + ['knee', 'elbow', 'shoulder', 'trunk', 'hand cm'].map((x) => x.padStart(9)).join('') + '   reps found / true');
for (const blk in err) {
  const r = reps[blk] || ['', ''];
  console.log('  ' + blk.padEnd(22) + ['knee', 'elbow', 'shoulder', 'trunk', 'hand cm'].map((key) => (err[blk][key] ? mean(err[blk][key]).toFixed(1) : '').padStart(9)).join('') + '   ' + r[0] + ' / ' + r[1]);
}
if (!MOCAP) {
  const E = (blk, key) => mean(err[blk][key]);
  ok(E('squat', 'trunk') < 4, 'trunk lean in squats within 4° (' + E('squat', 'trunk').toFixed(1) + ')');
  ok(E('squat', 'knee') < 12, 'knee angle in squats within 12° (' + E('squat', 'knee').toFixed(1) + ')');
  ok(E('curl', 'elbow') < 15, 'elbow in curls within 15° (' + E('curl', 'elbow').toFixed(1) + ')');
  ok(E('raise', 'elbow') < 15, 'front raise seen as straight arms (elbow err ' + E('raise', 'elbow').toFixed(1) + ')');
  ok(E('raise', 'shoulder') < 15, 'shoulder elevation in front raises within 15° (' + E('raise', 'shoulder').toFixed(1) + ')');
  ok(E('lateral', 'shoulder') < 15, 'shoulder elevation in lateral raises within 15° (' + E('lateral', 'shoulder').toFixed(1) + ')');
  ok(E('lunge', 'knee') < 18, 'knees in the lunge within 18° (' + E('lunge', 'knee').toFixed(1) + ')');
  ok(E('knee', 'knee') < 20, 'knee raise within 20° (' + E('knee', 'knee').toFixed(1) + ')');
  for (const [b, n] of [['squat', 3], ['curl', 3], ['raise', 3], ['lateral', 3]]) ok(reps[b][0] === n, b + ' counted: ' + reps[b][0] + ' / ' + n);
  // 3) anatomy: a clean session raises no fault; a broken sensor is named (owner 2026-11-04: "a pose a human cannot
  // make means a measurement error"). Faults: a shin's heading jumps 150° (gyro / strap); the left wrist sensor turns
  // 180° on its strap at the start of the curls.
  ok(falseWarn / nPose < 0.01, 'anatomy: clean session, no false fault (' + (100 * falseWarn / nPose).toFixed(1) + ' % of frames)');
  const idOf = (role) => ids.find((id) => res.assign[id] === role);
  const tBlk = (name) => { let t0 = 0; for (const [n, d] of M.sim.SCRIPT) { if (n === name) return t0; t0 += d; } return 0; };
  const { qToM, mToQ, mul, T: TT, rz: RZ } = M.m;
  const jump = (name, role, R) => {
    const b2 = new M.Body({ height: src.height, ...BODY }); b2.calibrate(res);
    const id = idOf(role), q0 = res.q0[id], t0 = tBlk(name) + 1;
    let first = null, maxErr = 0, kneeErr = [];
    for (let k2 = 0; k2 < nF; k2++) {
      const t = tOf(k2); if (t < 9.5) continue;
      for (const i of ids) {
        const smp = sample(i, k2);
        if (i === id && t >= t0) smp.q = mToQ(R === 'yaw' ? mul(RZ(150 * Math.PI / 180), qToM(smp.q)) : mul(qToM(smp.q), mul(TT(q0), mul(R, q0))));
        b2.feed(i, smp);
      }
      const pose = b2.solve(t);
      if (t >= t0 && first == null && pose.warn.includes(role)) first = t - t0;
      if (t >= t0 + 12 && t < t0 + 22 && R === 'yaw') { const A = M.sim.truthAngles(src.frame(t)); kneeErr.push(Math.abs(pose.A.lKnee - A.lKnee) + Math.abs(pose.A.rKnee - A.rKnee)); }
    }
    return { first, knee: kneeErr.length ? mean(kneeErr) / 2 : 0 };
  };
  const j1 = jump('lunge', 'lshank', 'yaw');
  ok(j1.first != null && j1.first < 2, 'anatomy: a shin turned 150° is named (' + (j1.first == null ? 'never' : j1.first.toFixed(1) + ' s') + '), knees 12–22 s later ' + j1.knee.toFixed(1) + '° off');
  const j2 = jump('curl', 'lwrist', M.m.rz(Math.PI));
  ok(j2.first != null && j2.first < 4, 'anatomy: a wrist sensor turned on its strap is named (' + (j2.first == null ? 'never' : j2.first.toFixed(1) + ' s') + ')');
}
console.log(fail ? '\nFAIL (' + fail + ')' : '\nPASS');
process.exit(fail ? 1 : 0);
