# Band app testing (closest to Band 10 without hardware)

## Layers

| Layer | Command | What it proves |
|-------|---------|----------------|
| **Compile** | `bash build.sh` | `.rpk` builds for Vela |
| **Touch/layout logic** | `node test/train-touch.test.mjs` | Main ± args, tap/slider FSM, gap math |
| **Screen wake** | `node test/app-screen.test.mjs` | No `keepOn(running)` |
| **SPP protocol** | `scripts/ble-sim/run-spp.sh` | Phone↔band bytes, hello/state (not UI) |
| **Vela emulator** | `bash scripts/run-emulator-test.sh` | Real `.ux` runtime, 212×520, train page + mock state |

## Quick run (CI / agent)

```bash
cd band-app && bash scripts/test-band.sh
```

## Emulator (local machine with KVM)

```bash
cd band-app
npx aiot initEmulatorEnv          # once (~600 MB)
node scripts/setup-emulator.mjs   # creates Vela_XEMS_Band 212×520
bash scripts/run-emulator-test.sh # mock XEMS state + train page
```

Without KVM the emulator is too slow in cloud VMs — use unit tests + real Band 10.

## Not automatable without hardware

- `system.interconnect` with real XEMS tablet (mock only in emulator script)
- Wrist-wake display timing
- True touch feel, fonts, Cyrillic on device
- Full train_plus → EMS impulse loop
