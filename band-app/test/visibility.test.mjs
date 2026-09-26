#!/usr/bin/env node
/**
 * Screen off → XEMS sends only the pulse; screen on → full state at once.
 * Runs the real app.ux object with stubbed system modules.
 */
import { readFileSync } from 'fs'
import { fileURLToPath } from 'url'
import { dirname, join } from 'path'

const dir = dirname(fileURLToPath(import.meta.url))
const ux = readFileSync(join(dir, '../src/app.ux'), 'utf8')
const script = ux.slice(ux.indexOf('<script>') + 8, ux.indexOf('</script>'))
  .replace(/^import .*$/gm, '')
  .replace('export default', 'return')

const sent = []
const stubs = {
  interconnect: { instance: () => ({ send: (o) => sent.push(o.data), getReadyState() {} }) },
  vibrator: { vibrate() {} },
  brightness: { setKeepScreenOn() {} },
  router: { push() {} }
}
const app = new Function('interconnect', 'vibrator', 'brightness', 'router', script)(
  stubs.interconnect, stubs.vibrator, stubs.brightness, stubs.router)
app.conn = stubs.interconnect.instance()

let failed = 0
function assert(cond, msg) {
  if (!cond) {
    failed++
    console.error('FAIL:', msg)
  } else {
    console.log('OK:', msg)
  }
}
const visMsgs = () => sent.filter((m) => m.t === 'vis')

// first page comes up: XEMS already assumes "shown", nothing to say
app.setVisible(true)
assert(visMsgs().length === 0, 'first page shown: no message')

// page change, new page shown before the old one hides: no flicker
app.setVisible(true)
app.setVisible(false)
assert(visMsgs().length === 0, 'show-then-hide page change: no message')

// screen off: the last page hides
app.setVisible(false)
assert(visMsgs().length === 1 && visMsgs()[0].on === false, 'screen off: vis off once')
app.setVisible(false)
assert(visMsgs().length === 1, 'extra hide does not repeat')

// pulse-only message while hidden keeps the link alive, not the state age
app.receive({ t: 'state', seq: 1, boot: 7, hr: 90, z: 2, el: 10 })
app.rx = Date.now() - 20000
app.rxAny = app.rx
app.receive({ t: 'hr', hr: 142, z: 4 })
assert(app.state.hr === 142 && app.state.z === 4, 'hr message updates pulse and zone')
assert(app.quiet() < 1, 'hr message keeps the link alive')
assert(app.silence() > 15, 'hr message does not reset the age of the times')
assert(visMsgs().length === 1, 'hidden: hr message does not ask for everything')

// screen on: first page back
app.setVisible(true)
assert(visMsgs().length === 2 && visMsgs()[1].on === true, 'screen on: vis on at once')

// XEMS missed "on" (still sends pulse only): ask again
app.receive({ t: 'hr', hr: 143, z: 4 })
assert(visMsgs().length === 3 && visMsgs()[2].on === true, 'shown but pulse-only: vis on again')

console.log(failed ? '\nFAILED' : '\nAll visibility checks passed')
process.exit(failed ? 1 : 0)
