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

ok(ux.includes('class="dial"'), 'home is a dial, not a card list')
ok(!ux.includes('class="card"'), 'no module cards on home')
ok(ux.includes('home-play'), 'dial play button')
ok(ux.match(/\.home-play\s*\{[^}]*width:\s*132px/s), 'home play 132px in CSS only')
ok(ux.match(/\.home-play-ring\s*\{[^}]*position:\s*absolute/s), 'play ring out of flow')
ok(!ux.includes('animation-name: wave'), 'offline has no looping wave animation')
ok(!ux.match(/home-play[^"]*style="[^"]*width:/s), 'no inline width on home play')
ok(ux.includes('train_toggle'), 'play toggles training')
ok(ux.includes("open('train')"), 'Старт chip opens train')
ok(ux.includes("open('ai')"), 'AI chip opens ai')
ok(ux.includes('pause_all'), 'hold HR pauses everything')
ok(ux.includes('if="{{!cold}}"'), 'dial stays after first link (no reconnect radar)')
ok(ux.includes('няма връзка'), 'stale link shown on dial, not radar')
ok(app.includes('autoRoute'), 'app auto-routes into live session')
ok(app.includes('auto-route.js'), 'auto-route extracted for tests')

console.log(failed ? '\nFAILED' : '\nAll home layout checks passed')
process.exit(failed ? 1 : 0)
