/**
 * Jump from the home dial into the live session — once per session.
 * Swiping back to home does not fight the wearer (lastRouted stays set).
 */

export function sessionTarget(s) {
  if (!s) {
    return ''
  }
  if (s.mode === 'ai') {
    return 'ai'
  }
  const tr = (s.mods && s.mods.tr) || {}
  if ((s.mode === 'manual' || !s.mode) && (s.run || tr.run)) {
    return 'train'
  }
  const tm = (s.mods && s.mods.tm) || {}
  if (tm.run) {
    return 'timer'
  }
  return ''
}

/**
 * @param {string} lastRouted  session we already sent the wearer into
 * @param {string} page        current page id (index/train/ai/…)
 * @param {string} target      sessionTarget(state)
 * @returns {{ route: string, routed: string }}
 */
export function shouldRoute(lastRouted, page, target) {
  if (!target) {
    return { route: '', routed: '' }
  }
  if (page === target) {
    return { route: '', routed: target }
  }
  if (lastRouted === target) {
    return { route: '', routed: target }
  }
  if (page === 'index' || !page) {
    return { route: target, routed: target }
  }
  return { route: '', routed: lastRouted }
}
