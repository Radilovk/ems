// The arm prior of XEMS Motion: what the upper arm does, given what the wrist sensor sees — learned from real people
// (CMU motion capture; training trials are other people / other takes than the test clips). One wrist IMU cannot see
// the upper arm; human movement can: for a forearm pointing this way, turning like this, with the wrist accelerating
// like this, the upper arm is (nearly) always there. Nearest neighbours over a few thousand prototypes.
//   node scripts/motion/armdb.js build <train.js> <out.js>     → motion/viewer/models/armdb.js
//   node scripts/motion/armdb.js eval  <armdb.js>              → upper-arm error on the test clips (motion/mocap/cmu.js)
// The corrector (dim 15, what the page uses) learns from the whole chain: sensors → the solver's arm physics → truth:
//   node scripts/motion/armdb.js rows <train.js> <shard> <nshards> <rows.json>   (run shards in parallel)
//   node scripts/motion/armdb.js pack <out.js> <rows*.json>
'use strict';
const fs = require('fs'), vm = require('vm'), path = require('path');
const M = require('../../motion/viewer/motion-core.js');
const { mul, T, mv, sub, add, sc, norm, unit, cross, logm, R2D } = M.m;
const [, , mode, a1, a2] = process.argv;
const KS = +(process.env.KS || 0.12), KA = +(process.env.KA || 0.03);
const load = (f, key) => { const c = { self: {} }; vm.runInNewContext(fs.readFileSync(f, 'utf8'), c); return c.self[key]; };

// features of one arm at time t of a frame source (truth kinematics; at run time the same come from the sensors)
function sample(src, t, side, h) {
  h = h || 1 / 60;
  const f0 = src.frame(t - h), f1 = src.frame(t), f2 = src.frame(t + h);
  const Tr = f1.R.trunk, Tt = T(Tr);
  const F = f1.R[side + 'fore'], U = f1.R[side + 'upper'];
  const w = (fa, fb, key) => { const v = logm(mul(fb.R[key], T(fa.R[key]))); return sc(v, 1 / (2 * h)); };
  const wF = w(f0, f2, side + 'fore'), wT = w(f0, f2, 'trunk');
  const sens = (f) => M.sim.sensorOnFrame(f, side + 'wrist').p, shp = (f) => f.J[side + 'sh'];
  const acc = (g) => sc(add(sub(g(f2), g(f1)), sub(g(f0), g(f1))), 1 / (h * h));
  const aRel = sub(acc(sens), acc(shp));
  const feat = {
    d: mv(Tt, mv(F, [0, 0, -1])), y: mv(Tt, mv(F, [0, 1, 0])), w: mv(Tt, sub(wF, wT)), a: mv(Tt, aRel),
  };
  const Urel = mul(Tt, U);
  return { feat, Urel };
}
// right arm → left arm (mirror y): vectors S v, pseudo-vector (angular velocity) −S w, rotations S R S
const S = (v) => [v[0], -v[1], v[2]];
const SRS = (R) => [R[0], -R[1], R[2], -R[3], R[4], -R[5], R[6], -R[7], R[8]];
function mirror(s) {
  return { feat: { d: S(s.feat.d), y: S(s.feat.y), w: sc(S(s.feat.w), -1), a: S(s.feat.a) }, Urel: SRS(s.Urel) };
}
// the vector the neighbours are searched with: direction and twist of the forearm, its turn rate, the wrist's push
function vec(f) {
  const w = f.w, a = f.a, ks = KS, ka = KA;
  return [f.d[0], f.d[1], f.d[2], 0.6 * f.y[0], 0.6 * f.y[1], 0.6 * f.y[2],
    ks * w[0], ks * w[1], ks * w[2], ka * a[0], ka * a[1], ka * a[2]];
}

if (mode === 'build') {
  const data = load(a1, 'XEMS_MOCAP');
  const rows = [];
  for (let ci = 0; ci < data.clips.length; ci++) {
    const m = new M.sim.Mocap(data, ci);
    for (let t = 0.1; t < m.len - 0.1; t += 1 / 30) {
      for (const side of ['l', 'r']) {
        let s = sample(m, t, side);
        if (side === 'r') s = mirror(s);
        const u = mv(s.Urel, [0, 0, -1]);
        if (!isFinite(u[0])) continue;
        rows.push({ x: vec(s.feat), U: s.Urel });
      }
    }
    process.stderr.write('.');
  }
  // EMS-style arm work the CMU people rarely do (gym-straight raises, curls, presses, holds, punches): synthetic, with
  // random speed, range, elbow bend, wrist turn and body size — never the test script's own numbers
  const minutes = +(process.env.SYNTH || 12);
  let seed = 12345; const rnd = () => { seed = (seed * 16807) % 2147483647; return seed / 2147483647; };
  const { rx, ry, rz } = M.m, D = Math.PI / 180;
  const KINDS = ['front', 'lateral', 'curl', 'press', 'hold', 'punch', 'row', 'fly'];
  let made = 0;
  while (made < minutes * 60 * 30) {
    const kind = KINDS[Math.floor(rnd() * KINDS.length)], H = 1.55 + rnd() * 0.4, Lu = 0.186 * H, Lf = 0.146 * H;
    const P = 1.2 + rnd() * 3.5, reps = 3, dur = P * reps, e0 = 25 * rnd() ** 2,          // mostly straight-ish, as EMS raises are
     p0 = (rnd() * 2 - 1) * 80, amp = 0.6 + rnd() * 0.5;
    const hold = { f: 60 + rnd() * 40, a: rnd() * 30, e: rnd() * 40 };
    const ang = (t) => {
      const u = 0.5 - 0.5 * Math.cos(2 * Math.PI * t / P);
      switch (kind) {
        case 'front': return { f: 100 * amp * u, a: 5 * rnd0, e: e0, p: p0 };
        case 'lateral': return { f: 10 * rnd0, a: 95 * amp * u, e: e0, p: p0 };
        case 'curl': return { f: 15 * rnd0 * u, a: 5, e: e0 + 125 * amp * u, p: p0 * (1 - u) - 60 * u * rnd0 };
        case 'press': return { f: 20 + 140 * amp * u, a: 20 + 20 * rnd0, e: 90 * (1 - u) * amp + e0 * 0.3, p: p0 };
        case 'hold': return { f: hold.f + 8 * Math.sin(2 * Math.PI * t / P), a: hold.a, e: hold.e + 5 * Math.sin(4 * t), p: p0 };
        case 'punch': { const v = Math.max(0, Math.sin(2 * Math.PI * t / P)) ** 2; return { f: 60 + 30 * v, a: 10, e: 100 * (1 - v) + 5, p: -70 * v + p0 * 0.3 }; }
        case 'row': return { f: 70 * (1 - u) + 10, a: 10, e: 20 + 90 * u, p: p0 };
        default: return { f: 80, a: 85 * amp * (1 - u), e: 15 + e0 * 0.5, p: p0 };          // fly
      }
    };
    const rnd0 = rnd();
    const arm = (t) => {
      const g = ang(t), U = mul(ry(-g.f * D), rx(g.a * D)), F = mul(U, mul(ry(-g.e * D), rz(g.p * D)));
      const wr = add(mv(U, [0, 0, -Lu]), mv(F, [0, 0, -Lf]));
      return { U, F, s: add(wr, mv(F, [0, 0.03, 0.03])) };
    };
    const h = 1 / 60;
    for (let t = 0.2; t < dur; t += 1 / 30) {
      const A = arm(t - h), B = arm(t), C = arm(t + h);
      const w = sc(logm(mul(C.F, T(A.F))), 1 / (2 * h));
      const acc = sc(add(sub(C.s, B.s), sub(A.s, B.s)), 1 / (h * h));
      const feat = { d: mv(B.F, [0, 0, -1]), y: mv(B.F, [0, 1, 0]), w, a: acc };
      rows.push({ x: vec(feat), U: B.U }); made++;
    }
  }
  console.error('\nsynthetic EMS arm work: ' + (made / 30 / 60).toFixed(1) + ' min');
  // shuffle (deterministic) so the thinning below keeps both sources in proportion, not whichever came first
  for (let i = rows.length - 1; i > 0; i--) { const j = Math.floor(rnd() * (i + 1)); const t = rows[i]; rows[i] = rows[j]; rows[j] = t; }
  // thin out near-duplicates (standing still, slow phases): keep a row only if no kept row is within ε
  const keep = [], eps = +(process.env.EPS || 0.1);
  const grid = new Map(), key = (x) => x.slice(0, 3).map((v) => Math.round(v / 0.15)).join(',');
  for (const r of rows) {
    const k = key(r.x); const cell = grid.get(k) || [];
    let dup = false;
    for (const q of cell) { let d = 0; for (let i = 0; i < 12; i++) d += (q.x[i] - r.x[i]) ** 2; if (d < eps * eps) { dup = true; break; } }
    if (!dup) { cell.push(r); grid.set(k, cell); keep.push(r); }
  }
  const X = new Float32Array(keep.length * 12), Uo = new Float32Array(keep.length * 9);
  keep.forEach((r, i) => { X.set(r.x, i * 12); Uo.set(r.U, i * 9); });
  const b64 = (a) => Buffer.from(a.buffer).toString('base64');
  fs.writeFileSync(a2, '// XEMS Motion arm prior: ' + keep.length + ' prototypes (forearm direction, twist, turn rate, wrist push → upper arm),\n' +
    '// learned from CMU motion capture (mocap.cs.cmu.edu) by scripts/motion/armdb.js. Generated; do not edit.\n' +
    'self.XEMS_ARMDB={n:' + keep.length + ',ks:' + KS + ',ka:' + KA + ',X:"' + b64(X) + '",U:"' + b64(Uo) + '"};\n');
  console.error('\n' + rows.length + ' samples → ' + keep.length + ' prototypes → ' + a2);
  process.exit(0);
}


// ---------- the corrector: run the solver over real (CMU training) and synthetic EMS sessions, keep what its arm
// physics saw and concluded, with the true upper arm
function synthScript(seed) {
  let sd = seed * 7919 + 13; const r = () => { sd = (sd * 16807) % 2147483647; return sd / 2147483647; };
  const wave = (t, P) => 0.5 - 0.5 * Math.cos(2 * Math.PI * t / P);
  const out = [['stand', 1.5, () => ({})]];
  const kinds = ['front', 'lateral', 'curl', 'press', 'squatfwd', 'punch', 'fly', 'row', 'hold', 'curlsquat'];
  for (let n = 0; n < 6; n++) {
    const kind = kinds[Math.floor(r() * kinds.length)], P = 1.4 + r() * 3, reps = 3, dur = P * reps;
    const e0 = 25 * r() ** 2, p0 = (r() * 2 - 1) * 80, amp = 0.65 + r() * 0.45, sq = r() * 0.5, asym = r() < 0.25;
    const hold = { f: 50 + r() * 50, a: r() * 25, e: r() * 50 };
    out.push([kind, dur, (u) => {
      const t = u * dur, w = wave(t, P), arms = {};
      for (const s of ['l', 'r']) {
        const ws = asym && s === 'r' ? wave(t + P / 2, P) : w;
        let g;
        switch (kind) {
          case 'front': g = { f: 105 * amp * ws, a: 5, e: e0, p: p0 }; break;
          case 'lateral': g = { f: 8, a: 95 * amp * ws, e: e0, p: p0 }; break;
          case 'curl': g = { f: 10 * ws, a: 5, e: e0 + 120 * amp * ws, p: p0 * (1 - ws) - 50 * ws }; break;
          case 'press': g = { f: 25 + 135 * amp * ws, a: 25, e: 95 * (1 - ws) * amp + e0 * 0.3, p: p0 }; break;
          case 'squatfwd': g = { f: 85 * amp * w, a: 5, e: e0, p: p0 }; break;
          case 'punch': { const v = Math.max(0, Math.sin(2 * Math.PI * t / P + (s === 'r' ? Math.PI : 0))) ** 2; g = { f: 55 + 35 * v, a: 12, e: 105 * (1 - v) + 5, p: -60 * v }; break; }
          case 'fly': g = { f: 80, a: 85 * amp * (1 - ws), e: 10 + e0 * 0.5, p: p0 }; break;
          case 'row': g = { f: 75 * (1 - ws) + 10, a: 10, e: 15 + 95 * ws, p: p0 }; break;
          case 'curlsquat': g = { f: 15 * ws, a: 5, e: e0 + 110 * amp * ws, p: -40 }; break;
          default: g = { f: hold.f * w, a: hold.a * w, e: hold.e * w, p: p0 * w };
        }
        arms[s] = g;
      }
      const squat = kind === 'squatfwd' ? 0.8 * w : kind === 'curlsquat' ? 0.5 * w : sq * w * (kind === 'hold' ? 1 : 0);
      return { squat, arms };
    }]);
    out.push(['stand', 1.2, () => ({})]);
  }
  return out;
}
function runSession(tl, seed, rows) {
  const rig = M.sim.makeRig(seed), ids = Object.keys(rig), dt = 4 / 208;
  const cal = new M.Calibration(); let t = dt;
  for (; t < 9.5; t += dt) { if (cal.phase === 'stand' && t >= 2.8) cal.standDone(); for (const id of ids) cal.feed(id, M.sim.simSample(t, rig, id, tl)); }
  const res = cal.finish(); if (!res.ok) return;
  const b = new M.Body({ height: tl.height || 1.75, armPrior: null }); b.calibrate(res);
  let k = 0;
  for (; t < tl.len - 0.05; t += dt) {
    for (const id of ids) b.feed(id, M.sim.simSample(t, rig, id, tl));
    b.solve(t);
    if (t < 11.6 || (k++ & 1)) continue;
    const f = tl.frame(t), Tt = T(f.R.trunk);
    for (const side of ['l', 'r']) {
      const ft = b.arm[side].feat; if (!ft) continue;
      let U = mul(Tt, f.R[side + 'upper']); if (side === 'r') U = SRS(U);
      rows.push([...ft.d, ...ft.y, ...ft.w, ...ft.a, ...ft.u, ...U].map((v) => +v.toFixed(5)));
    }
  }
}
if (mode === 'rows') {
  const [, , , trainF, shard, nsh, outF] = process.argv;
  const data = load(trainF, 'XEMS_MOCAP'), rows = [];
  for (let ci = 0; ci < data.clips.length; ci++) {
    if (ci % +nsh !== +shard) continue;
    runSession(M.sim.Timeline.session(data, [ci]), 100 + ci, rows); process.stderr.write('c');
  }
  const NS = +(process.env.NSYN || 40);
  for (let si = 0; si < NS; si++) {
    if ((si + 7) % +nsh !== +shard) continue;
    const H = 1.55 + ((si * 37) % 40) / 100, dim = M.bodyDims(H), sc2 = synthScript(si + 1);
    const tl = new M.sim.Timeline([{ kind: 'script', name: 'calib', from: 0, len: 10, script: M.sim.SCRIPT },
      { kind: 'script', name: 'ems', from: 0, len: sc2.reduce((a, x) => a + x[1], 0), script: sc2 }], dim);
    tl.height = H;
    runSession(tl, 500 + si, rows); process.stderr.write('s');
  }
  fs.writeFileSync(outF, JSON.stringify(rows));
  process.exit(0);
}
if (mode === 'pack') {
  const [, , , outF, ...ins] = process.argv;
  let rows = []; for (const f of ins) rows = rows.concat(JSON.parse(fs.readFileSync(f, 'utf8')));
  const KP = +(process.env.KP || 1);
  let sd = 99; const rnd = () => { sd = (sd * 16807) % 2147483647; return sd / 2147483647; };
  for (let i = rows.length - 1; i > 0; i--) { const j = Math.floor(rnd() * (i + 1)); const t = rows[i]; rows[i] = rows[j]; rows[j] = t; }
  const vx = (r) => [r[0], r[1], r[2], 0.6 * r[3], 0.6 * r[4], 0.6 * r[5], KS * r[6], KS * r[7], KS * r[8], KA * r[9], KA * r[10], KA * r[11], KP * r[12], KP * r[13], KP * r[14]];
  const keep = [], eps = +(process.env.EPS || 0.15), grid = new Map(), key = (x) => x.slice(0, 3).map((v) => Math.round(v / 0.15)).join(',');
  for (const r of rows) {
    const x = vx(r), k = key(x), cell = grid.get(k) || [];
    let dup = false;
    for (const q of cell) { let d = 0; for (let i = 0; i < 15; i++) d += (q.x[i] - x[i]) ** 2; if (d < eps * eps) { dup = true; break; } }
    if (!dup) { const e = { x, U: r.slice(15, 24) }; cell.push(e); grid.set(k, cell); keep.push(e); }
  }
  const X = new Float32Array(keep.length * 15), Uo = new Float32Array(keep.length * 9);
  keep.forEach((r, i) => { X.set(r.x, i * 15); Uo.set(r.U, i * 9); });
  const b64 = (a) => Buffer.from(a.buffer).toString('base64');
  fs.writeFileSync(outF, '// XEMS Motion arm corrector: ' + keep.length + ' prototypes — (what the wrist sensor sees + what the solver\'s arm\n' +
    '// physics concluded) → the real upper arm; learnt from CMU motion capture (mocap.cs.cmu.edu, other people than the\n' +
    '// test clips) and synthetic EMS sessions by scripts/motion/armdb.js. Generated; do not edit.\n' +
    'self.XEMS_ARMDB={n:' + keep.length + ',dim:15,ks:' + KS + ',ka:' + KA + ',kp:' + KP + ',X:"' + b64(X) + '",U:"' + b64(Uo) + '"};\n');
  console.error(rows.length + ' rows → ' + keep.length + ' prototypes → ' + outF);
  process.exit(0);
}

if (mode === 'eval') {
  global.self = global; require(path.resolve(a1));
  const db = M.ArmPrior ? new M.ArmPrior(global.XEMS_ARMDB) : null;
  const test = load(path.join(__dirname, '../../motion/mocap/cmu.js'), 'XEMS_MOCAP');
  let all = [];
  for (let ci = 0; ci < test.clips.length; ci++) {
    const m = new M.sim.Mocap(test, ci);
    const errU = [], errE = [], errU0 = [];
    for (let t = 0.1; t < m.len - 0.1; t += 1 / 20) {
      for (const side of ['l', 'r']) {
        let s = sample(m, t, side);
        if (side === 'r') s = mirror(s);
        const p = db.predict(vec(s.feat));
        const ut = mv(s.Urel, [0, 0, -1]), up = mv(p, [0, 0, -1]);
        errU.push(Math.acos(Math.max(-1, Math.min(1, ut[0] * up[0] + ut[1] * up[1] + ut[2] * up[2]))) * R2D);
        const el = (U) => Math.acos(Math.max(-1, Math.min(1, M.m.dot(mv(U, [0, 0, -1]), s.feat.d)))) * R2D;
        errE.push(Math.abs(el(p) - el(s.Urel)));
        // baseline: "the upper arm points where the forearm points" (straight arm)
        errU0.push(Math.acos(Math.max(-1, Math.min(1, M.m.dot(ut, s.feat.d)))) * R2D);
      }
    }
    const mean = (a) => a.reduce((x, y) => x + y, 0) / a.length;
    console.log(m.title.padEnd(26) + ' upper arm ' + mean(errU).toFixed(1).padStart(5) + '°  elbow ' + mean(errE).toFixed(1).padStart(5) + '°   (straight-arm guess ' + mean(errU0).toFixed(1) + '°)');
    all = all.concat(errU);
  }
}
module.exports = { sample, vec, mirror };
