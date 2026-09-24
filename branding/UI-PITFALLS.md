# UI и функции — чести грешки и правилен подход

Помощен документ за бъдеща разработка на UI елементи, overlay-и и BETA функции (music player, interval timer, train list).
Актуализирано: 2026-09-21.

Нов UI: ползвай общия комплект `widget/XemsUi` (цветове от темата, карти, чипове, броячи, прозорец) — виж [docs/xems-ui-kit.md](../docs/xems-ui-kit.md). Без XML за нови прозорци, без lambdas (dx), без анонимни класове в `MusicPlayerHelper` (проверката за `MusicPlayerHelper$1`).

Свързани файлове: [DEVELOPMENT.md](DEVELOPMENT.md), [train-controls-map.yaml](train-controls-map.yaml), [ui-map.yaml](ui-map.yaml).

---

## 1. Промяната не се вижда в APK

| Симптом | Причина | Правилно |
|--------|---------|----------|
| Java е променен, поведението е старо | Smali не е прекомпилиран | След промяна в `branding/java/` → `bash scripts/compile-*-java.sh` |
| Patch script съществува, но нищо не се променя | Скриптът **не е** в `build-apk.sh` | Добави `python3 scripts/apply-….py` на правилното място в pipeline |
| Редакция в `build/decompiled/` | Папката се изтрива при всеки build | Промени само през `scripts/apply-*.py`, `branding/`, compile scripts |
| Layout XML само в repo, не в APK | Layout се генерира от script при build | Промени `scripts/apply-music-player.py` / `apply-interval-timer.py`, не само `build/decompiled/res/` |

**Checklist след всяка функция:**
1. Java → compile script → smali в `branding/smali/`
2. Нов patch → запис в `build-apk.sh`
3. `bash build-apk.sh` и инсталирай новия `xems27.apk`

---

## 2. CircleSeekBar (кръгов слайдер)

Използва се на: avatar MA/Hz, **music player seek**, някои train контроли.

### 2.1 Ръчен seek не стига до края на песента

| | |
|--|--|
| **Симптом** | Playback стига до края; ръчно влачене спира на ~75% или последната дъга е „мъртва“ |
| **Причина** | Widget-ът ограничава ъгъла на докосване до **270°** (`mCurAngle ≤ 270`), а `getSelectedValue()` = `maxProcess × angle / 360`. Attr `wheel_scroll_only_one_circle="false"` **не маха** 270° clamp-а |
| **Грешно** | Увеличаване на `setMaxProcess` и деление на същата стойност при mapping към ms — touch max ≈ 75% от track |
| **Правилно** | За music player: `scripts/apply-music-seek-fix.py` (360° touch при `wheel_scroll_only_one_circle=false`). Mapping: `position = progress × duration / SEEK_MAX` с `SEEK_MAX=1000`. Live scrub в `onChanged`, не само в `onChangedEnd` |

**Файлове:** `MusicPlayerHelper.java`, `apply-music-player.py` (attr на seek), `apply-music-seek-fix.py` (smali patch на `CircleSeekBar`).

### 2.2 Различно поведение train vs player

| Контекст | `wheel_scroll_only_one_circle` | Бележка |
|----------|-------------------------------|---------|
| Train avatar MA/Hz | `true` (factory) | Wrap логика 0↔270° — **не patch-вай** глобално без тест на train |
| Music player seek | `false` + seek fix | Пълен оборот за seek |

**Не** копирай train slider настройки директно в player без проверка.

### 2.3 Rotation на seek bar

Music player layout има `android:rotation="180"` на `@id/musicPlayerSeek`. При проблеми seek/touch — проверявай дали визуалната дъга съвпада с touch логиката на устройство.

---

## 3. Floating overlay (AlertDialog)

Music player и interval timer използват **AlertDialog**, не `decorView.addView()`.

### 3.1 Crash при показване / Activate

| | |
|--|--|
| **Причина** | `WindowManager.addView` на decor или nested dialog без правилен context |
| **Правилно** | Копирай pattern от `MusicPlayerHelper` / `IntervalTimerHelper`: inflate layout → `AlertDialog.Builder.setView()` → прозрачен window, `FLAG_NOT_FOCUSABLE`, позиция чрез `LayoutParams.x/y` |

### 3.2 Бутони не реагират („безотговорни“)

| | |
|--|--|
| **Симптом** | Бутони на overlay не получават click; drag работи навсякъде |
| **Причина** | `setOnTouchListener` на **root** container връща `true` на `ACTION_DOWN` и **краде** touch от децата |
| **Правилно** | Drag/tap listener **само** на dial host (`intervalTimerDialHost`) или ring area. Бутоните: `setClickable(true)`, собствен `OnClickListener`, **без** listener на root |

### 3.3 Бутони около циферблата (timer)

| Изискване | Имплементация |
|-----------|----------------|
| Позиция като часовник | Ъгли от 12h по часовниковата стрелка: × @ **1:30** = 45°, ↻ @ **3:00** = 90°, ⏸ @ **4:30** = 135° |
| **Извън** кръга, не върху пръstenа | `radius = dialRadius + gapDp + btnHalf` (gap ≥ **5dp**) |
| Frame не реже бутони | `OVERLAY_FRAME = DIAL + 2×(gap + btnSize)` — виж `IntervalTimerHelper` и `apply-interval-timer.py` |
| Layout след inflate | `layoutDialControlButtons()` — programmatic `FrameLayout.LayoutParams` с margin |

**Грешно:** horizontal `LinearLayout` отстрани; бутони **върху** пръstenа (`radius = dialRadius - inset`).

### 3.4 Hide vs Close vs File picker

| Действие | Поведение |
|----------|-----------|
| Master ♫ toggle hide | `dialog.hide()`, запази refs + settings, спри sync; **не** `dismiss()` + null refs |
| Close (×) | Пълно спиране / disarm, според функцията |
| File picker (audio) | `pickingFile=true`, `hide()` преди `startActivityForResult`, `restoreOverlayAfterPick()` — иначе overlay state се губи |

---

## 4. Music player — sync и state

### 4.1 Play → Pause → Play без импулси; MA ceiling пада

| | |
|--|--|
| **Причина 1** | `freezeImpulseOutput()` викаше `setMasterStrength(0)` → нулира `bean.strenth` и ceiling |
| **Правилно** | `MasterStrengthControl.sendImpulseLevel(0)` — само BLE, без промяна на bean/UI ceiling |
| **Причина 2** | При pause: първо `requestTrainingPause()` → `syncWithTrainingState(false)` паузира engine → `togglePlaybackPause()` мисли че е paused и **resume-ва** |
| **Правилно** | **Първо** `togglePlaybackPause()` (pause playback), **после** `requestTrainingPause()` |

### 4.2 Hide player — настройки остават

- `savedSensitivity` static + `saveSensitivity()` при hide/close/dismiss
- `configureSensitivity()` чете `savedSensitivity`, не hardcoded 20
- Hide: спри training/sync; re-show: `reShowOverlay()` без destroy на dialog

### 4.3 Master ♫ двойно натискане

- **Не** слагай `setFocusableInTouchMode(true)` на master button — причинява double-tap на някои устройства

---

## 5. Interval timer — логика

| Тема | Правило |
|------|---------|
| Countdown vs training | Countdown tick-ва само при `armed && countdownRunning && trainingRunning` |
| User pause (⏸ на dial) | `timerPausedByUser` — спира **само** countdown; импулсите/training продължават |
| Global training pause | `syncTrainingState()` — различно от user pause; не смесвай флаговете |
| X (disarm) | `disarmTimerKeepSettings()` — спира функцията, **запазва** config/prefs |
| Reset (↻) | Reset на **текущия** interval, не disarm |
| Overlay width | Sync Java constants (`OVERLAY_FRAME_DP`) с `apply-interval-timer.py` `build_overlay_layout()` |

---

## 6. Train list — swipe delete

| | |
|--|--|
| **Симптом** | Crash при swipe delete на **празен** slot |
| **Причина** | `SwipeMenuCreator` добавя Delete за всички `viewType`; handler чете `item.data.macAddress` при `data == null` |
| **Правилно** | `NewTrainFragment$3`: ако `viewType == 0` (empty) → **без** menu item. `NewTrainFragment$4`: `if (item.isEmpty()) return` |
| **Script** | `scripts/apply-train-swipe-delete-fix.py` в `build-apk.sh` |

Delete **само** при зареден потребител в слота.

---

## 7. Resource IDs (@id)

| Грешка | Последствие |
|--------|-------------|
| Нов `@id` без регистрация | Inflate crash / `findViewById` null |
| Duplicate hex между scripts | Грешен view bound, трудни bugs |

**Правилно:**
1. Добави в `IDS` dict на съответния `apply-*.py`
2. Провери конфликти (`grep` за `0x7f09…` в `scripts/`)
3. Същият ID в Java constant и XML generator

Пример collision: `apply-train-participant-ui.py` vs interval timer — ползвай свободни IDs (напр. `0x7f090292+`).

---

## 8. Координация music ↔ training ↔ timer

Hooks в `apply-interval-timer.py` / `apply-music-training-sync.py`:

- `allStartPause` → `IntervalTimerHelper.syncTrainingState()` + `MusicPlayerHelper.syncTrainingState()`
- `allStop` → `onTrainingStop()` / `onTrainingFullStop()`
- Per-row `TrainItem.start/stop` — същият sync

**При нов hook:** не блокирай UI thread; не предполагай „само master button“ — row controls също стартират training.

---

## 9. Smali patch — добри практики

| Правило | Защо |
|---------|------|
| Idempotent patch (`if marker in text: return`) | Rebuild не чупи втори път |
| Търси **точен** block от decompiled smali | При factory update marker може да липсва — fail loud с `RuntimeError` |
| Минимален scope | Patch само нужния branch (напр. music seek само при `!isScrollOneCircle`) |
| Verify script | `verify-music-sync-smali.py`, `verify-beta-safety.py`, `verify-login-path.py` |

---

## 10. Design pipeline vs factory UI

| | |
|--|--|
| **По подразбиране** | `DESIGN_PIPELINE` **изключен** — train UI от smali patches |
| **DESIGN_PIPELINE=1** | Заменя train layouts с `branding/design/` — тествай login + train преди release |
| Visual overlap / dp | Промени **`design-config.yaml`**, не nested XML на ръка |

Агентите **нямат** реален екран — при visual bug поискай screenshot и `@id` на зоната.

---

## 11. Шаблон за нова UI функция

```
1. Описание: екран + @id + поведение (от train-controls-map.yaml)
2. Layout: apply-*.py generator ИЛИ branding/layouts/ (само static screens)
3. Logic: Java preferred → compile script → branding/smali/
4. Hooks: fragment/TrainItem smali patch + build-apk.sh entry
5. IDs: register в apply script
6. Touch: decouple drag root от clickable children
7. State: static refs + hide/dismiss/picker flags документирани
8. Sync: training start/stop/pause hooks ако функцията зависи от training
9. Build + verify scripts + device test
```

---

## 12. Бърз указател по симптом

| Симптом | Първо провери |
|---------|----------------|
| Seek не стига до края | `CircleSeekBar` 270° clamp, `apply-music-seek-fix.py`, mapping denominator |
| Overlay button dead | Touch listener на parent root |
| Button върху пръstenа | `radius = dialR + gap + btn/2`, не `dialR - inset` |
| Play-pause-play без sync | Redosled pause; `sendImpulseLevel` vs `setMasterStrength(0)` |
| Settings изчезват при hide | `saved*` static, не destroy dialog refs |
| Crash empty slot swipe | `viewType` в SwipeMenuCreator |
| Промяна не в APK | compile script + build-apk.sh entry |
| Login crash след UI work | `verify-login-path.py`, не пипай login smali ad hoc |
| Timer dial върху sidebar | `resolveOverlayX()` — left of `rightLayout`, gap 40dp |

---

## Референции в кода

| Област | Source | Build |
|--------|--------|-------|
| Music player | `branding/java/.../MusicPlayerHelper.java` | `compile-music-sync-java.sh`, `apply-music-player.py`, `apply-music-seek-fix.py` |
| Music sync | `MusicSync.java`, `MasterStrengthControl.java` | same compile script |
| Interval timer | `IntervalTimerHelper.java` | `compile-interval-timer-java.sh`, `apply-interval-timer.py` |
| Train swipe fix | smali patch | `apply-train-swipe-delete-fix.py` |
| Overlay chip button style | `@drawable/interval_timer_sound_chip` | `branding/drawable/` |

При doubt — grep в `scripts/` за съществуващ pattern преди нов изобретен подход.
