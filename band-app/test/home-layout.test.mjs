#!/usr/bin/env node
import { readFileSync } from 'fs'
import { dirname, join } from 'path'
import { fileURLToPath } from 'url'

const ux = readFileSync(join(dirname(fileURLToPath(import.meta.url)), '../src/pages/index/index.ux'), 'utf8')
const app = readFileSync(join(dirname(fileURLToPath(import.meta.url)), '../src/app.ux'), 'utf8')
let failed = 0

function ok(cond, msg) {
  if (!cond) {
    failed++
    console.error('FAIL:', msg)
  } else {
    console.log('OK:', msg)
  }
}

ok(ux.includes('class="card"'), 'home is the multi-card module menu')
ok(ux.includes('scroll-y="true"'), 'home scrolls through module screens')
ok(ux.includes("title: 'Старт'"), 'Start card first')
ok(ux.includes("title: 'AI'"), 'AI card')
ok(ux.includes("title: 'Таймер'"), 'Timer card')
ok(ux.includes("title: 'Музика'"), 'Music card')
ok(ux.includes("title: 'Пулс'"), 'Pulse card')
ok(!ux.includes('home-play'), 'no dial-home play replacing the menu')
ok(!ux.includes('class="chip"'), 'no chip grid replacing cards')
ok(!app.includes('autoRoute'), 'no auto-route hijacking navigation')

console.log(failed ? '\nFAILED' : '\nAll home layout checks passed')
process.exit(failed ? 1 : 0)
