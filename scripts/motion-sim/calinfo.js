// node scripts/motion-sim/calinfo.js [E]: which calibration poses carry the most information (docs/xems-motion.md 1.14)
// How much does each calibration pose tell? Person copies the poses imperfectly: the forward raise drifts out of its
// plane by up to ±E°, the T pose likewise. Heading error of the arm sensors with 2 poses vs with the T hold added.
const M = require('../../motion/viewer/motion-core.js');
const E = +process.argv[2] || 20;
const res = { two: [], three: [] };
let seedR = 5; const rnd = () => { seedR = (seedR * 16807) % 2147483647; return seedR / 2147483647 * 2 - 1; };
for (let seed = 1; seed <= 40; seed++) {
  const d1 = { l: E * rnd(), r: E * rnd() }, d2 = { l: E * rnd(), r: E * rnd() }, tw = { l: 15 * rnd(), r: 15 * rnd() };
  const ease = (u) => (u <= 0 ? 0 : u >= 1 ? 1 : u * u * (3 - 2 * u));
  const fw = (e) => ({ squat: 0.5 * e, arms: { l: { f: 90 * e, a: d1.l * e, p: tw.l * e }, r: { f: 90 * e, a: d1.r * e, p: tw.r * e } } });
  const tp = (e) => ({ arms: { l: { hz: d2.l * e, a: 90 * e }, r: { hz: d2.r * e, a: 90 * e } } });
  const SC = [['stand', 3, () => ({})], ['down', 1.6, (u) => fw(ease(u))], ['hold', 2, () => fw(1)], ['up', 1.6, (u) => fw(1 - ease(u))], ['stand', 1, () => ({})],
    ['tup', 1.6, (u) => tp(ease(u))], ['thold', 2, () => tp(1)], ['tdown', 1.6, (u) => tp(1 - ease(u))], ['stand', 1, () => ({})]];
  const L = SC.reduce((a, x) => a + x[1], 0), dim = M.bodyDims(1.75);
  const tl = new M.sim.Timeline([{ kind: 'script', name: 'cal', from: 0, len: L, script: SC }], dim);
  const rig = M.sim.makeRig(seed * 7919, null, { v: 'T1' });
  for (const mode of ['two', 'three']) {
    const cal = new M.Calibration({});
    for (let t = 0; t < L - 0.05; t += 0.02) {
      if (cal.phase === 'stand' && t >= 2.8) cal.standDone();
      if (!cal.held && t >= 5.5) cal.hold();
      if (mode === 'three' && !cal.heldT && t >= 12.6) cal.holdT();
      for (const id in rig) { const s = M.sim.simSample(t, rig, id, tl); s.t = t; cal.feed(id, s); }
    }
    const r = cal.finish();
    // then a normal session (the scripted raises, laterals, curls): forearm orientation from the calibration vs truth
    const body = new M.Body({ height: 1.75, armPrior: null }); body.calibrate(r);
    const test = M.sim.Timeline.script(dim);
    for (let t = 20; t < 50; t += 0.25) {
      for (const id in rig) { const s = M.sim.simSample(t, rig, id, test); s.t = t; body.feed(id, s); }
      const f = test.frame(t);
      for (const side of ['l', 'r']) {
        const sg = body.seg(side + 'wrist'); if (!sg) continue;
        const Rt = f.R[side + 'fore'], Re = sg.R;
        const c = (Rt[0] * Re[0] + Rt[3] * Re[3] + Rt[6] * Re[6] + Rt[1] * Re[1] + Rt[4] * Re[4] + Rt[7] * Re[7] + Rt[2] * Re[2] + Rt[5] * Re[5] + Rt[8] * Re[8] - 1) / 2;
        res[mode].push(Math.acos(Math.max(-1, Math.min(1, c))) * 57.2958);
      }
    }
  }
}
const mean = (a) => a.reduce((x, y) => x + y, 0) / a.length, med = (a) => a.slice().sort((x, y) => x - y)[a.length >> 1];
for (const m in res) console.log('poses ' + (m === 'two' ? 'stand + forward hold' : '+ T hold'), ' forearm orientation error mean ' + mean(res[m]).toFixed(1) + '°, median ' + med(res[m]).toFixed(1) + '°, max ' + Math.max(...res[m]).toFixed(1) + '°');
