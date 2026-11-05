// XEMS Motion — the 3-D body (three.js r158, vendor/three-r158.min.js, MIT). A figure built from shaped segments
// (lathe profiles: thigh, calf, chest…), posed every frame with the solver's segment rotations and joint points, so
// it moves exactly as the five sensors say. Every muscle zone is its own mesh named by the XEMS suit channel under it
// (Гърди, Корем, Гръб, Кръст, Глутеус, Трапец, Предно / Задно бедро, Прасец, Ръце) → setChannels() makes them glow:
// the hook for the impulse sync that comes next. Styles: 'human' (mannequin in a suit), 'robot' (Android-style,
// Google CC BY 3.0), 'ghost' (the true movement in the demo, translucent orange).
// World W of motion-core.js: x forward, y left, z up  →  three.js: X = y, Y = z, Z = x (right-handed, the person
// faces the camera at +Z, the person's left shows on the screen's right).
(function (root) {
  'use strict';
  const T3 = root.THREE;
  // P turned by the least rotation that brings its z axis onto C's (no twist about the bone)
  function swing(P, C) {
    const a = [P[2], P[5], P[8]], b = [C[2], C[5], C[8]];
    const cx = a[1] * b[2] - a[2] * b[1], cy = a[2] * b[0] - a[0] * b[2], cz = a[0] * b[1] - a[1] * b[0];
    const c = Math.max(-1, Math.min(1, a[0] * b[0] + a[1] * b[1] + a[2] * b[2])), sn = Math.hypot(cx, cy, cz);
    if (sn < 1e-6) return c > 0 ? P.slice() : C.slice();
    const x = cx / sn, y = cy / sn, z = cz / sn, ang = Math.atan2(sn, c), co = Math.cos(ang), si = Math.sin(ang), t = 1 - co;
    const Rr = [t * x * x + co, t * x * y - si * z, t * x * z + si * y, t * x * y + si * z, t * y * y + co, t * y * z - si * x, t * x * z - si * y, t * y * z + si * x, t * z * z + co];
    const out = new Array(9);
    for (let i = 0; i < 3; i++) for (let j = 0; j < 3; j++) out[3 * i + j] = Rr[3 * i] * P[j] + Rr[3 * i + 1] * P[3 + j] + Rr[3 * i + 2] * P[6 + j];
    return out;
  }
  const m3 = (A, B) => { const o = new Array(9); for (let i = 0; i < 3; i++) for (let j = 0; j < 3; j++) o[3 * i + j] = A[3 * i] * B[j] + A[3 * i + 1] * B[3 + j] + A[3 * i + 2] * B[6 + j]; return o; };
  const m3T = (A) => [A[0], A[3], A[6], A[1], A[4], A[7], A[2], A[5], A[8]];
  const rotAx = (x, y, z, ang) => { const n = Math.hypot(x, y, z) || 1; x /= n; y /= n; z /= n; const c = Math.cos(ang), si = Math.sin(ang), t = 1 - c;
    return [t * x * x + c, t * x * y - si * z, t * x * z + si * y, t * x * y + si * z, t * y * y + c, t * y * z - si * x, t * x * z - si * y, t * y * z + si * x, t * z * z + c]; };
  // the upper arm drawn from the chest by swing only — but measured from a reference the arm can never reach (pointing
  // back across the body, through the trunk): plain swing from "arm down" is undefined with the arm straight overhead
  // (the owner's shoulder / biceps artefacts, 2026-11-05) and flips round it. A fixed twist puts arm-down back to rest.
  function armFrame(Tr, U, sg) {
    const a = [-0.5, -0.85 * sg, 0.15], n = Math.hypot(...a), ax = [a[0] / n, a[1] / n, a[2] / n];
    const A = rotAx(-ax[1], ax[0], 0, Math.acos(Math.max(-1, Math.min(1, ax[2]))));   // z → the unreachable direction
    const Ref = m3(Tr, A), W = swing(Ref, U), W0 = swing(Ref, Tr);
    return m3(W, m3(m3T(W0), Tr));
  }
  // the shoulder girdle follows the arm (scapulohumeral rhythm ≈ 2:1 past 30°): the clavicle lifts with the arm, so the
  // shoulder's skin is not torn as the arm goes up
  function clavFrame(Tr, U) {
    const dn = [-Tr[2], -Tr[5], -Tr[8]], arm = [-U[2], -U[5], -U[8]];
    const e = Math.acos(Math.max(-1, Math.min(1, dn[0] * arm[0] + dn[1] * arm[1] + dn[2] * arm[2])));
    const ang = Math.min(35, Math.max(0, (e * 180 / Math.PI - 30) * 0.25)) * Math.PI / 180;
    const cx = dn[1] * arm[2] - dn[2] * arm[1], cy = dn[2] * arm[0] - dn[0] * arm[2], cz = dn[0] * arm[1] - dn[1] * arm[0];
    return ang > 0 && Math.hypot(cx, cy, cz) > 1e-4 ? m3(rotAx(cx, cy, cz, ang), Tr) : Tr;
  }
  const v3 = (p) => new T3.Vector3(p[1], p[2], p[0]);
  function q3(R) {                     // W rotation (row-major 3×3) → three quaternion (M R Mᵀ, M = rows y, z, x)
    const idx = [1, 2, 0], m = new T3.Matrix4();
    const r = (i, j) => R[3 * idx[i] + idx[j]];
    m.set(r(0, 0), r(0, 1), r(0, 2), 0, r(1, 0), r(1, 1), r(1, 2), 0, r(2, 0), r(2, 1), r(2, 2), 0, 0, 0, 0, 1);
    return new T3.Quaternion().setFromRotationMatrix(m);
  }

  // radius profiles (m, for 1.75 m), t = 0 at the joint the segment hangs from
  const PROF = {
    thigh: [[0, 0.088], [0.12, 0.09], [0.45, 0.078], [0.8, 0.06], [1, 0.054]],
    shank: [[0, 0.054], [0.22, 0.06], [0.45, 0.054], [0.8, 0.038], [1, 0.034]],
    upper: [[0, 0.05], [0.3, 0.048], [0.7, 0.041], [1, 0.037]],
    fore: [[0, 0.038], [0.25, 0.04], [0.75, 0.029], [1, 0.027]],
    trunk: [[0, 0.115], [0.1, 0.15], [0.24, 0.142], [0.4, 0.122], [0.55, 0.13], [0.72, 0.15], [0.86, 0.15], [0.96, 0.12], [1, 0.07]],
  };
  // zones along a segment: [t0, t1, front channel, back channel]
  const ZONES = {
    thigh: [[0, 1, 'Предно бедро', 'Задно бедро']],
    shank: [[0, 1, null, 'Прасец']],
    upper: [[0, 1, 'Ръце', 'Ръце']],
    fore: [[0, 1, null, null]],
    trunk: [[0, 0.24, null, 'Глутеус'], [0.24, 0.5, 'Корем', 'Кръст'], [0.5, 0.86, 'Гърди', 'Гръб'], [0.86, 1, 'Гърди', 'Трапец']],
  };
  function interp(prof, t) {
    for (let i = 1; i < prof.length; i++) if (t <= prof[i][0]) {
      const [a, ra] = prof[i - 1], [b, rb] = prof[i], u = (t - a) / (b - a || 1);
      return ra + (rb - ra) * (0.5 - 0.5 * Math.cos(Math.PI * u));
    }
    return prof[prof.length - 1][1];
  }

  class Figure {
    constructor(style, H) {
      this.style = style; this.k = (H || 1.75) / 1.75;
      this.root = new T3.Group();
      this.zones = {};            // channel → [materials]
      this.parts = {};
      const ghost = style === 'ghost', robot = style === 'robot';
      const baseCol = ghost ? 0xff9f0a : robot ? 0x3ddc84 : 0xd8dce2;
      this.mat = (ch) => {
        const m = new T3.MeshStandardMaterial({ color: baseCol, roughness: robot ? 0.35 : 0.62, metalness: robot ? 0.05 : 0.02,
          transparent: ghost, opacity: ghost ? 0.3 : 1, depthWrite: !ghost });
        if (ch) (this.zones[ch] = this.zones[ch] || []).push(m);
        return m;
      };
      const k = this.k;
      // limbs and trunk: lathe pieces along +Y (unit length, scaled to the real segment length every frame)
      const seg = (name, kind, flip) => {
        const g = new T3.Group(), inner = new T3.Group();
        g.add(inner);
        if (flip) inner.rotation.x = Math.PI;          // limbs hang from their joint: the distal end is −z of W
        const prof = robot ? [[0, 1], [1, 1]].map(([t]) => [t, (kind === 'trunk' ? 0.13 : kind === 'thigh' || kind === 'shank' ? 0.055 : 0.042)]) : PROF[kind];
        for (const [t0, t1, front, back] of (robot && kind === 'trunk' ? [[0, 1, 'Корем', 'Гръб']] : ZONES[kind])) {
          for (const [side, ch] of [['f', front], ['b', back]]) {
            const pts = [];
            for (let i = 0; i <= 14; i++) { const t = t0 + (t1 - t0) * i / 14; pts.push(new T3.Vector2(interp(prof, t) * k, t)); }
            // lathe φ = 0 faces +Z (forward); a flipped limb faces back, so its halves swap
            const front = (side === 'f') !== !!flip;
            const geo = new T3.LatheGeometry(pts, 24, front ? -Math.PI / 2 : Math.PI / 2, Math.PI);
            const mesh = new T3.Mesh(geo, this.mat(ch));
            mesh.castShadow = !ghost;
            inner.add(mesh);
          }
        }
        if (kind === 'trunk') inner.scale.set(robot ? 1.15 : 1, 1, robot ? 0.75 : 0.66);
        this.root.add(g);
        this.parts[name] = { g, inner, kind, flip };
      };
      seg('trunk', 'trunk', false);
      for (const s of ['l', 'r']) {
        seg(s + 'thigh', 'thigh', true); seg(s + 'shank', 'shank', true);
        seg(s + 'upper', 'upper', true); seg(s + 'fore', 'fore', true);
      }
      // joints (round, so segments meet smoothly), head, neck, hands, feet
      const ball = (r, ch) => { const m = new T3.Mesh(new T3.SphereGeometry(r * k, 20, 14), this.mat(ch)); m.castShadow = !ghost; this.root.add(m); return m; };
      this.balls = {};
      for (const s of ['l', 'r']) {
        this.balls[s + 'hip'] = ball(robot ? 0.055 : 0.072); this.balls[s + 'knee'] = ball(robot ? 0.055 : 0.054); this.balls[s + 'ankle'] = ball(robot ? 0.055 : 0.036);
        this.balls[s + 'sh'] = ball(robot ? 0.042 : 0.058, 'Трапец'); this.balls[s + 'elbow'] = ball(robot ? 0.042 : 0.038); this.balls[s + 'wrist'] = ball(robot ? 0.042 : 0.028);
      }
      this.head = new T3.Group(); this.root.add(this.head);
      if (robot) {
        const dome = new T3.Mesh(new T3.SphereGeometry(0.13 * k, 28, 16, 0, Math.PI * 2, 0, Math.PI / 2), this.mat());
        dome.position.y = 0.05 * k; this.head.add(dome);
        for (const sx of [-1, 1]) {
          const ant = new T3.Mesh(new T3.CylinderGeometry(0.008 * k, 0.008 * k, 0.07 * k, 8), this.mat());
          ant.position.set(sx * 0.065 * k, 0.05 * k + 0.13 * k, 0); ant.rotation.z = -sx * 0.5; this.head.add(ant);
          const eye = new T3.Mesh(new T3.SphereGeometry(0.014 * k, 10, 8), new T3.MeshStandardMaterial({ color: 0xffffff }));
          eye.position.set(sx * 0.05 * k, 0.05 * k + 0.06 * k, 0.11 * k); this.head.add(eye);
        }
      } else {
        const neck = new T3.Mesh(new T3.CylinderGeometry(0.045 * k, 0.05 * k, 0.08 * k, 16), this.mat('Трапец'));
        neck.position.y = 0.04 * k; this.head.add(neck);
        const skull = new T3.Mesh(new T3.SphereGeometry(0.1 * k, 28, 20), this.mat());
        skull.scale.set(0.82, 1.05, 0.95); skull.position.set(0, 0.17 * k, 0.005 * k); skull.castShadow = !ghost; this.head.add(skull);
        if (!ghost) {                                  // a hint of a face so the facing is obvious
          const nose = new T3.Mesh(new T3.SphereGeometry(0.016 * k, 10, 8), this.mat());
          nose.position.set(0, 0.16 * k, 0.095 * k); this.head.add(nose);
        }
      }
      this.hands = {}; this.feet = {};
      for (const s of ['l', 'r']) {
        const h = new T3.Mesh(new T3.SphereGeometry(0.045 * k, 16, 12), this.mat()); h.scale.set(0.55, 1.35, 0.95); h.castShadow = !ghost;
        this.root.add(h); this.hands[s] = h;
        const f = new T3.Mesh(new T3.CapsuleGeometry(0.038 * k, 0.15 * k, 6, 12), this.mat()); f.castShadow = !ghost;
        this.root.add(f); this.feet[s] = f;
      }
      // the five sensors where they sit (not on the ghost)
      this.sensors = {};
      if (!ghost) {
        const sm = new T3.MeshStandardMaterial({ color: 0x1d2633, roughness: 0.4 });
        for (const r of ['back', 'lwrist', 'rwrist', 'lshank', 'rshank']) {
          const b = new T3.Mesh(new T3.BoxGeometry(0.035 * k, 0.012 * k, 0.03 * k), sm.clone());
          this.root.add(b); this.sensors[r] = b;
        }
      }
    }
    // pose: { J: joint points (W), R: segment rotations (W) }
    set(pose) {
      const J = pose.J, R = pose.R, k = this.k;
      const place = (name, from, to, rot, extra) => {
        const p = this.parts[name]; if (!p || !J[from] || !J[to] || !rot) return;
        const a = v3(J[from]), b = v3(J[to]);
        p.g.position.copy(a); p.g.quaternion.copy(q3(rot));
        p.inner.scale.y = (p.flip ? 1 : 1) * a.distanceTo(b) + (extra || 0);
        if (p.kind === 'trunk') p.inner.position.y = 0;
      };
      // trunk from below the hips (the glutes hang below the hip joints) up to the neck
      const Tr = R.trunk;
      const up = [Tr[2], Tr[5], Tr[8]];
      const low = [J.pelvis[0] - up[0] * 0.08 * k, J.pelvis[1] - up[1] * 0.08 * k, J.pelvis[2] - up[2] * 0.08 * k];
      const tp = this.parts.trunk;
      tp.g.position.copy(v3(low)); tp.g.quaternion.copy(q3(Tr));
      tp.inner.scale.y = v3(low).distanceTo(v3(J.neck)) + 0.02 * k;
      for (const s of ['l', 'r']) {
        place(s + 'thigh', s + 'hip', s + 'knee', R[s + 'thigh']); place(s + 'shank', s + 'knee', s + 'ankle', R[s + 'shank']);
        place(s + 'upper', s + 'sh', s + 'elbow', R[s + 'upper']); place(s + 'fore', s + 'elbow', s + 'wrist', R[s + 'fore']);
        for (const j of ['hip', 'knee', 'ankle', 'sh', 'elbow', 'wrist']) this.balls[s + j].position.copy(v3(J[s + j]));
        // hand: past the wrist along the forearm
        const F = R[s + 'fore'], dn = [-F[2], -F[5], -F[8]];
        this.hands[s].position.copy(v3([J[s + 'wrist'][0] + dn[0] * 0.07 * k, J[s + 'wrist'][1] + dn[1] * 0.07 * k, J[s + 'wrist'][2] + dn[2] * 0.07 * k]));
        this.hands[s].quaternion.copy(q3(F));
        // foot: from the heel forward, along the shank's heading, flat unless the leg says otherwise
        const Sh = R[s + 'shank'], yaw = Math.atan2(-Sh[1], Sh[4]);
        const fx = Math.cos(yaw), fy = Math.sin(yaw), A = J[s + 'ankle'];
        this.feet[s].position.copy(v3([A[0] + fx * 0.06 * k, A[1] + fy * 0.06 * k, A[2] - 0.045 * k]));
        this.feet[s].quaternion.setFromAxisAngle(new T3.Vector3(0, 1, 0), -yaw).multiply(new T3.Quaternion().setFromAxisAngle(new T3.Vector3(1, 0, 0), Math.PI / 2));
      }
      this.head.position.copy(v3(J.neck)); this.head.quaternion.copy(q3(R.head || Tr));
      // sensors: back between the shoulder blades, wrists like a watch, shanks on the outer side above the ankle
      const put = (r, P, Rs, off) => { const b = this.sensors[r]; if (!b) return; const o = [Rs[0] * off[0] + Rs[1] * off[1] + Rs[2] * off[2], Rs[3] * off[0] + Rs[4] * off[1] + Rs[5] * off[2], Rs[6] * off[0] + Rs[7] * off[1] + Rs[8] * off[2]];
        b.position.copy(v3([P[0] + o[0], P[1] + o[1], P[2] + o[2]])); b.quaternion.copy(q3(Rs)); };
      if (this.sensors.back) {
        put('back', J.neck, Tr, [-0.1 * k, 0, -0.1 * k]);
        for (const s of ['l', 'r']) {
          const sg = s === 'l' ? 1 : -1;
          put(s + 'wrist', J[s + 'wrist'], R[s + 'fore'], [0, sg * 0.032 * k, 0.04 * k]);
          put(s + 'shank', J[s + 'ankle'], R[s + 'shank'], [0, sg * 0.05 * k, 0.1 * k]);
        }
      }
    }
    // impulse hook: { 'Предно бедро': 0..1, … } → those zones glow
    setChannels(map, color) {
      const c = new T3.Color(color || 0x0a84ff);
      for (const ch in this.zones) {
        const v = Math.max(0, Math.min(1, (map && map[ch]) || 0));
        for (const m of this.zones[ch]) { m.emissive.copy(c); m.emissiveIntensity = v * 0.9; }
      }
    }
    lightSensors(colors) {                            // the sensors' LED colours after calibration
      for (const r in this.sensors) { const m = this.sensors[r].material; if (colors && colors[r]) { m.emissive.set(colors[r]); m.emissiveIntensity = 0.8; } else m.emissiveIntensity = 0; }
    }
  }


  // ---------- the XEMS VR coach: "White Android Robot" by Cedric Ricci (CC BY 4.0), models/android.js. A real rigged
  // model (UE bone names, arms-down rest pose = our zero pose, faces +Z, left = +X). Every bone gets its world rotation
  // = (segment rotation since the zero pose) · (its rest world rotation); positions stay the model's own, the pelvis
  // goes where the solver puts it and the feet stand on the floor.
  let GLB = null;
  function glbBuffer() {
    if (GLB) return GLB;
    const b64 = root.XEMS_ANDROID_GLB; if (!b64) return null;
    const bin = atob(b64), u = new Uint8Array(bin.length);
    for (let i = 0; i < bin.length; i++) u[i] = bin.charCodeAt(i);
    return (GLB = u.buffer);
  }
  const ORDER = ['pelvis', 'spine_01', 'spine_02', 'spine_03', 'neck_01', 'head', 'clavicle_l', 'upperarm_l', 'lowerarm_l', 'hand_l',
    'clavicle_r', 'upperarm_r', 'lowerarm_r', 'hand_r', 'thigh_l', 'calf_l', 'foot_l', 'ball_l', 'thigh_r', 'calf_r', 'foot_r', 'ball_r'];
  // The model's skin ties ~20 hip vertices (next to the hanging hands) to the hand / forearm bones: raise the arm and
  // they are dragged up with it — the long spikes from the armpit to the hip (owner 2026-11-05, "shoulder / biceps
  // defects"). A vertex nearer the body's bones than the arm's loses its arm weights to the nearest body bone.
  function fixArmSkin(o) {
    const sk = o.skeleton, names = sk.bones.map((x) => x.name), pos = o.geometry.attributes.position;
    const si = o.geometry.attributes.skinIndex, sw = o.geometry.attributes.skinWeight;
    const bp = sk.boneInverses.map((m) => new T3.Vector3().setFromMatrixPosition(m.clone().invert()));
    const ix = (n) => names.indexOf(n), P = (n) => bp[ix(n)];
    if (['pelvis', 'spine_03', 'upperarm_l', 'lowerarm_l', 'hand_l', 'thigh_l', 'calf_l'].some((n) => ix(n) < 0)) return;
    const segD = (v, a, c) => { const ab = c.clone().sub(a), t = Math.max(0, Math.min(1, v.clone().sub(a).dot(ab) / ab.lengthSq())); return v.distanceTo(a.clone().add(ab.multiplyScalar(t))); };
    const v = new T3.Vector3(); let fixed = 0;
    for (const sd of ['l', 'r']) {
      const S = P('upperarm_' + sd), E = P('lowerarm_' + sd), W = P('hand_' + sd), Hd = W.clone().add(W.clone().sub(E).multiplyScalar(0.6));
      const arm = ['upperarm_', 'lowerarm_', 'hand_'].map((n) => ix(n + sd));
      const body = [['pelvis', 'spine_03'], ['spine_03', 'neck_01'], ['thigh_' + sd, 'calf_' + sd], ['pelvis', 'thigh_' + sd]];
      for (let i = 0; i < pos.count; i++) {
        let w = 0; for (let k = 0; k < 4; k++) if (arm.includes(si.getComponent(i, k))) w += sw.getComponent(i, k);
        if (w < 0.005) continue;
        v.fromBufferAttribute(pos, i).applyMatrix4(o.bindMatrix);
        const dArm = Math.min(segD(v, S, E), segD(v, E, W), segD(v, W, Hd));
        let best = null, bd = Infinity;
        for (const [a, c] of body) { const d = segD(v, P(a), P(c)); if (d < bd) { bd = d; best = ix(a); } }
        if (bd >= dArm) continue;
        for (let k = 0; k < 4; k++) if (arm.includes(si.getComponent(i, k))) { si.setComponent(i, k, best); }
        fixed++;
      }
    }
    if (fixed) { si.needsUpdate = true; sw.needsUpdate = true; }
  }
  class RiggedFigure {
    constructor(style, H, onReady) {
      this.style = style; this.k = (H || 1.75) / 1.75; this.zones = {}; this.ready = false;
      this.root = new T3.Group();
      const buf = glbBuffer();
      if (!buf || !T3.GLTFLoader) throw new Error('no model');
      new T3.GLTFLoader().parse(buf.slice(0), '', (gltf) => {
        const sc = gltf.scene;
        this.root.add(sc);
        this.H0 = 1.62;                                  // the model's height (top of the head)
        const s = (H || 1.75) / this.H0;
        this.root.scale.setScalar(s); this.scale = s;
        sc.traverse((o) => {
          if (o.isMesh) {
            o.frustumCulled = false; o.castShadow = style !== 'ghost';
            if (style === 'ghost') o.material = new T3.MeshStandardMaterial({ color: 0xff9f0a, transparent: true, opacity: 0.3, depthWrite: false });
            else if (o.material) { o.material.roughness = Math.min(0.8, (o.material.roughness || 0.6)); }
          }
        });
        sc.traverse((o) => { if (o.isSkinnedMesh) fixArmSkin(o); });
        this.root.updateMatrixWorld(true);
        this.bones = {}; this.rest = {}; this.restPos = {};
        for (const n of ORDER) {
          const b = sc.getObjectByName(n); if (!b) continue;
          this.bones[n] = b; this.rest[n] = b.getWorldQuaternion(new T3.Quaternion());
          this.restPos[n] = b.getWorldPosition(new T3.Vector3());
        }
        this.armQ = this.bones.pelvis.parent.getWorldQuaternion(new T3.Quaternion());
        this.ready = true; if (onReady) onReady();
      }, (e) => { console.error('android model', e); });
    }
    set(pose, feet) {
      if (!this.ready) return;
      const R = pose.R, J = pose.J, Tr = q3(R.trunk), I = new T3.Quaternion();
      const Pv = q3(R.pelvis || R.trunk), part = (k) => Pv.clone().slerp(Tr, k);   // the spine bends pelvis → chest
      const yawQ = (Sh) => { const y = Math.atan2(-Sh[1], Sh[4]); return new T3.Quaternion().setFromAxisAngle(new T3.Vector3(0, 1, 0), y); };
      const seg = { pelvis: Pv, spine_01: part(0.35), spine_02: part(0.7), spine_03: Tr, neck_01: Tr, head: q3(R.head || R.trunk),
        clavicle_l: Tr, clavicle_r: Tr };
      for (const s of ['l', 'r']) {
        seg['thigh_' + s] = q3(R[s + 'thigh']); seg['calf_' + s] = q3(R[s + 'shank']);
        const fy = yawQ(R[s + 'shank']);
        // a foot on the floor stays flat; a foot in the air follows its shank
        seg['foot_' + s] = feet && feet[s] && feet[s].air ? q3(R[s + 'shank']) : fy; seg['ball_' + s] = seg['foot_' + s];
        // no twisted skin (owner 2026-11-04: "the 3-D model cuts, artefacts"): the upper arm and the forearm are drawn
        // with the least turn from their parent (swing only); the forearm's twist goes to the hand, as a real wrist shows
        const Ua = armFrame(R.trunk, R[s + 'upper'], s === 'l' ? 1 : -1), Fa = swing(Ua, R[s + 'fore']);
        seg['clavicle_' + s] = q3(clavFrame(R.trunk, R[s + 'upper']));
        seg['upperarm_' + s] = q3(Ua); seg['lowerarm_' + s] = q3(Fa); seg['hand_' + s] = q3(R[s + 'fore']);
      }
      const world = {};
      for (const n of ORDER) {
        const b = this.bones[n]; if (!b) continue;
        world[n] = seg[n].clone().multiply(this.rest[n]);
        const pq = b.parent === this.bones.pelvis.parent ? this.armQ : world[b.parent.name] || b.parent.getWorldQuaternion(new T3.Quaternion());
        b.quaternion.copy(pq.clone().invert().multiply(world[n]));
      }
      // the pelvis where the solver has it (horizontally), the feet on the floor (vertically)
      this.root.position.set(0, 0, 0); this.root.updateMatrixWorld(true);
      const pel = this.bones.pelvis.getWorldPosition(new T3.Vector3()), want = v3(J.pelvis);
      this.root.position.x += want.x - pel.x; this.root.position.z += want.z - pel.z;
      this.root.updateMatrixWorld(true);
      let low = Infinity;
      for (const s of ['l', 'r']) {
        if (feet && feet[s] && feet[s].air) continue;
        for (const n of ['foot_' + s, 'ball_' + s]) {
          const y = this.bones[n].getWorldPosition(new T3.Vector3()).y - this.restPos[n].y * this.scale;
          low = Math.min(low, y);
        }
      }
      if (!isFinite(low)) low = this.bones.foot_l.getWorldPosition(new T3.Vector3()).y - this.restPos.foot_l.y * this.scale;
      this.root.position.y -= low;
    }
    setChannels() {}
    lightSensors() {}
  }

  class Body3D {
    constructor(canvas) {
      this.canvas = canvas;
      this.renderer = new T3.WebGLRenderer({ canvas, antialias: true, alpha: true });
      this.renderer.setPixelRatio(Math.min(2, root.devicePixelRatio || 1));
      this.renderer.shadowMap.enabled = true; this.renderer.shadowMap.type = T3.PCFSoftShadowMap;
      this.renderer.outputColorSpace = T3.SRGBColorSpace;
      this.scene = new T3.Scene();
      this.camera = new T3.PerspectiveCamera(32, 1, 0.05, 50);
      this.view = { yaw: 0.55, pitch: 0.12, dist: 4.4 };
      this.target = new T3.Vector3(0, 0.95, 0);
      const hemi = new T3.HemisphereLight(0xffffff, 0x8a93a3, 1.1); this.scene.add(hemi);
      const sun = new T3.DirectionalLight(0xffffff, 1.6); sun.position.set(2.5, 5, 3.5); sun.castShadow = true;
      sun.shadow.mapSize.set(1024, 1024); Object.assign(sun.shadow.camera, { left: -2, right: 2, top: 2.5, bottom: -1, near: 0.5, far: 15 });
      this.scene.add(sun); this.scene.add(sun.target); this.sun = sun;
      // floor: a soft shadow catcher + a light grid
      this.floor = new T3.Mesh(new T3.PlaneGeometry(12, 12), new T3.ShadowMaterial({ opacity: 0.18 }));
      this.floor.rotation.x = -Math.PI / 2; this.floor.receiveShadow = true; this.scene.add(this.floor);
      this.grid = new T3.GridHelper(6, 24, 0x9aa3af, 0xc9ced6); this.grid.material.transparent = true; this.grid.material.opacity = 0.45;
      this.scene.add(this.grid);
      this.H = 1.75;
      this.style = root.XEMS_ANDROID_GLB && T3.GLTFLoader ? 'android' : 'human';
      this.build();
      this.channels = {};
      this.bindControls();
    }
    build() {
      if (this.fig) this.scene.remove(this.fig.root);
      if (this.ghost) this.scene.remove(this.ghost.root);
      const make = (st) => st === 'android' ? new RiggedFigure(st, this.H) : new Figure(st, this.H);
      this.fig = make(this.style);
      this.ghost = this.style === 'android' ? new RiggedFigure('ghost', this.H) : new Figure('ghost', this.H);
      this.scene.add(this.fig.root); this.scene.add(this.ghost.root); this.ghost.root.visible = false;
      this.fig.setChannels(this.channels || {});
    }
    setStyle(style, H) {
      if (style === this.style && (H || this.H) === this.H) return;
      this.style = style; this.H = H || this.H;
      this.build();
    }
    setChannels(map) { this.channels = map || {}; this.fig.setChannels(this.channels); }
    bindControls() {
      const c = this.canvas; let drag = null, pinch = null;
      c.addEventListener('pointerdown', (e) => { drag = { x: e.clientX, y: e.clientY, yaw: this.view.yaw, pitch: this.view.pitch }; c.setPointerCapture(e.pointerId); });
      c.addEventListener('pointermove', (e) => { if (!drag || pinch) return; this.view.yaw = drag.yaw - (e.clientX - drag.x) / 170; this.view.pitch = Math.max(-0.15, Math.min(1.3, drag.pitch + (e.clientY - drag.y) / 220)); });
      c.addEventListener('pointerup', () => { drag = null; });
      c.addEventListener('wheel', (e) => { e.preventDefault(); this.view.dist = Math.max(1.8, Math.min(9, this.view.dist * (1 + e.deltaY / 800))); }, { passive: false });
      c.addEventListener('touchstart', (e) => { if (e.touches.length === 2) pinch = { d: Math.hypot(e.touches[0].clientX - e.touches[1].clientX, e.touches[0].clientY - e.touches[1].clientY), dist: this.view.dist }; });
      c.addEventListener('touchmove', (e) => { if (pinch && e.touches.length === 2) { const d = Math.hypot(e.touches[0].clientX - e.touches[1].clientX, e.touches[0].clientY - e.touches[1].clientY); this.view.dist = Math.max(1.8, Math.min(9, pinch.dist * pinch.d / d)); } });
      c.addEventListener('touchend', () => { pinch = null; });
    }
    // pose (Body.solve) and, in the demo, the true frame; both carry J and R in W
    frame(pose, truth, dark) {
      const w = this.canvas.clientWidth, h = this.canvas.clientHeight;
      if (this.canvas.width !== Math.round(w * this.renderer.getPixelRatio())) { this.renderer.setSize(w, h, false); }
      this.camera.aspect = w / Math.max(1, h); this.camera.updateProjectionMatrix();
      this.grid.material.color && this.grid.material.color.set(dark ? 0x3a414c : 0xc9ced6);
      if (pose) {
        // stand the figure on the floor: its lowest ankle at ankle height
        const floor = Math.min(pose.J.lankle[2], pose.J.rankle[2]) - 0.07 * this.fig.k;
        const sh = (P) => { const out = {}; for (const n in P.J) out[n] = [P.J[n][0], P.J[n][1], P.J[n][2] - floor]; return { J: out, R: P.R }; };
        this.fig.root.visible = true; this.fig.set(sh(pose), pose.feet);
        const pel = v3(pose.J.pelvis);
        this.target.lerp(new T3.Vector3(pel.x, Math.max(0.6, pel.y - floor - 0.02), pel.z), 0.08);
        if (truth) {
          // stand the truth where the estimate stands: same floor, its feet centred on the estimate's feet
          const tf = Math.min(truth.J.lankle[2], truth.J.rankle[2]) - 0.07 * this.fig.k;
          const dx = (pose.J.lankle[0] + pose.J.rankle[0] - truth.J.lankle[0] - truth.J.rankle[0]) / 2;
          const dy = (pose.J.lankle[1] + pose.J.rankle[1] - truth.J.lankle[1] - truth.J.rankle[1]) / 2;
          const out = {}; for (const n in truth.J) out[n] = [truth.J[n][0] + dx, truth.J[n][1] + dy, truth.J[n][2] - tf];
          this.ghost.root.visible = true; this.ghost.set({ J: out, R: truth.R }, null);
        } else this.ghost.root.visible = false;
      } else { this.fig.root.visible = false; this.ghost.root.visible = false; }
      const { yaw, pitch, dist } = this.view;
      this.camera.position.set(this.target.x + dist * Math.sin(yaw) * Math.cos(pitch), this.target.y + dist * Math.sin(pitch) + 0.2, this.target.z + dist * Math.cos(yaw) * Math.cos(pitch));
      this.camera.lookAt(this.target);
      this.sun.position.set(this.target.x + 2.5, 5, this.target.z + 3.5); this.sun.target.position.copy(this.target);
      this.renderer.render(this.scene, this.camera);
    }
  }
  root.XemsBody3D = { Body3D, Figure, RiggedFigure };
})(typeof self !== 'undefined' ? self : this);
