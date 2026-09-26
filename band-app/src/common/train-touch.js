/**
 * Train screen touch helpers — shared by pages/train and band-app/test.
 * Pure logic only; no Quick App APIs.
 */
export const TAP_MAX_MS = 320
export const SLIDE_OPEN_MS = 400
export const SLIDE_CLOSE_MS = 3000
export const TAP_MAX_MOVE = 16
export const TAP_MID_X = 106
export const COL_MAIN_GAP = 106
export const CBOX_MAIN_MARGIN_BOTTOM = 22
export const CHANNEL_MARGIN_TOP = 10

export function isMainRow(v) {
  return v === 1 || v === '1' || v === true || v === 'true'
}

export function touchY(e) {
  const t = (e && e.touches && e.touches[0]) || (e && e.changedTouches && e.changedTouches[0])
  return t ? t.pageY : 0
}

export function touchX(e) {
  const t = (e && e.touches && e.touches[0]) || (e && e.changedTouches && e.changedTouches[0])
  return t ? t.pageX : 0
}

/** Vela may pass the touch event as the 2nd arg when the template only has one literal. */
export function resolveTouchEvent(isMain, i, text, name, e) {
  if (e && (e.touches || e.changedTouches)) {
    return e
  }
  if (i && typeof i === 'object' && (i.touches || i.changedTouches)) {
    return i
  }
  if (isMain && typeof isMain === 'object' && (isMain.touches || isMain.changedTouches)) {
    return isMain
  }
  return e || null
}

export function parseRowTouchStart(isMain, i, text, name, e) {
  const ev = resolveTouchEvent(isMain, i, text, name, e)
  const main = isMainRow(isMain)
  const val = main ? null : (parseInt(text, 10) || 0)
  const label = main ? 'СИЛА' : name
  const ch = main ? -1 : (parseInt(i, 10) || 0)
  return {
    main: main,
    i: ch,
    name: label,
    val: val,
    startX: touchX(ev),
    startY: touchY(ev),
    y: touchY(ev),
    moved: false,
    opened: false
  }
}

export function tapSide(x) {
  return x < TAP_MID_X ? 'minus' : 'plus'
}

export function isTap(touch, elapsed) {
  return touch && !touch.moved && elapsed <= TAP_MAX_MS
}

export function movedBeyondTap(touch, x, y) {
  return Math.abs(x - touch.startX) > TAP_MAX_MOVE || Math.abs(y - touch.startY) > TAP_MAX_MOVE
}

export function mainToChannelGapPx() {
  return CBOX_MAIN_MARGIN_BOTTOM + CHANNEL_MARGIN_TOP
}

/** Minimal slide overlay state machine for tests. */
export function createSlideModel() {
  return {
    slideOn: false,
    slideArmed: false,
    slideTouching: false,
    slideDraft: 0,
    slideSent: 0
  }
}

export function openSlideModel(m, val) {
  m.slideOn = true
  m.slideArmed = false
  m.slideTouching = false
  m.slideDraft = val
  m.slideSent = val
}

export function rowTouchEndAfterOpen(m) {
  m.slideArmed = true
}

export function slideTouchBegin(m) {
  m.slideArmed = true
  m.slideTouching = true
}

export function slideTouchEnd(m) {
  m.slideTouching = false
  m.slideArmed = true
}

/** Clear touch/slider/cache state when leaving or re-entering the train page. */
export function resetTrainSession(page) {
  if (page.rowOpenTimer) {
    clearTimeout(page.rowOpenTimer)
    page.rowOpenTimer = null
  }
  if (page.slideCloseTimer) {
    clearTimeout(page.slideCloseTimer)
    page.slideCloseTimer = null
  }
  if (page.slideCommitTimer) {
    clearTimeout(page.slideCommitTimer)
    page.slideCommitTimer = null
  }
  if (page.holdTimer) {
    clearInterval(page.holdTimer)
    page.holdTimer = null
  }
  page.rowTouch = null
  page.slideOn = false
  page.slideIdx = -1
  page.slideMain = false
  page.slideTouching = false
  page.slideArmed = false
  page.slideAnim = 'slide-in'
  page.slideDim = false
  page.optim = {}
  page.optMs = null
  page.chPre = ''
  page.chKey = ''
  page.pressed = ''
  page.holdPct = 0
  if (page.elClock) {
    page.elClock.base = 0
    page.elClock.at = 0
  }
}
