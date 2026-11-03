// Teach the arm corrector from our own recordings (docs/xems-motion.md "Teacher recordings").
// Recording layout (5 sensors): back, both wrists, both UPPER ARMS (outer side, mid upper arm) — the test page's
// "Запис за ръцете" mode calibrates it and "● Запис" saves the raw log (-raw.jsonl). The upper-arm sensors are the
// truth; what is learnt uses only what stays in normal use (back + wrists, through the solver's arm physics).
//   node scripts/motion/train-recordings.js eval  <armdb.js> <raw.jsonl…>            how far the 5-sensor arms are off
//   node scripts/motion/train-recordings.js train <armdb.js> <out armdb.js> <raw.jsonl…>   add the recordings to it
//   node scripts/motion/train-recordings.js sim   <out raw.jsonl> <clip ids…>          a simulated recording (CMU clips)
'use strict';
const fs = require('fs'), vm = require('vm'), path = require('path');
const M = require('../../motion/viewer/motion-core.js');
const { mul, T, mv, dot, R2D } = M.m;
const [, , mode, ...args] = process.argv;
const SRS = (R) => [R[0], -R[1], R[2], -R[3], R[4], -R[5], R[6], -R[7], R[8]];
const loadDb = (f) => { const c = { self: {} }; vm.runInNewContext(fs.readFileSync(f, 'utf8'), c); return c.self.XEMS_ARMDB; };

// replay one raw recording through the solver; cb(side, features, measured upper arm in the trunk frame, estimate)
function replay(file, prior, cb) {
  const lines = fs.readFileSync(file, 'utf8').trim().split('\n');
  const head = JSON.parse(lines[0]);
  if (!head.calibration) throw new Error(file + ': recorded without a calibration');
  const roles = Object.values(head.calibration.assign);
  if (!roles.includes('lupper') && !roles.includes('rupper')) throw new Error(file + ': no upper-arm sensor (record in the arm-teaching mode)');
  const body = new M.Body({ height: head.height || 1.75, armPrior: prior });
  body.calibrate({ ok: true, assign: head.calibration.assign, psi: head.calibration.psi, q0: head.calibration.q0 });
  const backId = Object.keys(head.calibration.assign).find((id) => head.calibration.assign[id] === 'back');
  let n = 0;
  for (let i = 1; i < lines.length; i++) {
    const r = JSON.parse(lines[i]);
    body.feed(r.id, { t: r.t, q: r.q, gyro: r.g, acc: r.a, still: !!r.s });
    if (r.id !== backId) continue;
    body.solve(r.t);
    if (n++ < 60) continue;                                   // let the arm physics settle
    const B = body.seg('back'); if (!B) continue;
    const Tt = T(B.R);
    for (const side of ['l', 'r']) {
      const up = body.seg(side + 'upper'), a = body.arm[side];
      if (!up || !a.feat) continue;
      let Ur = mul(Tt, up.R); if (side === 'r') Ur = SRS(Ur);
      let Ue = mul(Tt, a.Uout || a.U); if (side === 'r') Ue = SRS(Ue);
      cb(side, a.feat, Ur, Ue);
    }
  }
}
const angle = (U1, U2) => Math.acos(Math.max(-1, Math.min(1, dot(mv(U1, [0, 0, -1]), mv(U2, [0, 0, -1]))))) * R2D;

if (mode === 'eval') {
  const [dbF, ...files] = args;
  const prior = new M.ArmPrior(loadDb(dbF));
  for (const f of files) {
    const e = [], el = [];
    replay(f, prior, (side, ft, Ur, Ue) => {
      e.push(angle(Ur, Ue));
      const elbow = (U) => Math.acos(Math.max(-1, Math.min(1, dot(mv(U, [0, 0, -1]), ft.d)))) * R2D;
      el.push(Math.abs(elbow(Ur) - elbow(Ue)));
    });
    const mean = (a) => a.reduce((x, y) => x + y, 0) / a.length;
    console.log(path.basename(f).padEnd(40) + ' upper arm ' + mean(e).toFixed(1) + '°  elbow ' + mean(el).toFixed(1) + '°  (' + e.length + ' samples)');
  }
}

if (mode === 'train') {
  const [dbF, outF, ...files] = args;
  const db = loadDb(dbF);
  const dec = (b64, n) => { const b = Buffer.from(b64, 'base64'); return new Float32Array(b.buffer.slice(b.byteOffset, b.byteOffset + b.byteLength), 0, n); };
  const X = Array.from(dec(db.X, db.n * db.dim)), U = Array.from(dec(db.U, db.n * 9));
  const prior = new M.ArmPrior(db);
  const fresh = [];
  for (const f of files) replay(f, null, (side, ft, Ur) => fresh.push({ x: prior.vec(ft), U: Ur }));
  // our own recordings count: keep them dense (thin only near-identical frames)
  let added = 0; const kept = [];
  for (const r of fresh) {
    let dup = false;
    for (let j = Math.max(0, kept.length - 40); j < kept.length; j++) { let d = 0; for (let i = 0; i < db.dim; i++) d += (kept[j].x[i] - r.x[i]) ** 2; if (d < 0.0025) { dup = true; break; } }
    if (!dup) { kept.push(r); X.push(...r.x); U.push(...r.U); added++; }
  }
  const n = db.n + added, b64 = (a) => Buffer.from(new Float32Array(a).buffer).toString('base64');
  fs.writeFileSync(outF, '// XEMS Motion arm corrector: ' + n + ' prototypes (' + added + ' from our own teacher recordings: ' +
    files.map((f) => path.basename(f)).join(', ') + ') — scripts/motion/train-recordings.js. Generated; do not edit.\n' +
    'self.XEMS_ARMDB={n:' + n + ',dim:' + db.dim + ',ks:' + db.ks + ',ka:' + db.ka + ',kp:' + db.kp + ',X:"' + b64(X) + '",U:"' + b64(U) + '"};\n');
  console.log(fresh.length + ' recorded arm samples → ' + added + ' new prototypes → ' + outF + ' (' + n + ' in all)');
}

if (mode === 'sim') {            // what the page would record: teacher layout on a CMU person, raw samples at 52 Hz
  const [outF, ...clipIds] = args;
  const c = { self: {} }; vm.runInNewContext(fs.readFileSync(process.env.TRAIN_JS, 'utf8'), c);
  const data = c.self.XEMS_MOCAP, idx = clipIds.map((id) => data.clips.findIndex((k) => k.id === id)).filter((i) => i >= 0);
  const tl = M.sim.Timeline.session(data, idx), rig = M.sim.makeRig(77, M.ROLES_TEACH), ids = Object.keys(rig), dt = 4 / 208;
  const cal = new M.Calibration({ roles: M.ROLES_TEACH }); let t = dt;
  for (; t < 9.5; t += dt) { if (cal.phase === 'stand' && t >= 2.8) cal.standDone(); for (const id of ids) cal.feed(id, M.sim.simSample(t, rig, id, tl)); }
  const res = cal.finish();
  const ok = ids.every((id) => res.assign[id] === rig[id].role);
  console.log('calibration found the places: ' + (ok ? 'yes' : 'NO ' + JSON.stringify(res.assign)));
  const out = [JSON.stringify({ start: 0, height: tl.height, calibration: { assign: res.assign, psi: res.psi, q0: res.q0 } })];
  for (t = 9.5; t < tl.len - 0.05; t += dt) {
    for (const id of ids) { const s = M.sim.simSample(t, rig, id, tl); out.push(JSON.stringify({ id, t: +t.toFixed(4), q: s.q, g: s.gyro, a: s.acc, s: 0 })); }
  }
  fs.writeFileSync(outF, out.join('\n') + '\n');
  console.log((tl.len - 9.5).toFixed(0) + ' s recorded → ' + outF);
}
