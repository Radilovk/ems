#!/usr/bin/env node
import { readFileSync } from 'fs'
import { dirname, join } from 'path'
import { fileURLToPath } from 'url'

const ux = readFileSync(join(dirname(fileURLToPath(import.meta.url)), '../src/pages/train/index.ux'), 'utf8')
let failed = 0

function ok(cond, msg) {
  if (!cond) {
    failed++
    console.error('FAIL:', msg)
  } else {
    console.log('OK:', msg)
  }
}

ok(ux.includes('ontouchstart="mainTouchStart"'), 'main uses dedicated touch handler')
ok(!ux.match(/\.play\s*\{[^}]*margin-left:\s*42px/s), 'play has no margin-left hack')
ok(ux.includes('align-self: center'), 'play uses align-self center')
ok(ux.includes('margin-bottom: 22px'), 'main→channel gap margin-bottom 22px')
ok(ux.includes('lines: 2'), 'channel name allows 2 lines')
ok(ux.includes('font-size: 26px'), 'channel value 26px')

console.log(failed ? '\nFAILED' : '\nAll layout checks passed')
process.exit(failed ? 1 : 0)
