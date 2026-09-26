#!/usr/bin/env node
import { sessionTarget, shouldRoute } from '../src/common/auto-route.js'

let failed = 0
function ok(cond, msg) {
  if (!cond) {
    failed++
    console.error('FAIL:', msg)
  } else {
    console.log('OK:', msg)
  }
}

ok(sessionTarget(null) === '', 'no state → no target')
ok(sessionTarget({ mode: 'idle' }) === '', 'idle → no target')
ok(sessionTarget({ mode: 'ai' }) === 'ai', 'ai mode → ai')
ok(sessionTarget({ mode: 'manual', run: true }) === 'train', 'manual run → train')
ok(sessionTarget({ mode: 'manual', mods: { tr: { run: true } } }) === 'train', 'tr.run → train')
ok(sessionTarget({ mode: 'idle', mods: { tm: { run: true } } }) === 'timer', 'timer run → timer')

const start = shouldRoute('', 'index', 'train')
ok(start.route === 'train' && start.routed === 'train', 'from home, session start → train')

const already = shouldRoute('train', 'index', 'train')
ok(already.route === '' && already.routed === 'train', 'swipe-back home is not overridden')

const onTrain = shouldRoute('', 'train', 'train')
ok(onTrain.route === '' && onTrain.routed === 'train', 'already on train → no push')

const onPulse = shouldRoute('', 'pulse', 'train')
ok(onPulse.route === '' && onPulse.routed === '', 'other module stays; lastRouted unchanged')

const ended = shouldRoute('train', 'train', '')
ok(ended.route === '' && ended.routed === '', 'session end clears routed')

const again = shouldRoute('', 'index', 'train')
ok(again.route === 'train', 'next session from home routes again')

console.log(failed ? '\nFAILED' : '\nAll auto-route checks passed')
process.exit(failed ? 1 : 0)
