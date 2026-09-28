#!/usr/bin/env node
/**
 * Band screen preview: renders the real pages (template + page CSS + page script) with mock
 * XEMS states in headless Chromium, 212×520 like the Band 10. Approximate (browser flexbox and
 * fonts, not Vela), but it runs the same data code the band runs, so layout, text length,
 * colours and state logic can be checked for every screen without hardware.
 *
 *   node preview/render.mjs [outDir] [filter]     → outDir/<page>-<scene>.png + outDir/sheet.png
 *
 * Needs the global playwright (preinstalled in the cloud container; PLAYWRIGHT_BROWSERS_PATH).
 */
import { readFileSync, writeFileSync, mkdirSync } from 'fs'
import { dirname, join, resolve } from 'path'
import { fileURLToPath } from 'url'
import { createRequire } from 'module'
import { SCENES } from './scenes.mjs'

const HERE = dirname(fileURLToPath(import.meta.url))
const SRC = resolve(HERE, '../src')
const require = createRequire(import.meta.url)
const W = 212
const H = 520

// ------------------------------------------------------------------ page script → object

function moduleBody(code, deps) {
  let body = code
  for (const [spec, name] of Object.entries(deps)) {
    body = body.replace(new RegExp(`import\\s+(\\w+)\\s+from\\s+'${spec.replace(/[.*+?^${}()|[\]\\/]/g, '\\$&')}'`, 'g'), `const $1 = ${name}`)
    body = body.replace(new RegExp(`import\\s+\\{([^}]*)\\}\\s+from\\s+'${spec.replace(/[.*+?^${}()|[\]\\/]/g, '\\$&')}'`, 'g'), `const {$1} = ${name}`)
  }
  return body
}

const ROUTER = { back() {}, push() {}, replace() {} }

function loadCommon(file) {
  const code = readFileSync(join(SRC, 'common', file), 'utf8')
  const exports = {}
  const body = moduleBody(code, { '@system.router': 'ROUTER' })
    .replace(/export (function|const|let|class) (\w+)/g, (m, k, n) => `${k} ${n}`) +
    '\n' + [...code.matchAll(/export (?:function|const|let|class) (\w+)/g)].map((m) => `exports.${m[1]} = ${m[1]}`).join('\n')
  new Function('ROUTER', 'exports', 'setInterval', 'clearInterval', 'setTimeout', 'clearTimeout', body)(
    ROUTER, exports, () => 0, () => {}, () => 0, () => {})
  return exports
}

function pageObject(script, env) {
  const body = moduleBody(script, {
    '@system.router': 'ROUTER',
    '../../common/ui.js': 'UI',
    '../../common/train-touch.js': 'TT',
    '../../common/auto-route.js': 'AR',
    '../../common/body-map.js': 'BM'
  }).replace('export default', 'return')
  return new Function('ROUTER', 'UI', 'TT', 'AR', 'BM', 'setInterval', 'clearInterval', 'setTimeout', 'clearTimeout', body)(
    ROUTER, env.UI, env.TT, env.AR, env.BM, () => 0, () => {}, () => 0, () => {})
}

function mockApp(state, extra = {}) {
  return {
    state,
    summary: extra.summary || null,
    page: 'index',
    silence: () => 0,
    quiet: () => (state ? 0 : 99999),
    busy: () => false,
    watch() {},
    unwatch() {},
    command() {},
    buzz() {},
    setVisible() {},
    ...extra.app
  }
}

function instance(pageFile, scene, env) {
  const ux = readFileSync(pageFile, 'utf8')
  const script = ux.slice(ux.indexOf('<script>') + 8, ux.indexOf('</script>'))
  const def = pageObject(script, env)
  const vm = JSON.parse(JSON.stringify(def.private || def.data || {}))
  Object.keys(def).forEach((k) => {
    if (typeof def[k] === 'function') {
      vm[k] = def[k]
    }
  })
  vm.$app = { $def: mockApp(scene.state, scene) }
  vm.$element = () => null
  if (vm.onInit) vm.onInit()
  if (vm.onShow) vm.onShow()
  if (vm.update) vm.update()
  if (scene.cur) {
    const i = (vm.ids || []).indexOf(scene.cur)
    vm.cur = scene.cur
    if (i >= 0) {
      vm.idx = i
      vm.dots = env.UI.dots(i, vm.ids.length)
    }
  }
  vm.anim = ''
  Object.assign(vm, scene.set || {})
  return { vm, ux }
}

// ------------------------------------------------------------------ template → HTML

function parseXml(src) {
  const root = { tag: '#root', attrs: {}, kids: [] }
  const stack = [root]
  const re = /<!--[\s\S]*?-->|<\/(\w[\w-]*)\s*>|<(\w[\w-]*)((?:\s+[\w:@-]+(?:="[^"]*")?)*)\s*(\/?)>|([^<]+)/g
  let m
  while ((m = re.exec(src))) {
    if (m[0].startsWith('<!--')) continue
    const top = stack[stack.length - 1]
    if (m[1]) {
      stack.pop()
    } else if (m[2]) {
      const attrs = {}
      for (const a of m[3].matchAll(/([\w:@-]+)(?:="([^"]*)")?/g)) attrs[a[1]] = a[2] ?? ''
      const node = { tag: m[2], attrs, kids: [] }
      top.kids.push(node)
      if (!m[4]) stack.push(node)
    } else if (m[5] && m[5].trim()) {
      top.kids.push({ tag: '#text', text: m[5].trim() })
    }
  }
  return root
}

function evalExpr(expr, scope) {
  try {
    return new Function('s', `with (s) { return (${expr}) }`)(scope)
  } catch (e) {
    return ''
  }
}

function interp(str, scope) {
  const whole = str.match(/^\{\{([\s\S]*)\}\}$/)
  if (whole) return evalExpr(whole[1], scope)
  return str.replace(/\{\{([\s\S]*?)\}\}/g, (_, e) => {
    const v = evalExpr(e, scope)
    return v == null ? '' : String(v)
  })
}

const esc = (s) => String(s).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;')

function arcSvg(node, attrs, classes, css, scope) {
  const p = {}
  classes.forEach((c) => Object.assign(p, css[c] || {}))
  Object.assign(p, styleProps(attrs.style || ''))
  const px = (v, d) => (v != null ? parseFloat(v) : d)
  const w = px(p.width, 100)
  const h = px(p.height, 100)
  const sw = px(p['stroke-width'], 8)
  const r = px(p.radius, Math.min(w, h) / 2 - sw / 2)
  const cx = px(p['center-x'], w / 2)
  const cy = px(p['center-y'], h / 2)
  const a0 = px(p['start-angle'], 0)
  const tot = px(p['total-angle'], 360)
  const pct = Math.max(0, Math.min(100, parseFloat(attrs.percent) || 0))
  const bg = p['background-color'] || '#333'
  const fg = p.color || '#fff'
  const arc = (from, len, col) => {
    if (len <= 0) return ''
    if (len >= 359.99) return `<circle cx="${cx}" cy="${cy}" r="${r}" fill="none" stroke="${col}" stroke-width="${sw}"/>`
    const pt = (a) => [cx + r * Math.sin((a * Math.PI) / 180), cy - r * Math.cos((a * Math.PI) / 180)]
    const [x0, y0] = pt(from)
    const [x1, y1] = pt(from + len)
    return `<path d="M${x0} ${y0} A${r} ${r} 0 ${len > 180 ? 1 : 0} 1 ${x1} ${y1}" fill="none" stroke="${col}" stroke-width="${sw}" stroke-linecap="round"/>`
  }
  const pos = p.position === 'absolute' ? `position:absolute;left:${p.left || 0};top:${p.top || 0};` : ''
  return `<svg class="v-progress ${classes.join(' ')}" width="${w}" height="${h}" style="${pos}flex-shrink:0" viewBox="0 0 ${w} ${h}">` +
    arc(a0, tot, bg) + arc(a0, (tot * pct) / 100, fg) + '</svg>'
}

function styleProps(s) {
  const out = {}
  s.split(';').forEach((d) => {
    const i = d.indexOf(':')
    if (i > 0) out[d.slice(0, i).trim()] = d.slice(i + 1).trim()
  })
  return out
}

function render(node, scope, css) {
  if (node.tag === '#text') return esc(interp(node.text, scope))
  if (node.tag === '#root') return node.kids.map((k) => render(k, scope, css)).join('')
  const a = node.attrs
  if (a.for !== undefined) {
    const list = interp(a.for, scope) || []
    const { for: _f, ...rest } = a
    return list.map((item, idx) => render({ ...node, attrs: rest }, Object.assign(Object.create(scope), { $item: item, $idx: idx }), css)).join('')
  }
  if (a.if !== undefined && !interp(a.if, scope)) return ''
  if (a.show !== undefined && !interp(a.show, scope)) return ''
  const classes = interp(a.class || '', scope).split(/\s+/).filter(Boolean)
  const style = interp(a.style || '', scope)
  if (node.tag === 'progress') return arcSvg(node, { ...a, style, percent: interp(a.percent || '0', scope) }, classes, css, scope)
  if (node.tag === 'image') {
    const src = interp(a.src || '', scope)
    return `<img class="v-image ${classes.join(' ')}" style="${esc(style)}" src="${esc(src.startsWith('/') ? 'file://' + SRC + src : src)}">`
  }
  const inner = node.kids.map((k) => render(k, scope, css)).join('')
  let extra = ''
  if (node.tag === 'stack') {
    // Vela stack: children overlap; the stack's flex alignment places them (default top-left).
    const p = {}
    classes.forEach((c) => Object.assign(p, css[c] || {}))
    Object.assign(p, styleProps(style))
    const map = (v) => ({ center: 'center', 'flex-end': 'end', 'flex-start': 'start' }[v] || 'start')
    const col = p['flex-direction'] === 'column'
    const main = map(p['justify-content'])
    const cross = map(p['align-items'])
    extra = `justify-items:${col ? cross : main};align-items:${col ? main : cross};`
  }
  return `<div class="v-${node.tag} ${classes.join(' ')}" style="${extra}${esc(style)}">${inner}</div>`
}

function pageCss(ux) {
  const style = ux.slice(ux.indexOf('<style>') + 7, ux.lastIndexOf('</style>'))
  const map = {}
  for (const m of style.matchAll(/\.([\w-]+)\s*\{([^}]*)\}/g)) {
    map[m[1]] = Object.assign(map[m[1]] || {}, styleProps(m[2].replace(/\n/g, ';')))
  }
  const web = style
    .replace(/url\((\/[^)]+)\)/g, (_, p) => `url(file://${SRC}${p})`)
    .replace(/\blines:\s*1;/g, 'white-space: nowrap; overflow: hidden;')
  return { map, web }
}

const BASE_CSS = `
* { box-sizing: border-box; margin: 0; padding: 0; }
html, body { width: ${W}px; height: ${H}px; background: #000; overflow: hidden; font-family: 'MiSans', 'Liberation Sans', sans-serif; }
div { display: flex; flex-direction: row; position: relative; flex-shrink: 1; }
.v-stack { display: grid; grid-template: 100% / 100%; justify-items: start; align-items: start; }
.v-stack > * { grid-area: 1 / 1; }
.v-scroll { overflow: hidden; flex-direction: column; }
.v-text, .v-marquee { display: block; flex-shrink: 1; font-size: 30px; color: rgba(255,255,255,0.9); white-space: pre-wrap; overflow: hidden; line-height: 1.2; }
.v-marquee { white-space: nowrap; }
.v-image { flex-shrink: 1; object-fit: contain; }
.v-list, .v-list-item { flex-direction: column; }
svg.v-progress { background: none !important; border: 0 !important; }
`

// ------------------------------------------------------------------ run

async function main() {
  const out = resolve(process.argv[2] || join(HERE, 'out'))
  const filter = process.argv[3] || ''
  mkdirSync(out, { recursive: true })
  const env = { UI: loadCommon('ui.js'), TT: loadCommon('train-touch.js'), AR: {}, BM: loadCommon('body-map.js') }
  const { chromium } = require(process.env.PLAYWRIGHT_MODULE || '/opt/node22/lib/node_modules/playwright')
  const browser = await chromium.launch()
  const page = await browser.newPage({ viewport: { width: W, height: H }, deviceScaleFactor: 2 })
  const shots = []
  for (const scene of SCENES) {
    const name = `${scene.page}-${scene.name}`
    if (filter && !name.includes(filter)) continue
    const file = join(SRC, 'pages', scene.page, 'index.ux')
    const { vm, ux } = instance(file, scene, env)
    const tpl = ux.slice(ux.indexOf('<template>') + 10, ux.indexOf('</template>'))
    const { map, web } = pageCss(ux)
    const html = `<!doctype html><html><head><meta charset="utf-8"><style>${BASE_CSS}${web}</style></head><body>${render(parseXml(tpl), vm, map)}</body></html>`
    const htmlFile = join(out, name + '.html')
    writeFileSync(htmlFile, html)
    await page.goto('file://' + htmlFile)
    if (scene.scrollY) {
      await page.evaluate((y) => document.querySelectorAll('.v-scroll > *').forEach((e) => { e.style.marginTop = -y + 'px' }), scene.scrollY)
    }
    const png = join(out, name + '.png')
    await page.screenshot({ path: png, animations: 'disabled' })
    shots.push({ name, png })
  }
  // contact sheet
  const cols = Math.min(6, shots.length)
  const rows = Math.ceil(shots.length / cols)
  const cells = shots.map((s) => `<figure><img src="file://${s.png}"><figcaption>${s.name}</figcaption></figure>`).join('')
  await page.setViewportSize({ width: cols * 232 + 20, height: rows * 560 + 20 })
  const sheet = join(out, 'sheet.html')
  writeFileSync(sheet, `<style>body{margin:10px;background:#333;display:flex;flex-wrap:wrap;font:13px sans-serif;color:#ddd}
    figure{margin:0 10px 10px 0;width:222px}img{width:212px;height:520px;border-radius:18px;display:block}</style>${cells}`)
  await page.goto('file://' + sheet)
  await page.screenshot({ path: join(out, 'sheet.png'), fullPage: true })
  await browser.close()
  console.log(`preview: ${shots.length} screens → ${out}/sheet.png`)
}

main().catch((e) => {
  console.error(e)
  process.exit(1)
})
