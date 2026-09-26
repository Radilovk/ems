#!/usr/bin/env node
/**
 * Unit tests for train screen touch/layout logic (Node, no emulator).
 * Run: node band-app/test/train-touch.test.mjs
 */
import {
  TAP_MAX_MS,
  SLIDE_CLOSE_MS,
  TAP_MID_X,
  isMainRow,
  touchX,
  touchY,
  resolveTouchEvent,
  parseRowTouchStart,
  tapSide,
  isTap,
  movedBeyondTap,
  mainToChannelGapPx,
  createSlideModel,
  openSlideModel,
  rowTouchEndAfterOpen,
  slideTouchBegin,
  slideTouchEnd
} from '../src/common/train-touch.js'

let passed = 0
let failed = 0

function assert(cond, msg) {
  if (cond) {
    passed++
  } else {
    failed++
    console.error('FAIL:', msg)
  }
}

function ev(x, y) {
  return { touches: [{ pageX: x, pageY: y }] }
}

console.log('train-touch tests\n')

// --- isMainRow ---
assert(isMainRow(1), 'isMainRow(1)')
assert(isMainRow(true), 'isMainRow(true)')
assert(!isMainRow({ touches: [] }), 'event object is not main row')

// --- Vela arg bug: rowTouchStart(1) puts event in 2nd slot ---
const brokenEv = ev(150, 300)
const fixed = parseRowTouchStart(1, brokenEv, undefined, undefined, undefined)
assert(fixed.main === true, 'main row when isMain=1')
assert(fixed.startX === 150, 'event read from 2nd arg when e missing')
assert(fixed.startY === 300, 'event Y from 2nd arg')

const proper = parseRowTouchStart(true, -1, '', 'СИЛА', ev(40, 200))
assert(proper.main === true, 'mainTouchStart path: main=true')
assert(proper.startX === 40, 'mainTouchStart path: X from e')
assert(proper.i === -1, 'main channel id -1')

const ch = parseRowTouchStart(false, 3, '42', 'Прасец', ev(180, 400))
assert(ch.main === false && ch.i === 3 && ch.val === 42, 'channel row parse')

// --- broken path with no event: coords 0 (documents the bug) ---
const noEv = parseRowTouchStart(1, undefined, undefined, undefined, undefined)
assert(noEv.startX === 0 && noEv.startY === 0, 'rowTouchStart(1) without event → coords 0 (bug)')

// --- tap detection ---
const touch = { moved: false, startX: 40, startY: 200, x: 40, y: 200 }
assert(isTap(touch, 200), 'short tap')
assert(!isTap(touch, TAP_MAX_MS + 1), 'slow press not tap')
touch.moved = true
assert(!isTap(touch, 100), 'moved not tap')

assert(tapSide(40) === 'minus', 'left half minus')
assert(tapSide(TAP_MID_X) === 'plus', 'right half plus')
assert(tapSide(180) === 'plus', 'right tap')

assert(movedBeyondTap(touch, touch.startX + 20, touch.startY), 'move > TAP_MAX_MOVE')

// --- layout: doubled gap (5.9.18) ---
assert(mainToChannelGapPx() === 32, 'main→channel gap is 32px (6+10=16 doubled to 22+10=32)')

// --- slide state machine (5.9.17 fixes) ---
const m = createSlideModel()
openSlideModel(m, 50)
assert(m.slideOn && !m.slideArmed, 'slide opens disarmed')
rowTouchEndAfterOpen(m)
assert(m.slideArmed, 'armed after row finger lift')
slideTouchBegin(m)
assert(m.slideTouching && m.slideArmed, 'slide touch keeps armed')
slideTouchEnd(m)
assert(!m.slideTouching && m.slideArmed, 'slideEnd does NOT disarm (fix for repeat drag)')

// --- idle close timer logic ---
let closed = false
const t = setTimeout(() => {
  closed = true
}, SLIDE_CLOSE_MS)
clearTimeout(t)
assert(!closed, 'idle timer can be cancelled on touch')

// --- resolveTouchEvent priority ---
assert(resolveTouchEvent(1, brokenEv, '', 'СИЛА', undefined) === brokenEv, 'resolve 2nd arg')

console.log('\n' + passed + ' passed, ' + failed + ' failed')
process.exit(failed ? 1 : 0)
