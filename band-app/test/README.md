# Band app testing (closest to Band 10 without hardware)

## Layers

| Layer | Command | What it proves |
|-------|---------|----------------|
| **Compile** | `bash build.sh` | `.rpk` builds for Vela |
| **Touch/layout logic** | `node test/train-touch.test.mjs` | Main ± args, tap/slider FSM, gap math |
| **Layout static** | `node test/train-layout.test.mjs` | CSS/template rules from index.ux |
| **Home dial** | `node test/home-layout.test.mjs` | Dial-home, no cards, auto-route wired |
| **Auto-route** | `node test/auto-route.test.mjs` | Session jump once; swipe-back respected |
| **Screen wake** | `node test/app-screen.test.mjs` | No `keepOn(running)` |
| **Train preview PNG** | `bash scripts/run-emulator-test.sh` | 212×520 layout preview (Pillow, no emulator) |
| **SPP protocol** | `scripts/ble-sim/run-spp.sh` | Phone↔band bytes, hello/state (not UI) |

## Quick run (CI / agent)

```bash
cd band-app && bash scripts/test-band.sh
```

## Train screen preview — **canonical method for UI frames**

**Full documentation:** [`docs/screen-preview.md`](../docs/screen-preview.md)  
**UI version baselines:** [`docs/ui-versions.md`](../docs/ui-versions.md)

```bash
cd band-app
python3 scripts/gen-train-preview.py idle    /tmp/train_idle.png
python3 scripts/gen-train-preview.py running /tmp/train_running.png
python3 scripts/gen-train-preview.py multi   /tmp/train_multi_click.png
# or: bash scripts/run-emulator-test.sh
```

Pillow renders 212×520 from the same constants as `src/pages/train/index.ux`.  
**Do not** use Vela emulator/gRPC for agent screenshots — use this script instead.  
Not a substitute for a photo from the real Band 10 (fonts, Vela rendering).

## Not automatable without hardware

- `system.interconnect` with real XEMS tablet
- Wrist-wake display timing
- True touch feel, fonts, Cyrillic on device
- Full train_plus → EMS impulse loop
