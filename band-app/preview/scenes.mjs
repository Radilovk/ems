/** Mock XEMS states for preview/render.mjs — one entry per screen worth looking at. */

const hh = [92, 95, 101, 108, 112, 118, 121, 125, 128, 131, 134, 138, 140, 142, 139, 136, 141, 145, 148, 151,
  149, 146, 150, 153, 156, 158, 155, 152, 149, 147]

const base = {
  v: 2, seq: 1, hr: 142, z: 3, lim: 170, el: 754, avg: 131, max: 158, hh,
  ch: [55, 62, 48, 40, 30, 70, 85, 66, 52, 44], ms: 42, zt: [60, 180, 240, 120, 30],
  lic: null
}

const mods = (m) => ({ tr: {}, tm: {}, mu: {}, hg: {}, ...m })

const manual = { ...base, mode: 'manual', st: 'run', mods: mods({ tr: { run: 1 } }) }
const aiRun = {
  ...base, mode: 'ai', st: 'run', ph: 'Сила', pi: 2, pd: 300, pl: 124, pds: [1, 2, 3, 4, 5], u: 95,
  kcal: 186, can: { plus: 1, minus: 1, dbl: 1 }, dbl: 1, mods: mods({ hg: { en: 1, ai: 1 } })
}
const music = {
  ...base, mode: 'music', mods: mods({ tr: { run: 1 }, mu: { on: 1, play: 1, title: 'Daft Punk — Harder, Better, Faster', pos: 96, dur: 224, lvl: 64, ceil: 70 } })
}
const timer = { ...base, mode: 'manual', mods: mods({ tr: { run: 1 }, tm: { arm: 1, run: 1, left: 17, int: 45, loop: 3, loops: 8 } }) }
const pulse = { ...base, mode: 'manual', mods: mods({ tr: { run: 1 }, hg: { en: 1, sf: 90 } }) }
const idle = { ...base, hr: 0, z: 0, el: 0, mode: 'idle', st: 'idle', ch: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], ms: 0, mods: mods({}) }

export const SCENES = [
  { page: 'index', name: 'offline', state: null },
  { page: 'index', name: 'idle', state: idle },
  { page: 'index', name: 'running', state: { ...manual, mods: mods({ tr: { run: 1 }, tm: { arm: 1, run: 1, left: 17, loop: 3, loops: 8 }, hg: { en: 1, sf: 90 } }) } },
  { page: 'index', name: 'running-scroll', state: { ...manual, mods: mods({ tr: { run: 1 }, tm: { arm: 1, run: 1, left: 17, loop: 3, loops: 8 }, mu: { on: 1, play: 1, title: 'Daft Punk' }, hg: { en: 1, sf: 90 } }) }, scrollY: 400 },
  { page: 'train', name: 'idle', state: { ...idle, ch: [20, 25, 30, 18, 10, 22, 35, 28, 26, 19] } },
  { page: 'train', name: 'running', state: manual },
  { page: 'train', name: 'channels', state: manual, scrollY: 420 },
  { page: 'train', name: 'stop', state: manual, scrollY: 1250 },
  { page: 'train', name: 'slider', state: manual, set: { slideOn: true, slideName: 'Гръб', slideVal: '85', slideColor: '#FFFFFF', slideFill: '#FF453A', slideFillH: 355, slideKnobB: 337 } },
  { page: 'ai', name: 'idle', state: idle },
  { page: 'ai', name: 'live', state: aiRun },
  { page: 'ai', name: 'rest', state: { ...aiRun, st: 'rest', rl: 48 } },
  { page: 'ai', name: 'power', state: aiRun, cur: 'power' },
  { page: 'ai', name: 'dbl', state: aiRun, cur: 'dbl' },
  { page: 'ai', name: 'stop', state: aiRun, cur: 'stop' },
  { page: 'ai', name: 'stats', state: aiRun, cur: 'stats' },
  { page: 'timer', name: 'off', state: idle },
  { page: 'timer', name: 'run', state: timer },
  { page: 'timer', name: 'wait', state: { ...timer, mods: mods({ tm: { arm: 1, left: 45, int: 45, loop: 1, loops: 8 } }) } },
  { page: 'music', name: 'off', state: idle },
  { page: 'music', name: 'main', state: music },
  { page: 'music', name: 'skip', state: music, cur: 'skip' },
  { page: 'music', name: 'ceil', state: music, cur: 'ceil' },
  { page: 'pulse', name: 'hr', state: pulse },
  { page: 'pulse', name: 'auto', state: pulse, cur: 'auto' },
  { page: 'pulse', name: 'chart', state: pulse, cur: 'chart' },
  { page: 'summary', name: 'done', state: manual, summary: { kind: 'manual', dur: 1520, kcal: 245, avg: 131, max: 158, zt: [60, 180, 240, 120, 30] } }
]
