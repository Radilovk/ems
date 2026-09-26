#!/usr/bin/env node
/**
 * Pixel-perfect 212×520 screenshot from running Vela_XEMS_Band emulator (gRPC framebuffer).
 * Usage:
 *   node scripts/capture-emulator-screenshot.mjs /path/out.png
 *   node scripts/capture-emulator-screenshot.mjs --tap 106 292 /path/out.png
 */
import fs from 'fs'
import path from 'path'
import { createRequire } from 'module'

const require = createRequire(import.meta.url)
const { createGrpcClient } = require('@aiot-toolkit/emulator/lib/vvd/grpc/index.js')
const { getRunningAvdConfigByName } = require('@aiot-toolkit/emulator/lib/emulatorutil/running.js')

const VVD = 'Vela_XEMS_Band'
const W = 212
const H = 520

function sleep(ms) {
  return new Promise((r) => setTimeout(r, ms))
}

function parseArgs(argv) {
  const out = { tap: null, path: null }
  const rest = [...argv]
  if (rest[0] === '--tap') {
    out.tap = { x: parseInt(rest[1], 10), y: parseInt(rest[2], 10) }
    rest.splice(0, 3)
  }
  out.path = rest[0]
  return out
}

async function waitForEmulator(maxMs = 120000) {
  const t0 = Date.now()
  while (Date.now() - t0 < maxMs) {
    const cfg = getRunningAvdConfigByName(VVD)
    if (cfg && cfg['grpc.port']) {
      return cfg
    }
    await sleep(1000)
  }
  throw new Error(`Emulator ${VVD} not running (no grpc config in ${maxMs}ms)`)
}

async function main() {
  const args = parseArgs(process.argv.slice(2))
  if (!args.path) {
    console.error('Usage: capture-emulator-screenshot.mjs [--tap X Y] out.png')
    process.exit(1)
  }

  const cfg = await waitForEmulator()
  const agent = createGrpcClient(cfg)
  await agent.waitForReady()

  if (args.tap) {
    agent.sendMouse({ x: args.tap.x, y: args.tap.y, buttons: 1 })
    await sleep(80)
    agent.sendMouse({ x: args.tap.x, y: args.tap.y, buttons: 0 })
    await sleep(600)
  }

  const buf = await agent.getScreenshot()
  if (!buf || !buf.length) {
    throw new Error('Empty screenshot from emulator gRPC')
  }

  const out = path.resolve(args.path)
  fs.mkdirSync(path.dirname(out), { recursive: true })
  fs.writeFileSync(out, buf)

  // Verify PNG dimensions via IHDR (offset 16: width, 20: height, big-endian)
  if (buf[0] === 0x89 && buf.toString('ascii', 1, 4) === 'PNG') {
    const w = buf.readUInt32BE(16)
    const h = buf.readUInt32BE(20)
    console.log(`saved ${out} (${w}×${h}, ${buf.length} bytes)`)
    if (w !== W || h !== H) {
      console.warn(`WARN: expected ${W}×${H}, got ${w}×${h}`)
    }
  } else {
    console.log(`saved ${out} (${buf.length} bytes, non-PNG?)`)
  }

  agent.close()
}

main().catch((err) => {
  console.error(err.message || err)
  process.exit(1)
})
