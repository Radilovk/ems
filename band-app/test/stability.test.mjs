#!/usr/bin/env node
/**
 * Start of a workout without a burst on the band: states arriving together redraw the pages once
 * (latest state), and a summary never opens on top of a workout that runs.
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

const pushed = []
const stubs = {
  interconnect: { instance: () => ({ send() {}, getReadyState() {} }) },
  vibrator: { vibrate() {} },
  brightness: { setKeepScreenOn() {} },
  router: { push: (o) => pushed.push(o.uri) }
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
const sleep = (ms) => new Promise((r) => setTimeout(r, ms))

const seen = []
app.watch((s) => seen.push(s))

// the start of a workout: several states within a few ms (start, vib, strength ramp)
for (let k = 1; k <= 8; k++) {
  app.receive({ t: 'state', seq: k, boot: 1, hr: 100 + k, el: k, ms: k * 5, mods: { tr: { run: 1 } }, run: true,
    vib: k === 1 ? 'short' : '' })
}
assert(seen.length === 0, 'burst: nothing drawn inside the burst itself')
await sleep(40)
assert(seen.length === 1, 'burst of 8 states → one redraw')
assert(seen[0] && seen[0].seq === 8, 'the redraw shows the latest state')
app.receive({ t: 'state', seq: 9, boot: 1, hr: 120, el: 9, ms: 50, mods: { tr: { run: 1 } }, run: true })
await sleep(40)
assert(seen.length === 1, 'next state waits for the gap (no redraw within 150 ms)')
await sleep(200)
assert(seen.length === 2 && seen[1].seq === 9, 'after the gap: drawn once, latest state')

// summary of the previous session still sent while a new workout runs: not opened, not later either
app.receive({ t: 'state', seq: 10, boot: 1, hr: 120, el: 10, run: true, mods: { tr: { run: 1 } }, sum: { n: 5, kind: 'manual' } })
assert(pushed.length === 0, 'summary not opened over a running workout')
app.receive({ t: 'state', seq: 11, boot: 1, hr: 110, el: 11, run: false, mods: { tr: { run: 0 } }, sum: { n: 5, kind: 'manual' } })
assert(pushed.length === 0, 'that summary does not pop up at the next pause')
app.receive({ t: 'state', seq: 12, boot: 1, hr: 90, el: 0, run: false, mods: { tr: { run: 0 } }, sum: { n: 6, kind: 'manual' } })
assert(pushed.length === 1 && pushed[0] === '/pages/summary', 'a new summary with nothing running opens')

clearTimeout(app.notifyTimer)
console.log(failed ? '\nFAILED' : '\nAll stability checks passed')
process.exit(failed ? 1 : 0)
