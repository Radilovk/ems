/**
 * Shared look and helpers for the XEMS band pages.
 * One design scale for the 212 × 520 screen: nothing smaller than 18 px, body 22 px,
 * key numbers 56–90 px.
 */
export const ZONE = ['#3A3A3C', '#5AC8FA', '#30D158', '#FFD60A', '#FF9F0A', '#FF453A']
export const ACCENT = '#FF3B5C'
export const GREEN = '#30D158'
export const AMBER = '#FF9F0A'
export const BLUE = '#5AC8FA'
export const PURPLE = '#BF5AF2'
export const GRAY = '#8E8E93'

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
