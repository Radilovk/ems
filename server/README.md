# XEMS License Server (Cloudflare Worker)

Лицензен сървър за XEMS: отключване на модули, OTA обновяване, админ панел.

**Live:** https://license.biocode-bg.com  
**Admin (уеб, без CMD):** https://license.biocode-bg.com/admin

Влез с потребител/парола (Basic auth). От там:
- създаваш лицензни ключове за клиенти
- управляваш костюми (MAC) по лиценз
- **регистрираш нов APK** за OTA (APK файлът е в GitHub, сървърът сочи таблетите към него)

## OTA обновяване (GitHub)

1. `xems27.apk` в `main` на репото `Radilovk/ems`
2. Админ → **Обновления (APK)** → version code/name + URL:
   `https://github.com/Radilovk/ems/raw/main/xems27.apk`
3. **Провери URL** → **Регистрирай версия**

## API

| Endpoint | Описание |
|----------|----------|
| `POST /v1/license/activate` | Активиране с ключ |
| `POST /v1/license/refresh` | Дневно опресняване |
| `GET /v1/app/update` | Проверка за нова версия |
| `GET /health` | Health check |

Договор: [`../docs/xems-license-api.md`](../docs/xems-license-api.md)

## Тестове

```bash
cd server
npm test
```

## Deploy

```bash
cd server
npm install
npx wrangler d1 migrations apply xems-license --remote
npx wrangler deploy
```

Секрети (не в git):
```bash
npx wrangler secret put LICENSE_PRIVATE_KEY
npx wrangler secret put ADMIN_PASSWORD
npx wrangler secret put ADMIN_USER
```

## Разходи

- **APK:** GitHub (безплатно)
- **Сървър:** Workers + D1 free tier — $0 при нормална употреба
- Billing → Notifications → alert при **$1**
- Провери Workers plan: Free, не Paid ($5/мес)
