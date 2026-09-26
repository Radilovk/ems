#!/usr/bin/env node
/**
 * Verifies screen wake policy: no setKeepScreenOn during training.
 */
import { readFileSync } from 'fs'
import { fileURLToPath } from 'url'
import { dirname, join } from 'path'

const dir = dirname(fileURLToPath(import.meta.url))
const appUx = readFileSync(join(dir, '../src/app.ux'), 'utf8')

let failed = 0

function assert(cond, msg) {
  if (!cond) {
    failed++
    console.error('FAIL:', msg)
  } else {
    console.log('OK:', msg)
  }
}

assert(!appUx.includes('this.keepOn(running)'), 'keepOn(running) removed from tick()')
assert(appUx.includes('keepOn(false)'), 'keepOn(false) still called on cleanup/silence')
assert(appUx.includes('setKeepScreenOn'), 'brightness API kept for explicit off')

console.log(failed ? '\nFAILED' : '\nAll app-screen checks passed')
process.exit(failed ? 1 : 0)
