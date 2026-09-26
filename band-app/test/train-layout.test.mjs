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
ok(ux.includes('<div class="train-head">'), 'play isolated in train-head above channel list')
ok(ux.includes('<stack class="tr-play-row">'), 'tr-play-row is full-width 212px row like ctl')
ok(ux.match(/\.tr-play-row\s*\{[^}]*width:\s*212px/s), 'tr-play-row 212px centers 152px child')
ok(ux.match(/\.tr-play-row\s*\{[^}]*align-items:\s*center/s), 'tr-play-row align-items center like cbox')
ok(!ux.match(/\.tr-play-row\s*\{[^}]*margin-left:/s), 'no margin-left hack on play row')
ok(!ux.match(/\.tr-play\s*\{[^}]*margin-left:/s), 'no margin-left on play button')
ok(ux.match(/\.tr-play\s*\{[^}]*width:\s*152px/s), 'tr-play button 152px in CSS only')
ok(ux.includes('tr-play-idle'), 'play idle color via CSS class')
ok(ux.includes('tr-play-run'), 'play run color via CSS class')
ok(ux.includes('tr-play-glow'), 'play glow ring behind button')
ok(ux.includes('ctl-rule'), 'ctl divider under KPI cards')
ok(ux.includes('cface-live'), 'channel border brightens when running')
ok(!ux.match(/class="[^"]*btn tr-play/s), 'play not using shared btn class')
ok(!ux.match(/class="[^"]*down/s) || !ux.includes("pressed === 'play' ? 'down'"), 'play not using down transform')
ok(!ux.match(/tr-play[^"]*style="[^"]*width:/s), 'no inline width on play (Vela drops size on run)')
ok(ux.match(/\.tr-play-row\s*\{[^}]*padding-top:\s*16px/s), 'play gap above 16px')
ok(!ux.match(/\.cbox\s*\{[^}]*margin-left:/s), 'cbox uses col centering, not margin-left')
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
