# XEMS Pro — ръководство за разработка

Документ за следваща развойна дейност по APK брандинга, train UI и паралелни API-та.
Актуализирано: 2026-09-21.

## Канонични файлове

| Файл | Назначение |
|------|------------|
| **`branding/UI-PITFALLS.md`** | **Чести UI/функционални грешки** (seek, overlay touch, timer buttons, swipe delete, sync) — прочети преди нова BETA функция |
| `branding/ui-map.yaml` | Структура на екраните, train row колони, критични `@id`, build pipeline |
| `branding/train-controls-map.yaml` | Пълен каталог на контроли (stop, Hz, сила, pause, BLE път) |
| `branding/design-config.yaml` | Числови размери на train row (dp/sp, weights) |
| `branding/design/*.xml` | Генерирани train row layout-и (от `apply-design-config.py`) |
| `build-apk.sh` | Главен build pipeline |

Проверка:

```bash
python3 scripts/ui-map.py --check
python3 scripts/apply-design-config.py --check
python3 scripts/ui-map.py          # кратко резюме
```

---

## Build pipeline

APK се сглобява от **v0.50 base** decompile. Папката `build/decompiled/` се изтрива при всеки build.

```bash
bash build-apk.sh                    # стабилен build (login-safe)
DESIGN_PIPELINE=1 bash build-apk.sh  # вкарва branding/design/ train layouts (само тест)
BETA_MUSIC=0 bash build-apk.sh       # без music sync stack
```

### Ред на скриптовете (важен)

1. **Статични layout-и** — `branding/layouts/*.xml` → login, splash, main, settings (не train rows)
2. **Smali/XML patches** — теми, train refinements, avatar, Hz, active pause
3. **Design pipeline** (само при `DESIGN_PIPELINE=1`):
   - `apply-design-config.py` — YAML → `branding/design/`
   - `apply-branding-train-layouts.py` — `branding/design/` → decompiled layouts
4. **Active pause + avatar** — `apply-active-pause-avatar-button.py`, `compile-avatar-cluster-java.sh`, `apply-avatar-proportional-lock.py`
5. **BETA music** (по подразбиране включен) — Java compile → smali → `apply-music-player.py`

Пълен списък: `build-apk.sh` и секция `build_pipeline` в `ui-map.yaml`.

### Login стабилност

- **По подразбиране** `DESIGN_PIPELINE` е **изключен** — APK използва factory train UI от patches, не `branding/design/`.
- Login проблемите (Sep 2026) **не** идват от design модула — виж header в `ui-map.yaml`.
- Не променяй smali login callbacks без `apply-login-fix.py`.
- Healthy build: `MusicPlayerHelper.smali` трябва да съществува при `BETA_MUSIC=1` (проверка в края на build).

---

## Train row — структура

Layout файлове:

- `branding/design/new_user_train_control_item_layout.xml`
- `branding/design/user_train_control_item_layout.xml`

Колони (ляво → дясно):

| Колона | Ключ в YAML | Критични `@id` |
|--------|-------------|----------------|
| Mode buttons | `columns.mode_buttons` | `strenthExist`, `youyangyundong`, `anmo` |
| Muscle sliders | `columns.muscle_sliders` | `vpb_brightness1` … `vpb_brightness10` |
| Avatar | `columns.avatar` | `circleSeekBar`, `ma`, `pauseMaValue`, `hzValue`, `pauseHzValue`, `userIcon` |
| User info | `columns.user_info` | `name`, `time`, `paulsecontinue`, `paulsestop` |
| Actions | `columns.action_buttons` | `stop`, `startpaulse`, `save` |

### Промяна на размери (без Design Studio)

1. Редактирай `branding/design-config.yaml` (или preset от `branding/design-presets.yaml`)
2. Валидирай и приложи:

```bash
python3 scripts/apply-design-config.py --check
python3 scripts/apply-design-config.py              # запис в branding/design/
python3 scripts/apply-design-config.py --preset tablet
bash scripts/design-apply.sh --import FILE.yaml     # import + apply
bash scripts/design-apply.sh --safe --dry-run       # preview без запис
```

3. За APK с custom layout: `DESIGN_PIPELINE=1 bash build-apk.sh`

Ключове → XML mapping: секция `config_to_xml` в `ui-map.yaml`.

### Текущи tuned стойности (avatar/index)

От `design-config.yaml` / avatar patches:

- `avatar.icon_padding_dp`: **28**
- `avatar.index_button_size_dp`: **45**
- `avatar.index_button_edge_dp`: **0**
- `avatar.index_button_vertical_dp`: **10**

### Пропорционално мащабиране (AvatarClusterLayout)

При различни резолюции avatar колоната използва `AvatarClusterLayout` (Java → smali):

- `branding/java/src/.../AvatarClusterLayout.java`
- `scripts/compile-avatar-cluster-java.sh`
- `scripts/apply-avatar-proportional-lock.py`

Първият layout на устройството **не се променя** (запазва tuned look). Следващи resize-и мащабират margins/sizes от baseline.

---

## Правила за безопасни промени

### Може

- Числови dp/sp/weight през `design-config.yaml`
- Цветове/теми през `apply-ui-theme.py`, `branding/theme/`
- Нови контроли по recipe-то по-долу (smali или Java+compile)
- Описание на UI промени с **име на колона + `@id`**

### Не прави

- **Преименуване или премахване на `@id/*`** — Java/smali hooks се чупят
- Промяна на XML nesting или add/remove views в `branding/design/`
- Директно редактиране на `build/decompiled/` — губи се при rebuild
- `DESIGN_PIPELINE=1` без потвърждение на login на целевото устройство

---

## Каталог на контроли

Пълен списък: **`branding/train-controls-map.yaml`**

Включва:

- **Global** (`NewTrainFragment`): `allStop`, `allStartPause`, `allAdd`/`allminus`, `buwei1..10`, `musicPlayerBtn`
- **Per-row**: mode buttons, 10 muscle sliders, index modes (`ma`, `hz`, `pauseMaValue`, `pauseHzValue`), `circleSeekBar`, impulse timers
- **ProgramDataBean** полета, диапазони, BLE път (`CommandUtil` / `CommandSender`)
- Съществуващи parallel API: `MasterStrengthControl`, `MusicSyncBridge`, `MusicSync`, `MusicPlayerHelper`
- Предложен (не имплементиран): `TrainControlBridge`

---

## Добавяне на нов UI елемент

### Прост случай (smali-only)

Пример: index buttons, labels, Hz display.

1. Patch layout XML в `scripts/apply-*.py`
2. Регистрирай `@id` в `public.xml`, `ids.xml`, `R$id.smali`
3. Hook в `TrainViewHolder` / fragment smali
4. Добави скрипта в `build-apk.sh` на правилното място

Референция: `scripts/apply-active-pause-avatar-button.py`

### Сложен случай (Java + smali)

Пример: music player, avatar proportional lock.

1. Java в `branding/java/src/com/isaigu/gymapp/...`
2. `bash scripts/compile-*-java.sh` → `branding/smali/`
3. Hook от `apply-*.py` в smali на fragment/activity
4. Verify script в pipeline (като `verify-music-sync-smali.py`)

Референции:

- Music player: `compile-music-sync-java.sh`, `apply-music-player.py`
- Interval timer: `compile-interval-timer-java.sh`, `apply-interval-timer.py`
- Avatar cluster: `compile-avatar-cluster-java.sh`, `apply-avatar-proportional-lock.py`

### Interval timer (1.1.00+)

- Бутон ⏱ до ♫ в `rightLayout`
- Config modal (непрозрачен) → **Activate** → armed
- Countdown започва при **Start на тренировката**; pause/stop sync с `allStartPause` / `allStop`
- Floating overlay = втори **AlertDialog** (като ♫), **не** `decorView.addView()` — иначе crash при Activate
- Overlay: `CircleSeekBar` display-only (като avatar slider, без thumb/touch) + countdown текст в центъра
- Config modal: тъмен card panel, inline `mm:ss`, sound chips
- Signal: Off / Beep / Chime / Bell / Custom + Upload (audio/*) + Preview; custom via `MediaPlayer`
- File pick = **същият flow като ♫** (`pickingFile` flag, `dialog.hide()`, `restoreDialogAfterPick()`)
- Споделен modal UI: `modal_dialog_panel.xml`, `modal_field_bg.xml` (и за music player)
- След промяна на `IntervalTimerHelper.java` **задължително** `bash scripts/compile-interval-timer-java.sh` (stale smali = crash)
- Loops `0` = безкрайно; `N>0` → `allStop` след N-тия интервал

### Паралелен достъп (external control)

Само **master MA** има готов API днес:

```java
MasterStrengthControl.setMasterStrength(int)
```

За пълен достъп (Hz, pause, channels, row stop) — виж `train_control_bridge_proposed` в `train-controls-map.yaml`.

---

## Координация с потребителя (агенти)

Агентите **не виждат** реалния екран на таблета/телефона.

При visual bug:

1. Поискай screenshot или кратко видео от устройството
2. Идентифицирай зоната с `@id` (напр. „`@id/ma` припокрива `@id/circleSeekBar`“)
3. Променяй **само числови** стойности в `design-config.yaml` или patch script
4. Итерирай след feedback от потребителя

Без screenshot **не** може да се знае: pixel overlap на конкретна резолюция, естетика, реален вид на mipmap.

---

## Agent checklist

Преди промяна:

- [ ] Кой екран? login / train row / train fragment / settings?
- [ ] Коя колона и `@id`? → `ui-map.yaml` → `train_row.columns`
- [ ] Само размер? → `design-config.yaml`
- [ ] Цвят/тема? → `apply-ui-theme.py`
- [ ] Логика? → smali patch, **не** design config
- [ ] `python3 scripts/ui-map.py --check`
- [ ] `python3 scripts/apply-design-config.py --check` (ако пипаш train layout)

---

## Локални инструменти

```bash
bash scripts/serve-branding.sh   # http://127.0.0.1:8765/ — index + YAML reference
bash scripts/design-apply.sh   # validate + apply design-config
python3 scripts/ui-map.py      # структура + workflow
```

GitHub Pages (ако е конфигуриран): `branding/` се deploy-ва от `.github/workflows/design-tools-pages.yml`.
