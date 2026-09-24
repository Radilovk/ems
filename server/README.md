# XEMS License Server (Cloudflare Worker)

Лицензен сървър за XEMS: отключване на модули, OTA обновяване, админ панел.

**Live:** https://license.biocode-bg.com  
**Admin (уеб, без CMD):** https://license.biocode-bg.com/admin

Влез с потребител/парола (Basic auth). От там:
- създаваш лицензни ключове за клиенти
- управляваш костюми (MAC) по лиценз
- **регистрираш нов APK** за OTA обновяване на таблетите (форма „Ново издание“)

CMD е нужен **само** за първоначален deploy на Cloudflare (веднъж от разработчик).

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

## Разходи (важно)

| Услуга | Free tier | Наши лимити в кода |
|--------|-----------|-------------------|
| Workers | 100k req/ден | rate limit на activate/download |
| D1 | 5M reads/ден, 5 GB | малка база, няма bulk |
| R2 | 10 GB, безплатен egress | макс. 3 APK (~36 MB), макс. 12 MB/файл |

**Cloudflare няма автоматичен spending cap.** Задай Billing → Notifications → alert при **$1**.

Провери дали акаунтът е на **Workers Free** (не Paid $5/мес): Dashboard → Workers & Pages → Change plan.

## R2 (директно качване на APK)

1. **Включи R2** (веднъж): [Cloudflare Dashboard](https://dash.cloudflare.com/) → **R2 Object Storage** → **Enable R2** (приеми условията; free tier: 10 GB).
2. **Създай bucket:**
   ```bash
   cd server && bash scripts/setup-r2.sh
   ```
3. **Deploy:**
   ```bash
   npx wrangler deploy
   ```
4. В админ панела → **Обновления (APK)** → избери файл → **Качи в сървъра**.

Без R2: ползвай GitHub URL (вариант B в панела).

## Разход

- Cloudflare Workers free tier (100k req/ден)
- D1 free tier (5M reads/ден)
- R2 free tier (10 GB storage, 10M Class B ops/месец)

## Първи ключ

Създай от админ панела или:
```bash
curl -u admin:PASSWORD -X POST https://license.biocode-bg.com/admin/api/licenses/create \
  -H 'Content-Type: application/json' \
  -d '{"customer":"Зала","plan":"full","max_devices":3,"expires_days":365}'
```
