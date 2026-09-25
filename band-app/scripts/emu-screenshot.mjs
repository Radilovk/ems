#!/usr/bin/env node
/**
 * Build band app, run in Vela watch emulator (212×520), open Start/train page, save screenshot.
 * Usage: node scripts/emu-screenshot.mjs [output.png]
 */
import fs from 'fs'
import path from 'path'
import os from 'os'
import { execSync } from 'child_process'
import {
  VvdManager,
  VelaImageType,
  IVvdArchType,
  SDKParts,
  defaultSDKHome,
  defaultVvdHome
} from '@aiot-toolkit/emulator'

const ROOT = path.resolve(import.meta.dirname, '..')
const VVD_NAME = 'Vela_Band10_XEMS'
const OUT = process.argv[2] || '/opt/cursor/artifacts/screenshots/band-train-buttons-vela.png'
const IMAGE = VelaImageType.VELA_WATCH_5
const W = '212'
const H = '520'
const ADB = path.join(ROOT, 'node_modules/@miwt/adb/bin/linux/adb')

const sdkHome = defaultSDKHome
const vvdHome = defaultVvdHome
const mgr = new VvdManager({ sdkHome, vvdHome })

const PREVIEW_SNIP = `    // --- emulator preview (scripts/emu-screenshot.mjs) ---
    this.state = {
      mode: 'manual',
      st: 'run',
      hr: 65,
      z: 1,
      lim: 170,
      el: 263,
      ms: 54,
      ch: [-1, -1, 60, 50, -1, -1, -1, -1, -1, 40],
      mods: { tr: { run: true } },
      boot: 1,
      seq: 1
    }
    this.boot = 1
    this.lastSeq = 1
    this.rx = Date.now()
    setTimeout(() => router.push({ uri: '/pages/train' }), 300)
`

function log(msg) {
  console.log(`[emu] ${msg}`)
}

function patchForPreview() {
  const manifestPath = path.join(ROOT, 'src/manifest.json')
  const appPath = path.join(ROOT, 'src/app.ux')
  const manifest = JSON.parse(fs.readFileSync(manifestPath, 'utf8'))
  const app = fs.readFileSync(appPath, 'utf8')
  const backups = {
    manifest: fs.readFileSync(manifestPath),
    app: app,
    manifestEntry: manifest.router.entry
  }
  manifest.router.entry = 'pages/train'
  fs.writeFileSync(manifestPath, JSON.stringify(manifest, null, 2) + '\n')
  const marker = 'this.open()'
  if (!app.includes(marker)) {
    throw new Error('app.ux preview patch point missing')
  }
  fs.writeFileSync(appPath, app.replace(marker, marker + '\n' + PREVIEW_SNIP))
  return backups
}

function restorePreview(backups) {
  const manifestPath = path.join(ROOT, 'src/manifest.json')
  const appPath = path.join(ROOT, 'src/app.ux')
  fs.writeFileSync(manifestPath, backups.manifest)
  fs.writeFileSync(appPath, backups.app)
}

async function ensureSdk() {
  const missing = await mgr.hasSDKPartUpdate()
  if (missing.length === 0) {
    log('SDK ready')
    return
  }
  log(`Downloading SDK parts: ${missing.join(', ')}`)
  const dl = await mgr.downloadSDK({
    imageTypeArr: [IMAGE],
    force: false,
    cliProgress: true,
    parallelDownloads: 4
  })
  await dl.downlodPromise
  log('SDK download complete')
}

function ensureVvd() {
  const list = mgr.getVvdList()
  if (list.some((v) => v.name === VVD_NAME)) {
    log(`VVD ${VVD_NAME} exists`)
    return
  }
  const imageDir = path.join(sdkHome, SDKParts.SYSTEM_IMAGES, IMAGE)
  log(`Creating VVD ${VVD_NAME} (${W}x${H})`)
  mgr.createVvd({
    name: VVD_NAME,
    width: W,
    height: H,
    arch: IVvdArchType.arm,
    imageDir,
    imageType: IMAGE,
    customLcdRadius: ''
  })
  log('VVD created')
}

function buildApp() {
  log('Building band app…')
  execSync('python3 scripts/gen-pages.py', { cwd: ROOT, stdio: 'inherit' })
  execSync('npx aiot build', { cwd: ROOT, stdio: 'inherit' })
}

function findRpk() {
  const dist = path.join(ROOT, 'dist')
  const files = fs.readdirSync(dist).filter((f) => f.endsWith('.rpk'))
  if (!files.length) throw new Error('No .rpk in dist/')
  return path.join(dist, files[0])
}

async function sleep(ms) {
  return new Promise((r) => setTimeout(r, ms))
}

async function main() {
  process.env.PATH = `${path.dirname(ADB)}:${process.env.PATH || ''}`
  fs.mkdirSync(path.dirname(OUT), { recursive: true })
  await ensureSdk()
  ensureVvd()
  const backups = patchForPreview()
  try {
    buildApp()
    const rpk = findRpk()
    log(`Starting emulator ${VVD_NAME}…`)
    const { emulatorInstance, getAgent } = await mgr.startVvd({
      vvdName: VVD_NAME,
      coldBoot: false,
      openVNC: false
    })
    log('Installing app…')
    const target = await emulatorInstance.pushRpk(rpk, 'com.xems.band')
    await emulatorInstance.install(target, { packageName: 'com.xems.band', size: fs.statSync(rpk).size })
    log('Launching com.xems.band (train page + demo state)')
    try {
      await emulatorInstance.startApp('com.xems.band')
    } catch (e) {
      log('startApp wait ended: ' + (e.message || e))
    }
    await sleep(6000)
    const agent = await getAgent()
    const buf = await agent.getScreenshot()
    fs.writeFileSync(OUT, buf)
    log(`Screenshot saved: ${OUT} (${buf.length} bytes)`)
  } finally {
    restorePreview(backups)
  }
  process.exit(0)
}

main().catch((e) => {
  console.error(e)
  process.exit(1)
})
