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
      this.style = 'human'; this.H = 1.75;
      this.fig = new Figure('human', this.H); this.scene.add(this.fig.root);
      this.ghost = new Figure('ghost', this.H); this.scene.add(this.ghost.root); this.ghost.root.visible = false;
      this.channels = {};
      this.bindControls();
    }
    setStyle(style, H) {
      if (style === this.style && (H || this.H) === this.H) return;
      this.style = style; this.H = H || this.H;
      this.scene.remove(this.fig.root); this.fig = new Figure(style, this.H); this.scene.add(this.fig.root);
      this.scene.remove(this.ghost.root); this.ghost = new Figure('ghost', this.H); this.scene.add(this.ghost.root); this.ghost.root.visible = false;
      this.fig.setChannels(this.channels);
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
        this.fig.root.visible = true; this.fig.set(sh(pose));
        const pel = v3(pose.J.pelvis);
        this.target.lerp(new T3.Vector3(pel.x, Math.max(0.6, pel.y - floor - 0.02), pel.z), 0.08);
        if (truth) {
          // stand the truth where the estimate stands: same floor, its feet centred on the estimate's feet
          const tf = Math.min(truth.J.lankle[2], truth.J.rankle[2]) - 0.07 * this.fig.k;
          const dx = (pose.J.lankle[0] + pose.J.rankle[0] - truth.J.lankle[0] - truth.J.rankle[0]) / 2;
          const dy = (pose.J.lankle[1] + pose.J.rankle[1] - truth.J.lankle[1] - truth.J.rankle[1]) / 2;
          const out = {}; for (const n in truth.J) out[n] = [truth.J[n][0] + dx, truth.J[n][1] + dy, truth.J[n][2] - tf];
          this.ghost.root.visible = true; this.ghost.set({ J: out, R: truth.R });
        } else this.ghost.root.visible = false;
      } else { this.fig.root.visible = false; this.ghost.root.visible = false; }
      const { yaw, pitch, dist } = this.view;
      this.camera.position.set(this.target.x + dist * Math.sin(yaw) * Math.cos(pitch), this.target.y + dist * Math.sin(pitch) + 0.2, this.target.z + dist * Math.cos(yaw) * Math.cos(pitch));
      this.camera.lookAt(this.target);
      this.sun.position.set(this.target.x + 2.5, 5, this.target.z + 3.5); this.sun.target.position.copy(this.target);
      this.renderer.render(this.scene, this.camera);
    }
  }
  root.XemsBody3D = { Body3D, Figure };
})(typeof self !== 'undefined' ? self : this);
