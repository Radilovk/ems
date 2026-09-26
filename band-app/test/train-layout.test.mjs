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
ok(ux.includes('<stack class="tr-play-wrap"'), 'tr-play-wrap is stack with explicit center offset')
ok(ux.match(/\.tr-play-wrap\s*\{[^}]*width:\s*152px/s), 'tr-play-wrap 152px')
ok(ux.match(/\.tr-play-wrap\s*\{[^}]*margin-left:\s*30px/s), 'tr-play-wrap margin-left 30px centers in 212px col')
ok(!ux.match(/\.cbox\s*\{[^}]*margin-left:/s), 'cbox uses col centering, not margin-left')
ok(ux.match(/\.tr-play\s*\{[^}]*width:\s*152px/s), 'tr-play button 152px')
ok(ux.match(/\.tr-play-wrap\s*\{[^}]*margin-top:\s*16px/s), 'play gap above 16px')
ok(ux.includes('run ? $item.fillLive : $item.fillDim'), 'channel colors bound to run in template')
ok(!ux.match(/buildChannels\(s\.ch \|\| \[\], run\)/), 'buildChannels does not rebuild on run toggle')
ok(ux.match(/\.cbox-main\s*\{[^}]*margin-top:\s*16px/s), 'play gap below 16px')
ok(ux.includes('margin-bottom: 22px'), 'main→channel gap margin-bottom 22px')
ok(ux.includes('lines: 2'), 'channel name allows 2 lines')
ok(ux.match(/\.cname\s*\{[^}]*font-size:\s*20px/s), 'channel name 20px')
ok(ux.match(/\.cval\s*\{[^}]*font-size:\s*22px/s), 'channel value 22px')
ok(ux.includes('class="cfill-main"'), 'main ± uses cfill-main (no channel cfill margins)')
ok(ux.match(/\.cfill-main\s*\{[^}]*height:\s*92px/s), 'cfill-main height 92px matches cbox')
ok(!ux.includes('.cbox-main .cfill'), 'no unsupported Vela descendant selector for main fill')
ok(!ux.includes('active && !offline'), 'home scroll stays mounted while modules open')
ok(ux.includes('resetTrainSession'), 'train page resets session on show/hide')
ok(ux.includes("'Глутеус'"), 'glutes channel matches tablet label (Глутеус)')
ok(!ux.includes("'Седалище'"), 'no old Седалище channel name')

console.log(failed ? '\nFAILED' : '\nAll layout checks passed')
process.exit(failed ? 1 : 0)
