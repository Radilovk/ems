// Forearm twist (pronation / supination) alone must not move the upper arm (owner 2026-11-05: "just a rotation of the
// forearms gives a completely unreal movement of the arm"). Elbows bent 90° at the sides, then arms forward, palms
// turned ±80° — the upper arm stays put. Prints how far the shown upper arm and elbow wander.
//   node scripts/motion-sim/twist-test.js
const M = require('../../motion/viewer/motion-core.js'), fs = require('fs'), vm = require('vm'), path = require('path');
{ const c = { self: {} }; vm.runInNewContext(fs.readFileSync(path.join(__dirname, '../../motion/viewer/models/armdb.js'), 'utf8'), c); global.XEMS_ARMDB = c.self.XEMS_ARMDB; }
const { mv, T, mul } = M.m, D = 180 / Math.PI;
const tw = (u, n) => 80 * Math.sin(2 * Math.PI * u * n);
const BLOCKS = [
  ['twist, elbows 90° at the sides', 9, (u) => ({ arms: { l: { e: 90, p: tw(u, 3) }, r: { e: 90, p: tw(u, 3) } } })],
  ['twist, arms forward', 9, (u) => ({ arms: { l: { f: 90, p: tw(u, 3) }, r: { f: 90, p: tw(u, 3) } } })],
  ['twist, arms out to the sides', 9, (u) => ({ arms: { l: { a: 90, p: tw(u, 3) }, r: { a: 90, p: tw(u, 3) } } })],
];
const ease = (u) => (u <= 0 ? 0 : u >= 1 ? 1 : u * u * (3 - 2 * u));
const SC = [['stand', 3, () => ({})], ['calib', 5, (u) => { const s = 0.5 - 0.5 * Math.cos(2 * Math.PI * u); return { squat: 0.55 * s, arms: { l: { f: 90 * s }, r: { f: 90 * s } } }; }], ['stand', 2, () => ({})]];
for (const [name, len, fn] of BLOCKS) {
  const into = (u) => { const p = fn(0), e = ease(u); const sc = (o) => Object.fromEntries(Object.entries(o).map(([k, v]) => [k, v * e])); return { arms: { l: sc(p.arms.l), r: sc(p.arms.r) } }; };
  const script = [...SC, ['in', 1.5, into], ['hold', 1.5, () => fn(0)], [name, len, fn]];
  const L = script.reduce((a, s) => a + s[1], 0), dim = M.bodyDims(1.75);
  const tl = new M.sim.Timeline([{ kind: 'script', name: 'x', from: 0, len: L, script }], dim);
  const rig = M.sim.makeRig(4242, null, { v: 'T1' });
  const cal = new M.Calibration({});
  let t = 0;
  for (; t < 9.5; t += 0.02) { if (cal.phase === 'stand' && t >= 2.8) cal.standDone(); if (!cal.held && t >= 5.5) cal.hold(); for (const id in rig) { const s = M.sim.simSample(t, rig, id, tl); s.t = t; cal.feed(id, s); } }
  const body = new M.Body({ height: 1.75, ...(process.env.NOPRIOR ? { armPrior: null } : {}) }); body.calibrate(cal.finish());
  const back = Object.keys(rig).find((id) => rig[id].role === 'back');
  let eU = [], eE = [], mx = 0, u0 = {}, wander = 0;
  for (; t < L - 0.05; t += 0.02) {
    for (const id in rig) { const s = M.sim.simSample(t, rig, id, tl); s.t = t; body.feed(id, s); }
    const pose = body.solve(t);
    if (t < L - len) continue;
    const f = tl.frame(t), A = M.sim.truthAngles(f);
    for (const sd of ['l', 'r']) {
      const u1 = mv(pose.R[sd + 'upper'], [0, 0, -1]), u2 = mv(f.R[sd + 'upper'], [0, 0, -1]);
      const e = Math.acos(Math.max(-1, Math.min(1, u1[0] * u2[0] + u1[1] * u2[1] + u1[2] * u2[2]))) * D;
      eU.push(e); mx = Math.max(mx, e);
      if (!u0[sd]) u0[sd] = u1;
      wander = Math.max(wander, Math.acos(Math.max(-1, Math.min(1, u1[0] * u0[sd][0] + u1[1] * u0[sd][1] + u1[2] * u0[sd][2]))) * D); eE.push(Math.abs(pose.A[sd + 'Elbow'] - A[sd + 'Elbow']));
    }
  }
  const mean = (a) => a.reduce((x, y) => x + y, 0) / a.length;
  console.log(name.padEnd(32), 'moved by the twist alone: ' + wander.toFixed(0) + '° · upper arm off by ' + mean(eU).toFixed(1) + '° (max ' + mx.toFixed(0) + '°), elbow off by ' + mean(eE).toFixed(1) + '°');
}
