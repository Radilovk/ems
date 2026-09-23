# Music sync: BLE pacing + measured look-ahead (v1.1.54-sync)

## Problem

Every strength change (`TrainItem.onParamsChange`) enqueues **2 BLE packets**
(`sendDuration` + `sendPause`/`sendActivePause`). `CommandSender` writes one packet at a
time and waits for the ACK. Its `commandQueue` is unbounded and never coalesces.

The player pushed a level every 16 ms with no throttle, and the mic almost as often.
When levels arrive faster than the link drains them, the queue grows and the impulse falls
further and further behind the music. Only a training stop flushed it.

## Fix

1. **Latest-value pacing** (`MusicSync.submitApplied` / `flushPending`)
   - At most one strength update sits in the suit's queue.
   - Levels produced while the queue is busy overwrite the single pending value.
   - When the queue empties, only the newest level is sent.
   - Smali hooks (`apply-music-training-sync.py`):
     - `CommandSender.isBusy()`: `writing || !commandQueue.isEmpty()`
     - `TrainItem.isSenderBusy()`
     - `CommandSender$1.onWriteSuccess` / `onWriteFailure` call
       `MusicSync.onBleWriteComplete()` after `postWrite()`.
2. **Measured look-ahead (player only)**
   - Time from send to the last ACK of each update is smoothed (EMA 0.2, samples at or
     above 1 s ignored).
   - The player looks up the envelope at `position + bleLatency + 8 ms`, so the level
     reaching the suit matches the audio being heard.
   - This replaces the device-property estimate `AudioOutputLatency`, which has been
     removed. `MediaPlayer.getCurrentPosition()` already tracks the presented frame, so
     the old +offset only acted as a rough BLE lead.
   - Before the first ACK the look-ahead is 50 ms. It is capped at 400 ms.

Diagnostics: `MusicDiag` log lines `ble-pacing player start leadMs=…` and
`ble-pacing latencyMs=… samples=…` (on stop).

## Rebuilding smali without the Android SDK

`dl.google.com` may be blocked. `branding/smali` for `MusicSync*` / `MusicPlayerEngine*`
can be built with:

- `javac --release 8` against `org.robolectric:android-all:11-robolectric-6757853` plus
  `branding/java-stubs`
- `com.jakewharton.android.repackaged:dalvik-dx`:
  `java -cp dx.jar com.android.dx.command.Main --dex --min-sdk-version=21`
- `baksmali 2.5.2`
