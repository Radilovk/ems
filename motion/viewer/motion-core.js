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
  const ROLE_BG = { back: 'гръб', lwrist: 'лява китка', rwrist: 'дясна китка', lshank: 'ляв глезен', rshank: 'десен глезен' };
  const ROLE_LED = { back: 'white', lwrist: 'red', rwrist: 'green', lshank: 'magenta', rshank: 'cyan' };

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
    return { t, seq: dv.getUint8(0), still: !!(f & 1), biasReady: !!(f & 2), lowBat: !!(f & 4), q: [w, x, y, z],
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
    constructor() { this.phase = 'stand'; this.s = {}; this.problems = []; }
    feed(id, smp) {
      let s = this.s[id];
      if (!s) s = this.s[id] = { stand: [], q0: null, best: 0, accum: [0, 0, 0], n: 0 };
      const R = qToM(smp.q);
      if (this.phase === 'stand') {
        s.stand.push(R);
        if (s.stand.length > 40) s.stand.shift();
      } else if (this.phase === 'move' && s.q0) {
        const v = logm(mul(R, T(s.q0)));                    // rotation since the zero pose, in G_i
        const a = norm(v) * R2D;
        if (a > s.best) s.best = a;
        if (a > 12) { s.accum = add(s.accum, v); s.n++; }
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
        this.s[id].best = 0; this.s[id].accum = [0, 0, 0]; this.s[id].n = 0;
      }
      this.phase = 'move';
    }
    finish(forced) {
      this.phase = 'done';
      const ids = Object.keys(this.s).filter((id) => this.s[id].q0);
      const feat = {};
      for (const id of ids) {
        const s = this.s[id];
        const ax = unit(s.accum);
        const nrm = mv(s.q0, [0, 0, 1]);                     // board normal (top side, away from the body)
        const ah = unit([ax[0], ax[1], 0]), nh = unit([nrm[0], nrm[1], 0]);
        feat[id] = { ang: s.best, ax, ah, nh, d: dot(ah, nh), vert: Math.abs(ax[2]), tilt: Math.abs(nrm[2]), n: s.n };
      }
      const roleCost = (r, f, flip) => {
        const d = flip ? -f.d : f.d;
        if (r === 'back') return 3 * Math.abs(d) + (f.ang > 75 ? 2 : 0);
        const big = Math.max(0, (60 - f.ang) / 20), mid = Math.max(0, (f.ang - 60) / 20);
        if (r === 'lwrist') return Math.abs(d + 1) + big;
        if (r === 'rwrist') return Math.abs(d - 1) + big;
        if (r === 'lshank') return Math.abs(d - 1) + mid;
        return Math.abs(d + 1) + mid;                        // rshank
      };
      let best = null;
      for (const flip of [false, true]) {
        permute(ids, ROLES, (map) => {
          let c = 0;
          for (const id in map) c += roleCost(map[id], feat[id], flip);
          if (!best || c < best.cost) best = { cost: c, map: { ...map }, flip };
        });
      }
      const assign = forced || (best ? best.map : {});
      // the board normal is assumed to point away from the body; the back sensor tells if this hardware is the other
      // way round (its normal must point backward = against "forward" = left × up)
      let flip = best ? best.flip : false;
      const backId = Object.keys(assign).find((id) => assign[id] === 'back');
      if (backId && feat[backId]) {
        const fwd = cross(feat[backId].ah, [0, 0, 1]);
        flip = dot(feat[backId].nh, fwd) > 0;
      }
      const out = { ok: true, assign, psi: {}, q0: {}, flip, feat, problems: [] };
      for (const id in assign) {
        const f = feat[id], r = assign[id];
        if (!f) continue;
        const exp = r === 'lwrist' || r === 'rwrist' ? -Math.PI / 2 : Math.PI / 2;   // expected axis: ∓y
        out.psi[id] = exp - Math.atan2(f.ah[1], f.ah[0]);
        out.q0[id] = this.s[id].q0;
        if (f.ang < 15 || f.n < 5) out.problems.push(ROLE_BG[r] + ': почти не помръдна');
        if (f.vert > 0.6) out.problems.push(ROLE_BG[r] + ': движението не беше напред');
      }
      const placed = Object.values(assign);
      for (const r of ROLES) if (!placed.includes(r)) out.problems.push('липсва ' + ROLE_BG[r]);
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
      this.armPrior = opt.armPrior !== undefined ? opt.armPrior : defaultArmPrior();
      this.cal = null;
      this.last = {};                                         // id → latest sample
      this.arm = { l: this.newArm(), r: this.newArm() };
      this.foot = { l: this.newFoot(1), r: this.newFoot(-1) };
      this.kappa = { l: 0, r: 0 };
      this.prevT = null;
      this.reps = new RepCounter();
      this.faceForward = true;
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
    }
    feed(id, smp) { this.last[id] = smp; }
    // segment orientation (in W) and the sensor's motion, in W, for one role
    seg(role) {
      const id = this.role && this.role[role], s = id && this.last[id];
      if (!s) return null;
      const psi = this.cal.psi[id], Rz = rz(psi), Rq = qToM(s.q);
      let R = mul(mul(Rz, mul(Rq, T(this.cal.q0[id]))), T(Rz));
      // standing upright the body balances over the mid-foot: the straight legs lean forward by ~atan(5 cm / leg)
      if (role === 'lshank' || role === 'rshank') R = mul(R, ry(Math.atan2(this.dim.footFwd, this.dim.shank + this.dim.thigh)));
      const RWS = mul(Rz, Rq);
      return { R, w: sc(mv(RWS, s.gyro), D2R), a: sub(sc(mv(RWS, s.acc), G), [0, 0, G]), still: s.still, t: s.t };
    }
    // one pose for "now" (call after feeding a frame of all sensors)
    solve(t) {
      if (!this.cal) return null;
      const d = this.dim, dt = this.prevT == null ? 0.02 : Math.max(0.005, Math.min(0.1, t - this.prevT));
      this.prevT = t;
      const S = {}; for (const r of ROLES) S[r] = this.seg(r);
      const Tr = S.back ? S.back.R : I3();
      const shanks = { l: S.lshank ? S.lshank.R : I3(), r: S.rshank ? S.rshank.R : I3() };
      // feet: ankle point tracked with zero-velocity updates
      for (const side of ['l', 'r']) if (S[side + 'shank']) this.trackFoot(side, S[side + 'shank'], dt, t);
      if (S.back) this.trackHeight(S.back, dt);
      // legs: knee flexion κ (thigh hinged to the shank) from chain closure at the pelvis + balance
      const armsR = {};
      for (const side of ['l', 'r']) armsR[side] = this.armStep(side, S[side === 'l' ? 'lwrist' : 'rwrist'], S.back, Tr, dt);
      // at rest and upright-ish the static balance is exact (nothing accelerates): it re-anchors the pelvis height
      // the back sensor's travel slowly drifts from — not during movement, not in deep bends (balance is weakest there)
      const hh = this.height;
      if (hh.ok && hh.calm * dt > 0.5 && Math.abs(this.prevPose ? this.prevPose.A.trunkLean : 0) < 30) {
        const zb = this.solveLegs(Tr, shanks, armsR, false).P[2] - this.pelvisZ0(Tr);
        hh.z += (zb - hh.z) * Math.min(1, dt / 0.7);
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
      J.neck = add(P, up(Tr, d.trunk));
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
        A[side + 'Hip'] = angBetween(thighDown, sc(trunkUp, -1)) * R2D;
        const U = this.armU(side), Ft = armsR[side];
        const ua = mv(T(Tr), mv(U, [0, 0, -1]));              // upper arm in the trunk frame
        A[side + 'ShFlex'] = Math.atan2(ua[0], -ua[2]) * R2D;
        A[side + 'ShAbd'] = Math.atan2(sgn * ua[1], Math.hypot(ua[0], ua[2])) * R2D;
        A[side + 'ShElev'] = angBetween(ua, [0, 0, -1]) * R2D;
        A[side + 'Elbow'] = angBetween(mv(U, [0, 0, -1]), mv(Ft, [0, 0, -1])) * R2D;
        A[side + 'Shank'] = angBetween(mv(shanks[side], [0, 0, 1]), [0, 0, 1]) * R2D;
      }
      // speeds: angular speed of each measured segment (°/s) and of the main joints
      const V = {};
      for (const r of ROLES) if (S[r]) V[r] = norm(S[r].w) * R2D;
      // segment rotations (same convention as the true frames): what a 3-D model is posed with
      const R = { trunk: Tr, pelvis: Tr, head: Tr };
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
      this.prevPose = pose;
      return pose;
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
      const calm = Math.abs(b.a[2]) < 0.25 && norm(b.w) < 0.25;
      h.calm = calm ? h.calm + 1 : 0;
      // still = calm and slow (a slow, smooth descent is calm too, but it has speed); calm for 1 s at "speed" = drift
      if (h.t > 0.2 && ((h.calm * dt > 0.15 && Math.abs(h.v) < 0.12) || h.calm * dt > 1)) {
        h.z -= h.v * Math.min(h.t, 6) / 2; h.v = 0; h.t = 0;
      } else if (h.t > 15) { h.v = 0; h.t = 0; }      // never still for 15 s: stop the drift growing
      // standing upright and still (legs and trunk as in the zero pose): that is height 0 again
      const A = this.prevPose && this.prevPose.A;
      if (h.calm * dt > 1 && A && Math.abs(A.trunkLean) < 12 && A.lShank < 8 && A.rShank < 8 && A.lKnee < 12 &&
          A.rKnee < 12 && !this.foot.l.air && !this.foot.r.air) h.z *= Math.exp(-dt / 1.5);
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
      f.p = norm(dp) < 0.8 && f.pi[2] > -0.05 && f.pi[2] < 0.7 ? f.pi.slice() : f.pStart.slice();
      const Tm = t - f.t0;
      // a foot at speed is never calm for long: calm + slow = landed; calm for 0.5 s at "speed" = that speed is drift
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
        const rTS = mv(Tr, [0.08, (side === 'l' ? 1 : -1) * d.shW, -0.02]);
        const aT = a.prevWb ? sc(sub(Sb.w, a.prevWb), 1 / dt) : [0, 0, 0];
        acc = sub(acc, add(Sb.a, add(cross(aT, rTS), cross(Sb.w, cross(Sb.w, rTS)))));
        a.prevWb = Sb.w;
      }
      const wRel = Sb ? sub(Sf.w, Sb.w) : Sf.w, spin = norm(wRel);
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
        a.buf.push({ F, acc, spin, vm: a.vm, lg: logm(mul(F, T(a.prevF))) });
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
            let e = 0;
            for (let j = 1; j < n - 1; j++) {
              const pv = sc(sub(X[j + 1], X[j - 1]), 1 / (2 * dt));
              const r = sub(sub(pv, a.buf[j].vm), sub([0, 0, 0], [0, 0, 0]));
              e += dot(r, r);
            }
            if (e < bestE) { bestE = e; bestK = k; }
            worstE = Math.max(worstE, e);
          }
          if (worstE > 1.3 * bestE) a.k += (bestK - a.k) * Math.min(1, dt * 8);
        }
        const Us = upperAt(a.k);
        a.U = ortho(Us[Us.length - 1]);
        a.calm = spin < 0.3 ? a.calm + 1 : 0;
        if (a.calm * dt > 0.25) a.moving = false;
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
        const P = this.armPrior.predict(this.armPrior.vec(a.feat));
        const Ur = side === 'r' ? [P[0], -P[1], P[2], -P[3], P[4], -P[5], P[6], -P[7], P[8]] : P;
        const Up = mul(Tr, Ur);
        a.Uout = a.Uout ? ortho(slerpM(a.Uout, Up, Math.min(1, dt / 0.06))) : Up;
      } else a.Uout = a.U;
      return F;
    }
    armU(side) { const a = this.arm[side]; return a.Uout || a.U; }

    // legs: unknown knee flexions κl, κr. Each foot's chain (ankle → shank (measured) → thigh (hinged on the knee axis
    // of the shank, angle κ) → hip) must meet the other at the pelvis, and the body's centre of mass must stand over
    // the feet that carry it. Grid + refine (≈3 k evaluations, < 1 ms).
    // pelvis height at zero travel of the back sensor for this trunk lean (standing pelvis height + lean geometry)
    pelvisZ0(Tr) {
      const d = this.dim, off = (R) => mv(R, [-0.08, 0, d.trunk - 0.06])[2];
      return d.ankleH + d.shank + d.thigh + off(I3()) - off(Tr);
    }

    solveLegs(Tr, Sh, armsR, useHeight) {
      const d = this.dim, hipOff = (s) => mv(Tr, [0, s * d.hipW, 0]);
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
      const trunkC = mv(Tr, [0, 0, 0.17 * d.H]);
      const armC = { l: 0, r: 0 };
      const armVec = (side) => add(mv(Tr, [0, (side === 'l' ? 1 : -1) * d.shW, d.trunk]), add(sc(mv(this.armU(side), [0, 0, -d.upper]), 0.5), sc(mv(armsR[side], [0, 0, -d.fore]), 0.3)));
      const armOff = add(sc(armVec('l'), 0.05), sc(armVec('r'), 0.05));
      const prev = this.kappa;
      // pelvis height measured: standing pelvis height + the back sensor's vertical travel − what the trunk's lean took
      const zP = useHeight && this.height.ok ? this.pelvisZ0(Tr) + this.height.z : null;
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
        if (zP != null) c += 4 * (P[2] - zP) ** 2;      // pelvis height from the back sensor's own travel
        c += 0.02 * (Math.max(0, -tl[2] / d.thigh) ** 2 + Math.max(0, -tr[2] / d.thigh) ** 2);
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
  function inv3(m) {
    const [a, b, c, d, e, f, g, h, i] = m, A = e * i - f * h, B = -(d * i - f * g), C = d * h - e * g, det = a * A + b * B + c * C || 1e-12;
    return [A / det, -(b * i - c * h) / det, (b * f - c * e) / det, B / det, (a * i - c * g) / det, -(a * f - c * d) / det, C / det, -(a * h - b * g) / det, (a * e - b * d) / det];
  }
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
    }
    // the search vector (left-arm convention, trunk frame): forearm direction, its twist, turn rate, the wrist's push,
    // and the physics' own upper-arm direction
    vec(f) {
      const v = [f.d[0], f.d[1], f.d[2], 0.6 * f.y[0], 0.6 * f.y[1], 0.6 * f.y[2], this.ks * f.w[0], this.ks * f.w[1], this.ks * f.w[2],
        this.ka * f.a[0], this.ka * f.a[1], this.ka * f.a[2]];
      if (this.dim === 15) v.push(this.kp * f.u[0], this.kp * f.u[1], this.kp * f.u[2]);
      return v;
    }
    // x → the upper arm in the trunk frame (row-major 3×3), and how close the match was
    predict(x, k) {
      k = k || 8;
      const best = [], X = this.X;
      for (let i = 0; i < this.n; i++) {
        const o = i * this.dim;
        let d = 0;
        for (let j = 0; j < this.dim; j++) { const e = X[o + j] - x[j]; d += e * e; if (best.length === k && d >= best[k - 1][0]) break; }
        if (best.length < k || d < best[k - 1][0]) {
          best.push([d, i]); best.sort((a, b) => a[0] - b[0]); if (best.length > k) best.pop();
        }
      }
      let z = [0, 0, 0], y = [0, 0, 0], ws = 0;
      for (const [d, i] of best) {
        const w = 1 / (d + 0.004), U = this.U, o = i * 9;
        z = add(z, sc([U[o + 2], U[o + 5], U[o + 8]], w)); y = add(y, sc([U[o + 1], U[o + 4], U[o + 7]], w)); ws += w;
      }
      z = unit(z); y = unit(sub(y, sc(z, dot(y, z)))); const xx = cross(y, z);
      const R = [xx[0], y[0], z[0], xx[1], y[1], z[1], xx[2], y[2], z[2]];
      // how much the neighbours agree on where the upper arm is (rad): a held arm-forward pose is ambiguous
      let spread = 0;
      for (const [d, i] of best) { const o = i * 9; spread += Math.acos(Math.max(-1, Math.min(1, -(this.U[o + 2] * -z[0] + this.U[o + 5] * -z[1] + this.U[o + 8] * -z[2])))) / best.length; }
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
    // arms
    const arms = {};
    for (const side of ['l', 'r']) {
      const a = (p.arms && p.arms[side]) || {}, sgn = side === 'l' ? 1 : -1;
      const U = mul(Tr, mul(ry(-(a.f || 0) * D2R), rx(sgn * (a.a || 0) * D2R)));
      const F = mul(U, mul(ry(-(a.e || 0) * D2R), rz(sgn * (a.p || 0) * D2R)));
      arms[side] = { U, F };
    }
    // pelvis x: balance the body over the supporting feet (same mass model as the solver)
    const one = sm(kneeUp * 4);          // weight moves onto the right foot as the left one leaves the floor
    const supX = (1 - one) * (feet.l[0] + feet.r[0]) / 2 + one * feet.r[0] + d.footFwd;
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
  function makeRig(seed) {
    let s = seed || 7;
    const rnd = () => { s = (s * 16807) % 2147483647; return s / 2147483647; };
    const mount = (z, x, spin, tilt) => {
      const y = cross(z, x);
      const M = [x[0], y[0], z[0], x[1], y[1], z[1], x[2], y[2], z[2]];   // sensor → segment
      return mul(mul(M, rz(spin)), rx(tilt));
    };
    const rig = {};
    const ids = ['A1F0', 'B2E1', 'C3D2', 'D4C3', 'E5B4'];
    const roles = ROLES.slice().sort(() => rnd() - 0.5);    // the test does not know who is where
    roles.forEach((r, i) => {
      const spin = (rnd() * 2 - 1) * Math.PI, tilt = (rnd() * 2 - 1) * 8 * D2R;
      let M;
      if (r === 'back') M = mount([-1, 0, 0], [0, 0, 1], spin, (rnd() * 2 - 1) * 15 * D2R);
      else if (r === 'lwrist' || r === 'lshank') M = mount([0, 1, 0], [0, 0, -1], spin, tilt);
      else M = mount([0, -1, 0], [0, 0, -1], spin, tilt);
      rig[ids[i]] = { role: r, M, psi: (rnd() * 2 - 1) * Math.PI };
    });
    return rig;
  }
  // segment rotation and sensor position of one role at time t
  // ---------- one pose, whatever made it (the scripted person or a real mocap recording): segment rotations in W
  // (identity in the zero pose; z = towards the body / up) and joint points. Sensors, truth and the "ghost" use it.
  function scriptFrame(b, d) {
    const R = { trunk: b.Tr, pelvis: b.Tr }, J = {};
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
  function sensorOnFrame(f, role) {
    const s = role[0] === 'l' ? 'l' : 'r', sgn = s === 'l' ? 1 : -1;
    if (role === 'back') return { R: f.R.trunk, p: add(f.J.neck, mv(f.R.trunk, [-0.08, 0, -0.06])) };
    if (role.endsWith('wrist')) return { R: f.R[s + 'fore'], p: add(f.J[s + 'wrist'], mv(f.R[s + 'fore'], [0, sgn * 0.03, 0.03])) };
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
    static script(dim) { return new Timeline([{ kind: 'script', name: 'script', from: 0, len: scriptLength(), script: SCRIPT }], dim); }
  }

  // ideal 6-axis sensor output at t (orientation in its own gravity frame, gyro °/s, accel g — sensor frame)
  function simSample(t, rig, id, src, h) {
    h = h || 0.004;
    const r = rig[id];
    const at = (tt) => { const s = sensorOnFrame(src.frame(tt), r.role); return { R: mul(s.R, r.M), p: s.p }; };
    const a = at(t - h), m = at(t), c = at(t + h);
    const dR = mul(T(m.R), c.R.map((x, i) => (x - a.R[i]) / (2 * h)));
    const w = [(dR[7] - dR[5]) / 2, (dR[2] - dR[6]) / 2, (dR[3] - dR[1]) / 2];
    const acc = add(sc(add(sub(c.p, m.p), sub(a.p, m.p)), 1 / (h * h)), [0, 0, G]);
    return { t, R: m.R, q: mToQ(mul(rz(r.psi), m.R)), gyro: sc(w, R2D), acc: sc(mv(T(m.R), acc), 1 / G), still: false };
  }

  const api = { ROLES, ROLE_BG, ROLE_LED, Calibration, Body, RepCounter, ArmPrior, decodeFrame, bodyDims,
    sim: { SCRIPT, scriptAt, scriptLength, simBody, makeRig, simSample, ikLeg, scriptFrame, blendFrames, sensorOnFrame, truthAngles, Mocap, Timeline },
    m: { mul, T, mv, rot, rx, ry, rz, logm, expm, qToM, mToQ, yawOf, angBetween, add, sub, sc, dot, cross, norm, unit, D2R, R2D } };
  if (typeof module !== 'undefined' && module.exports) module.exports = api; else root.XemsMotion = api;
})(typeof self !== 'undefined' ? self : this);
