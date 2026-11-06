// XEMS Motion — host side: five IMU orientations → calibrated segments → whole-body pose, angles, speeds, reps.
// One file, no dependencies; runs in the browser (viewer/index.html) and in node (scripts/motion-sim). The math is
// plain enough to port to Java (XEMS) or C (the back sensor as hub) unchanged. Design: docs/xems-motion.md.
//
// Frames: world W = the client's own frame at calibration: x forward, y left, z up. Every segment frame equals W in
// the zero pose (upright, feet together, arms at the sides, palms to the thighs). Sensor orientations arrive in their
// own gravity frame G_i (z up, heading arbitrary — 6-axis, no magnet); calibration finds each sensor's heading ψ_i.
(function (root) {
  'use strict';
  const D2R = Math.PI / 180, R2D = 180 / Math.PI, G = 9.81;
  const ROLES = ['back', 'lwrist', 'rwrist', 'lshank', 'rshank'];
  // the recording layout for teaching the arms: the two leg sensors go on the upper arms (outer side, mid upper arm)
  const ROLES_TEACH = ['back', 'lwrist', 'rwrist', 'lupper', 'rupper'];
  // 7 sensors: the five + both upper arms (outer side, mid upper arm) — the upper arm measured, not guessed (1.16)
  const ROLES7 = ['back', 'lwrist', 'rwrist', 'lshank', 'rshank', 'lupper', 'rupper'];
  // 6 sensors (owner 2026-11-05: "5 minimum, 6 maximum"): the five + one low on the back (lumbar) — the pelvis measured
  const ROLES6 = ['back', 'lwrist', 'rwrist', 'lshank', 'rshank', 'pelvis'];
  const ROLE_BG = { pelvis: 'кръст', back: 'гръб', lwrist: 'лява китка', rwrist: 'дясна китка', lshank: 'ляв глезен', rshank: 'десен глезен',
    lupper: 'лява мишница', rupper: 'дясна мишница' };
  const ROLE_LED = { pelvis: 'yellow', back: 'white', lwrist: 'red', rwrist: 'green', lshank: 'magenta', rshank: 'cyan', lupper: 'yellow', rupper: 'blue' };
  // ---------- where the fifth sensor sits (owner 2026-11-04: "let me say exactly where — belly, waist, which vertebra")
  // s = height on the spine, 0 = S1 (sacrum) … 1 = T1; front = on the belly / breastbone (board bottom to the body).
  const LEVELS = { C7: 1.04, T1: 1 };
  for (let i = 2; i <= 12; i++) LEVELS['T' + i] = 1 - (i - 1) * 0.0582;
  Object.assign(LEVELS, { L1: 0.30, L2: 0.24, L3: 0.18, L4: 0.12, L5: 0.06, S1: 0 });
  const FRONT = { sternum: ['T5', 'гръдната кост'], above: ['L1', 'над пъпа'], navel: ['L3', 'пъпа'], below: ['L5', 'под пъпа'] };
  // place → { s, front, dx (m, along the trunk's x: + front), name }
  function placeOf(p) {
    p = p || {};
    const v = p.front ? (FRONT[p.v] || FRONT.navel)[0] : (LEVELS[p.v] != null ? p.v : 'T1');
    return { v: p.v || 'T1', s: LEVELS[v], front: !!p.front, dx: p.front ? 0.10 : -0.08,
      name: p.front ? 'отпред, ' + (FRONT[p.v] || FRONT.navel)[1] : 'гръб, ' + v };
  }
  // the spine is not rigid: real people (all CMU clips, 50 k frames) bend it with the lean. Pelvis → T1 bend (about the
  // lateral axis) ≈ a·(lean of the sensor's level) + b — fitted per level (scripts/motion/spine-fit.js; r 0.39 at S1 …
  // 0.82 at T1). One sensor then gives both ends: pelvis = R_s·Ry(−s·f), chest = R_s·Ry((1−s)·f).
  const SPINE_FIT = [[0, 0.357, 0.5], [0.18, 0.436, -0.9], [0.36, 0.475, -1.9], [0.67, 0.482, -2.9], [1, 0.452, -3.2]];
  function spineFit(s) {
    s = Math.max(0, Math.min(1, s));
    for (let i = 1; i < SPINE_FIT.length; i++) if (s <= SPINE_FIT[i][0]) {
      const [s0, a0, b0] = SPINE_FIT[i - 1], [s1, a1, b1] = SPINE_FIT[i], k = (s - s0) / (s1 - s0);
      return [a0 + (a1 - a0) * k, (b0 + (b1 - b0) * k) * D2R];
    }
    return [SPINE_FIT[4][1], SPINE_FIT[4][2] * D2R];
  }

  // ---------- 3×3 rotation matrices (row-major arrays of 9) and vectors
  const I3 = () => [1, 0, 0, 0, 1, 0, 0, 0, 1];
  function mul(a, b) {
    const r = new Array(9);
    for (let i = 0; i < 3; i++) for (let j = 0; j < 3; j++)
      r[3 * i + j] = a[3 * i] * b[j] + a[3 * i + 1] * b[3 + j] + a[3 * i + 2] * b[6 + j];
    return r;
  }
  const T = (a) => [a[0], a[3], a[6], a[1], a[4], a[7], a[2], a[5], a[8]];
  const mv = (a, v) => [a[0] * v[0] + a[1] * v[1] + a[2] * v[2], a[3] * v[0] + a[4] * v[1] + a[5] * v[2], a[6] * v[0] + a[7] * v[1] + a[8] * v[2]];
  const add = (a, b) => [a[0] + b[0], a[1] + b[1], a[2] + b[2]];
  const sub = (a, b) => [a[0] - b[0], a[1] - b[1], a[2] - b[2]];
  const sc = (a, s) => [a[0] * s, a[1] * s, a[2] * s];
  const dot = (a, b) => a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
  const cross = (a, b) => [a[1] * b[2] - a[2] * b[1], a[2] * b[0] - a[0] * b[2], a[0] * b[1] - a[1] * b[0]];
  const norm = (a) => Math.hypot(a[0], a[1], a[2]);
  const unit = (a) => { const n = norm(a) || 1; return [a[0] / n, a[1] / n, a[2] / n]; };
  function rot(ax, ang) {   // Rodrigues, ax unit
    const c = Math.cos(ang), s = Math.sin(ang), t = 1 - c, [x, y, z] = ax;
    return [t * x * x + c, t * x * y - s * z, t * x * z + s * y, t * x * y + s * z, t * y * y + c, t * y * z - s * x, t * x * z - s * y, t * y * z + s * x, t * z * z + c];
  }
  const rx = (a) => rot([1, 0, 0], a), ry = (a) => rot([0, 1, 0], a), rz = (a) => rot([0, 0, 1], a);
  function logm(R) {        // → rotation vector (axis × angle)
    const c = Math.max(-1, Math.min(1, (R[0] + R[4] + R[8] - 1) / 2)), ang = Math.acos(c);
    let v = [R[7] - R[5], R[2] - R[6], R[3] - R[1]];
    if (ang < 1e-4) return sc(v, 0.5);                  // tiny turn: θ/(2 sin θ) → ½
    if (ang < Math.PI - 1e-3) return sc(v, ang / (2 * Math.sin(ang)));
    // near 180°: axis from the diagonal
    const ax = unit([Math.sqrt(Math.max(0, (R[0] + 1) / 2)), Math.sqrt(Math.max(0, (R[4] + 1) / 2)) * (R[1] >= 0 ? 1 : -1), Math.sqrt(Math.max(0, (R[8] + 1) / 2)) * (R[2] >= 0 ? 1 : -1)]);
    return sc(ax, ang);
  }
  const expm = (v) => { const a = norm(v); return a < 1e-9 ? I3() : rot(sc(v, 1 / a), a); };
  function qToM(q) {        // [w,x,y,z] → R
    const [w, x, y, z] = q;
    return [1 - 2 * (y * y + z * z), 2 * (x * y - w * z), 2 * (x * z + w * y), 2 * (x * y + w * z), 1 - 2 * (x * x + z * z), 2 * (y * z - w * x), 2 * (x * z - w * y), 2 * (y * z + w * x), 1 - 2 * (x * x + y * y)];
  }
  function mToQ(R) {
    const tr = R[0] + R[4] + R[8];
    let w, x, y, z;
    if (tr > 0) { const s = Math.sqrt(tr + 1) * 2; w = s / 4; x = (R[7] - R[5]) / s; y = (R[2] - R[6]) / s; z = (R[3] - R[1]) / s; }
    else if (R[0] > R[4] && R[0] > R[8]) { const s = Math.sqrt(1 + R[0] - R[4] - R[8]) * 2; w = (R[7] - R[5]) / s; x = s / 4; y = (R[1] + R[3]) / s; z = (R[2] + R[6]) / s; }
    else if (R[4] > R[8]) { const s = Math.sqrt(1 + R[4] - R[0] - R[8]) * 2; w = (R[2] - R[6]) / s; x = (R[1] + R[3]) / s; y = s / 4; z = (R[5] + R[7]) / s; }
    else { const s = Math.sqrt(1 + R[8] - R[0] - R[4]) * 2; w = (R[3] - R[1]) / s; x = (R[2] + R[6]) / s; y = (R[5] + R[7]) / s; z = s / 4; }
    return w < 0 ? [-w, -x, -y, -z] : [w, x, y, z];
  }
  const yawOf = (R) => Math.atan2(-R[1], R[4]);          // heading of the segment's lateral (y) axis
  const angBetween = (a, b) => Math.acos(Math.max(-1, Math.min(1, dot(unit(a), unit(b)))));

  // 20-byte BLE frame (see xems_motion.ino) → sample
  function decodeFrame(dv, t) {
    const i16 = (o) => dv.getInt16(o, true);
    const x = i16(2) / 32767, y = i16(4) / 32767, z = i16(6) / 32767;
    const w = Math.sqrt(Math.max(0, 1 - x * x - y * y - z * z));
    const f = dv.getUint8(1);
    return { t, seq: dv.getUint8(0), still: !!(f & 1), biasReady: !!(f & 2), lowBat: !!(f & 4), hit: !!(f & 8), q: [w, x, y, z],
      gyro: [i16(8) / 16, i16(10) / 16, i16(12) / 16], acc: [i16(14) / 1000, i16(16) / 1000, i16(18) / 1000] };
  }

  // ---------- body proportions (Winter / Drillis-Contini, fraction of height)
  function bodyDims(H) {
    return { H, shank: 0.246 * H, thigh: 0.245 * H, ankleH: 0.039 * H, trunk: 0.288 * H, neck: 0.06 * H, head: 0.13 * H,
      hipW: 0.095 * H, shW: 0.129 * H, upper: 0.186 * H, fore: 0.146 * H, hand: 0.108 * H,
      sensShank: 0.08, footFwd: 0.05 };
  }

  // ---------- calibration: zero pose (still) → one movement: slow squat with the arms raised forward
  // Finds for every sensor: its body place, its heading ψ, its zero orientation. No setting on the sensors.
  class Calibration {
    constructor(opt) { this.phase = 'stand'; this.s = {}; this.problems = []; this.roles = (opt && opt.roles) || ROLES; this.front = !!(opt && opt.place && opt.place.front); }
    feed(id, smp) {
      let s = this.s[id];
      if (!s) s = this.s[id] = { stand: [], q0: null, best: 0, accum: [0, 0, 0], n: 0, amax: 0 };
      const R = qToM(smp.q);
      if (this.phase === 'stand') {
        s.stand.push(R);
        if (s.stand.length > 40) s.stand.shift();
        s.accS = s.accS || []; s.accS.push(smp.acc); if (s.accS.length > 40) s.accS.shift();   // the zero pose: still
      } else if (this.phase === 'move' && s.q0) {
        (this.samples = this.samples || []).push([id, smp]);
        const v = logm(mul(R, T(s.q0)));                    // rotation since the zero pose, in G_i
        const a = norm(v) * R2D;
        if (a > s.best) s.best = a;
        if (a > 12) { s.accum = add(s.accum, v); s.n++; }
        s.amax = Math.max(s.amax, Math.abs(norm(smp.acc) - 1));   // how hard it is swung: the wrist far more than the upper arm
        s.recent = s.recent || []; s.recent.push(R); if (s.recent.length > 25) s.recent.shift();
      }
    }
    // zero pose: average of the last ~0.8 s of every sensor
    standDone() {
      for (const id in this.s) {
        const st = this.s[id].stand;
        if (st.length < 10) continue;
        const ref = st[st.length - 1];
        let acc = [0, 0, 0];
        for (const R of st) acc = add(acc, logm(mul(R, T(ref))));
        this.s[id].q0 = mul(expm(sc(acc, 1 / st.length)), ref);
        // the accelerometer's offset along gravity: standing still it must read exactly 1 g (Body.seg learns on)
        const as = this.s[id].accS || [];
        if (as.length >= 10) { const m = sc(as.reduce(add), 1 / as.length), n = norm(m); this.s[id].aOff = sc(m, (n - 1) / n); }
        this.s[id].best = 0; this.s[id].accum = [0, 0, 0]; this.s[id].n = 0;
      }
      this.phase = 'move';
    }
    // how far the sensors are from the zero pose now (°, the largest): the wizard tells "held down" from "back up"
    turns() {             // each sensor's turn from the zero pose now (°)
      const o = {};
      for (const id in this.s) { const s = this.s[id]; if (s.q0 && s.recent && s.recent.length) o[id] = norm(logm(mul(s.recent[s.recent.length - 1], T(s.q0)))) * R2D; }
      return o;
    }
    turnNow() {
      let m = 0;
      for (const id in this.s) { const s = this.s[id]; if (s.q0 && s.recent && s.recent.length) m = Math.max(m, norm(logm(mul(s.recent[s.recent.length - 1], T(s.q0)))) * R2D); }
      return m;
    }
    // the HELD pose (half squat, arms forward, still ~1 s): each sensor's turn from the zero pose read from two still
    // poses — exact (fusion at rest), whatever the speed or path of the movement. Owner 2026-11-05: "places are not
    // recognised well — find a better calibration". The moving average (accum) stays as the fallback.
    hold() {
      for (const id in this.s) {
        const s = this.s[id]; if (!s.q0 || !s.recent || s.recent.length < 8) continue;
        const rs = s.recent.slice(-12), ref = rs[rs.length - 1];
        let acc = [0, 0, 0]; for (const R of rs) acc = add(acc, logm(mul(R, T(ref))));
        const Rh = mul(expm(sc(acc, 1 / rs.length)), ref);
        s.held = logm(mul(Rh, T(s.q0)));
      }
      this.held = true;
    }
    // a second held pose: arms out to the sides (T). The arms then turn about the body's forward axis — a second, independent
    // reading of each arm sensor's heading (the first: the forward raise, about the lateral axis)
    holdT() {
      for (const id in this.s) {
        const s = this.s[id]; if (!s.q0 || !s.recent || s.recent.length < 8) continue;
        const rs = s.recent.slice(-12), ref = rs[rs.length - 1];
        let acc = [0, 0, 0]; for (const R of rs) acc = add(acc, logm(mul(R, T(ref))));
        s.heldT = logm(mul(mul(expm(sc(acc, 1 / rs.length)), ref), T(s.q0)));
      }
      this.heldT = true;
    }
    finish(forced) {
      this.phase = 'done';
      const ids = Object.keys(this.s).filter((id) => this.s[id].q0);
      const feat = {};
      for (const id of ids) {
        const s = this.s[id];
        const useHeld = s.held && norm(s.held) * R2D > 8;
        const ax = unit(useHeld ? s.held : s.accum);
        if (useHeld) s.best = Math.max(norm(s.held) * R2D, Math.min(s.best, norm(s.held) * R2D + 25));
        const nrm = mv(s.q0, [0, 0, 1]);                     // board normal (top side, away from the body)
        const ah = unit([ax[0], ax[1], 0]), nh = unit([nrm[0], nrm[1], 0]);
        feat[id] = { ang: s.best, ax, ah, nh, d: dot(ah, nh), vert: Math.abs(ax[2]), tilt: Math.abs(nrm[2]), n: s.n, amax: s.amax };
      }
      const roleCost = (r, f, flip) => {
        const d = flip ? -f.d : f.d;
        if (r === 'back' || r === 'pelvis') return 3 * Math.abs(d) + (f.ang > 75 ? 2 : 0);
        const big = Math.max(0, (60 - f.ang) / 20), mid = Math.max(0, (f.ang - 60) / 20);
        if (r === 'lwrist' || r === 'lupper') return Math.abs(d + 1) + big;
        if (r === 'rwrist' || r === 'rupper') return Math.abs(d - 1) + big;
        if (r === 'lshank') return Math.abs(d - 1) + mid;
        return Math.abs(d + 1) + mid;                        // rshank
      };
      let best = null;
      for (const flip of [false, true]) {
        permute(ids, this.roles, (map) => {
          let c = 0;
          for (const id in map) c += roleCost(map[id], feat[id], flip);
          // same side, same rotation: the wrist is the one swung harder (further from the shoulder)
          const who = {}; for (const id in map) who[map[id]] = id;
          for (const sd of ['l', 'r']) if (who[sd + 'upper'] && who[sd + 'wrist'] && feat[who[sd + 'upper']].amax > feat[who[sd + 'wrist']].amax) c += 3;
          if (!best || c < best.cost) best = { cost: c, map: { ...map }, flip };
        });
      }
      const assign = forced || (best ? best.map : {});
      // two sensors on the back: the one that turned more in the squat is the upper one (the chest leans further than
      // the pelvis tilts — real people, CMU: bend ≈ 0.45 × lean)
      if (!forced) {
        const ib = Object.keys(assign).find((id) => assign[id] === 'back'), ip = Object.keys(assign).find((id) => assign[id] === 'pelvis');
        if (ib && ip && feat[ip].ang > feat[ib].ang) { assign[ib] = 'pelvis'; assign[ip] = 'back'; }
      }
      // the board normal is assumed to point away from the body; the back sensor tells if this hardware is the other
      // way round (its normal must point backward = against "forward" = left × up)
      let flip = best ? best.flip : false;
      const backId = Object.keys(assign).find((id) => assign[id] === 'back');
      if (backId && feat[backId]) {
        const fwd = cross(feat[backId].ah, [0, 0, 1]);
        flip = (dot(feat[backId].nh, fwd) > 0) !== this.front;    // on the belly its normal points forward
      }
      const out = { ok: true, assign, psi: {}, q0: {}, flip, feat, problems: [], samples: this.samples || [] };
      for (const id in assign) {
        const f = feat[id], r = assign[id];
        if (!f) continue;
        const exp = /wrist|upper/.test(r) ? -Math.PI / 2 : Math.PI / 2;   // expected axis: −y for the arms, +y else
        out.psi[id] = exp - Math.atan2(f.ah[1], f.ah[0]);
        // arms with a T hold too: its axis (forward: +x for the left arm, −x for the right) gives the heading again —
        // the two readings averaged, weighted by how far each pose turned the sensor
        const s2 = this.s[id].heldT;
        if (/wrist/.test(r) && s2 && norm(s2) * R2D > 40) {
          const h2 = unit([s2[0], s2[1], 0]), e2 = r[0] === 'l' ? 0 : Math.PI, psi2 = e2 - Math.atan2(h2[1], h2[0]);
          const w1 = Math.min(1, f.ang / 60), w2 = Math.min(1, norm(s2) * R2D / 60);
          out.psi[id] = Math.atan2(w1 * Math.sin(out.psi[id]) + w2 * Math.sin(psi2), w1 * Math.cos(out.psi[id]) + w2 * Math.cos(psi2));
        }
        out.q0[id] = this.s[id].q0;
        (out.aOff = out.aOff || {})[id] = this.s[id].aOff ? this.s[id].aOff.map((x) => Math.max(-0.08, Math.min(0.08, x))) : [0, 0, 0];
        if (f.ang < 15 || f.n < 5) out.problems.push(ROLE_BG[r] + ': почти не помръдна');
        if (f.vert > 0.6) out.problems.push(ROLE_BG[r] + ': движението не беше напред');
      }
      const placed = Object.values(assign);
      for (const r of this.roles) if (!placed.includes(r)) out.problems.push('липсва ' + ROLE_BG[r]);
      if (best && best.cost > 3.5) out.problems.push('несигурно разпознаване — провери цветовете');
      out.ok = out.problems.length === 0;
      return out;
    }
  }
  function permute(ids, roles, cb) {                       // every injective map sensors → roles
    const map = {}, used = new Set();
    (function rec(i) {
      if (i === ids.length) { cb(map); return; }
      for (const r of roles) {
        if (used.has(r)) continue;
        used.add(r); map[ids[i]] = r; rec(i + 1); used.delete(r); delete map[ids[i]];
      }
    })(0);
  }

  // ---------- the body: calibrated segments → pose
  class Body {
    constructor(opt) {
      opt = opt || {};
      this.dim = bodyDims(opt.height || 1.75);
      this.place = placeOf(opt.place);
      this.rigidSpine = !!opt.rigidSpine;
      this.usePelvis = !!opt.usePelvis || (typeof process !== 'undefined' && process.env && process.env.USE_PELVIS === '1');
      this.armPrior = opt.armPrior !== undefined ? opt.armPrior : defaultArmPrior();
      this.cal = null;
      this.last = {};                                         // id → latest sample
      this.arm = { l: this.newArm(), r: this.newArm() };
      this.foot = { l: this.newFoot(1), r: this.newFoot(-1) };
      this.kappa = { l: 0, r: 0 };
      this.prevT = null;
      this.reps = new RepCounter();
      this.faceForward = true;
      this.yawFix = {};                                       // id → heading drift taken out (rad), from anatomy
      this.aOff = {};                                         // id → accelerometer offset (g, sensor frame), learned when still
      this.anat = {};                                         // role → seconds an impossible pose has lasted
    }
    newArm() { return { U: I3(), k: 0.5, prevF: null, moving: false }; }
    newFoot(side) {
      return { p: [0, side * this.dim.hipW, 0], v: [0, 0, 0], moving: false, calmN: 0, start: null, pStart: null, t0: 0, air: false };
    }
    calibrate(res) {
      this.cal = res;
      this.role = {};
      for (const id in res.assign) this.role[res.assign[id]] = id;
      this.arm = { l: this.newArm(), r: this.newArm() };
      this.foot = { l: this.newFoot(1), r: this.newFoot(-1) };
      this.kappa = { l: 0, r: 0 };
      this.height = { z: 0, v: 0, calm: 0, t: 0, ok: false };
      this.reps = new RepCounter();
      this.yawFix = {};
      this.anat = {};
      this.aOff = {};
      for (const id in res.aOff || {}) this.aOff[id] = res.aOff[id].slice();
      if (res.samples && res.samples.length && this.armPrior && !NO_CALTEACH) this.learnCalibration(res);
    }
    // The calibration's movements are KNOWN poses: the arms straight (forward raise with the squat, the sideways raise).
    // Owner's video 2026-11-05: horizontal arms came out at 55–65° instead of 90° — one forearm reading fits a straight
    // arm and a lower upper arm with a bent elbow, and the generic examples lean to the second. So every calibration
    // teaches the corrector THIS person's straight arms (upper arm along the forearm), for this session.
    learnCalibration(res) {
      this.armPrior.clearPersonal('cal');
      const keep = this.onLearn; this.onLearn = null;
      let last = {};
      for (const [id, smp] of res.samples) {
        this.feed(id, smp);
        if (res.assign[id] !== 'back') continue;
        this.solve(smp.t);
        const Tr = this.sp ? this.sp.Tth : I3();
        for (const side of ['l', 'r']) {
          const w = this.seg(side + 'wrist'), a = this.arm[side];
          if (!w || !a.feat) continue;
          const f = mv(w.R, [0, 0, -1]), el = angBetween(f, mv(Tr, [0, 0, -1])) * R2D;
          if (el < 25) continue;                                 // hanging: the zero pose is known already
          if (last[side] && angBetween(last[side], f) < 4 * D2R) continue;
          last[side] = f;
          let U = mul(T(Tr), w.R); if (side === 'r') U = [U[0], -U[1], U[2], -U[3], U[4], -U[5], U[6], -U[7], U[8]];
          this.armPrior.addPersonal(this.armPrior.vec(a.feat), U, 'cal');
        }
      }
      this.onLearn = keep;
      // back to a clean state for the session (the replay moved feet, height, arms)
      const r2 = { ...res, samples: null }; this.calibrate(r2);
    }
    feed(id, smp) { this.last[id] = smp; }
    // segment orientation (in W) and the sensor's motion, in W, for one role
    seg(role) {
      const id = this.role && this.role[role], s = id && this.last[id];
      if (!s) return null;
      const psi = this.cal.psi[id], Rz = rz(psi), Rq = qToM(s.q), Rzf = rz(psi - (this.yawFix[id] || 0));
      let R = mul(mul(Rzf, mul(Rq, T(this.cal.q0[id]))), T(Rz));
      // standing upright the body balances over the mid-foot: the straight legs lean forward by ~atan(5 cm / leg)
      if (role === 'lshank' || role === 'rshank') R = mul(R, ry(Math.atan2(this.dim.footFwd, this.dim.shank + this.dim.thigh)));
      const RWS = mul(Rzf, Rq);
      // a real accelerometer reads a little off zero (LSM6DS3TR-C: up to ±0.04 g = 0.4 m/s²); integrated, that alone
      // sank the pelvis and the figure squatted by itself (owner 2026-11-04). Whenever the sensor says it is still
      // its acceleration must be 0: what it reads then is its offset, learned (≈ 0.5 s) and taken out.
      // Still, |acc − offset| must be 1 g: each still moment tells the offset along that moment's gravity direction (in
      // the SENSOR's frame — the offset turns with the body when it leans). LMS, ≈ 0.5 s.
      const off = this.aOff[id] || (this.aOff[id] = [0, 0, 0]), an = norm(s.acc);
      if (s.still && s.t !== off.t && an > 0.5) {
        off.t = s.t; const gs = sc(s.acc, 1 / an), e = an - 1 - dot(gs, off);
        for (let i = 0; i < 3; i++) off[i] = Math.max(-0.08, Math.min(0.08, off[i] + 0.04 * e * gs[i]));
      }
      const a = sub(sc(mv(RWS, sub(s.acc, off)), G), [0, 0, G]);
      return { R, RS: RWS, id, w: sc(mv(RWS, s.gyro), D2R), a, still: s.still, hit: s.hit, t: s.t };
    }
    // one pose for "now" (call after feeding a frame of all sensors)
    solve(t) {
      if (!this.cal) return null;
      const d = this.dim, dt = this.prevT == null ? 0.02 : Math.max(0.005, Math.min(0.1, t - this.prevT));
      this.prevT = t;
      // the 6th (lumbar) sensor is recognised and recorded, but not used yet: offline it helped jumps / punches and hurt
      // deep squats / bends (CMU knees 10.8° → 12.2° on average) — to be tuned on real 6-sensor recordings (1.17)
      const segs = () => { const o = {}; for (const r of ROLES6) o[r] = this.seg(r); if (!this.usePelvis) o.pelvis = null; return o; };
      let S = segs();
      const viol = {};                                        // role → how far past a human limit (°) this frame
      if (this.anatomyYaw(S, dt, viol)) S = segs();
      // a lumbar sensor (6 sensors): the pelvis measured, the chest from the upper back — no spine model
      const sp = this.sp = S.pelvis && S.back ? { Rs: S.back.R, f: 0, Tth: S.back.R, Tpv: S.pelvis.R, Tmid: slerpM(S.pelvis.R, S.back.R, 0.5) }
        : this.spine(S.back ? S.back.R : I3());
      const Tr = sp.Tth;                                       // the chest: shoulders, arms, head
      const shanks = { l: S.lshank ? S.lshank.R : I3(), r: S.rshank ? S.rshank.R : I3() };
      // feet: ankle point tracked with zero-velocity updates
      for (const side of ['l', 'r']) if (S[side + 'shank']) this.trackFoot(side, S[side + 'shank'], dt, t);
      if (S.back) this.trackHeight(S.back, dt);   // (from the lumbar sensor: knees far worse offline — kept on the back)
      // legs: knee flexion κ (thigh hinged to the shank) from chain closure at the pelvis + balance
      const armsR = {};
      for (const side of ['l', 'r']) {
        armsR[side] = this.armStep(side, S[side === 'l' ? 'lwrist' : 'rwrist'], S.back, Tr, dt);
        const a = this.arm[side];
        if (S[side + 'wrist'] && !(this.role && this.role[side + 'upper'])) {
          const r = armLimits(side, a.Uout || a.U, armsR[side], Tr);
          a.Uout = r.U; viol[side + 'wrist'] = r.viol * R2D;
        }
      }
      // at rest and upright-ish the static balance is exact (nothing accelerates): it re-anchors the pelvis height
      // the back sensor's travel slowly drifts from — not during movement, not in deep bends (balance is weakest there)
      const hh = this.height;
      // (only for a sensor high on the back: lower on the spine its own vertical travel IS the pelvis's — the balance
      // there pulled the height wrong in bends, knees 55° off on real people at L3; without it 8°)
      if (this.place.s >= 0.9 && hh.ok && hh.calm * dt > 0.5 && Math.abs(this.prevPose ? this.prevPose.A.trunkLean : 0) < 30) {
        const zb = this.solveLegs(Tr, shanks, armsR, false).P[2] - this.pelvisZ0(Tr);
        hh.z += (zb - hh.z) * Math.min(1, dt / 0.7);
      }
      // standing still, upright, both shins vertical: the feet ARE under the hips, side by side (a wide or split stance
      // tilts the shins). Any step the foot tracker kept beyond that is drift — pulled back (≈ 0.7 s). Owner
      // 2026-11-04: the mannequin (drawn at the tracked feet) stood "spread apart" while the android looked fine.
      const shTilt = (Sh) => angBetween(mv(Sh, [0, 0, 1]), [0, 0, 1]);
      this.standStill = S.back && S.back.still && shTilt(shanks.l) < 8 * D2R && shTilt(shanks.r) < 8 * D2R &&
        angBetween(mv(Tr, [0, 0, 1]), [0, 0, 1]) < 15 * D2R ? (this.standStill || 0) + dt : 0;
      // ... and the headings: standing quietly, a shin faces where the chest does (± 25°: a turned-out foot), a hanging
      // forearm's twist about the vertical stays within ± 20° of its zero-pose one. Beyond that it is drift — pulled
      // back (≈ 2 s). Every quiet stand re-zeros what the gyros let creep: no heading error can build up over a session.
      if (this.standStill > 1) {
        const yb = yawOf(Tr), k2 = Math.min(1, dt / 2), wr = (a) => Math.atan2(Math.sin(a), Math.cos(a));
        const pull = (role, R, tol) => {
          const id = this.role[role]; if (!id || !R) return;
          const d = wr(yawOf(R) - yb), e = Math.abs(d) > tol ? d - Math.sign(d) * tol : 0;
          if (e) this.yawFix[id] = (this.yawFix[id] || 0) + e * k2;
        };
        pull('lshank', shanks.l, 25 * D2R); pull('rshank', shanks.r, 25 * D2R);
        if (S.pelvis) pull('pelvis', S.pelvis.R, 15 * D2R);
        for (const r of ['lwrist', 'rwrist']) if (S[r] && mv(S[r].R, [0, 0, 1])[2] > 0.94 && S[r].still) pull(r, S[r].R, 20 * D2R);
      }
      if (this.standStill > 1 && !this.foot.l.moving && !this.foot.r.moving) {
        const mid = sc(add(this.foot.l.p, this.foot.r.p), 0.5), lat = mv(rz(yawOf(Tr)), [0, this.dim.hipW, 0]), k = Math.min(1, dt / 0.7);
        for (const [sd, sg] of [['l', 1], ['r', -1]]) {
          const want = [mid[0] + sg * lat[0], mid[1] + sg * lat[1], 0], f = this.foot[sd];
          f.p = add(f.p, sc(sub(want, f.p), k)); f.air = false;
        }
      }
      let leg = this.solveLegs(Tr, shanks, armsR, true);
      // standing still, the feet must explain what the shanks and the balance say. Try the feet as tracked, and each
      // foot put back beside the other (a misread step); keep what fits clearly better. A real lunge keeps its feet:
      // its tilted shanks cannot close the chain with the feet together.
      if (!this.foot.l.moving && !this.foot.r.moving && (this.foot.l.p[0] !== this.foot.r.p[0] || Math.abs(this.foot.l.p[1] - this.foot.r.p[1]) > 2.2 * this.dim.hipW || this.foot.l.p[2] || this.foot.r.p[2])) {
        const keep = { l: this.foot.l.p, r: this.foot.r.p }, kap = this.kappa;
        let bestC = leg.cost, bestF = null;
        for (const [mv1, st] of [['l', 'r'], ['r', 'l']]) {
          const lat = mv(rz(yawOf(Tr)), [0, (mv1 === 'l' ? 2 : -2) * this.dim.hipW, 0]);
          this.foot[mv1].p = [keep[st][0] + lat[0], keep[st][1] + lat[1], 0];
          const alt = this.solveLegs(Tr, shanks, armsR, true);
          if (alt.cost < 0.5 * bestC && leg.cost > 4e-4) { bestC = alt.cost; bestF = { side: mv1, p: this.foot[mv1].p, leg: alt, k: this.kappa }; }
          this.foot.l.p = keep.l; this.foot.r.p = keep.r; this.kappa = kap;
        }
        if (bestF) { this.foot[bestF.side].p = bestF.p; this.foot[bestF.side].air = false; leg = bestF.leg; this.kappa = bestF.k; }
      }
      // assemble the skeleton
      const P = leg.P;
      const up = (R, L) => mv(R, [0, 0, L]);
      const J = {};
      J.pelvis = P;
      for (const side of ['l', 'r']) {
        const sgn = side === 'l' ? 1 : -1, Sh = shanks[side];
        J[side + 'ankle'] = this.foot[side].p.slice(); J[side + 'ankle'][2] += d.ankleH;
        J[side + 'knee'] = add(J[side + 'ankle'], up(Sh, d.shank));
        J[side + 'hip'] = add(J[side + 'knee'], up(mul(Sh, ry(-this.kappa[side])), d.thigh));
        J[side + 'toe'] = add(J[side + 'ankle'], mv(rz(yawOf(Sh)), [0.13 * d.H / 1.75, 0, -d.ankleH]));
      }
      J.neck = add(P, up(sp.Tmid, d.trunk));
      J.head = add(J.neck, up(Tr, d.neck + d.head * 0.6));
      for (const side of ['l', 'r']) {
        const sgn = side === 'l' ? 1 : -1;
        J[side + 'sh'] = add(J.neck, mv(Tr, [0, sgn * d.shW, -0.03 * d.H]));
        J[side + 'elbow'] = add(J[side + 'sh'], mv(this.armU(side), [0, 0, -d.upper]));
        const F = armsR[side];
        J[side + 'wrist'] = add(J[side + 'elbow'], mv(F, [0, 0, -d.fore]));
        J[side + 'hand'] = add(J[side + 'wrist'], mv(F, [0, 0, -d.hand * 0.7]));
      }
      // ground = lowest ankle on the floor
      // angles (degrees) — what the coach reads
      const A = {};
      const trunkUp = mv(Tr, [0, 0, 1]);
      A.trunkLean = Math.atan2(dot(trunkUp, mv(rz(yawOf(Tr)), [1, 0, 0])), trunkUp[2]) * R2D;
      A.trunkSide = Math.asin(Math.max(-1, Math.min(1, dot(trunkUp, mv(rz(yawOf(Tr)), [0, 1, 0]))))) * R2D;
      const legYaw = (yawOf(shanks.l) + yawOf(shanks.r)) / 2;
      A.trunkTwist = wrapDeg((yawOf(Tr) - legYaw) * R2D);
      for (const side of ['l', 'r']) {
        const sgn = side === 'l' ? 1 : -1;
        A[side + 'Knee'] = this.kappa[side] * R2D;
        const thighDown = sub(J[side + 'knee'], J[side + 'hip']);
        A[side + 'Hip'] = angBetween(thighDown, sc(mv(sp.Tpv, [0, 0, 1]), -1)) * R2D;
        const U = this.armU(side), Ft = armsR[side];
        const ua = mv(T(Tr), mv(U, [0, 0, -1]));              // upper arm in the trunk frame
        A[side + 'ShFlex'] = Math.atan2(ua[0], -ua[2]) * R2D;
        A[side + 'ShAbd'] = Math.atan2(sgn * ua[1], Math.hypot(ua[0], ua[2])) * R2D;
        A[side + 'ShElev'] = angBetween(ua, [0, 0, -1]) * R2D;
        A[side + 'Elbow'] = angBetween(mv(U, [0, 0, -1]), mv(Ft, [0, 0, -1])) * R2D;
        A[side + 'Shank'] = angBetween(mv(shanks[side], [0, 0, 1]), [0, 0, 1]) * R2D;
      }
      // arm-teaching mode: the measured upper arm next to what the corrector reads → a personal prototype (only when the
      // arm has moved ≥ 8° since the last one kept: many different poses, not thousands of the same)
      if (this.onLearn && this.armPrior) for (const side of ['l', 'r']) {
        const up = this.role[side + 'upper'] && this.seg(side + 'upper'), a = this.arm[side];
        if (!up || !a.feat) continue;
        let Ur = mul(T(Tr), up.R); if (side === 'r') Ur = [Ur[0], -Ur[1], Ur[2], -Ur[3], Ur[4], -Ur[5], Ur[6], -Ur[7], Ur[8]];
        const last = (this.learnLast = this.learnLast || {})[side];
        if (last && angBetween([last[2], last[5], last[8]], [Ur[2], Ur[5], Ur[8]]) < 8 * D2R && angBetween(last.d, a.feat.d) < 8 * D2R) continue;
        Ur.d = a.feat.d; this.learnLast[side] = Ur;
        this.onLearn(this.armPrior.vec(a.feat), Ur);
      }
      // speeds: angular speed of each measured segment (°/s) and of the main joints
      const V = {};
      for (const r of ROLES) if (S[r]) V[r] = norm(S[r].w) * R2D;
      // segment rotations (same convention as the true frames): what a 3-D model is posed with
      const R = { trunk: Tr, pelvis: sp.Tpv, head: Tr };
      for (const side of ['l', 'r']) {
        R[side + 'shank'] = shanks[side]; R[side + 'thigh'] = mul(shanks[side], ry(-this.kappa[side]));
        R[side + 'upper'] = this.armU(side); R[side + 'fore'] = armsR[side];
      }
      const pose = { t, J, R, A, V, P, feet: { l: { ...this.foot.l }, r: { ...this.foot.r } }, yaw: yawOf(Tr) * R2D, still: ROLES.every((r) => !S[r] || S[r].still) };
      if (this.prevPose) {
        const k = 1 / dt, pv = this.prevPose.V, lp = Math.min(1, dt / 0.12);   // speeds smoothed over ~0.1 s
        const ema = (name, v) => { V[name] = pv[name] == null ? v : pv[name] + (v - pv[name]) * lp; };
        const pa = this.prevPose.A, pj = this.prevPose.J;
        ema('lKnee', (A.lKnee - pa.lKnee) * k); ema('rKnee', (A.rKnee - pa.rKnee) * k);
        ema('lElbow', (A.lElbow - pa.lElbow) * k); ema('rElbow', (A.rElbow - pa.rElbow) * k);
        ema('lHand', norm(sub(sub(J.lhand, J.neck), sub(pj.lhand, pj.neck))) * k);   // hand speed relative to the body
        ema('rHand', norm(sub(sub(J.rhand, J.neck), sub(pj.rhand, pj.neck))) * k);
        ema('pelvisZ', (J.pelvis[2] - pj.pelvis[2]) * k);
      }
      pose.rep = this.reps.feed(t, A);
      // an impossible pose that lasts (> 0.7 s; > 25° past the limit, wrists > 10°) is a measurement fault, said per sensor
      pose.viol = viol; pose.warn = [];
      for (const r of ROLES) {
        const v = viol[r] || 0, an = this.anat;
        // wrists: a clean arm never shows > 5° (scripted + all CMU clips); a sensor turned on its strap holds 12–17°
        an[r] = v > (/wrist/.test(r) ? 10 : 25) ? (an[r] || 0) + dt : Math.max(0, (an[r] || 0) - 2 * dt);
        if (an[r] > 0.7 || (this.fixAcc && this.fixAcc[r] > 25)) pose.warn.push(r);
      }
      pose.yawFix = {};
      for (const id in this.yawFix) pose.yawFix[this.cal.assign[id]] = this.yawFix[id] * R2D;
      this.prevPose = pose;
      return pose;
    }

    // one trunk sensor → pelvis, chest and the middle of the spine (see SPINE_FIT)
    spine(Rs) {
      const s = this.place.s, up = mv(Rs, [0, 0, 1]);
      const lean = Math.atan2(dot(up, mv(rz(yawOf(Rs)), [1, 0, 0])), up[2]);
      const [a, b] = spineFit(s);
      const f = this.rigidSpine ? 0 : Math.max(-40 * D2R, Math.min(70 * D2R, a * lean + b));
      return { Rs, f, Tth: mul(Rs, ry((1 - Math.min(1, s)) * f)), Tpv: mul(Rs, ry(-s * f)), Tmid: mul(Rs, ry((0.5 - s) * f)) };
    }
    sensorRel(Rs) {                       // the trunk sensor's point relative to the pelvis joint
      const d = this.dim, p = this.place;
      return mv(Rs, [p.dx, 0, 0.05 + p.s * (d.trunk - 0.11)]);
    }

    // heading is the one thing gravity cannot correct on a sensor: its gyro drifts it, a strap that turns shifts it.
    // The body bounds it: a shin cannot face more than ~100° away from the chest (hip + spine rotation), two shins not
    // more than ~110° from each other. Past that the measurement is wrong — whose? Both shins off the same way: the
    // back sensor; else the shin itself. That sensor's heading is pulled back to the limit (≈ 0.3 s), and the excess
    // is reported (pose.viol). Only while the segments are upright enough for a heading to mean something.
    anatomyYaw(S, dt, viol) {
      this.fixAcc = this.fixAcc || {};
      for (const r in this.fixAcc) this.fixAcc[r] *= Math.max(0, 1 - dt / 3);      // heading taken out, last ~3 s
      if (!S.back) return false;
      const flat = (R) => Math.abs(R[7]) > 0.7 || mv(R, [0, 0, 1])[2] < 0.45;   // lateral axis steep / lying
      if (flat(S.back.R)) return false;
      const yb = yawOf(S.back.R), k = Math.min(1, dt / 0.3), LIM = 100 * D2R, PAIR = 110 * D2R;
      const wr = (a) => Math.atan2(Math.sin(a), Math.cos(a));
      const ex = {}, d = {};
      for (const r of ['lshank', 'rshank']) if (S[r] && !flat(S[r].R)) {
        d[r] = wr(yawOf(S[r].R) - yb);
        ex[r] = Math.abs(d[r]) > LIM ? d[r] - Math.sign(d[r]) * LIM : 0;
      }
      let changed = false;
      const fix = (role, by) => { const id = this.role[role]; this.yawFix[id] = (this.yawFix[id] || 0) + by; changed = true;
        this.fixAcc[role] = (this.fixAcc[role] || 0) + Math.abs(by) * R2D;
        if (Math.abs(by) > 0.02 * k) (this.suspect = this.suspect || {})[role] = true; };
      // a sensor caught past the limit is not trusted near it either: standing still and upright, a shin faces about
      // where the chest does (± a turned-out foot) — its heading is brought there (≈ 1 s) and trusted again
      const sus = this.suspect || {};
      const still = S.back.still && ['lshank', 'rshank'].every((r) => !S[r] || S[r].still);
      for (const r of ['lshank', 'rshank']) if (sus[r] && d[r] != null && still) {
        const e = Math.abs(d[r]) > 20 * D2R ? d[r] - Math.sign(d[r]) * 20 * D2R : 0;
        if (e) { const id = this.role[r]; this.yawFix[id] = (this.yawFix[id] || 0) + e * Math.min(1, dt); changed = true; }
        else sus[r] = false;
      }
      if (ex.lshank && ex.rshank && Math.sign(ex.lshank) === Math.sign(ex.rshank)) {
        const m = Math.sign(ex.lshank) * Math.min(Math.abs(ex.lshank), Math.abs(ex.rshank));
        fix('back', -m * k); viol.back = Math.abs(m) * R2D;           // the chest turned "too far": the back drifted
      } else for (const r in ex) if (ex[r]) { fix(r, ex[r] * k); viol[r] = Math.abs(ex[r]) * R2D; }
      if (d.lshank != null && d.rshank != null) {
        const p = wr(d.lshank - d.rshank);
        if (Math.abs(p) > PAIR) {
          const r = Math.abs(d.lshank) > Math.abs(d.rshank) ? 'lshank' : 'rshank', e = (Math.abs(p) - PAIR) * Math.sign(r === 'lshank' ? p : -p);
          fix(r, e * k); viol[r] = Math.max(viol[r] || 0, Math.abs(e) * R2D);
        }
      }
      return changed;
    }

    // foot: the ankle point (sensor ~8 cm above it, on the shank) integrated between still moments, velocity reset
    // when still, the drift of that velocity taken out of the step afterwards. Gives step-outs (lunge), lifted feet.
    // how far the back sensor has gone up or down since the zero pose: vertical acceleration integrated, velocity set
    // to zero whenever the trunk is still (top and bottom of a squat), its leftover taken out as drift. Vertical is
    // the accurate direction of a tilt-corrected IMU (gravity removal error ∝ 1 − cos(tilt error)). It fixes the depth
    // of a squat directly — the balance model alone has two answers at the bottom, and people rise onto their toes.
    trackHeight(b, dt) {
      const h = this.height, a = b.a[2], a0 = h.a == null ? a : h.a, v0 = h.v;
      h.v += (a + a0) / 2 * dt;                       // trapezoid: 52 Hz is coarse for a fast bend
      h.z += (h.v + v0) / 2 * dt;
      h.a = a;
      h.t += dt;
      const calm = b.still || (Math.abs(b.a[2]) < 0.25 && norm(b.w) < 0.25);
      h.calm = calm ? h.calm + 1 : 0;
      // still = calm and slow (a slow, smooth descent is calm too, but it has speed); calm for 1 s at "speed" = drift
      if (h.t > 0.2 && ((h.calm * dt > 0.15 && Math.abs(h.v) < 0.12) || h.calm * dt > 1)) {
        h.z -= h.v * Math.min(h.t, 6) / 2; h.v = 0; h.t = 0;
      } else if (h.t > 15) { h.v = 0; h.t = 0; }      // never still for 15 s: stop the drift growing
      // standing upright and still (legs and trunk as in the zero pose): that is height 0 again
      // Only MEASURED things decide it: trunk upright, both shins vertical, feet down, still. (It also asked for straight
      // knees — but the knees come from this very height: once it had sunk the knees were bent, the reset never came
      // and the figure stayed squatting for good. Owner 2026-11-04.) Shins vertical + trunk upright = standing.
      const A = this.prevPose && this.prevPose.A;
      if (h.calm * dt > 0.6 && A && Math.abs(A.trunkLean) < 15 && A.lShank < 10 && A.rShank < 10 &&
          !this.foot.l.air && !this.foot.r.air) { h.z *= Math.exp(-dt / 0.5); if (Math.abs(h.z) < 0.01) h.v = 0; }
      // and never past what a body can do: down ≤ 70 % of the leg, up ≤ 0.6 m (a jump)
      const leg = this.dim.shank + this.dim.thigh;
      if (h.z > 0.6) { h.z = 0.6; if (h.v > 0) h.v = 0; }
      if (h.z < -0.7 * leg) { h.z = -0.7 * leg; if (h.v < 0) h.v = 0; }
      h.ok = true;
    }

    trackFoot(side, s, dt, t) {
      const f = this.foot[side], d = this.dim, sgn = side === 'l' ? 1 : -1;
      // sensor → ankle: down the shank and in from the outer side of the leg
      const r = mv(s.R, [0, -sgn * 0.045, -d.sensShank]);
      // ankle acceleration = the sensor's + the rotation term from the sensor to the ankle (α×r + ω×(ω×r)), so a
      // squat (the shank turning about a still ankle) leaves it ~0
      const al = f.prevW ? sc(sub(s.w, f.prevW), 1 / dt) : [0, 0, 0];
      f.prevW = s.w;
      const aA = add(s.a, add(cross(al, r), cross(s.w, cross(s.w, r))));
      const aPrevKeep = f.aLast; f.aLast = aA; f.aPrev = aPrevKeep;
      f.aLp = f.aLp == null ? norm(aA) : f.aLp + (norm(aA) - f.aLp) * Math.min(1, dt / 0.06);
      f.calmN = f.aLp < 0.6 ? f.calmN + 1 : 0;
      if (!f.moving) {
        if (f.aLp > 1.0) { f.moving = true; f.v = [0, 0, 0]; f.vMax = 0; f.pi = f.p.slice(); f.pStart = f.p.slice(); f.t0 = t; f.calmN = 0; }
        else return;
      }
      const v0 = f.v, a0 = f.aPrev || aA;
      f.v = add(f.v, sc(add(aA, a0), dt / 2));
      f.pi = add(f.pi, sc(add(f.v, v0), dt / 2));
      f.vMax = Math.max(f.vMax, norm(f.v));
      // shown while moving only if it looks like a foot (≤ 0.8 m away, ≤ 0.7 m up); else the foot stays put
      const dp = sub(f.pi, f.pStart);
      // (a front kick reaches ~0.9 m ahead and up to hip height and beyond: the VR game's kicks, 2026-11-06)
      f.p = norm(dp) < KICK_REACH * this.dim.H && f.pi[2] > -0.05 && f.pi[2] < KICK_UP * this.dim.H ? f.pi.slice() : f.pStart.slice();
      const Tm = t - f.t0;
      // a foot at speed is never calm for long: calm + slow = landed; calm for 0.5 s at "speed" = that speed is drift
      // (fw 8's hit flag as "landed now" was tried: it cut the drift correction short — jump squats 13° → 19°; not used)
      if ((f.calmN * dt > 0.12 && norm(f.v) < 0.25) || f.calmN * dt > 0.5 || Tm > 2.5) {
        // stop: the leftover velocity is drift — its share of the travelled path goes; then is it a real step?
        const end = sub(f.pi, sc(f.v, Tm / 2)), move = norm(sub(end, f.pStart));
        const plausible = move < 0.9 && end[2] > -0.05 && end[2] < 0.7;
        const real = plausible && f.vMax > 0.25 && move > 0.1 && ((Tm <= 2.5 && norm(f.v) < 0.6) || (move > 0.25 && Tm <= 3.5 && norm(f.v) < 1.0));
        f.p = real ? end : f.pStart;
        f.v = [0, 0, 0]; f.moving = false;
        f.air = f.p[2] > 0.08;
        if (!f.air) f.p[2] = 0;
      }
    }

    // arm: the wrist sensor gives the forearm; the upper arm is unknown. Per movement (still → still) the upper arm
    // turns by a share k of the forearm's turn: k = 0 a curl (only the elbow), k = 1 a straight-arm raise (only the
    // shoulder). k is read from the wrist's acceleration: every k predicts a different path of the wrist around the
    // shoulder, and the measured acceleration picks the one that fits (1-D search, well posed). Applied to the whole
    // movement from its start, so a slow start that looked ambiguous is corrected once the arm speeds up; the next
    // repetition starts with the k of this one.
    armStep(side, Sf, Sb, Tr, dt) {
      const a = this.arm[side], d = this.dim;
      if (!Sf) return Tr;
      const F = Sf.R;
      let acc = Sf.a;
      if (Sb) {                     // wrist acceleration relative to the shoulder (back sensor point moved there)
        // the shoulder relative to the trunk sensor (wherever on the spine it sits)
        const sp = this.sp, rTS = sub(add(mv(sp.Tmid, [0, 0, d.trunk]), mv(Tr, [0, (side === 'l' ? 1 : -1) * d.shW, -0.03 * d.H])), this.sensorRel(sp.Rs));
        const aT = a.prevWb ? sc(sub(Sb.w, a.prevWb), 1 / dt) : [0, 0, 0];
        acc = sub(acc, add(Sb.a, add(cross(aT, rTS), cross(Sb.w, cross(Sb.w, rTS)))));
        a.prevWb = Sb.w;
      }
      // The forearm turning about its OWN axis (pronation / supination — radius over ulna) never moves the upper arm.
      // Owner's video 2026-11-05: a palm turn alone swung the drawn upper arm by up to 80°. So that part of the
      // forearm's turn is taken out of everything that estimates the upper arm (turn rate, per-step turns, twist).
      const fax = mv(F, [0, 0, -1]), noTwist = (v) => (NO_UNTWIST ? v : sub(v, sc(fax, dot(v, fax))));
      const wRel = Sb ? sub(Sf.w, Sb.w) : Sf.w, spin = norm(wRel);
      // how fast the forearm's DIRECTION moves (its turn without the twist about itself): only that can move the upper arm
      const swing = norm(noTwist(wRel));
      if (!a.prevF) { a.prevF = F; return F; }
      if (!a.moving) {
        if (spin > 0.6) { a.moving = true; a.U0 = a.U; a.buf = []; a.calm = 0; }
        else {
          // resting with the forearm hanging: the arm is straight
          const fTr = mv(T(Tr), mv(F, [0, 0, -1]));
          if (fTr[2] < -0.96) a.U = slerpM(a.U, F, Math.min(1, dt * 2));
        }
      }
      if (a.moving) {
        // the forearm's turn since the last sample (small: no wrap-around however far the arm goes overall)
        // the wrist's velocity relative to the shoulder, integrated from rest (it was 0 when the movement began)
        a.vm = a.buf.length ? add(a.vm, sc(acc, dt)) : sc(acc, dt);
        a.buf.push({ F, acc, spin, vm: a.vm, lg: noTwist(logm(mul(F, T(a.prevF)))) });
        if (a.buf.length > 150) {                   // a 3-s movement: fold the oldest step in for good
          const o = a.buf.shift(); a.U0 = mul(expm(sc(o.lg, a.k)), a.U0);
        }
        const n = a.buf.length, Lf = d.fore - 0.03;
        const upperAt = (k) => {                    // upper arm after every step for share k
          const out = []; let U = a.U0;
          for (const st of a.buf) { U = mul(expm(sc(st.lg, k)), U); out.push(U); }
          return out;
        };
        // every share k predicts a path of the wrist around the shoulder; its velocity must match the measured one
        // (velocity: integrated, so far less noisy than the acceleration itself; drift over 1–3 s is small)
        let ex = 0; for (const st of a.buf) ex += st.spin;
        if (n >= 6 && ex / n > 0.8) {
          let bestK = a.k, bestE = Infinity, worstE = 0;
          for (let k = 0; k <= 1.0001; k += 0.1) {
            const Us = upperAt(k);
            const X = Us.map((U, j) => add(mv(U, [0, 0, -d.upper]), mv(a.buf[j].F, [0, 0, -Lf])));
            // The measured speed (integrated acceleration) drifts: on the owner's real raises it still read 1.6–3.8 m/s
            // with the arm stopped at the top (≈ 0.2 g left over from the sensor's tilt during the fast turn). So the
            // part of the mismatch that is a constant plus a straight line in time (any steady leftover acceleration)
            // is fitted away per axis, and only the SHAPE of the speed decides k (DRIFT=0: the old way).
            const R = [];
            for (let j = 1; j < n - 1; j++) R.push(sub(sc(sub(X[j + 1], X[j - 1]), 1 / (2 * dt)), a.buf[j].vm));
            let e = 0;
            if (NO_DRIFTFIT) for (const r of R) e += dot(r, r);
            else {
              const m = R.length, tm = (m - 1) / 2; let stt = 0; for (let j = 0; j < m; j++) stt += (j - tm) ** 2;
              for (let ax = 0; ax < 3; ax++) {
                let mu = 0, st = 0; for (let j = 0; j < m; j++) mu += R[j][ax] / m;
                for (let j = 0; j < m; j++) st += (j - tm) * (R[j][ax] - mu);
                const b = stt > 0 ? st / stt : 0;
                for (let j = 0; j < m; j++) { const q = R[j][ax] - mu - b * (j - tm); e += q * q; }
              }
            }
            if (e < bestE) { bestE = e; bestK = k; }
            worstE = Math.max(worstE, e);
          }
          if (worstE > 1.3 * bestE) a.k += (bestK - a.k) * Math.min(1, dt * 8);
          // how clearly the motion picked its k (0 = every k fits alike … 1 = only one fits)
          a.kConf = worstE > 0 ? 1 - bestE / worstE : 0;
        }
        const Us = upperAt(a.k);
        a.U = ortho(Us[Us.length - 1]);
        a.calm = spin < 0.3 ? a.calm + 1 : 0;
        if (a.calm * dt > 0.25) a.moving = false;
      }
      // dead reckoning of the elbow from the zero pose (owner 2026-11-03: "every movement starts from a known position —
      // follow it"): the wrist sensor's acceleration relative to the shoulder, minus the forearm's own turn about the
      // elbow (α×r + ω×(ω×r), r = elbow → sensor), is the elbow's acceleration. Integrated from the calibration pose,
      // held on the sphere |elbow − shoulder| = upper-arm length (that kills the drift along the arm every frame),
      // velocity zeroed whenever the arm is still. The upper arm is then simply shoulder → elbow.
      if (ARM_DR && Sb) {
        const sg = side === 'l' ? 1 : -1, Lu = d.upper;
        const r = mv(F, [0, sg * 0.03, -(d.fore - 0.03)]);
        const al = a.prevWf ? sc(sub(Sf.w, a.prevWf), 1 / dt) : [0, 0, 0];
        a.prevWf = Sf.w;
        const aE = sub(acc, add(cross(al, r), cross(Sf.w, cross(Sf.w, r))));
        if (!a.E) { a.E = mv(a.U, [0, 0, -Lu]); a.dE = [0, 0, 0]; a.stillN = 0; }
        // still (relative to the trunk): the elbow moves only with the trunk
        a.stillN = spin < 0.25 && norm(aE) < 0.8 ? a.stillN + 1 : 0;
        if (a.stillN * dt > 0.12) a.dE = cross(Sb.w, a.E);
        else {
          const v0 = a.dE;
          a.dE = add(a.dE, sc(add(aE, a.aE0 || aE), dt / 2));
          a.E = add(a.E, sc(add(a.dE, v0), dt / 2));
        }
        a.aE0 = aE;
        const e = unit(a.E);
        a.E = sc(e, Lu);                                       // on the sphere around the shoulder
        a.dE = sub(a.dE, sc(e, dot(a.dE, e)));                 // no speed along the upper arm
        // a real elbow: bends 0–150°, never backwards past straight
        const f0 = mv(F, [0, 0, -1]);
        let ang = angBetween(e, f0);
        if (ang > 150 * D2R) { const ax = unit(cross(e, f0)); a.E = sc(mv(rot(ax, ang - 150 * D2R), e), Lu); }
        // the hanging arm at rest is straight (the zero pose)
        const fTr = mv(T(Tr), f0);
        if (a.stillN * dt > 0.5 && fTr[2] < -0.96) a.E = sc(unit(add(sc(unit(a.E), 1 - dt * 2), sc(f0, dt * 2))), Lu);
        const z = sc(unit(a.E), -1); let y = mv(F, [0, 1, 0]); y = sub(y, sc(z, dot(y, z)));
        if (norm(y) < 1e-3) y = mv(Tr, [0, 1, 0]);
        y = unit(y); const x = cross(y, z);
        a.U = [x[0], y[0], z[0], x[1], y[1], z[1], x[2], y[2], z[2]];
      }
      // a real elbow bends at most ~150°
      const u = mv(a.U, [0, 0, -1]), f = mv(F, [0, 0, -1]);
      const flex = angBetween(u, f);
      if (flex > 150 * D2R) a.U = mul(expm(sc(unit(cross(u, f)), flex - 150 * D2R)), a.U);
      a.prevF = F;
      // the learned corrector (models/armdb.js): real people's arm poses for what the wrist sensor sees AND what the
      // physics above concluded. The physics runs untouched (its estimate is an input, as in training); the prior
      // learnt from thousands of real and EMS-style movements when that estimate is right (a clean raise or curl) and
      // when it is not (punches, jacks, mixed moves) — and where the upper arm really is.
      if (Sb) {
        const Tt = T(Tr), mir = side === 'r', S3 = (v) => (mir ? [v[0], -v[1], v[2]] : v);
        let ww = S3(mv(Tt, wRel)); if (mir) ww = sc(ww, -1);
        const aa = S3(mv(Tt, acc));
        a.fa = a.fa ? add(a.fa, sc(sub(aa, a.fa), Math.min(1, dt / 0.05))) : aa;
        a.feat = { d: S3(mv(Tt, mv(F, [0, 0, -1]))), y: S3(mv(Tt, mv(F, [0, 1, 0]))), w: ww, a: a.fa, u: S3(mv(Tt, mv(a.U, [0, 0, -1]))) };
      }
      if (this.armPrior && a.feat) {
        // Owner 2026-11-04: "a small turn of the hand gives huge deviations". The forearm's twist now weighs half (a small
        // wrist turn must not swing the upper arm); direction, turn rate, push and the per-movement physics as before
        // (the physics restarts at every rest, so it carries nothing long). CMU: elbow 19.2° / shoulder 17.1° vs
        // 18.6° / 16.1°; twist alone 0.1…1 changes little. ARMS=state = the old weights.
        const P = ARMS_STATE ? this.armPrior.predict(this.armPrior.vec(a.feat)) : this.armPrior.predict(this.armPrior.vec(a.feat), 12, ARMS_W);
        const Ur = side === 'r' ? [P[0], -P[1], P[2], -P[3], P[4], -P[5], P[6], -P[7], P[8]] : P;
        const Up = mul(Tr, Ur);
        // The corrector's answer is taken in only as fast as the forearm's direction moves: a forearm only turning about
        // itself (a palm turn) leaves the upper arm where it is (twist-test.js: was up to 80° off), a still arm keeps it;
        // a moving one follows at once
        const gate = NO_UNTWIST ? 1 : Math.max(0, Math.min(1, (swing - 0.12) / 0.5));
        a.Up = a.Up ? ortho(slerpM(a.Up, Up, Math.min(1, gate * dt / 0.06))) : Up;
        // the per-movement physics (its speed now drift-free) where it was sure of itself, the corrector elsewhere
        // (offline, each alone: physics best in squats-with-arms-forward / overhead / raises, the corrector in
        // twists / punches)
        const wP = PHYS_W >= 0 ? Math.max(0, Math.min(1, (((a.kConf || 0) - PHYS_C0) / PHYS_C1))) * PHYS_W : 0;
        a.Uout = wP > 0 ? ortho(slerpM(a.Up, ortho(a.U), wP)) : a.Up;
      } else a.Uout = a.U;
      // a forearm hanging straight down BY GRAVITY, quiet: a relaxed arm hangs straight, whatever the trunk does
      // (owner's video: bent forward, arms hanging — the elbow came out 91° instead of ~25°: in the trunk's frame a
      // hanging forearm points "forward", which the corrector reads as a curl)
      const fw = mv(F, [0, 0, -1]);
      a.hang = fw[2] < -0.93 && spin < 0.8 ? (a.hang || 0) + dt : 0;
      if (a.hang > 0.15 && !NO_HANG) {
        const k = Math.min(1, (a.hang - 0.15) / 0.3), z = sc(fw, -1);
        let y = mv(a.Uout, [0, 1, 0]); y = sub(y, sc(z, dot(y, z))); y = norm(y) > 1e-3 ? unit(y) : mv(F, [0, 1, 0]);
        const x = cross(y, z), Ust = [x[0], y[0], z[0], x[1], y[1], z[1], x[2], y[2], z[2]];
        a.Uout = ortho(slerpM(a.Uout, Ust, k));
      }
      return F;
    }
    armU(side) {
      const m = this.role && this.role[side + 'upper'] && this.seg(side + 'upper');   // teacher sensor: measured
      if (m) return m.R;
      const a = this.arm[side]; return a.Uout || a.U;
    }

    // legs: unknown knee flexions κl, κr. Each foot's chain (ankle → shank (measured) → thigh (hinged on the knee axis
    // of the shank, angle κ) → hip) must meet the other at the pelvis, and the body's centre of mass must stand over
    // the feet that carry it. Grid + refine (≈3 k evaluations, < 1 ms).
    // pelvis height at zero travel of the back sensor for this trunk lean (standing pelvis height + lean geometry)
    pelvisZ0(Tr) {
      const d = this.dim;
      const off = (R) => this.sensorRel(R)[2];
      return d.ankleH + d.shank + d.thigh + off(I3()) - off(this.sp ? this.sp.Rs : Tr);
    }

    solveLegs(Tr, Sh, armsR, useHeight) {
      const sp = this.sp || { Tpv: Tr, Tmid: Tr };
      const d = this.dim, hipOff = (s) => mv(sp.Tpv, [0, s * d.hipW, 0]);
      const fl = this.foot.l, fr = this.foot.r;
      const base = (side) => {
        const f = this.foot[side];
        return add(add(f.p, [0, 0, d.ankleH]), mv(Sh[side], [0, 0, d.shank]));
      };
      const Kl = base('l'), Kr = base('r');
      const thigh = (side, k) => mv(mul(Sh[side], ry(-k)), [0, 0, d.thigh]);
      const support = [];
      if (!fl.air) support.push(add(fl.p, mv(rz(yawOf(Sh.l)), [d.footFwd, 0, 0])));
      if (!fr.air) support.push(add(fr.p, mv(rz(yawOf(Sh.r)), [d.footFwd, 0, 0])));
      const sup = support.length ? sc(support.reduce(add), 1 / support.length) : null;
      const trunkC = mv(sp.Tmid, [0, 0, 0.17 * d.H]);
      const armC = { l: 0, r: 0 };
      const armVec = (side) => add(add(mv(sp.Tmid, [0, 0, d.trunk]), mv(Tr, [0, (side === 'l' ? 1 : -1) * d.shW, 0])), add(sc(mv(this.armU(side), [0, 0, -d.upper]), 0.5), sc(mv(armsR[side], [0, 0, -d.fore]), 0.3)));
      const armOff = add(sc(armVec('l'), 0.05), sc(armVec('r'), 0.05));
      const prev = this.kappa;
      // pelvis height measured: standing pelvis height + the back sensor's vertical travel − what the trunk's lean took
      const zP = useHeight && this.height.ok ? this.pelvisZ0(Tr) + this.height.z : null;
      // its weight fades with the time since the trunk was last still (double integration: any offset left grows ∝ t²)
      const wH = 4 * Math.exp(-(this.height.t || 0) / 2.5);
      // the hip's range (trunk frame): flexion ≤ 150° (incl. the spine's curl — the trunk is the T1 sensor), extension
      // ≤ 35°, abduction ≤ 60°, adduction ≤ 30°. A thigh outside is not a solution.
      const TrT = T(sp.Tpv), HF = 150 * D2R, HE = 35 * D2R, HAB = 60 * D2R, HAD = 30 * D2R;
      const hipPen = (t, sg) => {
        const u = mv(TrT, t), n = -(norm(u) || 1), x = u[0] / n, y = sg * u[1] / n, z = u[2] / n;   // hip → knee (t: knee → hip)
        const fl = Math.atan2(x, -z), ab = Math.atan2(y, Math.hypot(x, z));
        return Math.max(0, fl - HF, -HE - fl) ** 2 + Math.max(0, ab - HAB, -HAD - ab) ** 2;
      };
      const cost = (kl, kr) => {
        const tl = thigh('l', kl), tr = thigh('r', kr);
        const Pl = sub(add(Kl, tl), hipOff(1)), Pr = sub(add(Kr, tr), hipOff(-1));
        const gap = sub(Pl, Pr);
        let c = dot(gap, gap);
        const P = sc(add(Pl, Pr), 0.5);
        if (sup) {
          // centre of mass: HAT 0.578 + arms 0.1 + thighs 0.2 + shanks/feet 0.122
          const com = add(add(sc(add(P, trunkC), 0.578), sc(add(P, sc(armOff, 1 / 0.1)), 0.1)),
            add(sc(add(Kl, sc(tl, 0.43)), 0.1), add(sc(add(Kr, sc(tr, 0.43)), 0.1), sc(add(sc(Kl, 0.5), sc(Kr, 0.5)), 0.122))));
          const bx = com[0] - sup[0], by = com[1] - sup[1];
          c += 1.0 * (bx * bx + by * by);
        }
        // two thigh angles balance the same: the one with the hip above the knee is the real one (a thigh pointing
        // down-and-back from the knee happens only at the very bottom of a deep squat)
        if (zP != null) c += wH * (P[2] - zP) ** 2;     // pelvis height from the back sensor's own travel
        c += 0.02 * (Math.max(0, -tl[2] / d.thigh) ** 2 + Math.max(0, -tr[2] / d.thigh) ** 2);
        c += 0.05 * (hipPen(tl, 1) + hipPen(tr, -1));
        c += 2e-5 * ((kl - prev.l) ** 2 + (kr - prev.r) ** 2) + 1e-6 * (kl * kl + kr * kr);
        return { c, P };
      };
      let best = { c: Infinity }, bl = 0, br = 0;
      const STEP = 4 * D2R, MAX = 150 * D2R;
      for (let kl = 0; kl <= MAX; kl += STEP) for (let kr = 0; kr <= MAX; kr += STEP) {
        const r = cost(kl, kr);
        if (r.c < best.c) { best = r; bl = kl; br = kr; }
      }
      for (let h = STEP / 2; h > 0.2 * D2R; h /= 2) {
        let moved = true;
        while (moved) {
          moved = false;
          for (const [dl, dr] of [[h, 0], [-h, 0], [0, h], [0, -h]]) {
            const kl = Math.max(0, Math.min(MAX, bl + dl)), kr = Math.max(0, Math.min(MAX, br + dr));
            const r = cost(kl, kr);
            if (r.c < best.c - 1e-12) { best = r; bl = kl; br = kr; moved = true; }
          }
        }
      }
      this.kappa = { l: bl, r: br };
      return { P: best.P, gap: Math.sqrt(Math.max(0, best.c)), cost: best.c };
    }
  }
  // ---------- what a human arm can do (owner 2026-11-04: "limits the model knows are impossible; a pose past them
  // means a measurement error"). Shoulder (trunk frame, the arm's own side = +y): behind the body ≤ 60° hanging,
  // 45° sideways, 20° overhead; across the body ≤ 10° hanging, up to 60° in front. Elbow: 0–150°, a hinge — it bends
  // toward the thumb side ±110° of forearm turn (palm or back of the hand to the shoulder), never toward the little
  // finger. The wrist sensor measures the forearm; the upper arm is estimated — so the upper arm moves to the nearest
  // possible pose, and its roll is set by the elbow's hinge (no twisted skin at the elbow of the 3-D figure).
  const clamp1 = (x) => Math.max(-1, Math.min(1, x));
  function shoulderViol(u) {            // u: shoulder → elbow, trunk frame, own side +y
    const e = Math.acos(clamp1(-u[2])), H = Math.PI / 2;
    const lim = (e <= H ? 60 - (e / H) * 15 : 45 - ((e - H) / H) * 25) * D2R;
    const behind = Math.atan2(-u[0], Math.hypot(u[1], u[2]));
    const medial = Math.asin(clamp1(-u[1])), medLim = (10 + 50 * Math.max(0, u[0])) * D2R;
    return Math.max(0, behind - lim, medial - medLim);
  }
  const SAFE = unit([0.45, 0.35, -0.82]);
  function shoulderFix(u) {             // nearest allowed direction along the arc toward a surely-possible one
    if (shoulderViol(u) <= 0) return u;
    const ang = angBetween(u, SAFE), ax = norm(cross(u, SAFE)) > 1e-6 ? unit(cross(u, SAFE)) : [0, 0, 1];
    let lo = 0, hi = ang;
    for (let i = 0; i < 14; i++) { const m = (lo + hi) / 2; if (shoulderViol(mv(rot(ax, m), u)) > 0) lo = m; else hi = m; }
    return mv(rot(ax, hi), u);
  }
  const BEND = 110 * D2R, FLEX = 150 * D2R;
  // the elbow-bend-direction rule (from the forearm's twist) is off: it changed nothing measurable (CMU) but a wrist
  // turned a little past its range swung the whole upper arm round (owner's screenshot, 2026-11-04)
  const BEND_RULE = false;
  function elbowFix(u, F) {             // u: shoulder → elbow (world); F: forearm (wrist sensor) → allowed u, excess
    const f = mv(F, [0, 0, -1]), beta = angBetween(u, f);
    let ex = 0;
    if (beta > 20 * D2R) {                // measured always (a wrist sensor turned on its strap shows here), applied never
      const m = mv(T(F), sc(u, -1)), phi = Math.atan2(m[1], m[0]);
      if (Math.abs(phi) > BEND) {
        ex = (Math.abs(phi) - BEND) * Math.min(1, (beta - 20 * D2R) / (30 * D2R));
        if (BEND_RULE) {
        const r = Math.hypot(m[0], m[1]), p = Math.sign(phi) * BEND;
        u = sc(mv(F, [r * Math.cos(p), r * Math.sin(p), m[2]]), -1);
        }
      }
    }
    const b2 = angBetween(u, f);
    if (b2 > FLEX) { const ax = unit(cross(f, u)); u = mv(rot(ax, FLEX - b2), u); }
    return { u: unit(u), ex };
  }
  function armLimits(side, U, F, Tr) {
    const sg = side === 'l' ? 1 : -1, TrT = T(Tr);
    const toT = (u) => { const v = mv(TrT, u); return [v[0], sg * v[1], v[2]]; };
    const toW = (v) => mv(Tr, [v[0], sg * v[1], v[2]]);
    const u0 = mv(U, [0, 0, -1]);
    let u = u0, e = { ex: 0 }, ex0 = 0;
    for (let i = 0; i < 2; i++) { e = elbowFix(u, F); if (!i) ex0 = e.ex; u = toW(shoulderFix(toT(e.u))); }
    const left = Math.max(elbowFix(u, F).ex, shoulderViol(toT(u)));     // nothing possible fits: the sensor is wrong
    const f = mv(F, [0, 0, -1]), beta = angBetween(u, f), z = sc(u, -1);
    // roll: the hinge axis when bent, the forearm's own lateral axis when straight
    const w = Math.max(0, Math.min(1, (beta - 15 * D2R) / (20 * D2R)));
    const hinge = norm(cross(f, u)) > 1e-6 ? unit(cross(f, u)) : mv(F, [0, 1, 0]);
    let y = add(sc(hinge, w), sc(mv(F, [0, 1, 0]), 1 - w));
    y = sub(y, sc(z, dot(y, z))); if (norm(y) < 1e-4) y = mv(Tr, [0, 1, 0]);
    y = unit(y); const x = cross(y, z);
    return { U: [x[0], y[0], z[0], x[1], y[1], z[1], x[2], y[2], z[2]], viol: Math.max(left, ex0) };
  }
  function inv3(m) {
    const [a, b, c, d, e, f, g, h, i] = m, A = e * i - f * h, B = -(d * i - f * g), C = d * h - e * g, det = a * A + b * B + c * C || 1e-12;
    return [A / det, -(b * i - c * h) / det, (b * f - c * e) / det, B / det, (a * i - c * g) / det, -(a * f - c * d) / det, C / det, -(a * h - b * g) / det, (a * e - b * d) / det];
  }
  const NO_UNTWIST = typeof process !== 'undefined' && process.env && process.env.NO_UNTWIST === '1';
  const envN = (k, d) => (typeof process !== 'undefined' && process.env && process.env[k] != null ? +process.env[k] : d);
  const PHYS_W = envN('PHYS_W', 0), PHYS_C0 = envN('PHYS_C0', 0.3), PHYS_C1 = envN('PHYS_C1', 0.5);
  const NO_DRIFTFIT = typeof process !== 'undefined' && process.env && process.env.DRIFT === '0';
  const KICK_REACH = envN('KICK_REACH', 0.65), KICK_UP = envN('KICK_UP', 0.65);      // × height
  const NO_HANG = typeof process !== 'undefined' && process.env && process.env.NO_HANG === '1';
  const NO_CALTEACH = typeof process !== 'undefined' && process.env && process.env.NO_CALTEACH === '1';
  const ARMS_STATE = typeof process !== 'undefined' && process.env && process.env.ARMS === 'state';
  // the forearm's twist (dims 3–5) no longer read at all — see noTwist in armStep
  const ARMS_W = [1, 1, 1, 0.5, 0.5, 0.5, 1, 1, 1, 1, 1, 1, 1, 1, 1];
  const ARM_DR = typeof process !== 'undefined' && process.env && process.env.ARM_DR === '1';
  let ARMDB = null;
  function defaultArmPrior() {          // the page loads models/armdb.js (self.XEMS_ARMDB); decoded once
    const g = typeof self !== 'undefined' ? self : typeof global !== 'undefined' ? global : {};
    if (!ARMDB && g.XEMS_ARMDB) ARMDB = new ArmPrior(g.XEMS_ARMDB);
    return ARMDB;
  }
  function ortho(R) {                   // back to an exact rotation (products of many small turns drift)
    const z = unit([R[2], R[5], R[8]]); let y = [R[1], R[4], R[7]];
    y = unit(sub(y, sc(z, dot(y, z)))); const x = cross(y, z);
    return [x[0], y[0], z[0], x[1], y[1], z[1], x[2], y[2], z[2]];
  }
  function slerpM(A, B, k) { return mul(expm(sc(logm(mul(B, T(A))), k)), A); }
  const wrapDeg = (a) => ((a + 540) % 360) - 180;

  // ---------- repetitions: the joint angle that moves most right now is the exercise; hysteresis on its range
  class RepCounter {
    constructor() { this.buf = []; this.count = 0; this.total = 0; this.state = 'rest'; this.key = null; this.reps = []; this.tA = 0; this.tB = 0; this.peak = 0; }
    feed(t, A) {
      const keys = { knees: (A.lKnee + A.rKnee) / 2, lKnee: A.lKnee, rKnee: A.rKnee, elbows: (A.lElbow + A.rElbow) / 2,
        lElbow: A.lElbow, rElbow: A.rElbow, shoulders: (A.lShElev + A.rShElev) / 2, lShoulder: A.lShElev,
        rShoulder: A.rShElev, trunk: A.trunkLean, twist: Math.abs(A.trunkTwist) };
      this.buf.push({ t, v: keys });
      while (this.buf.length && t - this.buf[0].t > 8) this.buf.shift();
      // what moves now: range over the last 2.5 s (a slow EMS repetition still moves > 25° in that time)
      const rangeOf = (k) => { let lo = Infinity, hi = -Infinity; for (const b of this.buf) { if (t - b.t > 2.5) continue; lo = Math.min(lo, b.v[k]); hi = Math.max(hi, b.v[k]); } return hi - lo; };
      // the exercise = the angle with the largest range; a both-sides angle wins a tie (both arms move together);
      // it changes only when another one is clearly bigger, so left/right noise never restarts a repetition
      let best = null, range = 0;
      for (const k in keys) {
        const r = rangeOf(k) * (k === 'knees' || k === 'elbows' || k === 'shoulders' ? 1.1 : 1);
        if (r > range) { range = r; best = k; }
      }
      if (range < 25) { this.state = 'rest'; this.key = null; return this.out(null); }
      if (this.key && best !== this.key && range < 1.3 * rangeOf(this.key) && rangeOf(this.key) > 15) best = this.key;
      if (best !== this.key) { this.key = best; this.state = 'low'; this.count = 0; this.tA = t; }   // a new exercise counts from 0
      // base = where the movement starts (the zero pose side: the low end of these angles)
      let lo = Infinity, hi = -Infinity;
      for (const b of this.buf) { lo = Math.min(lo, b.v[this.key]); hi = Math.max(hi, b.v[this.key]); }
      const v = keys[this.key], f = (v - lo) / Math.max(1, hi - lo);
      if (this.state === 'low' && f > 0.7) { this.state = 'high'; this.tB = t; this.peak = v; }
      else if (this.state === 'high') {
        this.peak = Math.max(this.peak, v);
        if (f < 0.3) {
          this.state = 'low'; this.count++; this.total++;
          this.reps.push({ key: this.key, t, rom: this.peak - lo, out: this.tB - this.tA, back: t - this.tB });
          this.tA = t;
        }
      } else if (this.state === 'low' && f < 0.1) this.tA = t;
      return this.out(this.key);
    }
    out(key) { return { count: this.count, total: this.total, key, phase: this.state, last: this.reps[this.reps.length - 1] || null }; }
  }


  // ---------- the arm prior (models/armdb.js, scripts/motion/armdb.js): nearest real-people arm poses for what the
  // wrist sensor sees — forearm direction and twist in the trunk frame, its turn rate, the wrist's push
  class ArmPrior {
    constructor(db) {
      const dec = (b64, n) => { const bin = typeof atob === 'function' ? Uint8Array.from(atob(b64), (c) => c.charCodeAt(0)) : Buffer.from(b64, 'base64');
        const buf = new ArrayBuffer(bin.length); new Uint8Array(buf).set(bin); return new Float32Array(buf, 0, n); };
      this.dim = db.dim || 12; this.n = db.n; this.X = dec(db.X, db.n * this.dim); this.U = dec(db.U, db.n * 9);
      this.ks = db.ks || 0.12; this.ka = db.ka || 0.03; this.kp = db.kp || 1;
      // cells by forearm direction (unit vector, 0.35 per cell): a query looks only in its own and the 26 next cells —
      // ~10× less work, light enough for a phone at 50 Hz (a farther prototype is off by > 0.35 in direction anyway)
      this.cells = new Map();
      for (let i = 0; i < this.n; i++) {
        const o = i * this.dim, k = this.cellKey(Math.round(this.X[o] / 0.35), Math.round(this.X[o + 1] / 0.35), Math.round(this.X[o + 2] / 0.35));
        let c = this.cells.get(k); if (!c) this.cells.set(k, (c = [])); c.push(i);
      }
    }
    // THIS person's own arm poses (owner 2026-11-05: "learn by itself, with our minimal help"): recorded in the
    // arm-teaching mode (upper-arm sensors = truth), kept on the phone, searched together with the generic ones as
    // equals (offline: this person's own routine, curls 15° → 4°; movements they never taught: unchanged, 19.2° vs
    // 19.2° — preferring them (×0.6) made those worse, 23°)
    addPersonal(x, U, tag) {
      if (!this.pX) { this.pX = []; this.pU = []; this.pT = []; }
      const j = this.pX.length; this.pX.push(Float32Array.from(x)); this.pU.push(Float32Array.from(U)); this.pT.push(tag || '');
      const k = this.cellKey(Math.round(x[0] / 0.35), Math.round(x[1] / 0.35), Math.round(x[2] / 0.35));
      let c = this.cells.get(k); if (!c) this.cells.set(k, (c = [])); c.push(-(j + 1));
    }
    clearPersonal(tag) {
      if (!this.pX) return;
      if (tag == null) { for (const c of this.cells.values()) for (let i = c.length - 1; i >= 0; i--) if (c[i] < 0) c.splice(i, 1); this.pX = this.pU = this.pT = null; return; }
      const keep = []; for (let j = 0; j < this.pX.length; j++) if (this.pT[j] !== tag) keep.push([this.pX[j], this.pU[j], this.pT[j]]);
      this.clearPersonal(); for (const [x, U, t] of keep) this.addPersonal(x, U, t);
    }
    personalCount() { return this.pX ? this.pX.length : 0; }
    // the search vector (left-arm convention, trunk frame): forearm direction, its twist, turn rate, the wrist's push,
    // and the physics' own upper-arm direction
    vec(f) {
      const v = [f.d[0], f.d[1], f.d[2], 0.6 * f.y[0], 0.6 * f.y[1], 0.6 * f.y[2], this.ks * f.w[0], this.ks * f.w[1], this.ks * f.w[2],
        this.ka * f.a[0], this.ka * f.a[1], this.ka * f.a[2]];
      if (this.dim === 15) v.push(this.kp * f.u[0], this.kp * f.u[1], this.kp * f.u[2]);
      return v;
    }
    // x → the upper arm in the trunk frame (row-major 3×3), and how close the match was
    cellKey(a, b, c) { return (a + 8) * 289 + (b + 8) * 17 + (c + 8); }
    predict(x, k, wv) {
      k = k || 8;
      const best = [], X = this.X;
      const ca = Math.round(x[0] / 0.35), cb = Math.round(x[1] / 0.35), cc = Math.round(x[2] / 0.35), cand = [];
      for (let a = -1; a <= 1; a++) for (let b = -1; b <= 1; b++) for (let c = -1; c <= 1; c++) {
        const cell = this.cells.get(this.cellKey(ca + a, cb + b, cc + c)); if (cell) for (const i of cell) cand.push(i);
      }
      const all = cand.length < k;
      for (let j = 0, N = all ? this.n : cand.length; j < N; j++) {
        const i = all ? j : cand[j];
        let d = 0;
        if (i < 0) {                          // a personal prototype
          const px = this.pX[-i - 1];
          for (let q = 0; q < this.dim; q++) { const e = px[q] - x[q]; d += wv ? wv[q] * e * e : e * e; }
          d *= 0.7;                          // preferred: as if 0.6× as far
        } else {
          const o = i * this.dim;
          for (let q = 0; q < this.dim; q++) { const e = X[o + q] - x[q]; d += wv ? wv[q] * e * e : e * e; if (best.length === k && d >= best[k - 1][0]) break; }
        }
        if (best.length < k || d < best[k - 1][0]) {
          best.push([d, i]); best.sort((a, b) => a[0] - b[0]); if (best.length > k) best.pop();
        }
      }
      let z = [0, 0, 0], y = [0, 0, 0], ws = 0;
      for (const [d, i] of best) {
        const pers = i < 0, U = pers ? this.pU[-i - 1] : this.U, o = pers ? 0 : i * 9, w = 1 / (d + 0.004);
        z = add(z, sc([U[o + 2], U[o + 5], U[o + 8]], w)); y = add(y, sc([U[o + 1], U[o + 4], U[o + 7]], w)); ws += w;
      }
      z = unit(z); y = unit(sub(y, sc(z, dot(y, z)))); const xx = cross(y, z);
      const R = [xx[0], y[0], z[0], xx[1], y[1], z[1], xx[2], y[2], z[2]];
      // how much the neighbours agree on where the upper arm is (rad): a held arm-forward pose is ambiguous
      let spread = 0;
      for (const [d, i] of best) { const U = i < 0 ? this.pU[-i - 1] : this.U, o = i < 0 ? 0 : i * 9; spread += Math.acos(Math.max(-1, Math.min(1, -(U[o + 2] * -z[0] + U[o + 5] * -z[1] + U[o + 8] * -z[2])))) / best.length; }
      R.dist = Math.sqrt(best[0][0]); R.spread = spread;
      return R;
    }
  }

  // ---------- simulator: a scripted person wearing the five sensors (demo mode and the offline test)
  const sm = (x) => (x <= 0 ? 0 : x >= 1 ? 1 : x * x * (3 - 2 * x));
  const wave = (t, T) => 0.5 - 0.5 * Math.cos((2 * Math.PI * t) / T);
  // timeline of blocks: [name, seconds, fn(u, tl) → partial pose]
  const SCRIPT = [
    ['stand', 3, () => ({})],
    ['calib', 5, (u) => { const s = wave(u * 5, 5); return { squat: 0.55 * s, arms: { l: { f: 90 * s }, r: { f: 90 * s } } }; }],
    ['stand', 2, () => ({})],
    ['squat', 9, (u) => { const s = wave(u * 9, 3); return { squat: s, arms: { l: { f: 80 * s }, r: { f: 80 * s } } }; }],
    ['stand', 1.5, () => ({})],
    ['curl', 7.5, (u) => { const s = wave(u * 7.5, 2.5); return { arms: { l: { e: 120 * s, p: -60 * s }, r: { e: 120 * s, p: -60 * s } } }; }],
    ['stand', 1.5, () => ({})],
    ['raise', 7.5, (u) => { const s = wave(u * 7.5, 2.5); return { arms: { l: { f: 95 * s, p: 70 * s }, r: { f: 95 * s, p: 70 * s } } }; }],
    ['stand', 1.5, () => ({})],
    ['lateral', 7.5, (u) => { const s = wave(u * 7.5, 2.5); return { arms: { l: { a: 85 * s }, r: { a: 85 * s } } }; }],
    ['stand', 1.5, () => ({})],
    ['lunge', 7, (u) => { const t = u * 7; const step = sm(t / 1.2) - sm((t - 5.6) / 1.2); const bump = (x) => (x <= 0 || x >= 1 ? 0 : 0.5 - 0.5 * Math.cos(2 * Math.PI * x)); const lift = bump(t / 1.2) + bump((t - 5.6) / 1.2); return { lstep: step, llift: 0.08 * lift, lunge: wave(Math.min(Math.max(t - 1.4, 0), 4), 4) * step }; }],
    ['stand', 1.5, () => ({})],
    ['knee', 5, (u) => ({ kneeUp: sm(u * 5 / 1.2) - sm((u * 5 - 3.6) / 1.2) })],
    ['stand', 2, () => ({})],
    ['twist', 6, (u) => ({ twist: 35 * Math.sin((2 * Math.PI * u * 6) / 3), arms: { l: { f: 60, e: 80 }, r: { f: 60, e: 80 } } })],
    ['stand', 1.5, () => ({})],
    // front kicks for the VR game (owner 2026-11-06): knee up (chamber) → the shin snaps out → back → down; left, right
    ['kick', 8, (u) => { const t = u * 8, side = t < 4 ? 'L' : 'R', k = kickPath((t % 4) / 2); return { ['kick' + side]: k }; }],
  ];
  // one front kick, ph 0…1 (a kick lasts 2 s): the foot (ground-relative, × leg length) through chamber → strike →
  // chamber → floor, and how much weight left that foot (1 = all on the other)
  function kickPath(ph) {
    const K = [[0, [0, 0], 0], [0.25, [0.42, 0.40], 1], [0.42, [0.80, 0.55], 1], [0.58, [0.42, 0.40], 1], [0.82, [0, 0], 1], [1, [0, 0], 0]];
    if (ph >= 1) return { x: 0, z: 0, w: 0 };
    let i = 0; while (i < K.length - 2 && ph > K[i + 1][0]) i++;
    const [a0, p0, w0] = K[i], [a1, p1, w1] = K[i + 1], e = ease((ph - a0) / (a1 - a0));
    const w = ph < 0.08 ? ease(ph / 0.08) : ph > 0.9 ? ease((1 - ph) / 0.1) : 1;
    return { x: p0[0] + (p1[0] - p0[0]) * e, z: p0[1] + (p1[1] - p0[1]) * e, w };
  }
  // the calibration, shown by the figure for the user to copy (owner 2026-11-05: "a clip of exactly what to repeat"):
  // stand still → arms straight forward + half squat → HOLD → back up → arms out to the sides → HOLD → down.
  const ease = (u) => (u <= 0 ? 0 : u >= 1 ? 1 : u * u * (3 - 2 * u));
  const GUIDE = [
    ['stand', 2.2, () => ({})],
    ['down', 1.6, (u) => { const e = ease(u); return { squat: 0.5 * e, arms: { l: { f: 90 * e }, r: { f: 90 * e } } }; }],
    ['hold', 2.2, () => ({ squat: 0.5, arms: { l: { f: 90 }, r: { f: 90 } } })],
    ['up', 1.6, (u) => { const e = 1 - ease(u); return { squat: 0.5 * e, arms: { l: { f: 90 * e }, r: { f: 90 * e } } }; }],
    ['stand', 1.4, () => ({})],
    // the T hold (calibration 1.14): arms out to the sides at shoulder height
    ['tup', 1.6, (u) => { const e = ease(u); return { arms: { l: { hz: 0, a: 90 * e }, r: { hz: 0, a: 90 * e } } }; }],
    ['thold', 2.2, () => ({ arms: { l: { hz: 0, a: 90 }, r: { hz: 0, a: 90 } } })],
    ['tdown', 1.6, (u) => { const e = 1 - ease(u); return { arms: { l: { hz: 0, a: 90 * e }, r: { hz: 0, a: 90 * e } } }; }],
    ['stand', 1.0, () => ({})],
  ];
  function scriptAt(t, script) {
    script = script || SCRIPT;
    let t0 = 0;
    for (const [name, dur, fn] of script) {
      if (t < t0 + dur) {
        const p = fn((t - t0) / dur);
        // the twist starts and ends with arms in place: ease the static part in/out
        if (name === 'twist') { const e = sm((t - t0) / 1) * sm((t0 + dur - t) / 1); p.arms.l.f *= e; p.arms.l.e *= e; p.arms.r.f *= e; p.arms.r.e *= e; p.twist *= e; }
        return { name, ...p };
      }
      t0 += dur;
    }
    return { name: 'end' };
  }
  const scriptLength = (script) => (script || SCRIPT).reduce((a, b) => a + b[1], 0);

  // forward kinematics of the scripted person → segment rotations and the body points the sensors sit on
  function simBody(t, dim, script) {
    const d = dim, p = scriptAt(t, script);
    const squat = p.squat || 0, lunge = p.lunge || 0, twist = (p.twist || 0) * D2R;
    const feet = { l: [0, d.hipW, 0], r: [0, -d.hipW, 0] };
    const lstep = p.lstep || 0;
    feet.l = [0.55 * lstep, d.hipW, p.llift || 0];
    let lean = (38 * squat + 15 * lunge) * D2R;
    const Tr = mul(rz(twist), ry(lean));
    const legLen = d.shank + d.thigh;
    let Pz = d.ankleH + legLen - 0.0005 - 0.38 * squat * d.H / 1.75 - 0.3 * lunge * d.H / 1.75 - 0.1 * lstep;   // stepping out bends the knees a little
    const kneeUp = p.kneeUp || 0;
    if (kneeUp > 0) feet.l = [0.8 * kneeUp * d.thigh, d.hipW, 0.75 * kneeUp * d.thigh];
    if (p.kickL) feet.l = [p.kickL.x * legLen, d.hipW, p.kickL.z * legLen];
    if (p.kickR) feet.r = [p.kickR.x * legLen, -d.hipW, p.kickR.z * legLen];
    // arms
    const arms = {};
    for (const side of ['l', 'r']) {
      const a = (p.arms && p.arms[side]) || {}, sgn = side === 'l' ? 1 : -1;
      // f flexion, a abduction, hz horizontal swing of the raised arm (0 = out to the side, 90 = forward, > 90 across
      // the body), h rotation of the upper arm about itself (+ = forearm up when the arm is out), e elbow, p twist
      const U = a.hz != null ? mul(Tr, mul(rz(-sgn * a.hz * D2R), mul(rx(sgn * (a.a || 0) * D2R), rz(sgn * (a.h || 0) * D2R))))
        : mul(Tr, mul(ry(-(a.f || 0) * D2R), mul(rx(sgn * (a.a || 0) * D2R), rz(sgn * (a.h || 0) * D2R))));
      const F = mul(U, mul(ry(-(a.e || 0) * D2R), rz(sgn * (a.p || 0) * D2R)));
      arms[side] = { U, F };
    }
    // pelvis x: balance the body over the supporting feet (same mass model as the solver)
    const one = Math.max(sm(kneeUp * 4), p.kickL ? p.kickL.w : 0);   // weight onto the right foot as the left one leaves the floor
    const oneR = p.kickR ? p.kickR.w : 0;                              // … and onto the left for a right kick
    const supX = (1 - one - oneR) * (feet.l[0] + feet.r[0]) / 2 + one * feet.r[0] + oneR * feet.l[0] + d.footFwd;
    let lo = -0.6, hi = 0.6, Px = 0, legs = null;
    for (let it = 0; it < 40; it++) {
      Px = (lo + hi) / 2;
      const P = [Px, 0, Pz];
      legs = {};
      for (const side of ['l', 'r']) legs[side] = ikLeg(add(P, mv(Tr, [0, (side === 'l' ? 1 : -1) * d.hipW, 0])), add(feet[side], [0, 0, d.ankleH]), d, twist * 0);
      const thighC = (side) => add(legs[side].K, sc(sub(legs[side].H, legs[side].K), 0.43));
      const armOff = (side) => add(mv(Tr, [0, (side === 'l' ? 1 : -1) * d.shW, d.trunk]), add(sc(mv(arms[side].U, [0, 0, -d.upper]), 0.5), sc(mv(arms[side].F, [0, 0, -d.fore]), 0.3)));
      const comX = 0.578 * (Px + mv(Tr, [0, 0, 0.17 * d.H])[0]) + 0.05 * (Px + armOff('l')[0]) + 0.05 * (Px + armOff('r')[0]) +
        0.1 * thighC('l')[0] + 0.1 * thighC('r')[0] + 0.122 * (legs.l.K[0] + legs.r.K[0]) / 2;
      if (comX > supX) hi = Px; else lo = Px;
    }
    // pelvis height for the knee raise: standing leg straight
    return { p, Tr, arms, legs, P: [Px, 0, Pz], feet };
  }
  function ikLeg(H, A, d, yaw) {
    const v = sub(H, A); let D = norm(v);
    const Lmax = d.shank + d.thigh - 1e-4, eps = 0.002;
    let Hh = H;
    if (D > Lmax - eps) {         // soft reach limit: the path stays smooth (no acceleration spike at a straight knee)
      D = Lmax - eps * Math.exp(-(D - (Lmax - eps)) / eps);
      Hh = add(A, sc(unit(v), D));
    }
    const dh = unit(sub(Hh, A));
    const fwd = mv(rz(yaw), [1, 0, 0]);
    let perp = sub(fwd, sc(dh, dot(fwd, dh)));
    perp = unit(perp);
    const cb = (d.shank ** 2 + D * D - d.thigh ** 2) / (2 * d.shank * D);
    const b = Math.acos(Math.max(-1, Math.min(1, cb)));
    const sdir = add(sc(dh, Math.cos(b)), sc(perp, Math.sin(b)));
    const K = add(A, sc(sdir, d.shank));
    const y = unit(cross(dh, perp));
    const frame = (z) => { const x = cross(y, z); return [x[0], y[0], z[0], x[1], y[1], z[1], x[2], y[2], z[2]]; };
    const Sh = frame(sdir), Th = frame(unit(sub(Hh, K)));
    const kappa = angBetween(sdir, sub(Hh, K));
    return { Sh, Th, K, H: Hh, A, kappa };
  }

  // the five sensors on the scripted person: mounting (board bottom to the body, random spin), heading offsets
  function makeRig(seed, roleSet, place) {
    let s = seed || 7;
    const rnd = () => { s = (s * 16807) % 2147483647; return s / 2147483647; };
    const mount = (z, x, spin, tilt) => {
      const y = cross(z, x);
      const M = [x[0], y[0], z[0], x[1], y[1], z[1], x[2], y[2], z[2]];   // sensor → segment
      return mul(mul(M, rz(spin)), rx(tilt));
    };
    const rig = {};
    const ids = ['A1F0', 'B2E1', 'C3D2', 'D4C3', 'E5B4', 'F6A5', '07F6'];
    const roles = (roleSet || ROLES).slice().sort(() => rnd() - 0.5);    // the test does not know who is where
    roles.forEach((r, i) => {
      const spin = (rnd() * 2 - 1) * Math.PI, tilt = (rnd() * 2 - 1) * 8 * D2R;
      let M;
      if (r === 'back') M = mount([place && place.front ? 1 : -1, 0, 0], [0, 0, 1], spin, (rnd() * 2 - 1) * 15 * D2R);
      else if (r === 'pelvis') M = mount([-1, 0, 0], [0, 0, 1], spin, (rnd() * 2 - 1) * 15 * D2R);
      else if (r === 'lwrist' || r === 'lshank' || r === 'lupper') M = mount([0, 1, 0], [0, 0, -1], spin, tilt);
      else M = mount([0, -1, 0], [0, 0, -1], spin, tilt);
      rig[ids[i]] = { role: r, M, psi: (rnd() * 2 - 1) * Math.PI, place };
    });
    return rig;
  }
  // segment rotation and sensor position of one role at time t
  // ---------- one pose, whatever made it (the scripted person or a real mocap recording): segment rotations in W
  // (identity in the zero pose; z = towards the body / up) and joint points. Sensors, truth and the "ghost" use it.
  function scriptFrame(b, d) {
    // the pelvis tilts less than the chest leans (a mild spine bend, as real people: CMU ≈ 0.45 × lean)
    const lean = Math.atan2(b.Tr[2], b.Tr[8]);
    const R = { trunk: b.Tr, pelvis: mul(b.Tr, ry(-0.35 * lean)) }, J = {};
    J.pelvis = b.P; J.neck = add(b.P, mv(b.Tr, [0, 0, d.trunk])); J.head = add(J.neck, mv(b.Tr, [0, 0, d.neck + d.head * 0.6]));
    for (const s of ['l', 'r']) {
      const sgn = s === 'l' ? 1 : -1, L = b.legs[s];
      R[s + 'thigh'] = L.Th; R[s + 'shank'] = L.Sh; R[s + 'upper'] = b.arms[s].U; R[s + 'fore'] = b.arms[s].F;
      J[s + 'hip'] = L.H; J[s + 'knee'] = L.K; J[s + 'ankle'] = L.A; J[s + 'toe'] = add(L.A, [0.13 * d.H / 1.75, 0, -d.ankleH]);
      J[s + 'sh'] = add(J.neck, mv(b.Tr, [0, sgn * d.shW, -0.03 * d.H]));
      J[s + 'elbow'] = add(J[s + 'sh'], mv(b.arms[s].U, [0, 0, -d.upper]));
      J[s + 'wrist'] = add(J[s + 'elbow'], mv(b.arms[s].F, [0, 0, -d.fore]));
      J[s + 'hand'] = add(J[s + 'wrist'], mv(b.arms[s].F, [0, 0, -d.hand * 0.7]));
    }
    return { R, J };
  }
  function blendFrames(A, B, w) {
    const R = {}, J = {};
    for (const k in A.R) R[k] = B.R[k] ? slerpM(A.R[k], B.R[k], w) : A.R[k];
    for (const k in A.J) J[k] = B.J[k] ? add(sc(A.J[k], 1 - w), sc(B.J[k], w)) : A.J[k];
    return { R, J };
  }
  // where each sensor sits on a frame (and which segment carries it)
  function sensorOnFrame(f, role, place) {
    const s = role[0] === 'l' ? 'l' : 'r', sgn = s === 'l' ? 1 : -1;
    if (role === 'pelvis') { const R = f.R.pelvis || f.R.trunk; return { R, p: add(f.J.pelvis, mv(R, [-0.1, 0, 0.1])) }; }
    if (role === 'back') {                // on the spine at its level: orientation between pelvis and chest, point on it
      const pl = placeOf(place), Rp = f.R.pelvis || f.R.trunk;
      const R = pl.s >= 1 ? f.R.trunk : slerpM(Rp, f.R.trunk, pl.s);
      const sp = sub(f.J.neck, f.J.pelvis), L = norm(sp), z = Math.min(1.05, (0.05 + pl.s * (L - 0.11)) / L);
      return { R, p: add(add(f.J.pelvis, sc(sp, z)), mv(R, [pl.dx, 0, 0])) };
    }
    if (role.endsWith('wrist')) return { R: f.R[s + 'fore'], p: add(f.J[s + 'wrist'], mv(f.R[s + 'fore'], [0, sgn * 0.03, 0.03])) };
    if (role.endsWith('upper')) return { R: f.R[s + 'upper'], p: add(f.J[s + 'sh'], mv(f.R[s + 'upper'], [0, sgn * 0.05, -0.15])) };
    return { R: f.R[s + 'shank'], p: add(f.J[s + 'ankle'], mv(f.R[s + 'shank'], [0, sgn * 0.05, 0.08])) };
  }
  // the angles a coach reads, from a true frame (same definitions as Body.solve)
  function truthAngles(f) {
    const A = {}, Tr = f.R.trunk, up = mv(Tr, [0, 0, 1]);
    A.trunkLean = Math.atan2(dot(up, mv(rz(yawOf(Tr)), [1, 0, 0])), up[2]) * R2D;
    A.trunkTwist = wrapDeg((yawOf(Tr) - (yawOf(f.R.lshank) + yawOf(f.R.rshank)) / 2) * R2D);
    for (const s of ['l', 'r']) {
      A[s + 'Knee'] = angBetween(mv(f.R[s + 'thigh'], [0, 0, 1]), mv(f.R[s + 'shank'], [0, 0, 1])) * R2D;
      A[s + 'Elbow'] = angBetween(mv(f.R[s + 'upper'], [0, 0, -1]), mv(f.R[s + 'fore'], [0, 0, -1])) * R2D;
      A[s + 'ShElev'] = angBetween(mv(T(Tr), mv(f.R[s + 'upper'], [0, 0, -1])), [0, 0, -1]) * R2D;
    }
    return A;
  }

  // ---------- real movements: CMU Graphics Lab Motion Capture (motion/mocap/cmu.js, scripts/motion/cmu2json.py)
  // ASF/AMC forward kinematics: G(bone) = G(parent)·C·E(rx,ry,rz)·C⁻¹, end = parent end + len·G·dir (CMU axes y up).
  const KEEP = ['root', 'lowerback', 'upperback', 'thorax', 'lowerneck', 'upperneck', 'head', 'lhipjoint', 'lfemur',
    'ltibia', 'lfoot', 'rhipjoint', 'rfemur', 'rtibia', 'rfoot', 'lclavicle', 'lhumerus', 'lradius', 'lwrist', 'rclavicle',
    'rhumerus', 'rradius', 'rwrist'];
  const CMU2W = [0, 0, 1, 1, 0, 0, 0, 1, 0];            // CMU (x left, y up, z forward) → W (x fwd, y left, z up)
  const eulXYZ = (x, y, z) => mul(rz(z * D2R), mul(ry(y * D2R), rx(x * D2R)));
  class Mocap {
    constructor(data, clipIdx) {
      const c = data.clips[clipIdx], bones = data.skeletons[c.subject];
      this.title = c.title; this.what = c.what; this.fps = c.fps; this.n = c.frames;
      this.len = (c.frames - 1) / c.fps;
      const bin = typeof atob === 'function' ? Uint8Array.from(atob(c.data), (ch) => ch.charCodeAt(0)) : Buffer.from(c.data, 'base64');
      this.vals = new Int16Array(bin.buffer, bin.byteOffset, bin.byteLength / 2);
      this.bones = bones.map((b) => ({ ...b, C: eulXYZ(...b.axis), Ci: T(eulXYZ(...b.axis)), d: mv(CMU2W, b.dir) }));
      this.stride = bones.reduce((s, b) => s + b.dof.length, 0);
      const by = {}; for (const b of this.bones) by[b.name] = b;
      this.by = by;
      // the subject's size → solver proportions
      this.legLen = by.lfemur.len + by.ltibia.len;
      this.height = this.legLen / 0.491;
      // segment frame in the CMU base pose (limbs: z towards the body; spine: z up), turned into W
      const base = (b, spine) => {
        const z = spine ? unit(b.d) : sc(unit(b.d), -1);
        let x = sub([1, 0, 0], sc(z, z[0])); if (norm(x) < 0.2) x = sub([0, 0, -1], sc(z, -z[2]));
        x = unit(x); const y = cross(z, x);
        return [x[0], y[0], z[0], x[1], y[1], z[1], x[2], y[2], z[2]];
      };
      this.seg = { trunk: ['thorax', true], pelvis: ['root', true], head: ['head', true] };
      for (const s of ['l', 'r']) Object.assign(this.seg, { [s + 'thigh']: [s + 'femur'], [s + 'shank']: [s + 'tibia'], [s + 'upper']: [s + 'humerus'], [s + 'fore']: [s + 'radius'] });
      this.base = {};
      for (const k in this.seg) this.base[k] = k === 'pelvis' ? I3() : base(by[this.seg[k][0]], this.seg[k][1]);
      this.cache = new Map();
      // place the clip: start facing +x, feet centred on the origin, the floor at z = 0
      this.fix = { R: I3(), o: [0, 0, 0] };
      const f0 = this.raw(0);
      const yaw = yawOf(f0.R.pelvis);
      this.fix.R = rz(-yaw);
      let floor = Infinity;
      for (let i = 0; i < this.n; i += 5) { const f = this.raw(i); floor = Math.min(floor, f.J.lankle[2], f.J.rankle[2]); }
      const g = this.raw(0), mid = sc(add(g.J.lankle, g.J.rankle), 0.5);
      this.fix.o = [mid[0], mid[1], floor - 0.07];
      this.cache.clear();
    }
    raw(i) {
      if (this.cache.has(i)) return this.cache.get(i);
      let o = i * this.stride;
      const G = {}, P = {};
      for (const b of this.bones) {
        const v = this.vals;
        if (b.name === 'root') {
          const pos = [v[o] / 1000, v[o + 1] / 1000, v[o + 2] / 1000];
          G.root = mul(b.C, mul(eulXYZ(v[o + 3] / 50, v[o + 4] / 50, v[o + 5] / 50), b.Ci));
          P.root = mv(CMU2W, pos); o += 6;
        } else {
          const r = { rx: 0, ry: 0, rz: 0 };
          for (const dn of b.dof) r[dn] = v[o++] / 50;
          G[b.name] = mul(G[b.parent], mul(b.C, mul(eulXYZ(r.rx, r.ry, r.rz), b.Ci)));
          P[b.name] = add(P[b.parent], sc(mv(mul(CMU2W, mul(G[b.name], T(CMU2W))), b.d), b.len));
        }
      }
      const W = (Rc) => mul(this.fix.R, mul(mul(CMU2W, mul(Rc, T(CMU2W))), I3()));
      const at = (p) => mv(this.fix.R, sub(p, this.fix.o));
      const R = {};
      for (const k in this.seg) R[k] = mul(W(G[this.seg[k][0]]), this.base[k]);
      const J = { pelvis: at(P.root), neck: at(P.thorax), head: at(P.head) };
      for (const s of ['l', 'r']) {
        J[s + 'hip'] = at(P[s + 'hipjoint']); J[s + 'knee'] = at(P[s + 'femur']); J[s + 'ankle'] = at(P[s + 'tibia']);
        J[s + 'toe'] = at(P[s + 'foot']); J[s + 'sh'] = at(P[s + 'clavicle']); J[s + 'elbow'] = at(P[s + 'humerus']);
        J[s + 'wrist'] = at(P[s + 'radius']); J[s + 'hand'] = at(P[s + 'wrist']);
      }
      const f = { R, J };
      if (this.cache.size > 20000) this.cache.clear();
      this.cache.set(i, f);
      return f;
    }
    // marker noise out (Gaussian σ = 2 frames ≈ 33 ms, keeps < ~5 Hz: all of human exercise), then a cubic B-spline
    // between the 60 fps frames — continuous acceleration, as a real accelerometer sees a real body
    smooth(i) {
      i = Math.max(0, Math.min(this.n - 1, i));
      const key = 's' + i;
      if (this.cache.has(key)) return this.cache.get(key);
      const c = this.raw(i), R = {}, J = {};
      let wsum = 0; const ws = [];
      for (let k = -4; k <= 4; k++) { const w = Math.exp(-(k * k) / 8); ws.push([Math.max(0, Math.min(this.n - 1, i + k)), w]); wsum += w; }
      for (const n in c.R) {
        let v = [0, 0, 0];
        for (const [j, w] of ws) v = add(v, sc(logm(mul(T(c.R[n]), this.raw(j).R[n])), w / wsum));
        R[n] = mul(c.R[n], expm(v));
      }
      for (const n in c.J) { let v = [0, 0, 0]; for (const [j, w] of ws) v = add(v, sc(this.raw(j).J[n], w / wsum)); J[n] = v; }
      const f = { R, J };
      this.cache.set(key, f);
      return f;
    }
    frame(t) {
      const x = Math.max(0, Math.min(this.n - 1, t * this.fps)), i = Math.floor(x), u = x - i;
      const b = [(1 - u) ** 3 / 6, (3 * u ** 3 - 6 * u * u + 4) / 6, (-3 * u ** 3 + 3 * u * u + 3 * u + 1) / 6, u ** 3 / 6];
      const F = [this.smooth(i - 1), this.smooth(i), this.smooth(i + 1), this.smooth(i + 2)], c = F[1], R = {}, J = {};
      // rotations: cumulative B-spline on SO(3) (Kim, Kim & Shin 1995) — C2 like the positions, so the gyro and the
      // accelerometer of a sensor riding on the segment see no jumps at the frame boundaries
      const B = [(5 + 3 * u - 3 * u * u + u ** 3) / 6, (1 + 3 * u + 3 * u * u - 2 * u ** 3) / 6, u ** 3 / 6];
      for (const n in c.R) {
        let r = F[0].R[n];
        for (let j = 1; j <= 3; j++) r = mul(r, expm(sc(logm(mul(T(F[j - 1].R[n]), F[j].R[n])), B[j - 1])));
        R[n] = r;
      }
      for (const n in c.J) { let v = [0, 0, 0]; for (let k = 0; k < 4; k++) v = add(v, sc(F[k].J[n], b[k])); J[n] = v; }
      return { R, J };
    }
  }

  // a session: the scripted calibration (zero pose + squat with the arms forward) in the clip person's size, then
  // clips one after another, 1.5 s blends in between
  class Timeline {
    constructor(parts, dim) {
      this.dim = dim; this.parts = []; let t = 0;
      for (const p of parts) { this.parts.push({ ...p, t0: t }); t += p.len; }
      this.len = t;
    }
    frame(t) {
      let i = this.parts.findIndex((p) => t < p.t0 + p.len);
      if (i < 0) i = this.parts.length - 1;
      const p = this.parts[i], u = t - p.t0;
      const own = (q, uu) => q.kind === 'script' ? scriptFrame(simBody(q.from + Math.max(0, Math.min(q.len, uu)), this.dim, q.script), this.dim) : q.clip.frame(Math.max(0, Math.min(q.len, uu)));
      if (p.kind === 'blend') return blendFrames(own(this.parts[i - 1], 1e9), own(this.parts[i + 1], -1), sm(u / p.len));
      return own(p, u);
    }
    nameAt(t) { const p = this.parts.find((q) => t < q.t0 + q.len) || this.parts[this.parts.length - 1]; return p.name; }
    static session(data, clips, opt) {
      opt = opt || {};
      const mocaps = clips.map((i) => new Mocap(data, i));
      const H = mocaps.length ? mocaps[0].height : 1.75, dim = bodyDims(H);
      const parts = [{ kind: 'script', name: 'calib', from: 0, len: 10, script: SCRIPT }];
      for (const m of mocaps) { parts.push({ kind: 'blend', name: 'blend', len: 1.5 }); parts.push({ kind: 'clip', name: m.what, title: m.title, clip: m, len: m.len }); }
      const tl = new Timeline(parts, dim);
      tl.height = H;
      return tl;
    }
    static guide(dim) { const L = GUIDE.reduce((a, g) => a + g[1], 0); return new Timeline([{ kind: 'script', name: 'guide', from: 0, len: L, script: GUIDE }], dim); }
    static script(dim) { return new Timeline([{ kind: 'script', name: 'script', from: 0, len: scriptLength(), script: SCRIPT }], dim); }
  }

  // ideal 6-axis sensor output at t (orientation in its own gravity frame, gyro °/s, accel g — sensor frame)
  function simSample(t, rig, id, src, h) {
    h = h || 0.004;
    const r = rig[id];
    const at = (tt) => { const s = sensorOnFrame(src.frame(tt), r.role, r.place); return { R: mul(s.R, r.M), p: s.p }; };
    const a = at(t - h), m = at(t), c = at(t + h);
    const dR = mul(T(m.R), c.R.map((x, i) => (x - a.R[i]) / (2 * h)));
    const w = [(dR[7] - dR[5]) / 2, (dR[2] - dR[6]) / 2, (dR[3] - dR[1]) / 2];
    const acc = add(sc(add(sub(c.p, m.p), sub(a.p, m.p)), 1 / (h * h)), [0, 0, G]);
    return { t, R: m.R, q: mToQ(mul(rz(r.psi), m.R)), gyro: sc(w, R2D), acc: sc(mv(T(m.R), acc), 1 / G), still: false };
  }

  const api = { ROLES, ROLES_TEACH, ROLES7, ROLES6, ROLE_BG, ROLE_LED, Calibration, Body, RepCounter, ArmPrior, decodeFrame, bodyDims,
    sim: { SCRIPT, scriptAt, scriptLength, simBody, makeRig, simSample, ikLeg, scriptFrame, blendFrames, sensorOnFrame, truthAngles, Mocap, Timeline },
    placeOf, LEVELS, FRONT,
    m: { mul, T, mv, rot, rx, ry, rz, logm, expm, qToM, mToQ, yawOf, angBetween, add, sub, sc, dot, cross, norm, unit, D2R, R2D } };
  if (typeof module !== 'undefined' && module.exports) module.exports = api; else root.XemsMotion = api;
})(typeof self !== 'undefined' ? self : this);
