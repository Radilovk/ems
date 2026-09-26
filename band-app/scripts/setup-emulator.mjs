#!/usr/bin/env node
/**
 * Create a Vela VVD sized like Band 10 (212×520 logical).
 * Requires: npx aiot initEmulatorEnv (once)
 */
import path from 'path'
import os from 'os'
import { VvdManager, IVvdArchType, VelaImageType, defaultSDKHome, defaultVvdHome } from '@aiot-toolkit/emulator'

const VVD_NAME = 'Vela_XEMS_Band'
const WIDTH = '212'
const HEIGHT = '520'
const mgr = new VvdManager({ sdkHome: defaultSDKHome, vvdHome: defaultVvdHome })

const imageType = VelaImageType.VELA_MIWEAR_WATCH_5
const imageDir = path.resolve(defaultSDKHome, 'system-images', imageType)

const existing = mgr.getVvdList().some((v) => v.name === VVD_NAME)
if (existing) {
  console.log('VVD already exists:', VVD_NAME)
  process.exit(0)
}

mgr.createVvd({
  name: VVD_NAME,
  width: WIDTH,
  height: HEIGHT,
  arch: IVvdArchType.arm,
  imageDir,
  imageType,
  skin: '',
  customLcdRadius: '28'
})

console.log('Created', VVD_NAME, WIDTH + 'x' + HEIGHT)
