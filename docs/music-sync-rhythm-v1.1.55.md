# Music sync: unified scale, rhythm mix, floor/softness, new player UI (v1.1.55-sync)

## Algorithm

| Stage | Mic | Player |
|---|---|---|
| Loudness | `SoundEnvelopeMapper.rmsToPercent` (dB), tracked peak | same dB mapping, 96th-percentile track peak; raw RMS kept, mapped at play time (sensitivity is live) |
| Rhythm | real-time bass (180 Hz, 2-pole) energy jump vs ~90 ms reference, held + decayed (×0.72 / 20 ms) | offline: 70 % bass (150 Hz) + 30 % full-band energy jump, normalised to the track's 95th-percentile hit, gate 0.15, same decay |
| Mix | `MusicSync.mixLevels(loud, rhythm)`: `(1-m)·loud + m·rhythm`; silence stays 0, music ≥ 1 | same |
| Softness | `limitRise`: rise capped at 100 % per `smoothness × 6 ms`; falls unlimited | same |
| Floor | `MasterStrengthControl.scaleFromSound`: level > 0 → `floor + (ceiling − floor)·level` | same |

Player decode fix: every PCM frame is stamped with `buffer PTS + frame offset`. Before
this, a whole decoder buffer (for example 1024 frames ≈ 23 ms) landed in one 20 ms bucket.
The buckets it skipped stayed 0, which gave short dips to 0 impulse. Gaps are now filled
from the previous bucket.

Settings are persisted in `SharedPreferences("music_sync_settings")`:

| Setting | Default |
|---|---|
| sensitivity | 20 |
| rhythm_mix | 50 |
| floor | 20 % of ceiling |
| smoothness | 20 |

The mic dialog still overrides sensitivity with its own "min" field.

## Player UI (`apply-music-player.py` layout, `MusicPlayerHelper`)

- 300 dp overlay. ☰ (playlist) sits left of the dial and ⚙ (settings) sits right. The two
  panels open independently, and the active toggle is tinted green.
- An always-visible "now playing" card shows the title, time and status, plus
  `MusicImpulseMeterView`:
  - ♪ music level (after the mix)
  - ⚡ strength sent to the suit, with the floor band shaded and the ceiling marker
  - BLE latency chip: green ≤ 60 ms, amber ≤ 120 ms, red above
- Settings panel:
  - presets Плавно / Баланс / Удари (rhythm, floor, softness)
  - live `AmountView`s: Ритъм, Минимум, Мекота, Чувствителност
  - a hint line
- Removed the text-only level line (`musicPlayerLevel`). The meter replaces it.

## Build notes

- `MusicImpulseMeterView` is compiled and installed like `MusicVisualizerView`
  (`compile-music-sync-java.sh`, `apply-music-player.py`).
- `verify-active-pause-routing.py` accepts both the d8 guard form and the dx form
  (`if-nez v0, :label` → `return-void`). See `music-sync-ble-pacing-v1.1.54.md` for the
  dx toolchain.
