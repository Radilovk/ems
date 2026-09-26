import router from '@system.router'

/**
 * Shared look and helpers for the XEMS band pages.
 * One design scale for the 212 × 520 screen: nothing smaller than 18 px, body 22 px,
 * key numbers 56–90 px.
 */
export const ZONE = ['#3A3A3C', '#5AC8FA', '#30D158', '#FFD60A', '#FF9F0A', '#FF453A']
export const ACCENT = '#FFD60A'          // AI: yellow
export const RED = '#FF453A'             // pulse
export const BRAND = '#FF3B5C'
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

/** HR zone colour; clamps bad values from XEMS so text never gets an undefined colour. */
export function zoneColor(z) {
  const i = Math.max(0, Math.min(ZONE.length - 1, z | 0))
  return ZONE[i]
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
  page.onScreen = true
  // A page under another one (home under Start…) does no work: the band has little CPU.
  const cb = () => {
    if (page.onScreen) {
      page.update()
    }
  }
  app.watch(cb)
  page.update()
  const clock = setInterval(cb, 1000)
  return () => {
    app.unwatch(cb)
    clearInterval(clock)
  }
}

/** onShow / onHide of a bound page. */
export function shown(page, on) {
  page.onScreen = on
  if (on) {
    page.update()
  }
}

/** Seconds since the last state when the thing counts down only while running. */
export function age(app, running) {
  return running ? app.silence() : 0
}

/** Monotonic local clock between integer el values from XEMS. */
export function liveSeconds(clock, el, running) {
  const e = el != null ? el : 0
  if (!running) {
    clock.base = e
    clock.at = 0
    return e
  }
  if (e !== clock.base) {
    clock.base = e
    clock.at = Date.now()
  } else if (!clock.at) {
    clock.at = Date.now()
  }
  return clock.base + (Date.now() - clock.at) / 1000
}

// ================================================================ paging (one thing per screen)


/** Page dots for {@code n} screens (visual only; big targets are the screens themselves). */
export function dots(i, n) {
  const out = []
  for (let k = 0; k < n; k++) {
    out.push({ on: k === i })
  }
  return out
}

/**
 * Set the screens a page has now (ids). Keeps the current screen when it still exists.
 * The page holds: ids, idx, cur, dots, anim.
 */
export function setPages(p, ids) {
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
  p.dots = dots(i, ids.length)
}

/**
 * Flick handling for every page: up / down = next / previous screen, right = back
 * (a page that listens to swipes must go back itself — the system gesture no longer reaches it).
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
  p.dots = dots(i, ids.length)
  p.$app.$def.buzz('short')
}
