# XEMS / Kems — Архитектура и техническа документация

> Анализ на `XEMS.apk` (версия **1.0.29**, build **81471398**)  
> Дата на анализа: 2026-09-09

---

## 1. Какво е приложението?

**XEMS** (показвано в UI като **Kems**) е Android приложение за управление на **EMS (Electrical Muscle Stimulation)** фитнес/тренировъчно оборудване. Разработено е от **Isaigu** (`com.isaigu.gymapp`) и е ориентирано към **ландшафтни таблети** (1280×720 dp), типични за фитнес зали и EMS студиа.

### Основни функции

| Функция | Описание |
|---------|----------|
| **Вход и потребители** | Логин към облачен сървър, управление на клиенти/треньори |
| **BLE свързване** | Bluetooth Low Energy комуникация с EMS устройства (филтър: `"Nord"`) |
| **Тренировъчни програми** | Създаване, редактиране, изпълнение на EMS програми с параметри (интензитет, време, мускулни зони) |
| **Видео тренировки** | Списък с видеа от сървъра, кеширане през HTTP proxy |
| **Календар** | Планиране на тренировки, интеграция с Android Calendar |
| **Настройки** | Език, лого, режим (single/multi user), яркост |
| **Синхронизация** | Записи, програми и потребителски данни към `xemsplus.com` |
| **Авто-обновяване** | Проверка и инсталация на нова APK версия от сървъра |
| **Автостарт** | `BootBroadcastReceiver` — стартира при зареждане на устройството |

### Поддържани езици

`zh` (китайски), `en`, `es`, `fr`, `pl`, `pt`, `ru`

---

## 2. Технически профил

| Параметър | Стойност |
|-----------|----------|
| **Package name** | `com.isaigu.gymapp` |
| **App label** | Kems |
| **Version** | 1.0.29 (versionCode: 81471398) |
| **minSdkVersion** | 18 (Android 4.3) |
| **targetSdkVersion** | 28 (Android 9) |
| **compileSdkVersion** | 28 |
| **Ориентация** | Landscape (задължителна) |
| **Размер APK** | ~7.3 MB |
| **DEX файлове** | 1 (`classes.dex`) |
| **Backend API** | `https://xemsplus.com/gymproject/app` |

### Разрешения (permissions)

```
INTERNET, ACCESS_NETWORK_STATE, CHANGE_NETWORK_STATE, CHANGE_WIFI_STATE
BLUETOOTH, BLUETOOTH_ADMIN
ACCESS_COARSE_LOCATION, ACCESS_FINE_LOCATION
READ/WRITE_EXTERNAL_STORAGE, WRITE_SETTINGS
READ/WRITE_CALENDAR
DOWNLOAD_WITHOUT_NOTIFICATION, REQUEST_INSTALL_PACKAGES
SYSTEM_ALERT_WINDOW, RECEIVE_BOOT_COMPLETED
MOUNT_UNMOUNT_FILESYSTEMS
```

---

## 3. Архитектура на приложението

```
┌─────────────────────────────────────────────────────────────────┐
│                        MainActivity                              │
│  (Landscape, Fragment host, BLE init, Video cache, Permissions) │
└──────────────────────────┬──────────────────────────────────────┘
                           │
         ┌─────────────────┼─────────────────┐
         ▼                 ▼                 ▼
  ┌─────────────┐  ┌──────────────┐  ┌─────────────┐
  │  Fragments  │  │   Managers   │  │   Message   │
  │  (UI layer) │  │  (Business)  │  │  Dispatcher │
  └─────────────┘  └──────────────┘  └─────────────┘
         │                 │                 │
         │          ┌──────┴──────┐          │
         │          ▼             ▼          │
         │    ┌─────────┐  ┌──────────┐    │
         │    │ ApiMgr  │  │  BleMgr  │    │
         │    │ (HTTP)  │  │  (BLE)   │    │
         │    └────┬────┘  └────┬─────┘    │
         │         │            │          │
         ▼         ▼            ▼          ▼
  ┌──────────────────────────────────────────────┐
  │              DataMgr (singleton)              │
  │  loginUser, trainUsers, trainData, devices   │
  └──────────────────────────────────────────────┘
         │                              │
         ▼                              ▼
  ┌─────────────┐              ┌──────────────────┐
  │ FileUtils   │              │ ProtocolParser   │
  │ (local JSON)│              │ ProtocolController│
  └─────────────┘              │ AndroidBleController│
                               └──────────────────┘
                                        │
                                        ▼
                               ┌──────────────────┐
                               │  EMS Hardware    │
                               │  (BLE "Nord")    │
                               └──────────────────┘
```

### 3.1 UI слой (Fragments)

| Fragment | Роля |
|----------|------|
| `SplashFragment` | Splash screen, проверка за обновяване, зареждане на данни |
| `LoginFragment` | Вход с потребител/парола |
| `StartFragment` | Начален екран след логин |
| `MainFragment` | Главен контейнер с 5 таба (bottom navigation) |
| `TrainFragment` | Активна тренировка, BLE контрол, EMS параметри |
| `UserFragment` | Управление на потребители/клиенти |
| `SettingFragment` | Настройки (език, лого, режим) |
| `VideoListFragment` | Списък с тренировъчни видеа |
| `CalendarFragment` | Календар за планиране |

### 3.2 Dialog компоненти

- `EditUserPersonalDataDialog` — лични данни на потребител
- `EditUserProgramDataDialog` — параметри на програма
- `UserProgramDeviceConnectDialogFragment` — свързване с BLE устройство
- `ProgramPlanDialog`, `CustomPlanDialog`, `SaveProgramDialog`
- `UserRecordDataDialog`, `DatePickerDialog`

### 3.3 Managers (бизнес логика)

| Клас | Отговорност |
|------|-------------|
| `ApiMgr` | REST API комуникация с `xemsplus.com` |
| `BleMgr` | Инициализация и lifecycle на BLE контролера |
| `DataMgr` | Централно състояние (потребители, програми, устройства) |
| `CommonUtils` | Помощни функции |

### 3.4 BLE протокол

```
Формат на пакет:
[length][cmd][data...][checksum]

- length: обща дължина на пакета
- cmd: тип команда (byte)
- data: payload
- checksum: сума на всички предишни байти (mod 256)

Филтър при сканиране: име съдържа "Nord"
Service UUID: дефиниран в BleInterface.SERVICE_UUID
```

Класове:
- `AndroidBleController` — Android BLE API wrapper
- `BleController` — високо ниво контрол
- `ProtocolParser` — парсване на входящи байтове
- `ProtocolController` — изпращане на команди

### 3.5 API endpoints (xemsplus.com)

| Endpoint | Метод | Описание |
|----------|-------|----------|
| `/users/loginWithoutVertifyCode` | POST | Вход |
| `/users/submitUserData` | POST | Регистрация на потребител |
| `/users/updateUserData` | POST | Обновяване на потребител |
| `/users/getUserCustomers/{userId}` | POST | Списък клиенти |
| `/users/uploadUseTime` | POST | Време на използване |
| `/users/updateAppLogo` | POST | Персонално лого |
| `/programtraindata/*` | POST | CRUD на тренировъчни програми |
| `/trainrecord/*` | POST | Записи от тренировки |
| `/video/getVideoListByPage` | POST | Видеа |
| `/machine/getUserBindMachine/{userId}` | GET | Свързани устройства |
| `/protocol/getCurrentProtocol/{lang}` | GET | Регистрационен протокол |
| `/splash/getLastestVersionByType/XEMS` | POST | Splash screen |
| `/clientupdate/checkUpdateByAppType/XEMS` | POST | Проверка за обновяване |
| `/file/upload` | POST | Качване на файлове |

**Автентикация:** Bearer token в `Authorization` header. При изтичане (код 2, 6, 7) — автоматичен re-login.

**Парола salt:** `ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt`

### 3.6 Локално съхранение

| Файл/ресурс | Съдържание |
|-------------|------------|
| `assets/login_user_data.json` | Криптирани/хеширани данни за автологин |
| `UserData` (сериализиран) | Настройки: език, парола, autoLogin, logoPath |
| `Constants.file_name_login_user` | Данни за логнат потребител |
| `videoCache/` | Кеширани видео файлове |

### 3.7 Event система

`MessageDispatcher` — pub/sub pattern за комуникация между компоненти.

Ключови събития:
- `event_ble_start_scan`, `event_ble_stop_scan`
- `event_discover_device`, `event_device_connected`, `event_device_disconnected`
- `event_data_available` — входящи BLE данни
- `event_ble_state_change`

---

## 4. Външни библиотеки

| Библиотека | Употреба |
|------------|----------|
| **Android Support Library 26** | Fragments, AppCompat, FileProvider |
| **OkHttp3** | HTTP клиент |
| **Alibaba FastJSON** | JSON сериализация |
| **Glide** (Bumptech) | Зареждане на изображения |
| **JZVideoPlayer** (danikula) | Видео плейър + HTTP proxy cache |
| **AndroidAutoSize** (jessyan) | Адаптивен UI за различни екрани |
| **HiPermission** (weyye) | Runtime permissions |
| **MNUpdateApk** (maning) | APK update & install |
| **Apache POI** | Excel обработка |
| **JavaMail (javax.mail)** | Email функционалност |
| **Bigkoo PickView** | Date/time picker |
| **Contrarywind** | Wheel picker UI |
| **SLF4J** | Logging |

---

## 5. Структура на файловете в APK

```
XEMS.apk
├── AndroidManifest.xml
├── classes.dex                    # Всички Java класове (компилирани)
├── resources.arsc                 # Компилирани ресурси
├── assets/
│   ├── login_user_data.json       # Криптирани login данни
│   └── logo2.png                  # Дефолтно лого
├── res/                           # Layouts, strings, images, styles
│   ├── layout/                    # ~50+ XML layouts
│   ├── values*/strings.xml        # Многоезични текстове
│   ├── mipmap/                    # Икони (вкл. ic_launcher_xems)
│   └── xml/
│       ├── network_security_config.xml  # cleartext HTTP allowed
│       └── file_paths.xml
├── META-INF/                      # Подпис и service providers
└── org/apache/...                 # POI и Harmony AWT ресурси
```

---

## 6. Може ли да се редактира и върне работещ APK?

### ✅ Да — потвърдено

Тестван workflow:

```bash
# 1. Декомпилация
apktool d XEMS.apk -o decompiled/

# 2. Редакция (ресурси, smali, manifest)

# 3. Прекомпилация
apktool b decompiled/ -o XEMS-rebuilt-unsigned.apk

# 4. Подписване
uber-apk-signer --apks XEMS-rebuilt-unsigned.apk
# → XEMS-rebuilt-aligned-debugSigned.apk
```

**Резултат:** Успешно прекомпилиран и подписан APK: `XEMS-rebuilt-aligned-debugSigned.apk`

> ⚠️ Новият APK е подписан с **debug keystore**, не с оригиналния сертификат. За инсталация върху съществуваща инсталация трябва да се деинсталира старата версия първо.

---

## 7. Какво може да се редактира БЕЗОПАСНО?

### 🟢 Ниско рисково (препоръчително)

| Област | Примери | Метод |
|--------|---------|-------|
| **Текстове/преводи** | `res/values*/strings.xml` | Директна редакция на XML |
| **Изображения** | `res/mipmap/`, `res/drawable/`, `assets/logo2.png` | Замяна на PNG/JPG файлове |
| **App label** | `app_name` в strings.xml | XML редакция |
| **Network config** | `network_security_config.xml` | Добавяне на домейни |
| **Цветове/стилове** | `res/values/colors.xml`, `styles.xml` | XML редакция |
| **Layout промени** | `res/layout/*.xml` | Визуални корекции |
| **Version bump** | `apktool.yml` versionCode/versionName | За нова инсталация |

### 🟡 Среден риск (възможно, но внимателно)

| Област | Примери | Риск |
|--------|---------|------|
| **API URL** | `ApiMgr.smali` — смяна на `xemsplus.com` | Може да счупи синхронизацията |
| **AndroidManifest** | permissions, activities | Може да блокира стартиране |
| **Smali код** | Логика в `com/isaigu/gymapp/` | Грешки при компилация/изпълнение |
| **BLE филтър** | `"Nord"` в `BleMgr.smali` | Няма да намери устройства |
| **minSdk/targetSdk** | Повишаване на SDK | Compatibility проблеми |

### 🔴 Висок риск (избягвай без оригинален source)

| Област | Причина |
|--------|---------|
| **classes.dex директно** | Бинарна редакция — почти невъзможна |
| **BLE протокол** | `ProtocolParser`, `ProtocolController` — hardware зависимост |
| **Криптирани данни** | `login_user_data.json` — неизвестен алгоритъм |
| **Password salt / auth** | Счупва login към сървъра |
| **ProGuard mapping** | Кодът е obfuscated в release (частично) |
| **Пълна Java реимплементация** | Няма Gradle проект, само декомпилиран smali |

---

## 8. Какво НЯМА в репозитория

- ❌ Оригинален **Gradle/Android Studio** проект
- ❌ Java/Kotlin **source code** (има само декомпилиран)
- ❌ **Keystore** за production подпис
- ❌ **CI/CD** конфигурация
- ❌ **Unit/Instrumented tests**
- ❌ **Документация** от разработчика

---

## 9. Препоръчан workflow за промени

### За текстове и UI (най-лесно)

```bash
apktool d XEMS.apk -o work/
# Редактирай res/values/strings.xml или layout файлове
apktool b work/ -o out.apk
uber-apk-signer --apks out.apk
```

### За API endpoint (смяна на сървър)

```bash
# В smali/com/isaigu/gymapp/mgr/ApiMgr.smali
# Намери const-string с "https://xemsplus.com/..."
# Замени с нов URL (същата дължина или внимателно с дължина)
```

### За пълна разработка (препоръчително дългосрочно)

1. Декомпилирай с **jadx** → Java source
2. Създай нов Android Studio проект
3. Пренеси `com.isaigu.gymapp` пакета
4. Добави зависимости (OkHttp, FastJSON, Glide, и др.)
5. Build & sign с собствен keystore

---

## 10. Файлове в workspace

| Файл | Описание |
|------|----------|
| `XEMS.apk` | Оригинален APK |
| `XEMS.zip` | Идентично съдържание (разопаковано в `XEMS/`) |
| `XEMS-rebuilt-aligned-debugSigned.apk` | Прекомпилиран и подписан APK |
| `analysis/decompiled/` | Apktool декомпилация (smali + ресурси) |
| `analysis/jadx/` | Jadx Java декомпилация (четим код) |
| `ARCHITECTURE.md` | Този документ |

---

## 11. Резюме

**XEMS/Kems** е професионално EMS фитнес приложение с облачна синхронизация, BLE контрол на хардуер и многоезичен UI. Работи на таблети в landscape режим и комуникира с backend на `xemsplus.com`.

**Редакция е възможна** чрез apktool за ресурси, текстове и ограничени smali промени. За сериозна разработка е нужен нов Gradle проект от jadx декомпилацията.

**Най-безопасни промени:** strings, изображения, цветове, layouts, version info.
