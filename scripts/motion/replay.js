// Replay a real recording (-raw.jsonl, app ≥ 1.10: it starts with the calibration's own samples) through TODAY's
// solver: the calibration is redone from those samples with the wizard's own rules (still / moving / held), then
// every sample is solved again. Writes the same CSV as the app ("● Запис") — compare it with a clip:
//   node scripts/motion/replay.js <raw.jsonl> <out.csv> [--old | --keep-places]   (--old: the recorded calibration as
//   it was; --keep-places: its sensor places, all the rest redone)
//   python3 scripts/motion/video-compare.py <out.csv> <video-pose.json>
'use strict';
const fs = require('fs'), vm = require('vm'), path = require('path');
const M = require('../../motion/viewer/motion-core.js');
{ const c = { self: {} }; vm.runInNewContext(fs.readFileSync(path.join(__dirname, '../../motion/viewer/models/armdb.js'), 'utf8'), c); global.XEMS_ARMDB = c.self.XEMS_ARMDB; }
const [, , inF, outF, flag] = process.argv;
const lines = fs.readFileSync(inF, 'utf8').trim().split('\n').map((l) => JSON.parse(l));
const head = lines[0], place = head.place || { v: 'T1' };
const smp = (r) => ({ t: r.t, q: r.q, gyro: r.g, acc: r.a, still: !!r.s });
const calL = lines.filter((r) => r.cal), recL = lines.slice(1).filter((r) => !r.cal);
let res;
if (flag === '--old' || !calL.length) res = { ok: true, assign: head.calibration.assign, psi: head.calibration.psi, q0: head.calibration.q0 };
else {
  // the wizard, offline: stand still ≥ 2.2 s → zero pose; moved, then still ≥ 1 s with a turn > 20° → hold; up; arms out
  // held → holdT
  const cal = new M.Calibration({ place }), last = {};
  let phase = 'stand', stillSince = null, moved = false, log = [];
  for (const r of calL) {
    last[r.id] = r; cal.feed(r.id, smp(r));
    const ids = Object.keys(last); if (ids.length < 5) continue;
    const still = ids.every((id) => Math.hypot(...last[id].g) < 6), moving = ids.some((id) => Math.hypot(...last[id].g) > 40), t = r.t;
    if (moving) moved = true;
    if (phase === 'stand') { stillSince = still ? stillSince ?? t : null; if (stillSince != null && t - stillSince > 2.2) { cal.standDone(); phase = 'move'; moved = false; stillSince = null; log.push('zero ' + t.toFixed(1)); } }
    else if (phase === 'move') { stillSince = still && moved ? stillSince ?? t : null; if (stillSince != null && t - stillSince > 1 && cal.turnNow() > 20) { cal.hold(); phase = 'up'; moved = false; stillSince = null; log.push('hold ' + t.toFixed(1)); } }
    else if (phase === 'up') { stillSince = still && moved ? stillSince ?? t : null; if (stillSince != null && t - stillSince > 0.7) { phase = 'side'; moved = false; stillSince = null; } }
    else if (phase === 'side') { stillSince = still && moved ? stillSince ?? t : null; const tv = Object.values(cal.turns()).sort((a, b) => b - a); if (stillSince != null && t - stillSince > 1 && tv[1] >= 45) { cal.holdT(); phase = 'done'; log.push('T ' + t.toFixed(1)); } }
  }
  res = cal.finish();
  const auto = res.assign;
  if (flag === '--keep-places') res = cal.finish(head.calibration.assign);   // the recorded places, everything else redone
  const ok = Object.keys(auto).every((id) => auto[id] === head.calibration.assign[id]);
  console.error('recalibrated (' + log.join(', ') + '): places ' + (ok ? 'same as recorded ✓' : 'DIFFER ' + JSON.stringify(auto)) + (res.problems.length ? ' · ' + res.problems.join('; ') : ''));
}
const body = new M.Body({ height: head.height || 1.75, place, ...(process.env.NOPRIOR ? { armPrior: null } : {}) });
body.calibrate(res);
const back = Object.keys(res.assign).find((id) => res.assign[id] === 'back');
const ANG = ['trunkLean', 'trunkSide', 'trunkTwist', 'lKnee', 'rKnee', 'lHip', 'rHip', 'lShElev', 'rShElev', 'lElbow', 'rElbow'];
const EXTRA = process.env.FORE ? ['lForeElev', 'rForeElev'] : [];
const out = ['t,' + ANG.concat(EXTRA).join(',') + ',reps'];
const { mv, angBetween } = M.m;
for (const r of recL) {
  body.feed(r.id, smp(r));
  if (r.id !== back) continue;
  const p = body.solve(r.t); if (!p) continue;
  // FORE=1: the forearm's elevation from the trunk's down (what the wrist sensor itself says, before any upper-arm guess)
  const fe = EXTRA.map((k) => (angBetween(mv(p.R[k[0] + 'fore'], [0, 0, -1]), mv(p.R.trunk, [0, 0, -1])) * 57.2958).toFixed(1));
  out.push([r.t.toFixed(3), ...ANG.map((k) => (p.A[k] || 0).toFixed(1)), ...fe, p.rep.count].join(','));
}
fs.writeFileSync(outF, out.join('\n') + '\n');
console.error('wrote ' + (out.length - 1) + ' poses');
