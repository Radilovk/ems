# Интеграция XEMS ↔ Xiaomi Smart Band 8 / 10

Версия: 1.0  
Дата: 2026-09-22  
Статус: Спецификация за бъдеща разработка (не имплементирано в APK)

---

## 1. Цел

XEMS да получава данни от **Xiaomi Smart Band 8** или **Smart Band 10** и да ги използва за:

- адаптивен контрол на EMS тренировка (сила, честота, старт/стоп);
- визуализация на пулс и здравни метрики в UI;
- бъдещи правила за безопасност (SpO₂, стрес).

**Важно:** EMS костюмът остава на **отделна BLE връзка**. Гривната се управлява от **Gadgetbridge**; XEMS комуникира с Gadgetbridge през **Android Intent API**.

---

## 2. Поддържани устройства

| Устройство | Gadgetbridge | Препоръка |
|---|---|---|
| **Xiaomi Smart Band 8** | Highly supported | Най-стабилен избор за dev |
| **Xiaomi Smart Band 10** | Mostly supported | По-нов сензор; live HR Intent тестван |
| Smart Band 10 Pro | Experimental | Не за production v1 |
| Band 9 / 9 Active / 8 Active | Experimental / Partial | **Не поддържай** |

### Хардуер (и двата модела)

| Сензор | Band 8 | Band 10 |
|---|---|---|
| PPG пулс | Да | Да (по-точен при движение) |
| SpO₂ | Да | Да |
| Акселерометър | 6-осов IMU | 9-осов IMU (+ компас) |
| Жироскоп | На чипа | На чипа |
| GPS | Не (connected GPS от телефон) | Не |

### Достъп от XEMS (protobuf / Gadgetbridge)

| Данни | Live към XEMS | Бележка |
|---|---|---|
| Пулс (HR) | **Да** | Intent `REALTIME_HR` |
| SpO₂ | Sync | `ACTIVITY_SYNC` + `TYPE_SPO2` |
| Стрес | Sync | `TYPE_STRESS` |
| Стъпки / калории | Sync / partial realtime | Не за EMS v1 |
| Акселерометър raw | **Не** (v1) | В разработка в GB за Band 10 |
| Жироскоп raw | **Не** | Няма публичен API |

---

## 3. Архитектура

```
┌─────────────────┐     BLE (proprietary)     ┌──────────────────┐
│ Xiaomi Band 8/10│ ◄──────────────────────► │   Gadgetbridge   │
└─────────────────┘                           │  (един BLE клиент)│
                                              └────────┬─────────┘
                                                       │ Android Intents
                                                       ▼
┌─────────────────┐     BLE (EMS protocol)    ┌──────────────────┐
│   EMS костюм    │ ◄──────────────────────► │    XEMS App      │
└─────────────────┘                           │  WearableBridge  │
                                              │  TrainItem API   │
                                              └──────────────────┘
```

### Принципи

1. **Един BLE клиент за гривната** — Gadgetbridge; XEMS не се свързва директно с Band.
2. **Един BLE клиент за костюма** — съществуващият `CommandSender` / FastBle път.
3. Android поддържа **множество BLE връзки** — няма конфликт между гривна и костюм.
4. **iOS** — Gadgetbridge е Android-only; тази интеграция е **само Android**.

---

## 4. Предварителни изисквания (потребител)

### 4.1 Софтуер на телефона

| Компонент | Изискване |
|---|---|
| XEMS | Версия с `WearableBridge` (бъдеща) |
| Gadgetbridge | Mainline или Nightly (за най-нов Intent API) |
| Mi Fitness | Еднократно за auth token |

### 4.2 Pairing на гривната

1. Инсталирай **Mi Fitness**, свържи Band 8/10.
2. Извлечи **auth key** (виж [huami-token](https://codeberg.org/argrento/huami-token) или Gadgetbridge wiki).
3. В Gadgetbridge: Add device → въведи MAC + auth key.
4. Можеш да деинсталираш Mi Fitness след успешен pairing в Gadgetbridge.

### 4.3 Активиране на Intent API в Gadgetbridge

**Глобално:** Settings → Developer options → Intent API → включи нужните категории.

**Per device:** Device settings → Developer settings → включи:
- Realtime HR broadcast (за `REALTIME_HR`)
- Start/stop realtime HR commands (за `START_REALTIME_HR` / `STOP_REALTIME_HR`)
- Activity sync (за SpO₂)

### 4.4 Package names на Gadgetbridge

| Версия | Package |
|---|---|
| Mainline | `nodomain.freeyourgadget.gadgetbridge` |
| Nightly | `nodomain.freeyourgadget.gadgetbridge.nightly` |
| Bangle.js build | `com.espruino.gadgetbridge.banglejs` |

XEMS трябва да приема broadcast-и от всички варианти или да конфигурира package в настройки.

---

## 5. Gadgetbridge Intent API (референция)

### 5.1 Live пулс — broadcast

**Action:** `nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR`

| Extra | Тип | Описание |
|---|---|---|
| `hr` | int | BPM |
| `timestamp` | long | Epoch ms |
| `device` | String | MAC на гривната |

- Излъчва се при **всяко ново** HR измерване по време на активна realtime сесия.
- Default: **изключено** — трябва toggle per-device в Developer settings.
- Типичен интервал: **~2–6 s** в покой, по-често при движение.

### 5.2 Live пулс — старт / стоп

| Action | Extra |
|---|---|
| `nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR` | `device` (MAC) |
| `nodomain.freeyourgadget.gadgetbridge.command.STOP_REALTIME_HR` | `device` (MAC) |

Извиквай `START` при старт на EMS тренировка; `STOP` при край.

**Забележка:** Първото четене може да отнеме **~10–15 s** след START (тествано на Band 10).

### 5.3 Синхронизация на здравни данни

**Trigger:** `nodomain.freeyourgadget.gadgetbridge.command.ACTIVITY_SYNC`

| Extra | Описание |
|---|---|
| `device` | MAC (опционално) |
| `dataTypesHex` | Hex bit flags |

**Bit flags (`RecordedDataTypes`):**

| Flag | Hex | Данни |
|---|---|---|
| `TYPE_SPO2` | `0x00000020` | Кислород |
| `TYPE_HEART_RATE` | `0x00000080` | Исторически HR |
| `TYPE_STRESS` | `0x00000040` | Стрес |
| `TYPE_ACTIVITY` | `0x00000001` | Стъпки, активност |

**Finish broadcast:** `nodomain.freeyourgadget.gadgetbridge.action.ACTIVITY_SYNC_FINISH`

SpO₂ **не е live** — синхронизира се след измерване на гривната (обикновено на ~10 min в покой).

### 5.4 BLE свързаност (опционално)

| Action | Описание |
|---|---|
| `BLUETOOTH_CONNECT` | Свързване към device MAC |
| `BLUETOOTH_DISCONNECT` | Прекъсване |
| `BLUETOOTH_CONNECTED` | Broadcast при connect |

### 5.5 adb примери (debug)

```bash
# Старт live HR
adb shell am broadcast \
  -a nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR \
  -e device "AA:BB:CC:DD:EE:FF" \
  nodomain.freeyourgadget.gadgetbridge

# Sync SpO2 + HR history
adb shell am broadcast \
  -a nodomain.freeyourgadget.gadgetbridge.command.ACTIVITY_SYNC \
  -e device "AA:BB:CC:DD:EE:FF" \
  -e dataTypesHex "0x000000A0" \
  nodomain.freeyourgadget.gadgetbridge
```

---

## 6. XEMS модул: `WearableBridge`

Планиран нов модул в Android приложението (smali patch или native layer при миграция).

### 6.1 Отговорности

| Компонент | Роля |
|---|---|
| `WearableConfig` | MAC, enabled, HR прагове, package name GB |
| `GadgetbridgeIntentReceiver` | `BroadcastReceiver` за REALTIME_HR, SYNC_FINISH |
| `WearableSessionManager` | Lifecycle: start/stop HR при train start/stop |
| `WearableRuleEngine` | Правила → `TrainItem` команди |
| `WearableUiBinder` | Показване HR/SpO₂ в Train UI |

### 6.2 Жизнен цикъл

```
[User starts training]
    → WearableSessionManager.start()
    → send START_REALTIME_HR intent
    → register REALTIME_HR receiver

[Each HR sample]
    → WearableRuleEngine.onHeartRate(bpm, timestamp)
    → maybe TrainItem.addStrenth() / stop() / UI update

[User stops training]
    → send STOP_REALTIME_HR intent
    → unregister receiver
    → optional ACTIVITY_SYNC for SpO2
```

### 6.3 Mapping към EMS API

Съществуващите методи в `TrainItem` (decompiled):

| EMS действие | TrainItem метод |
|---|---|
| Увеличи/намали сила | `addStrenth(int delta)` |
| Увеличи/намали Hz | `addHz(int delta)` |
| Пауза сила (active pause) | `addPauseStrenth(int delta)` |
| Пауза Hz | `addPauseHz(int delta)` |
| Старт тренировка | `start()` |
| Стоп | `stop()` (вика `sendPause` + `sendStop`) |

`WearableBridge` **не пише директно** към EMS BLE — използва същата опашка като UI бутоните.

---

## 7. Правила за контрол (v1)

### 7.1 Адаптивен пулс

```text
maxHr = 220 - age   // или от user profile
threshold = maxHr * 0.85

onHeartRate(hr):
  if hr > threshold:
    trainItem.addStrenth(-5)   // hysteresis: max 1x per 10s
  elif hr < threshold * 0.75:
    trainItem.addStrenth(+2)   // опционално възстановяване
```

### 7.2 SpO₂ безопасност (след sync)

```text
onSpO2Synced(value):
  if value < 92:
    trainItem.stop()
    showAlert("Нисък кислород — тренировката е спряна")
```

### 7.3 Debounce / hysteresis

| Правило | Стойност |
|---|---|
| Минимум между `addStrenth` от wearable | 10 s |
| HR sample игнорирай ако `bpm < 40` или `bpm > 220` | Да |
| Cooldown след `stop()` от SpO₂ | 60 s |

---

## 8. Имплементация (Android / smali)

### 8.1 BroadcastReceiver (Kotlin референция)

```kotlin
class GadgetbridgeHrReceiver(
    private val onHr: (Int, Long, String) -> Unit
) : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action != ACTION_REALTIME_HR) return
        val hr = intent.getIntExtra("hr", -1)
        if (hr <= 0) return
        val ts = intent.getLongExtra("timestamp", System.currentTimeMillis())
        val mac = intent.getStringExtra("device") ?: return
        onHr(hr, ts, mac)
    }

    companion object {
        const val ACTION_REALTIME_HR =
            "nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR"
    }
}
```

### 8.2 Старт на сесия

```kotlin
fun startWearableHrSession(context: Context, bandMac: String) {
    val intent = Intent("nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR")
        .putExtra("device", bandMac)
        .setPackage(gadgetbridgePackage) // optional: direct delivery
    context.sendBroadcast(intent)
}
```

### 8.3 Регистрация (динамична)

```kotlin
val filter = IntentFilter(GadgetbridgeHrReceiver.ACTION_REALTIME_HR)
context.registerReceiver(receiver, filter, Context.RECEIVER_EXPORTED)
```

При имплементация в smali: нов `BroadcastReceiver` + регистрация в `TrainFragment` / `MainActivity` lifecycle.

### 8.4 Настройки в XEMS (UI)

| Настройка | Тип | Default |
|---|---|---|
| Wearable enabled | bool | false |
| Band MAC address | string | — |
| Gadgetbridge package | string | mainline |
| HR auto-reduce enabled | bool | true |
| HR threshold % | int | 85 |
| Strength step | int | 5 |
| SpO₂ safety stop | bool | true |
| SpO₂ min % | int | 92 |

---

## 9. Фази на разработка

### Фаза 1 — Live HR (MVP)

- [ ] `WearableConfig` + settings UI
- [ ] `START/STOP_REALTIME_HR` при train start/stop
- [ ] `REALTIME_HR` receiver → UI label
- [ ] Правило: HR > праг → `addStrenth(-5)`
- [ ] Тест с Band 8 и Band 10

### Фаза 2 — SpO₂ и sync

- [ ] `ACTIVITY_SYNC` с `TYPE_SPO2` след тренировка / на интервал
- [ ] Parse SpO₂ от Gadgetbridge DB export или broadcast (ако наличен)
- [ ] Alert + `stop()` при нисък SpO₂

### Фаза 3 — UX

- [ ] Индикатор „Гривна свързана“
- [ ] Лог на HR по време на сесия (export)
- [ ] Вибрация на гривната при HR alert (PebbleKit / GB notification)

### Фаза 4 — Бъдеще (зависи от Gadgetbridge)

- [ ] Accel stream (~100 Hz) — Band 10 / 9 Pro internal API
- [ ] Жестове: flick → ±сила (без gyro)
- [ ] Директен protobuf client (без Gadgetbridge) — **не препоръчвам** без силна причина

---

## 10. Band 8 vs Band 10 — dev бележки

| Критерий | Band 8 | Band 10 |
|---|---|---|
| GB стабилност | По-висока | Добра, по-малко тестове |
| Live HR Intent | Поддържан | Explicitly тестван |
| HR точност при EMS | Добра | По-добра |
| Accel в бъдеще | Може (coordinator opt-in) | GB dev фокус |
| Код в XEMS | **Идентичен** | **Идентичен** |

Препоръка: разработвай и тествай с **Band 8**; валидирай с **Band 10** преди release.

---

## 11. Тестване

### 11.1 Checklist

- [ ] Gadgetbridge свързан, HR се вижда в GB UI
- [ ] Intent API enabled (global + per device)
- [ ] `adb` START_REALTIME_HR → получаваш broadcast в тест app
- [ ] XEMS train start → START intent изпратен
- [ ] HR се показва в train UI
- [ ] При симулиран висок HR (или бягане) → силата намалява
- [ ] Train stop → STOP intent, receiver unregister
- [ ] EMS костюм работи едновременно (няма BLE конфликт)
- [ ] Band 8 и Band 10 smoke test

### 11.2 Известни проблеми

| Проблем | Решение |
|---|---|
| Няма HR broadcast | Провери Intent toggle; рестартирай GB сесия |
| GB убива HR след reconnect | Повтори START_REALTIME_HR |
| Mi Fitness token изтекъл | Re-pair, нов auth key |
| Firmware 2.1.8 на Band 8 sync bug | Update firmware (issue #5805) |

---

## 12. Ограничения и извън обхват

- **Жироскоп** — не се поддържа към 3rd party apps (Band 8 и 10).
- **Live SpO₂** — не; само sync / on-demand на гривната.
- **iOS** — не се поддържа (няма Gadgetbridge).
- **Директен BLE** към Xiaomi без Gadgetbridge — изисква reverse engineering на protobuf; висока поддръжка.
- **Множество гривни** — филтрирай по `device` MAC в receiver.

---

## 13. Референции

| Ресурс | URL |
|---|---|
| Gadgetbridge Intents | https://gadgetbridge.org/internals/automations/intents/ |
| Xiaomi protobuf devices | https://gadgetbridge.org/basics/topics/xiaomi-protobuf/ |
| Gadgetbridge Xiaomi devices | https://gadgetbridge.org/gadgets/wearables/xiaomi/ |
| REALTIME_HR PR | https://codeberg.org/Freeyourgadget/Gadgetbridge/pulls/6473 |
| START_REALTIME_HR PR | https://codeberg.org/Freeyourgadget/Gadgetbridge/pulls/6475 |
| Auth key tool | https://codeberg.org/argrento/huami-token |
| Band 8 specs | https://www.mi.com/global/product/xiaomi-smart-band-8/ |
| Band 10 specs | https://www.mi.com/global/product/xiaomi-smart-band-10/ |

---

## 14. Changelog на документа

| Версия | Дата | Промени |
|---|---|---|
| 1.0 | 2026-09-22 | Първоначална спецификация Band 8/10 + Gadgetbridge Intent API |
