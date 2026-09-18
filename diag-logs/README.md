# Diagnostic logs (music player)

This folder holds logs pulled from a device after a music-player crash.

## Important: use the correct APK

Install only from **`main`** branch (currently **1.0.80-xems-pro** or newer).

Do **not** build from `cursor/beta-music-reactive-a389` — that branch still has stale
`MusicPlayerHelper$1.smali` which causes **VerifyError** and app restart on ♪ click.

Check version in app settings or `RELEASE_VERSION` in repo before testing.

## Pull logs from phone

1. Connect USB debugging.
2. Reproduce the issue (tap ♪).
3. Run:

```bash
bash scripts/pull-diag-logs.sh
```

4. Commit so the agent can read them:

```bash
git add diag-logs/
git commit -m "Device diag logs after music player crash"
git push
```

## Files

| File | Contents |
|------|----------|
| `music-diag.log` | Step-by-step events (attach, click, show, errors) |
| `last-crash.txt` | Stack trace from last uncaught exception |
| `logcat-musicdiag.txt` | Fallback: `adb logcat -s MusicDiag` |
| `logcat-crash-snippet.txt` | Fallback: FATAL / VerifyError lines |

On-device path: `Android/data/com.isaigu.gymapp25/files/diag-logs/`
