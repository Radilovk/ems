# XEMS — пълно обяснение на функциите и интеграциите

## 1. Какво е това приложение

XEMS е EMS (electrical muscle stimulation) training app за таблети, създаден върху декомпилиран vendor APK на `com.isaigu.gymapp` и допълнително разширен с:

- `band-app/` — Xiaomi Band 10 quick app
- `server/` — Cloudflare Worker лицензен сървър
- серия patch скриптове в `scripts/` и `branding/`, които променят оригиналния APK и го превръщат в XEMS Pro

Целта е да се направи един централен EMS работен процес:

- тренировка на клиент/пациент на таблет
- управление на програми и импулси
- синхронизация с EMS костюм
- наблюдение на сърдечна честота
- интеграция с Xiaomi Band 10
- лицензиране и OTA актуализации
- локално съхранение и отчети

## 2. Архитектура на проекта

Проектът е разделен на три основни слоя:

### 2.1 Таблетното Android приложение

Основният код е в `branding/java/src/com/isaigu/gymapp/` и е бил вмъкнат в decompiled APK. Това е „ядрото“ на XEMS:

- управление на клиентите
- програми за тренировка
- EMS импулс контрол
- UI и навигация
- поведение на сесии, настройки и отчети

### 2.2 Band app

`band-app/` е приложение за Xiaomi Band 10. То работи като допълнителен интерфейс на часовника:

- живи данни за HR
- старт/пауза/спиране на сесията
- контрол на силата и импулса
- екран за таймер, music и AI/automatic режим

### 2.3 Cloud лицензен сървър

`server/` е Cloudflare Worker, който отговаря за:

- лицензиране на XEMS модули
- активиране и освежаване на ключове
- OTA обновяване на APK
- клиентски профили, карти и сесийни записи
- администраторски панел

## 3. Основни функционалности на таблетното приложение

### 3.1 Управление на клиенти и потребители

В приложението има client list / user management, където треньорът може да:

- създава и редактира клиенти
- добавя им данни: име, пол, възраст, височина, тегло, цели
- избира трениращи програми
- разглежда история и резултати
- стартира кратки сесии и бързи стартиращи сценарии

Ключови класове:

- `XemsLocalUserForm.java`
- `XemsLocalStore.java`
- `XemsLocalApi.java`
- `ClientRow.java`
- `XemsSearch.java`
- `XemsClientSync.java`

### 3.2 Тренировъчни програми и режимове

Приложението поддържа различни режими на тренировка:

- Основен режим
- Кардио
- Масаж
- AI Smart Session
- Automatic mode
- Map/Workout mode
- Interval timer / block program

Основни части:

- `AutoCatalog.java`, `AutoPlanner.java`, `AutoEngine.java`
- `AiEngine.java`, `AiSession.java`, `AiUi.java`
- `MapRunner.java`, `Workout.java`
- `IntervalTimerHelper.java`, `BlockProgramRunner.java`

Това дава възможност програмите да се настройват по:

- честота (Hz)
- импулсна ширина (µs)
- интензитет / сила
- паузи и възходящо/низходящо нарастване
- блокове / цикли / таймер

### 3.3 EMS импулс и контрол на силата

Това е основната логика на приложението: генерацията и изпращането на импулсите към EMS костюма.

Компоненти:

- `MasterStrengthControl.java`
- `PartStrength.java`
- `ChannelStrengthScale.java`
- `SoftRamp.java`
- `ProgramLive.java`
- `TrainIndex.java`

Те отговарят за:

- различни канали на мускулите
- пропорционално регулиране на силата
- контрол на интензивността и ръст на импулса
- синхронизиране с време и музика
- стабилни преходи между фази на тренировка

### 3.4 UI и навигация

Приложението има собствени UI обекти и модулен дизайн, вместо да разчита само на vendor екраните.

Основни компоненти:

- `XemsNav.java` — главна навигация
- `XemsUi.java` — общ UI kit
- `XemsPanel.java` — десен контролен панел
- `AvatarClusterLayout.java` — адаптивна подредба на аватара
- `XemsFullscreen.java` — пълноекранен режим
- `XemsIcon.java` — икони, рисувани в code

Това гарантира последователен визуален език и специфичен XEMS стил на всички екрани.

### 3.5 Сеансите, записването и отчетите

Приложението записва всяка тренировка елиминирайки скритата суматоха на vendor data model.

Ключови части:

- `SessionRecorder.java`
- `SessionRec.java`
- `SessionStore.java`
- `CardPublisher.java`
- `ReportScreen.java`
- `ReportBridge.java`

Това позволява:

- съхранение на сесията секунда по секунда
- юридически / клиентски отчети
- анализ на усилие, импулси, сърдечна честота и прогрес
- генериране на shareable report страници

### 3.6 Наблюдение на сърдечна честота (HR)

В приложението съществува директна инфраструктура за измерване и показване на HR:

- `HrGuard.java`
- `HrGuardCore.java`
- `HrHistory.java`
- `HrChartView.java`
- `WearableHrPanel.java`
- `HrDemandPolicy.java`

Това позволява:

- HR данни от Band или wearable устройство
- логически ограничения на безопасни диапазони
- показване на диаграми и линии в зони
- корекции на режим според сърдечната честота

### 3.7 Локален режим и синхронизация

Проектът позволява режим без cloud sync:

- `XemsLocalGate.java`
- `XemsLocalSection.java`
- `XemsLocalStore.java`
- `XemsClientSync.java`

Това означава, че данните могат да останат локално на таблета, без да се изисква сървър. Това е важна част за клиенти, които използват лаборатория или локален режим в заведение.

## 4. AI и автоматични тренировки

### 4.1 Smart Session (AI)

`Ai*` класовете реализират XEMS Smart Session — интелигентен режим, който планира тренировка според:

- тип програма
- клиентски профил
- цели
- HR и възстановяване
- избор на упражнения и зони

Основни компоненти:

- `AiModel.java`
- `AiPlanner.java`
- `AiEngine.java`
- `AiSession.java`
- `AiUi.java`
- `AiExercises.java`

Този слой е почти „тренировъчен мозък“ на приложението: изчислява как да се промени интензивността, таймингът и програмата в реално време.

### 4.2 Automatic mode

`Auto*` класовете са за автоматично създаване на планове и цикли, въз основа на:

- избраната програма
- профил на клиента
- история
- ограничения и безопасност

Ключови класове:

- `AutoCatalog.java`
- `AutoPlanner.java`
- `AutoEngine.java`
- `AutoSession.java`
- `AutoUi.java`
- `AutoLimits.java`

Това е система, която заменя ръчното настройване на параметрите с автоматична стратегия.

## 5. Интеграция с Xiaomi Band 10

Това е една от най-важните интеграции.

### 5.1 Технологии и слоеве

В `wearable/xiaomi/` има директен BLE / SPP клиент за Xiaomi Band:

- `XiaomiBandBleClient.java`
- `XiaomiBandSppClient.java`
- `XiaomiBandMessages.java`
- `XiaomiBandCrypto.java`
- `XiaomiBandLink.java`
- `XiaomiBandStatus.java`

Това позволява:

- свързване към Xiaomi Band 8/9/10
- четене на сърдечна честота
- четене на статус и батерия
- отправяне на команди към устройството
- синхронизиране по различни канали (BLE / RFCOMM / SPP)

### 5.2 Band app и remote interface

`band-app/` поддържа XEMS интерфейс на часовника:

- live HR screen
- music remote
- interval timer
- AI session screen
- pulse panel
- train screen with per-channel strength

Това означава, че часовникът може да се използва като вторичен контролен инструмент, а не само като HR монитор.

### 5.3 Разширени функции

- `BandAppInstall.java` — инсталира и актуализира самото XEMS приложение за Band
- `BandRemote.java` — дистанционно управление на Band
- `BandLaunch.java` — стартиране на приложението от таблет
- `QuickStart.java` — бързо начало за клиент
- `PlanScreen.java` — план на срещите и график
- `WearableSyncHelper.java` — синхронизация между таблет и wearable

## 6. Лицензиране и OTA актуализация

`server/` е изцяло свързан с достъпа до платени/разширени функционалности.

### 6.1 Какво прави сървърът

- издава JWT/документ за лиценз
- проверява дали устройството / таблетът има права за модулите
- управлява активиране и refresh
- съхранява MAC адреси на EMS устройства
- държи клиентски профили и карти
- поддържа OTA обновяване на APK

Основни файлове:

- `server/src/index.js`
- `server/src/catalog.js`
- `server/src/clients.js`
- `server/src/crypto.js`
- `server/src/ems.js`
- `server/src/plans.js`
- `server/src/profile.js`
- `server/src/admin.js`

### 6.2 Важна интеграция

Когато таблетът стартира, той използва license client и token validation, за да провери кои XEMS разширения са активни.

Това е основата на модулния дизайн:

- license unlocks modules
- different functionality is enabled per device and plan
- OTA update is directed through GitHub release URL

## 7. Music sync и ритмична тренировка

Един от ключовите допълнителни слоеве в репото е music sync.

Основни класове:

- `MusicSync.java`
- `MusicPlayerEngine.java`
- `MusicAutoTune.java`
- `MusicPlayerHelper.java`
- `MusicDial.java`
- `MusicVisualizerView.java`

Това позволява:

- импулските да се синхронизират с музикален ритъм
- автоматично коригиране на силата според музикален сигнал
- визуализация на музика при тренировка
- настройка на сесията по време на музикален playback

## 8. Local-only data and tablet storage

В таблицата с данни се съхраняват:

- клиенти
- програми
- истории
- снимки / аватари
- настройки
- сесии
- локални записи

Това създава стабилен режим, при който приложението не зависи единствено от облака.

## 9. Build и patching система

Проектът не е обикновен Android проект, а patch-build система.

### 9.1 Как се строи APK

Операцията е следната:

- `build-apk.sh` декомпилира базовия APK
- `build/decompiled/` се префрешва всяка сборка
- `scripts/apply-*.py` и `remove-*.py` модифицират smali/XML
- `scripts/compile-*-java.sh` компилира нови Java класове в smali
- `verify-*.py` валидира стабилността
- APK се билдва и подписва

### 9.2 Защо е важно

Това е „patched vendor APK“ проект, а не чисто ново приложение. Това означава:

- трябва да се поддържа съвместимост със съществуващото vendor поведение
- много patch-ове са кръстени и прикачени към конкретни маркери в smali
- трябва да се внимава на `@id/*`, `smali hooks`, permissions и UI IDs

## 10. Най-важните интеграции в едно гледище

Проектът интергриира следните елементи:

- Android tablet app
- EMS hardware controller
- Xiaomi Band 10 HR wearable
- Cloudflare Worker license server
- OTA release distribution
- local client database
- AI/automatic training engine
- music sync and session control
- report generation and shareable card system

Всяка от тези части работи като единна система за обучение, управление и лицензиране.

## 11. Кратко резюме

XEMS е не просто APK, а цял екосистемен слой за EMS обучение:

- на таблет: training/control engine
- на Band: wearable monitoring and remote control
- в облака: licensing, updates, client data and reports
- в кода: patched vendor app, AI/automatic logic, music and HR synchronization

Това го прави напълно функционална система за съвременна EMS практика, адаптирана за обучение и управление на клиенти, в съчетание с мобилни и wearable технологии.

## 12. Основни директории

- `branding/java/src/` — Java source на XEMS над vendor APK
- `branding/smali/` — generated smali output
- `scripts/` — patch/build/verify automation
- `band-app/` — Xiaomi Band app
- `server/` — license server and OTA backend
- `translations/` — UI translations
- `branding/design/` — UI design and layout configs

## 13. Идея на проекта

XEMS не е просто “добавена функция”; това е цял архитектурен слой над една EMS платформа, който:

- прави тренировката по-интелигентна
- свързва таблет, костюм, Band и cloud
- дава възможност за автоматични сесии и анализ
- прави системата лесна за предаване на клиенти, треньори и администратори

Това е интегриран EMS екосистемен продукт, а не само UI patch или локален инструмент.

---

Файлът е създаден за документация на проекта и служи като обобщение на основните функции, модули и интеграции.
