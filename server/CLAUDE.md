# server — XEMS license server (Cloudflare Worker + D1)

- Entry/routes: `src/index.js` (outline it: handlers are `handleActivate`, `handleRefresh`, `handleUpdate`,
  `serveRelease`, `adminApi`, `rateLimit`). Pure, testable helpers live in `utils.js`, `crypto.js`, `plans.js`,
  `catalog.js`, `ems.js`, `limits.js`. `admin.js` is the admin panel HTML — skip unless the task is the admin UI.
- Token format must stay compatible with Android `XemsLicenseToken.java` (ECDSA P-256, DER signatures).
- Schema changes = new file in `migrations/` (never edit applied ones).
- Test: `npm test` (node --test on `test/*.test.js`). Deploy steps: `README.md` — never deploy or touch secrets
  without the user's explicit request.
- Contract: `../docs/xems-license-api.md`; design: `../docs/xems-server-spec.md`.
