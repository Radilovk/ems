# XEMS License Server (Cloudflare Worker)

Лицензен сървър за XEMS: отключване на модули, OTA обновяване, админ панел.

**Live:** https://license.biocode-bg.com  
**Admin:** https://license.biocode-bg.com/admin

## API

| Endpoint | Описание |
|----------|----------|
| `POST /v1/license/activate` | Активиране с ключ |
| `POST /v1/license/refresh` | Дневно опресняване |
| `GET /v1/app/update` | Проверка за нова версия |
| `GET /health` | Health check |

Договор: [`../docs/xems-license-api.md`](../docs/xems-license-api.md)

## Deploy

```bash
cd server
npm install
npx wrangler d1 migrations apply xems-license --remote   # първо схемата (0002 добавя ems)
npx wrangler deploy
```

Миграциите вървят **преди** кода: новият код пише в колоните `licenses.ems`, `activations.ems_local` и `activations.setup`.

Секрети (не в git):
```bash
npx wrangler secret put LICENSE_PRIVATE_KEY   # PKCS8 PEM
npx wrangler secret put ADMIN_PASSWORD
npx wrangler secret put ADMIN_USER            # default: admin
```

## Структура

- `src/index.js` — Worker (API + admin)
- `src/crypto.js` — ECDSA P-256 подпис (съвместим с Android)
- `src/plans.js` — планове → модули
- `migrations/` — D1 schema

## Разход

- Cloudflare Workers free tier (100k req/ден)
- D1 free tier (5M reads/ден)
- R2 не е активиран — APK се хоства от GitHub raw URL

## Първи ключ

Създай от админ панела или:
```bash
curl -u admin:PASSWORD -X POST https://license.biocode-bg.com/admin/api/licenses/create \
  -H 'Content-Type: application/json' \
  -d '{"customer":"Зала","plan":"full","max_devices":3,"expires_days":365}'
```
