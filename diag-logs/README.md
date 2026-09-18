# Diagnostic logs (music player)

This folder holds logs pulled from a device after a music-player crash or misbehavior.

## Pull logs from phone

1. Connect the phone with USB debugging enabled.
2. Reproduce the issue in the app (tap the ♪ button).
3. Run from repo root:

```bash
bash scripts/pull-diag-logs.sh
```

4. Commit the pulled files so the agent can read them:

```bash
git add diag-logs/
git commit -m "Add device diag logs after music player crash"
git push
```

## Files

| File | Contents |
|------|----------|
| `music-diag.log` | Step-by-step music player events (attach, click, show, errors) |
| `last-crash.txt` | Stack trace from the last uncaught exception |

On-device path: `Android/data/com.isaigu.gymapp25/files/diag-logs/`
