# Band auth key — from the Xiaomi account

The Xiaomi Band 9/10 needs a per-device **auth key** (16 bytes / 32 hex) that Mi
Fitness negotiates at pairing. XEMS talks to the band directly with the same
key (`WearableConfig`: `band_mac` + `auth_key`, transport SPP for Band 9/10).

`xiaomi-key.py` reads that key + MAC back from the Xiaomi cloud, so you don't
copy it by hand. The band must already be paired in Mi Fitness under this
account.

## Run

```bash
pip install huami-token
XIAOMI_EMAIL=you@example.com XIAOMI_PASSWORD='…' python3 xiaomi-key.py
```

- Credentials are read from the environment (or prompted, password hidden).
  **They are never stored, never committed, never baked into the APK.**
- Add `--adb` to write MAC + key straight into a connected tablet
  (`shared_prefs/wearable_bridge.xml`; needs a debug build for `run-as`, or root).
- `--region` sets the Xiaomi server region (default `de`).

Output:

```
Намерени ленти (MAC · ключ):
  D0:62:2C:26:49:60   3705b72bf5526ec74fdebc4b635e851f  [Band 10]
```

Paste those two into XEMS → band settings, or use `--adb`.

## Notes

- Unpairing the band in Mi Fitness **invalidates** the key — re-run afterwards.
- First login may bounce you through a Xiaomi web page (captcha / 2FA); follow
  the link huami-token prints, log in, paste the redirected URL back.
- Engine: [huami-token](https://github.com/argrento/huami-token) does the Xiaomi
  login and the `hlth.io.mi.com/get_source_list` call (incl. the RC4/signature
  crypto). We only wrap it and format the result for XEMS.

## In-app version (planned)

A "Вход с Xiaomi акаунт" button in XEMS settings will do the same via a WebView
login and auto-fill the band settings — no script, no computer. It needs the
Xiaomi login + `get_source_list` flow ported to Java (`wearable/xiaomi/`), and a
one-time check against a real account + Band 10 before shipping, since Xiaomi's
cloud signing changes now and then.
