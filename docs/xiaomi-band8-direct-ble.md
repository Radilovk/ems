# Xiaomi Smart Band 8 — директна BLE връзка в XEMS (техническа документация)

Версия на кода: **v1.1.54-ble** · Потвърдено на: Huawei P60 Pro + Xiaomi Smart Band 8 (fw 2.3.14)
Код: `branding/java/src/com/isaigu/gymapp/wearable/xiaomi/`

Този документ описва как XEMS получава пулс на живо директно от Band 8 без посредник
(Notify, Gadgetbridge, Mi Fitness), защо предишните версии не работеха, какви данни
изобщо са достъпни от гривната и какви са възможностите за сурови IMU данни
(акселерометър/жироскоп).

---

## 1. Защо директна BLE връзка

Проверени и отхвърлени пътища:

| Път | Резултат | Причина |
|---|---|---|
| Стандартен BLE Heart Rate профил (0x180D) | ✗ | Band 8 не публикува 0x180D (проверено с nRF Connect: само 0x1800, 0x1801, 0x180A, 0x1812, 0x180F, 0xFE95, 0xFDAB). Gadgetbridge също документира, че „3rd party realtime HR“ не работи при Xiaomi protobuf гривните. |
| Notify for Xiaomi → Tasker intents | ✗ | `heartRateGot` не пристига надеждно; зависи от режима на Notify и от ограниченията на Huawei за фонови приложения. |
| Notify → фалшив Home Assistant сървър | ✗ | Периодичен sync, не на живо. |
| Health Connect / Google Fit / облак на Xiaomi | ✗ | Данните идват на партиди при синхронизация; Google Fit API се спира в края на 2026. |
| **Директен протокол на Xiaomi (0xFE95) с auth key** | ✅ | Същият протокол като Mi Fitness и Gadgetbridge; пулс на живо чрез команда 8/45. |

**Ограничение:** гривната приема една удостоверена сесия. Докато XEMS е свързан, Notify /
Mi Fitness / Gadgetbridge не трябва да държат гривната (принудително спиране + забрана на
автоматичното стартиране). Иначе двете приложения си чупят сесиите взаимно.

---

## 2. GATT

Услуга **`0000fe95-0000-1000-8000-00805f9b34fb`** (Xiaomi, криптирана V1 рамка):

| Характеристика | Посока | Роля |
|---|---|---|
| `0x0051` (command read) | гривна → телефон (notify); телефон → гривна само ACK | Отговори и събития на гривната (auth, 2/x, 8/47 …) |
| `0x0052` (command write) | телефон → гривна; гривна → телефон само ACK | Команди от телефона |
| `0x0053` (activity data) | гривна → телефон | Файлове с активност (chunked). Опционална. |
| `0x0055` (data upload) | двупосочна | Качване на файлове (watchface, firmware). Опционална. |

Нотификациите се включват на 0x51, 0x52 (и 0x53/0x55, ако ги има) чрез CCCD `0x2902`.
MTU се иска 512; реално се договаря около 247. Ако `onMtuChanged` не дойде (MTU вече
договорен от друго приложение на същата връзка), след **2.5 s** услугите се откриват така или иначе.

---

## 3. Рамкиране (transport layer)

Всички стойности са little-endian.

| Байтове | Тип | Смисъл |
|---|---|---|
| `00 00 02 02` + proto | единичен, некриптиран | използва се само по време на удостоверяването |
| `00 00 02 01` + `idx(u16)` + CCM | единичен, криптиран, **телефон → гривна** | `idx` е броячът в nonce-а |
| `00 00 02 01` + CCM | единичен, криптиран, **гривна → телефон** | броячът в nonce-а е винаги **0** |
| `00 00 03 00` | ACK | успешно получен кадър |
| `00 00 03 xx` (xx≠0) | NACK | |
| `00 00 00 enc n(u16)` | начало на chunked предаване | `n` на брой парчета |
| `00 00 01 01` / `00 00 01 00` | chunk ACK старт / край | |
| `00 00 01 02`, `00 00 01 05 …` | chunk NACK / заявка за липсващи парчета | |
| `id(u16≠0)` + данни | парче №id (от 1) | |

### Правило за ACK (коренът на бъга до v1.1.52)

- Всеки **единичен кадър**, получен по характеристика X, се потвърждава с `00 00 03 00`,
  **записан в същата характеристика X**. Кадрите на гривната идват по 0x51, значи ACK-ът
  отива в **0x51**. Същото важи за chunk ACK-овете.
- Всяка команда на телефона (запис в 0x52) се потвърждава от гривната с `00 00 03 00` по 0x52.
  Телефонът не праща следваща команда, преди да дойде този ACK.

Референция: Gadgetbridge `XiaomiCharacteristic.sendAck()`. Там всяка характеристика има свой
обект и ACK-ът се пише в `bluetoothGattCharacteristic` на същия обект.

---

## 4. Удостоверяване и криптиране

Входни данни: **auth key** (16 байта, 32 hex символа; от Notify или от Mi Fitness).

```
1. телефон → 52: Command{type=1, sub=26, auth{phoneNonce{nonce = 16 случайни байта}}}      (plain)
2. гривна → 51: Command{type=1, sub=26, auth{watchNonce{nonce(16), hmac(32)}}}           (plain)
3. ключове:
     K     = HMAC-SHA256(key = phoneNonce‖watchNonce, msg = authKey)
     T(0)  = ""
     T(i)  = HMAC-SHA256(K, T(i-1) ‖ "miwear-auth" ‖ byte(i))      i = 1, 2
     out   = T(1)‖T(2)  (64 байта)
     decKey = out[0:16]   encKey = out[16:32]   decNonce = out[32:36]   encNonce = out[36:40]
   проверка: HMAC(decKey, watchNonce‖phoneNonce) == hmac   (грешен ключ → "hmac mismatch")
4. телефон → 52: Command{type=1, sub=27, auth{authStep3{
        encryptedNonces    = HMAC(encKey, phoneNonce‖watchNonce),
        encryptedDeviceInfo = CCM(encKey, encNonce, counter 0, AuthDeviceInfo)}}}           (plain)
5. гривна → 51: Command{type=1, sub=27}   → удостоверено; нататък всичко е криптирано
```

**AES-CCM:** 12-байтов nonce = `nonce4 ‖ 00000000 ‖ counter(u32 LE)`, tag 4 байта, без AAD.

- Изходящи кадри: `encKey`/`encNonce`, брояч = `encIndex`. След удостоверяването започва
  от 1 (0 е зает от стъпка 4) и расте с 1 на всяка команда.
- Входящи кадри: `decKey`/`decNonce`, брояч = **0**.

Реализацията в `XiaomiBandCrypto` е проверена срещу pycryptodome `AES.MODE_CCM` байт по байт.

---

## 5. Команди (protobuf `Command{type=1, subtype=2, …}`)

Схема: Gadgetbridge `app/src/main/proto/xiaomi.proto`.

| type/sub | Посока | Какво | В XEMS |
|---|---|---|---|
| 1/26, 1/27 | ↔ | удостоверяване | ✅ |
| 2/3 | → | часовник: `system.clock{date, time, timezone(sint32, стъпки по 15 мин.), name}` | ✅ след удостоверяването |
| 2/2 | → / ← | информация за устройството (заявка / отговор `system.deviceInfo`) | ✅ заявка |
| 2/1 | → / ← | батерия: `system.power.battery{level, state}` | — (възможно) |
| 8/0 | → | потребителски данни: `health.userInfo{height, weight, birthday, gender, maxHR, goals}` | ✅ |
| **8/45** | → | **старт на realtime stats** | ✅ веднъж на сесия |
| 8/46 | → | стоп на realtime stats | ✅ при разкачане |
| **8/47** | ← | **`health.realTimeStats{steps=1, calories=2, unknown3=3, heartRate=4, unknown5=5, standingHours=6}`** | ✅ |
| 8/10, 8/11 | ↔ | четене / запис на настройките за пулс | **не се пишат** (от v1.1.53) |

Бележки:

- START (8/45) не се преповтаря като keepalive. Всяко ново START рестартира прозореца на
  измерване и първото 8/47 не идва.
- Първите събития 8/47 често са с `heartRate=0` (измерването още тече). XEMS ги показва
  като състояние `measuring`.

---

## 6. Поток и състояния в `XiaomiBandBleClient`

```
connecting → (connectGatt, TRANSPORT_LE)
  → requestMtu(512) ─┬─ onMtuChanged ───────────┐
                     └─ 2.5 s без callback ──────┤
discovering → onServicesDiscovered → notify 51/52/53/55
auth_start → 1/26 … 1/27 → authenticated
initialized → опашка: 2/3 → 2/2 → 8/0            (всяка чака ACK от гривната, таймаут 3 s)
starting → 8/45 (след 400 ms) → measuring (hr=0) → streaming (hr>0)
```

| Защита | Стойност | Действие |
|---|---|---|
| Таймаут за удостоверяване | 45 s | `auth_timeout` → разкачане |
| ACK за команда от гривната | 3 s | опашката продължава (без вечно зацикляне) |
| Резервен ход при липсващ MTU callback | 2.5 s | откриване на услугите |
| Първо 8/47 | 12 s | едно повторно START, после reconnect |
| Спряло 8/47 | 15 s | reconnect |
| Неочаквано разкачане | 2 s | reconnect (само ако пулсът е включен) |

Грешни състояния: `bad_auth_key`, `bad_mac`, `no_bluetooth`, `no_bt_permission`,
`connect_fail`, `service_fail`, `no_fe95`, `no_chars`, `auth_fail`, `send_fail`.

### Диагностичен лог

- Файл: `Android/data/com.isaigu.gymapp25/files/diag-logs/wearable-ble.log`
  (последните около 80 реда се виждат и от бутона ⓘ до кръга с пулса).
- Първият ред е `[build] v1.1.53-ble`.
- Успешна сесия изглежда така:

```
[state] authenticated
[init] post-auth start … [init] post-auth queued
[health] realtime START enc=true encIdx=4
[notify] 51 len=…            ← гривната праща по 0x51
[hr] raw hr=0 steps=…        → measuring
[hr] raw hr=72 steps=…       → streaming
```

- `[ack] band ACK timeout` значи, че гривната не е потвърдила команда.
- `[gatt] no MTU callback … discovering anyway` значи, че е сработил резервният ход за MTU.

---

## 7. Бъгове, поправени в v1.1.53-ble

| # | Бъг | Симптом на устройството | Поправка |
|---|---|---|---|
| 1 | ACK за кадрите на гривната се пишеше в 0x52 вместо в 0x51 | удостоверяването минава, след START нито едно 8/47, **прекъсване след около 6 s** | `enqueueAckTo(source, …)`; chunk-овете се сглобяват отделно за всяка характеристика |
| 2 | Без резервен ход, ако `onMtuChanged` не дойде | вечно `connecting` | `XiaomiBandMtuFallbackTask` (2.5 s) |
| 3 | Изгубен ACK от гривната блокираше опашката | вечно `authenticated` | `XiaomiBandAckTimeoutTask` (3 s) |
| 4 | 8/11 презаписваше настройките за пулс на гривната | сменени потребителски настройки | премахнато |

---

## 8. Офлайн тест: `scripts/ble-sim/`

- `band.py` е независим симулатор на Band 8 (Python, pycryptodome). Реализира рамкирането,
  удостоверяването, AES-CCM и отговорите 2/2 и 8/47, и следи по кой канал идва всеки ACK.
- `rt/` съдържа stub-ове за `android.*` и тестова рамка (`sim.Harness`), която пуска
  **истинския** `XiaomiBandBleClient` на JVM.

```bash
pip install pycryptodome
STRICT=1 scripts/ble-sim/run.sh                      # пълен поток → HR 71..74 → PASS
STRICT=1 scripts/ble-sim/run.sh nomtu                # без onMtuChanged
STRICT=1 NOACK_FIRST_ENC=1 scripts/ble-sim/run.sh    # гривната изпуска един ACK
AUTH_KEY=<32 hex> …                                  # по избор; по подразбиране е случаен ключ
```

`STRICT=1` означава, че ACK трябва да дойде в характеристиката на кадъра. В този режим
v1.1.52 се проваля и в трите сценария, а v1.1.53 минава. Тестът не покрива радиото (обхват,
смущения, Huawei power management), само протокола.

---

## 9. Какви данни дава Band 8

| Данни | Източник | На живо? | Статус в XEMS |
|---|---|---|---|
| Пулс | 8/47 `heartRate` | ✅ (поток от събития след START; честотата не е измерена) | ✅ |
| Стъпки (кумулативно) | 8/47 `steps` | ✅ | парсва се, не се показва |
| Калории | 8/47 `calories` | ✅ | — |
| Интензитет на движението (неофициално) | 8/47 `unknown3` (расте при активност) | ✅ | — |
| Часове прав | 8/47 `standingHours` | ✅ | — |
| Батерия | 2/1 | при заявка | — |
| Носи се / зарежда / спи | 2/x device state | при заявка / събитие | — |
| Пулс, стъпки, SpO₂, стрес, сън по минути | файлове по 0x53 | ✗ (при синхронизация) | — (пренос на `XiaomiActivityFetcher` + парсерите от Gadgetbridge) |
| Тренировки (обобщение и поредица от пулс) | файлове по 0x53 | ✗ | — |
| **Суров акселерометър / жироскоп** | **няма известна команда** | — | — |

### Акселерометър и жироскоп

Band 8 има IMU, но **в разчетения протокол (Gadgetbridge `xiaomi.proto`) няма команда за
суров поток от акселерометъра или жироскопа**. Гривната смята стъпки и интензитет вътре в
себе си и навън дава само тях. Варианти, по ред на надеждност:

1. **Отделен сензор с отворен SDK.** Polar Verity Sense (пулс + акселерометър + жироскоп +
   магнитометър на живо през Polar BLE SDK), Polar H10 (ECG + акселерометър; гръдният колан
   може да се смущава от EMS тока), Movesense (отворен сензор за разработчици). В XEMS се
   добавя като втори BLE клиент до гривната и костюма.
2. **Производни от Band 8, без нов хардуер.** Каданс = Δsteps / Δt между събитията 8/47;
   интензитет от `unknown3`. Дава „дали се движи и колко интензивно“, не ъгли и ускорения.
3. **Сензорите на телефона** (`SensorManager`: `TYPE_ACCELEROMETER`, `TYPE_GYROSCOPE`), ако
   телефонът е закрепен на тялото.
4. **Разчитане на скрити/фабрични команди в Mi Fitness.** Възможно е да съществуват, но не
   е потвърдено. Изисква разглобяване на приложението и опити на гривната. Резултатът е несигурен.

### Какво конкретно има по пътя „без други устройства“

1. **Vela JS приложение на гривната** (`@system.sensor.subscribeAccelerometer`) дава достъп
   до акселерометъра, но само на гривни с Vela/HyperOS JS приложения (Band 8 Pro, 9, 10,
   Redmi Watch 4 …). Обикновената Band 8 **не е сред известните поддържани модели** (напр.
   WatchDrip поддържа 8 Pro/9/10, но не Band 8). Дори при поддържан модел данните към телефона
   минават през *Interconnect*, който е вързан за Mi Fitness и изисква одобрение от Xiaomi.
   Проверка на място: ако в Mi Fitness → гривната няма раздел „Приложения“ (само циферблати),
   JS приложения не се поддържат.
2. **Поток 8/47** — единственият източник на живо от Band 8. От v1.1.54 всяко събитие се
   записва с всички полета и интервал между събитията (виж по-долу). Дали от `steps`/`f3`/`f5`
   може да се хванат повторения, трябва да се измери. Не е известно предварително.
3. **Файлове с тренировки по 0x53** (след тренировка, стартирана на гривната): по-гъсти редове
   от минутните (пулс, каданс, стъпки), но идват след тренировката, не на живо.

### Запис на суровите данни (от v1.1.54-ble)

До `wearable-ble.log` се пишат:

| Файл | Ред |
|---|---|
| `band-raw.csv` | `epochMs,type,sub,payloadHex` за **всяка** декриптирана команда от гривната (без auth) |
| `band-realtime.csv` | `epochMs,dtMs,steps,calories,f3,hr,f5,standing,extra` за всяко 8/47 (`extra` = непознати полета) |

Всяка сесия започва с ред `# session <epochMs> <build>`.

**Протокол за тест на повторения:**
1. Свързване, изчакване на `streaming`.
2. 30 s стоене неподвижно → отбележи часа.
3. 10 клека в равно темпо → отбележи часа на началото и края.
4. 30 s неподвижно.
5. Същото с включен EMS импулс.
6. Изтегли `band-realtime.csv` и `band-raw.csv` от `Android/data/com.isaigu.gymapp25/files/diag-logs/`.

От файловете се вижда честотата на събитията (`dtMs`) и дали някое поле се променя в ритъма
на клековете. Ако честотата е под около 1 събитие/s, броене по форма на движението няма да
е възможно, а само груба оценка на активността.

---

## 10. Сглобяване

```bash
bash build-apk.sh          # пълна сглобка → xems27.apk, RELEASE_VERSION
python3 scripts/verify-apk-hrfix.py
```

- `scripts/compile-wearable-java.sh` компилира `wearable/**.java` → d8 → baksmali →
  `branding/smali/wearable/`. Ако няма Android SDK (`android-sdk/platforms/android-30/android.jar`
  и `build-tools/30.0.3/d8`), ползва готовите smali файлове от репото.
- Без d8, само за пакета `xiaomi/`: `javac --release 8` срещу `android.jar` + `branding/java-stubs`
  → `dx` (от dex2jar, `lib/dx-30.0.2.jar`) → `baksmali` → копиране в `branding/smali/wearable/xiaomi/`.
  Така е сглобен v1.1.53-ble.
- Всеки нов клас в `xiaomi/` се добавя в списъка `WEARABLE_JAVA` в `compile-wearable-java.sh`.
  Вместо анонимни класове се ползват отделни `Runnable` файлове (d8/dx съвместимост).

---

## 11. Референции

- Gadgetbridge, Xiaomi протокол: `service/devices/xiaomi/XiaomiCharacteristic.java`,
  `XiaomiBleSupport.java`, `services/XiaomiAuthService.java`, `services/XiaomiHealthService.java`,
  `app/src/main/proto/xiaomi.proto` (codeberg.org/Freeyourgadget/Gadgetbridge).
- Документация на Gadgetbridge за Xiaomi protobuf устройства: https://gadgetbridge.org/basics/topics/xiaomi-protobuf/
- Polar BLE SDK (сурови ACC/GYRO/MAG): https://github.com/polarofficial/polar-ble-sdk
