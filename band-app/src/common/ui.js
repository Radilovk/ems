import router from '@system.router'

/**
 * XEMS Band v4 — shared look, tokens, and helpers for 212 × 520 AMOLED.
 */
export const THEME = {
  bg: '#000000',
  surface: '#1C1C1E',
  surfaceElevated: '#2C2C2E',
  border: '#3A3A3C',
  text: '#FFFFFF',
  textMuted: '#AEAEB2',
  textDim: '#636366',
  pressScale: 0.92,
  animFast: '120ms',
  animPage: '280ms',
  glowOpacity: 0.38
}

export const ZONE = ['#3A3A3C', '#5AC8FA', '#30D158', '#FFD60A', '#FF9F0A', '#FF453A']
export const ACCENT = '#FF3B5C'
export const ACCENT_DARK = '#C42A48'
export const GREEN = '#30D158'
export const GREEN_DARK = '#1F9A42'
export const AMBER = '#FF9F0A'
export const AMBER_DARK = '#CC7A00'
export const BLUE = '#5AC8FA'
export const BLUE_DARK = '#0A84FF'
export const PURPLE = '#BF5AF2'
export const PURPLE_DARK = '#8E44C9'
export const RED = '#FF453A'
export const GRAY = '#8E8E93'

/** Module registry — add new modules here for the home carousel. */
export const MODULES = {
  ai: { id: 'ai', title: 'AI сесия', icon: '/common/icons/ai.png', color: ACCENT, dark: ACCENT_DARK, route: '/pages/ai' },
  train: { id: 'train', title: 'Тренировка', icon: '/common/icons/bolt.png', color: GREEN, dark: GREEN_DARK, route: '/pages/train' },
  timer: { id: 'timer', title: 'Таймер', icon: '/common/icons/timer.png', color: AMBER, dark: AMBER_DARK, route: '/pages/timer' },
  music: { id: 'music', title: 'Музика', icon: '/common/icons/music.png', color: PURPLE, dark: PURPLE_DARK, route: '/pages/music' },
  pulse: { id: 'pulse', title: 'Пулс', icon: '/common/icons/heart.png', color: BLUE, dark: BLUE_DARK, route: '/pages/pulse' }
}

export const ROUTES = Object.fromEntries(Object.values(MODULES).map((m) => [m.id, m.route]))

export function mmss(s) {
  s = Math.max(0, Math.round(s || 0))
  const m = Math.floor(s / 60)
  const r = s % 60
  return m + ':' + (r < 10 ? '0' : '') + r
}

export function hms(s) {
  s = Math.max(0, Math.round(s || 0))
  const h = Math.floor(s / 3600)
  if (h <= 0) {
    return mmss(s)
  }
  const m = Math.floor((s % 3600) / 60)
  const r = s % 60
  return h + ':' + (m < 10 ? '0' : '') + m + ':' + (r < 10 ? '0' : '') + r
}

export function zoneOf(hr, lim) {
  if (!hr || !lim) {
    return 0
  }
  const f = hr / lim
  return f < 0.6 ? 1 : f < 0.7 ? 2 : f < 0.8 ? 3 : f < 0.9 ? 4 : 5
}

/** RGBA glow string for ambient backgrounds. */
export function glow(color, alpha) {
  const a = alpha != null ? alpha : 0.35
  if (!color || color[0] !== '#') {
    return 'rgba(0,0,0,0)'
  }
  const r = parseInt(color.slice(1, 3), 16)
  const g = parseInt(color.slice(3, 5), 16)
  const b = parseInt(color.slice(5, 7), 16)
  return 'rgba(' + r + ',' + g + ',' + b + ',' + a + ')'
}

/** Module blocks of the state (empty objects when XEMS is older or silent). */
export function mods(s) {
  const m = (s && s.mods) || {}
  return { tr: m.tr || {}, tm: m.tm || {}, mu: m.mu || {}, hg: m.hg || {} }
}

/**
 * Wire a page to the shared state: calls page.update() on every message and once a second
 * (local countdowns). Returns a function for onDestroy.
 */
export function bind(page) {
  const app = page.$app.$def
  const cb = () => page.update()
  app.watch(cb)
  page.update()
  const clock = setInterval(() => page.update(), 1000)
  return () => {
    app.unwatch(cb)
    clearInterval(clock)
  }
}

/** Seconds since the last state when the thing counts down only while running. */
export function age(app, running) {
  return running ? app.silence() : 0
}

/** Page dots for {@code n} screens (visual only; big targets are the screens themselves). */
export function dots(i, n, accent) {
  const out = []
  for (let k = 0; k < n; k++) {
    out.push({ on: k === i, accent: accent || '#FFFFFF' })
  }
  return out
}

/**
 * Set the screens a page has now (ids). Keeps the current screen when it still exists.
 */
export function setPages(p, ids, accent) {
  const key = ids.join(',')
  if (key === p.idsKey) {
    return
  }
  p.idsKey = key
  let i = ids.indexOf(p.cur)
  if (i < 0) {
    i = Math.max(0, Math.min(p.idx || 0, ids.length - 1))
  }
  p.ids = ids
  p.idx = i
  p.cur = ids[i]
  p.dots = dots(i, ids.length, accent)
  p.dotAccent = accent || '#FFFFFF'
}

/**
 * Flick handling: up / down = next / previous screen, right = back.
 */
export function swipe(p, e) {
  const d = e && e.direction
  if (d === 'right') {
    router.back()
    return
  }
  const ids = p.ids || []
  let i = p.idx || 0
  if (d === 'up' && i < ids.length - 1) {
    i++
    p.anim = 'in-up'
  } else if (d === 'down' && i > 0) {
    i--
    p.anim = 'in-down'
  } else {
    return
  }
  p.idx = i
  p.cur = ids[i]
  p.dots = dots(i, ids.length, p.dotAccent)
  p.$app.$def.buzz('short')
}

/** Touch press helpers for buttons. */
export function pressBtn(page, key) {
  page.pressed = key
}

export function releaseBtn(page) {
  page.pressed = ''
}
