# Интеграция XEMS ↔ Xiaomi Smart Band 8 / 10

Версия: 1.1  
Дата: 2026-09-22  
Статус: Фаза 1 имплементирана в APK v1.1.23+ (live HR display)

---

## 1. Цел

XEMS да получава данни от **Xiaomi Smart Band 8** или **Smart Band 10** и да ги използва за:

- адаптивен контрол на EMS тренировка (сила, честота, старт/стоп);
- визуализация на пулс и здравни метрики в UI;
- бъдещи правила за безопасност (SpO₂, стрес).

**Важно:** EMS костюмът остава на **отделна BLE връзка**. Гривната се управлява от companion app; XEMS комуникира през **Android Intent API**.

### Препоръчан път: Notify for Xiaomi

Ако гривната вече е свързана в **Notify for Xiaomi** (както на скрийшотите), използвай **Notify** — не е нужен Gadgetbridge. Notify има документиран Tasker Intent API: live HR, акселерометър, connect/disconnect, workout triggers.

| Път | Кога да го избереш |
|---|---|
| **Notify for Xiaomi** (препоръчано) | Вече имаш Band 8 в Notify; auth key е наличен |
| **Gadgetbridge** (алтернатива) | Open-source предпочитание; няма Notify |

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

### Достъп от XEMS

| Данни | Notify | Gadgetbridge | Бележка |
|---|---|---|---|
| Пулс (HR) | **Да** | **Да** | Notify: `heartRateGot`; GB: `REALTIME_HR` |
| SpO₂ | Sync / export | Sync | **Не live** в двата случая |
| Стрес | Sync | Sync | Не за EMS v1 |
| Стъпки | **Да** (`stepsGot`) | Sync | Не за EMS v1 |
| Акселерометър | **Да** (`sensorData`) | **Не** (v1) | Notify: `sensorStart` → x,y,z |
| Жироскоп | **Не** | **Не** | Няма публичен API |

---

## 3. Архитектура

```
┌─────────────────┐     BLE (proprietary)     ┌──────────────────────┐
│ Xiaomi Band 8/10│ ◄──────────────────────► │ Notify for Xiaomi    │
└─────────────────┘                           │ (един BLE клиент)    │
                                              └──────────┬───────────┘
                                                         │ Android Intents
                                                         ▼
┌─────────────────┐     BLE (EMS protocol)    ┌──────────────────────┐
│   EMS костюм    │ ◄──────────────────────► │ XEMS App             │
└─────────────────┘                           │ NotifyWearableBridge │
                                              │ TrainItem API        │
                                              └──────────────────────┘
```

Алтернатива: замени **Notify** с **Gadgetbridge** — същият Intent pattern, различни action names (виж §5B).

### Принципи

1. **Един BLE клиент за гривната** — Notify (или Gadgetbridge); XEMS не се свързва директно с Band.
2. **Един BLE клиент за костюма** — съществуващият `CommandSender` / FastBle път.
3. Android поддържа **множество BLE връзки** — няма конфликт между гривна и костюм.
4. **iOS** — Notify и Gadgetbridge са Android-only; тази интеграция е **само Android**.

---

## 4. Предварителни изисквания (потребител)

### 4.1A Notify for Xiaomi (препоръчано)

| Компонент | Изискване |
|---|---|
| XEMS | Версия с `NotifyWearableBridge` (бъдеща) |
| Notify for Xiaomi | v23.x+ (потребителят има **23.6.4**) |
| Tasker integration | Включена в Notify |

**Настройка в Notify (еднократно):**

1. Гривната вече е добавена (пример: **Xiaomi Smart Band 8**, MAC `D0:62:2C:26:49:60`, firmware `2.3.14`).
2. **Auth key** е видим в Основни настройки — не го споделяй публично.
3. **Smart assistant → Tasker integration** → включи.
4. **Heart monitor** → режим **„Notify app mode“** (задължително за `heartRateGot`).
5. По желание: парола за Tasker intents (XEMS трябва да я подава като extra `password`).

**По време на EMS тренировка:** XEMS изпраща `taskerHeartEnable` при старт и `taskerHeartDisable` при стоп.

### 4.1B Gadgetbridge (алтернатива)

| Компонент | Изискване |
|---|---|
| XEMS | Версия с `WearableBridge` (бъдеща) |
| Gadgetbridge | Mainline или Nightly |
| Mi Fitness | Еднократно за auth token |

### 4.2 Pairing (Gadgetbridge път)

1. Инсталирай **Mi Fitness**, свържи Band 8/10.
2. Извлечи **auth key** (виж [huami-token](https://codeberg.org/argrento/huami-token)).
3. В Gadgetbridge: Add device → MAC + auth key.
4. Можеш да деинсталираш Mi Fitness след успешен pairing.

### 4.3 Активиране на Intent API в Gadgetbridge

**Важно:** „Intent API включен“ в глобалните настройки **не е достатъчно** за live пулс. Нужни са **и** глобални **и** per-device toggles (виж checklist §11.3).

**Глобално:** Settings → Developer options → Intent API:
- **Bluetooth Intent API** (за `BLUETOOTH_CONNECT` / `BLUETOOTH_CONNECTED`)
- Категории за broadcast команди (activity sync и др., по желание)

**Per device (Band 8):** Device specific settings → Developer settings → Intent API:
- **Realtime HR broadcast** → `nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR`
- **Start/stop realtime HR** → `START_REALTIME_HR` / `STOP_REALTIME_HR`

**Версия на Gadgetbridge:** Live HR broadcast е добавен в PR [#6473](https://codeberg.org/Freeyourgadget/Gadgetbridge/pulls/6473) и START/STOP в PR [#6475](https://codeberg.org/Freeyourgadget/Gadgetbridge/pulls/6475) (юли 2025). Нужен е **GB nightly 0.93+** (package `nodomain.freeyourgadget.gadgetbridge.nightly_nopebble` или `nightly`). Стар mainline **няма** `REALTIME_HR`.

**Един BLE клиент:** Разкачи гривната от Notify преди GB. Двата companion app-а не могат да държат Band 8 едновременно.

**Първо измерване:** След `START_REALTIME_HR` първият пулс идва след **~14 s** (тествано на Band 10). Алтернатива: стартирай **Live activity** в GB UI (сърце) — тогава broadcast-ите текат докато сесията е активна.

### 4.4 Package names на Gadgetbridge

| Версия | Package |
|---|---|
| Mainline | `nodomain.freeyourgadget.gadgetbridge` |
| Nightly | `nodomain.freeyourgadget.gadgetbridge.nightly` |
| Nightly No Pebble | `nodomain.freeyourgadget.gadgetbridge.nightly_nopebble` |
| Bangle.js build | `com.espruino.gadgetbridge.banglejs` |

XEMS auto-detect: `nightly_nopebble` → `nightly` → `mainline`.

---

## 5. Notify for Xiaomi Intent API (референция)

**Package за изпращане към Notify:** `com.mc.xiaomi1`  
**Prefix на actions:** `com.mc.xiaomi.*` (не `com.mc.miband`)

Официална документация: https://www.mibandnotify.com/help/tasker_xiaomi_help.php

### 5.1 Live пулс — получаване

**Action:** `com.mc.xiaomi.heartRateGot`

| Extra | Тип | Описание |
|---|---|---|
| `value` | int | BPM |

- Изисква heart monitor режим **„Notify app mode“**.
- Излъчва се след всяко измерване от Notify.
- Типичен интервал: **~5–30 s** в покой; по-често при workout mode.

### 5.2 Live пулс — старт / стоп

Изпращай към package `com.mc.xiaomi1`:

| Action | Описание |
|---|---|
| `com.mc.xiaomi.taskerHeartEnable` | Включи heart monitor |
| `com.mc.xiaomi.taskerHeartDisable` | Изключи heart monitor |

```kotlin
fun enableNotifyHr(context: Context) {
    val intent = Intent("com.mc.xiaomi.taskerHeartEnable")
        .setPackage("com.mc.xiaomi1")
    context.sendBroadcast(intent)
}
```

### 5.3 Акселерометър (уникално за Notify)

| Action | Описание |
|---|---|
| `com.mc.xiaomi.tasker.sensorStart` | Старт мониторинг |
| `com.mc.xiaomi.tasker.sensorStop` | Стоп |

**Broadcast:** `com.mc.xiaomi.tasker.sensorData`

| Extra | Тип |
|---|---|
| `time` | long (ms) |
| `x`, `y`, `z` | int |

Полезно за бъдещи жестове (flick → ±сила). **Жироскоп няма.**

### 5.4 Други полезни events

| Action | Extra | Описание |
|---|---|---|
| `com.mc.xiaomi.connected` | — | Гривна свързана |
| `com.mc.xiaomi.disconnected` | — | Гривна изключена |
| `com.mc.xiaomi.batteryStatGot` | `value` (int) | Батерия % |
| `com.mc.xiaomi.stepsGot` | `value` (int) | Стъпки днес |
| `com.mc.xiaomi.tasker.trigger.workoutStarted` | — | Workout на гривната |
| `com.mc.xiaomi.tasker.trigger.workoutFinished` | — | Workout приключен |

### 5.5 Команди за свързване / sync

| Action | Описание |
|---|---|
| `com.mc.xiaomi.connectToBand` | Свържи ако не е свързана |
| `com.mc.xiaomi.reconnectToBand` | Force reconnect |
| `com.mc.xiaomi.syncData` | Sync стъпки/сън/HR history |

### 5.6 adb примери (debug)

```bash
# Включи HR monitor
adb shell am broadcast \
  -a com.mc.xiaomi.taskerHeartEnable \
  com.mc.xiaomi1

# Слушай HR (в отделен тест app / logcat)
# Action: com.mc.xiaomi.heartRateGot, extra: value

# Старт акселерометър
adb shell am broadcast \
  -a com.mc.xiaomi.tasker.sensorStart \
  com.mc.xiaomi1
```

### 5.7 Notify vs Gadgetbridge

| Критерий | Notify | Gadgetbridge |
|---|---|---|
| Вече настроен Band 8 | **Да** (потребителят) | Не |
| Live HR Intent | Да | Да |
| Акселерометър Intent | **Да** | Не (v1) |
| Open source | Не | Да |
| PRO функции | Някои sync опции | Безплатно |
| Auth key UI | **Вградено** | Ръчно |

---

## 5B. Gadgetbridge Intent API (алтернатива)

### 5B.1 Live пулс — broadcast

**Action:** `nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR`

| Extra | Тип | Описание |
|---|---|---|
| `hr` | int | BPM |
| `timestamp` | long | Epoch ms |
| `device` | String | MAC на гривната |

- Излъчва се при **всяко ново** HR измерване по време на активна realtime сесия.
- Default: **изключено** — трябва toggle per-device в Developer settings.
- Типичен интервал: **~2–6 s** в покой, по-често при движение.

### 5B.2 Live пулс — старт / стоп

| Action | Extra |
|---|---|
| `nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR` | `device` (MAC) |
| `nodomain.freeyourgadget.gadgetbridge.command.STOP_REALTIME_HR` | `device` (MAC) |

Извиквай `START` при старт на EMS тренировка; `STOP` при край.

**Забележка:** Първото четене може да отнеме **~10–15 s** след START (тествано на Band 10).

### 5B.3 Синхронизация на здравни данни

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

### 5B.4 BLE свързаност (опционално)

| Action | Описание |
|---|---|
| `BLUETOOTH_CONNECT` | Свързване към device MAC |
| `BLUETOOTH_DISCONNECT` | Прекъсване |
| `BLUETOOTH_CONNECTED` | Broadcast при connect |

### 5B.5 adb примери (debug)

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

## 6. XEMS модул: `NotifyWearableBridge`

Планиран нов модул в Android приложението (smali patch или native layer при миграция).

### 6.1 Отговорности

| Компонент | Роля |
|---|---|
| `WearableConfig` | enabled, HR прагове, Notify package (`com.mc.xiaomi1`) |
| `NotifyHrReceiver` | `BroadcastReceiver` за `heartRateGot`, `connected` |
| `WearableSessionManager` | Lifecycle: `taskerHeartEnable`/`Disable` при train start/stop |
| `WearableRuleEngine` | Правила → `TrainItem` команди |
| `WearableUiBinder` | Показване HR в Train UI |

За Gadgetbridge път: `GadgetbridgeIntentReceiver` + `START/STOP_REALTIME_HR` (същата архитектура).

### 6.2 Жизнен цикъл (Notify)

```
[User starts training]
    → WearableSessionManager.start()
    → send taskerHeartEnable to com.mc.xiaomi1
    → register heartRateGot receiver

[Each HR sample]
    → WearableRuleEngine.onHeartRate(bpm)
    → maybe TrainItem.addStrenth() / UI update

[User stops training]
    → send taskerHeartDisable
    → unregister receiver
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

### 8.1 BroadcastReceiver (Kotlin референция — Notify)

```kotlin
class NotifyHrReceiver(
    private val onHr: (Int) -> Unit
) : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action != ACTION_HEART_RATE) return
        val hr = intent.getIntExtra("value", -1)
        if (hr <= 0) return
        onHr(hr)
    }

    companion object {
        const val ACTION_HEART_RATE = "com.mc.xiaomi.heartRateGot"
        const val NOTIFY_PACKAGE = "com.mc.xiaomi1"
    }
}
```

### 8.2 Старт на сесия (Notify)

```kotlin
fun startNotifyHrSession(context: Context) {
    val intent = Intent("com.mc.xiaomi.taskerHeartEnable")
        .setPackage(NotifyHrReceiver.NOTIFY_PACKAGE)
    context.sendBroadcast(intent)
}

fun stopNotifyHrSession(context: Context) {
    val intent = Intent("com.mc.xiaomi.taskerHeartDisable")
        .setPackage(NotifyHrReceiver.NOTIFY_PACKAGE)
    context.sendBroadcast(intent)
}
```

### 8.3 Регистрация (динамична)

```kotlin
val filter = IntentFilter(NotifyHrReceiver.ACTION_HEART_RATE)
context.registerReceiver(receiver, filter, Context.RECEIVER_EXPORTED)
```

При имплементация в smali: нов `BroadcastReceiver` + регистрация в `TrainFragment` / `MainActivity` lifecycle.

### 8.4 Настройки в XEMS (UI)

| Настройка | Тип | Default |
|---|---|---|
| Wearable enabled | bool | false |
| Companion app | enum | `notify` / `gadgetbridge` |
| Notify package | string | `com.mc.xiaomi1` |
| HR auto-reduce enabled | bool | **false** (MVP: само показване) |
| HR threshold % | int | 85 |
| Strength step | int | 5 |
| SpO₂ safety stop | bool | true |
| SpO₂ min % | int | 92 |

---

## 9. Фази на разработка

### Фаза 1 — Live HR (MVP, Notify)

- [x] `WearableConfig` + enabled by default
- [x] `taskerHeartEnable`/`Disable` при train start/stop
- [x] `heartRateGot` receiver → UI label (master sidebar)
- [x] Опционално: HR > праг → `addStrenth(-5)` (default OFF)
- [ ] Тест с Band 8 (`D0:62:2C:26:49:60`)

### Фаза 2 — SpO₂ и sync

- [ ] `ACTIVITY_SYNC` с `TYPE_SPO2` след тренировка / на интервал
- [ ] Parse SpO₂ от Gadgetbridge DB export или broadcast (ако наличен)
- [ ] Alert + `stop()` при нисък SpO₂

### Фаза 3 — UX

- [ ] Индикатор „Гривна свързана“
- [ ] Лог на HR по време на сесия (export)
- [ ] Вибрация на гривната при HR alert (PebbleKit / GB notification)

### Фаза 4 — Бъдеще

- [ ] Accel stream via Notify `sensorStart` / `sensorData`
- [ ] Жестове: flick → ±сила (без gyro)
- [ ] Workout triggers (`workoutStarted`/`Finished`) за auto-sync

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

### 11.1 Checklist (Notify)

- [ ] Notify свързан, Band 8 видим в профили
- [ ] Tasker integration включена в Notify
- [ ] Heart monitor = **„Notify app mode“**
- [ ] `adb` `taskerHeartEnable` → получаваш `heartRateGot`
- [ ] XEMS train start → HR enable intent изпратен
- [ ] HR се показва в train UI
- [ ] Train stop → `taskerHeartDisable`, receiver unregister
- [ ] EMS костюм работи едновременно (няма BLE конфликт)

### 11.3 Checklist (Gadgetbridge + XEMS v1.1.34+)

**Подготовка (еднократно)**

- [ ] Деинсталирай/разкачи гривната от **Notify for Xiaomi**
- [ ] GB nightly (`nightly_nopebble` или `nightly`) — версия **0.93+**
- [ ] Band 8 в GB: свързана, firmware 2.3.14, auth key OK
- [ ] GB глобално: Settings → Developer → **Intent API** → **Bluetooth Intent API** ВКЛ
- [ ] GB на гривната: Device settings → Developer → Intent API:
  - [ ] **Realtime HR broadcast** ВКЛ
  - [ ] **Start/stop realtime HR** ВКЛ
- [ ] Huawei: изключи оптимизация на батерията за **XEMS** и **Gadgetbridge**
- [ ] XEMS: ♥ → MAC `D0:62:2C:26:49:60` → **Активирай циферблат** → **Свържи гривната**

**По време на тест**

- [ ] В GB: стартирай **Live activity** (икона сърце) ИЛИ изчакай 15–30 s
- [ ] XEMS циферблат показва диагностика (не „Гривната е изключена“ в GB режим):
  - `GB cmds: N` (N > 0) — XEMS изпраща CONNECT + START
  - `последно: REALTIME_HR` — GB broadcast получен
  - `GB HR: N` (N > 0) — пулсът се показва на циферблата
- [ ] EMS костюм работи паралелно (отделен BLE)

**ADB верификация (по избор)**

```bash
# Стартирай realtime HR (смени package и MAC)
adb shell am broadcast -a nodomain.freeyourgadget.gadgetbridge.command.START_REALTIME_HR \
  -e device "D0:62:2C:26:49:60" \
  nodomain.freeyourgadget.gadgetbridge.nightly_nopebble

# Слушай broadcast (отделен терминал)
adb shell am monitor -a nodomain.freeyourgadget.gadgetbridge.action.REALTIME_HR
```

Ако `am monitor` **не** вижда `REALTIME_HR` при активен пулс в GB UI → GB build-ът няма PR #6473 или per-device toggle е изключен.

### 11.4 Известни проблеми

| Проблем | Решение |
|---|---|
| „Свързана, изчакване на пулс“ (connected ✓, HR ✗) | Notify показва пулс, но **не го излъчва** — режимът е „Band only“ / непрекъснат, не „Notify app mode“. Провери ☰ → Smart assistant → **Heart monitor** |
| HR събития = 0, батерия OK | Само `connected`/`batteryStatGot` работят → смени Heart monitor режима |
| HR и батерия = 0 | Tasker integration изключен, парола грешна, или Huawei блокира Notify на заден фон |
| Няма `heartRateGot` изобщо | Тествай с Tasker/Automate (Intent `com.mc.xiaomi.heartRateGot`). Ако и там е 0 → Band 8 + Notify не поддържа broadcast на този firmware |
| HR твърде бавен | Най-къс интервал в Heart monitor; дръж Notify на преден план |
| Notify не е на преден план | `connectToBand` + отвори Notify преди тренировка |
| Auth key изтекъл | „Вземете ключ за удостоверяване“ в Notify |
| Notify пътят не работи | **Gadgetbridge** + `REALTIME_HR` broadcast (разкачи гривната от Notify първо) |
| GB показва пулс, XEMS „изключена“ / HR=0 | v1.1.33 bug (скрива диагностика); обнови до **v1.1.34+**. Провери per-device Intent API toggles, не само глобалния |
| GB cmds > 0, last ≠ REALTIME_HR | Стартирай Live activity в GB; изчакай 15s; обнови GB nightly |
| GB cmds = 0 | MAC грешен; GB package не открит; Huawei убива XEMS на заден фон — foreground service в v1.1.34 |
| API включен, но няма HR | Глобален Intent API ≠ per-device realtime HR broadcast + START_REALTIME_HR |

---

## 12. Ограничения и извън обхват

- **Жироскоп** — не се поддържа към 3rd party apps (Band 8 и 10).
- **Live SpO₂** — не; само sync / on-demand на гривната.
- **iOS** — не се поддържа.
- **Директен BLE** към Xiaomi без companion app — reverse engineering на protobuf; висока поддръжка.
- **Notify** е closed-source — зависимост от developer updates.
- **Множество гривни** — филтрирай по `device` MAC в receiver.

---

## 13. Референции

| Ресурс | URL |
|---|---|
| Notify Tasker API (Xiaomi) | https://www.mibandnotify.com/help/tasker_xiaomi_help.php |
| Notify send intent tutorial | https://www.mibandnotify.com/help/tasker_send_intent_tutorial.php |
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
| 1.1 | 2026-09-22 | Notify for Xiaomi като препоръчан път; Tasker Intent API референция |
| 1.2 | 2026-09-23 | GB audit: per-device vs global Intent API; checklist §11.3; v1.1.34 fixes |
