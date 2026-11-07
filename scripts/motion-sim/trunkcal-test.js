// The trunk sensor's heading must not depend on how the trunk moves in the calibration squat (owner 2026-11-07: on the
// breastbone, "it shows leaning forward as leaning back"). People copy the half squat differently — some keep the
// chest up or even lean it back. Calibrate with the chest leaning back by LEAN° during the hold, then bend forward 40°:
// the trunk's lean must read +40°, not −40°.   node scripts/motion-sim/trunkcal-test.js
const M = require('../../motion/viewer/motion-core.js');
const ease = (u) => (u <= 0 ? 0 : u >= 1 ? 1 : u * u * (3 - 2 * u));
let fails = 0;
for (const place of [{ v: 'T1' }, { v: 'T7' }, { v: 'sternum', front: true }]) for (const back of [0, 25, 35]) {
  const fw = (e) => ({ squat: 0.5 * e, leanAdd: -back * e, arms: { l: { f: 90 * e }, r: { f: 90 * e } } });
  const SC = [['stand', 3, () => ({})], ['down', 1.6, (u) => fw(ease(u))], ['hold', 2, () => fw(1)], ['up', 1.6, (u) => fw(1 - ease(u))], ['stand', 1.5, () => ({})],
    ['bend', 2, (u) => ({ leanAdd: 40 * ease(u) })], ['held', 2, () => ({ leanAdd: 40 })], ['back', 2, (u) => ({ leanAdd: 40 * (1 - ease(u)) })]];
  const L = SC.reduce((a, x) => a + x[1], 0), dim = M.bodyDims(1.75);
  const tl = new M.sim.Timeline([{ kind: 'script', name: 'x', from: 0, len: L, script: SC }], dim);
  const errs = [];
  for (let seed = 1; seed <= 6; seed++) {
    const rig = M.sim.makeRig(seed * 104729, null, place), cal = new M.Calibration({ place });
    let t = 0;
    for (; t < 9.6; t += 0.02) { if (cal.phase === 'stand' && t >= 2.8) cal.standDone(); if (!cal.held && t >= 5.6) cal.hold(); for (const id in rig) { const s = M.sim.simSample(t, rig, id, tl); s.t = t; cal.feed(id, s); } }
    const body = new M.Body({ height: 1.75, place }); body.calibrate(cal.finish());
    for (; t < L - 0.05; t += 0.02) {
      for (const id in rig) { const s = M.sim.simSample(t, rig, id, tl); s.t = t; body.feed(id, s); }
      const p = body.solve(t);
      if (t > 13.2 + 2 && t < 13.2 + 4) errs.push(p.A.trunkLean - M.sim.truthAngles(tl.frame(t)).trunkLean);
    }
  }
  const m = errs.reduce((a, b) => a + Math.abs(b), 0) / errs.length, worst = Math.max(...errs.map(Math.abs));
  const ok = worst < 10; if (!ok) fails++;
  console.log((ok ? '  ✓ ' : '  ✗ ') + (place.front ? 'breastbone' : place.v).padEnd(10) + ' chest back ' + String(back).padStart(2) + '° in the hold → forward bend read ' + m.toFixed(1) + '° off (worst ' + worst.toFixed(0) + '°)');
}
console.log(fails ? 'FAIL (' + fails + ')' : 'PASS');
process.exit(fails ? 1 : 0);
