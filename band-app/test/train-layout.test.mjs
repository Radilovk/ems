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
ok(ux.match(/\.col\s*\{[^}]*align-items:\s*center/s), 'col centers rows like channel cards')
ok(!ux.match(/\.play-wrap\s*\{[^}]*margin-left:/s), 'play-wrap uses col centering, not margin-left')
ok(!ux.match(/\.cbox\s*\{[^}]*margin-left:/s), 'cbox uses col centering, not margin-left')
ok(ux.match(/\.play\s*\{[^}]*width:\s*152px/s), 'play button 152px')
ok(ux.match(/\.play-wrap\s*\{[^}]*margin-top:\s*16px/s), 'play gap above 16px')
ok(ux.match(/\.cbox-main\s*\{[^}]*margin-top:\s*16px/s), 'play gap below 16px')
ok(ux.includes('margin-bottom: 22px'), 'main→channel gap margin-bottom 22px')
ok(ux.includes('lines: 2'), 'channel name allows 2 lines')
ok(ux.includes('font-size: 26px'), 'channel value 26px')
ok(ux.includes('class="cfill-main"'), 'main ± uses cfill-main (no channel cfill margins)')
ok(ux.match(/\.cfill-main\s*\{[^}]*height:\s*92px/s), 'cfill-main height 92px matches cbox')
ok(!ux.includes('.cbox-main .cfill'), 'no unsupported Vela descendant selector for main fill')

console.log(failed ? '\nFAILED' : '\nAll layout checks passed')
process.exit(failed ? 1 : 0)
