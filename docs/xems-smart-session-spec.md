# XEMS Smart Session — формална спецификация v1.1

Обхват: една процедура/тренировка. Вход → начална рамка и ограничения → детерминиран план → затворен контур по пулс в реално време.

Маркировка на всеки параметър:
- **[E:Rn]** — стойност/правило от източник (списък в §12)
- **[D]** — дизайн стойност по подразбиране; подлежи на калибриране по логове (§11)

Сензори и данни — само наличните:
- **Гривна Xiaomi Smart Band 8:** пулс (цяло число, bpm) с измерван, не приет, интервал между пробите. Няма RR, ЕКГ, SpO₂ на живо, кръвно налягане.
- **XEMS:** параметри на изхода по канал (mA, Hz, µs, време) — известни точно.
- **Човек (треньор или самият потребител):** входни данни, анкета, CR10 (0–10), бутони СТОП / НАМАЛИ / ПРОДЪЛЖИ.

### Йерархия на решенията (строга)

```
Ниво A  SAFETY_GUARDS (§5)            — абсолютни, нищо не ги отменя
Ниво B  HUMAN: СТОП / НАМАЛИ          — винаги в сила, само в посока надолу
Ниво C  ARBITER                        — допустима доза = min(PLAN, FATIGUE, HR)
Ниво D  GENERATED_PLAN                 — изпълнява се, докато C не наложи по-малко
```

**Правило за посоката:** всяко намаление може да дойде от всяко ниво. Увеличение над плана — никога. Връщане към плана след намаление — само по правилата на §8.3.

### Тежести в арбитъра (ниво C)

```
dose_allowed(t) = min( D_plan(t),
                       D_fatigue(t),
                       D_plan(t) − c_HR(t) · (D_plan(t) − D_hr(t)) )

c_HR ∈ [0, 1] — доверие в пулса (§2.1). При c_HR = 0 пулсът не влияе;
при c_HR = 1 корекцията по пулса се прилага изцяло.
```

Моделът на умората (§6.3) винаги има тежест 1: той се изчислява от точно известни изходни параметри. Пулсът е с променлива тежест, защото качеството му зависи от гривната.

### Режими на работа

```
SUPERVISED  — треньорът калибрира, отговаря на контролните точки, потвърждава продължаване
SOLO        — потребителят изпълнява същите роли през приложението, при по-строги граници (§5.1)
```

R1 изрично препоръчва надзор от квалифициран треньор. SOLO режимът замества функциите на треньора с принудителни стъпки в приложението и по-тесни граници; не ги премахва.

---

## 1. Входни данни

```kotlin
enum class Goal      { TONE, FAT, MASSAGE, DRAIN, CELLULITE }
enum class Mode      { ACTIVE, PASSIVE }
enum class Sex       { MALE, FEMALE }
enum class Fitness   { LOW, MID, HIGH }
enum class ProcType  { TRAINING, PROCEDURE }   // TRAINING = с упражнения, PROCEDURE = без

data class SessionInput(
    val goal: Goal,
    val mode: Mode,
    val procType: ProcType,
    val sex: Sex,
    val age: Int,                 // години
    val fitness: Fitness,
    val T_total_s: Int?,          // null → по подразбиране от шаблона
    val operator: Operator,       // TRAINER | SELF
    val screening: Screening,     // анкета преди всяка сесия (§1.2)
    val I_cal_mA: Map<Channel, Double>,  // калибриране до целевото CR10 за всеки канал (§9, CALIB)
    val HR_cap_override: Int?     // по избор; само в посока надолу при SELF
)
```

### 1.2 Анкета (задължителна, всяка сесия)

```kotlin
data class Screening(
    val contraindications: Map<String, Boolean>, // списък по R15; всяко true → REJECT
    val feverOrIllness: Boolean,                 // true → REJECT                     [E:R1]
    val alcoholOrStress48h: Boolean,             // true → REJECT                     [E:R1]
    val ateLast2h: Boolean,                      // false → WARN (≈250 kcal въглехидрати) [E:R1]
    val hydrated: Boolean,                       // false → WARN (250–500 ml преди)   [E:R1]
    val hrLoweringMedication: Boolean,           // true → c_HR_max = 0.3 (§2.1)     [D]
    val knownArrhythmia: Boolean,                // true → REJECT                     [D]
    val restedLast10min: Boolean                 // false → CALIB_REST_HR се удължава [D]
)
```

Валидиране: `age < 18 → REJECT` (R1 се отнася за възрастни).

### 1.1 Допустими комбинации (твърдо правило)

| Goal | ACTIVE | PASSIVE |
|---|---|---|
| TONE | ✔ | ✔ (с ограничения §4.4) |
| FAT | ✔ | ✔ (с ограничения §4.4) |
| MASSAGE | ✗ | ✔ |
| DRAIN | ✗ | ✔ |
| CELLULITE | ✗ | ✔ |

`procType = TRAINING ⇔ mode = ACTIVE`. Невалидна комбинация → `REJECT`.

---

## 2. Измерване на HR в покой (състояние `CALIB_REST_HR`)

```
Прозорец: W = 120 s, клиентът седи/лежи, без стимулация        [D]
Поток:    h_i = (t_i, bpm_i)

Валидиране на всяка проба:
  30 ≤ bpm_i ≤ 220                                              [D]
  |bpm_i − bpm_{i−1}| / (t_i − t_{i−1}) ≤ S_max = 5 bpm/s        [D]
  пропуск > 10 s → статус STALE, таймерът на прозореца спира     [D]

HR_rest = median{ bpm_i : t_i ∈ последните 60 s на W }
σ_rest  = SD    { същите проби }

Условие за стабилност: σ_rest ≤ 3 bpm                           [D]
  не е изпълнено → удължи W с 60 s (макс. 2 пъти) → иначе WARN_UNSTABLE

Интервал между пробите (измерва се, не се приема):
  Δt_HR = median(t_i − t_{i−1}) в прозореца W

Флагове (изискват потвърждение от оператора):
  HR_rest ≥ 100  → FLAG_TACHY   (дефиниция за тахикардия в покой)  [E:R13]
                   при SELF → REJECT
  HR_rest < 40   → FLAG_BRADY   (може да е норма при спортисти)
  Δt_HR > 10 s   → HR_MODE = SAFETY_ONLY (§2.1)                    [D]
```

### 2.1 Доверие в пулса c_HR(t)

```
c_HR(t) = c_rate · c_fresh(t) · c_valid(t) · c_resp · c_med

c_rate   = 1            ако Δt_HR ≤ 3 s                           [D]
           0.5          ако 3 s < Δt_HR ≤ 10 s  (само нива L1/L2 в §8)
           0            ако Δt_HR > 10 s        (HR_MODE = SAFETY_ONLY)
c_fresh  = 1 ако последната проба е на ≤ 2·Δt_HR, иначе 0
c_valid  = дял на приетите проби за последните 60 s (§7, т.3)
c_resp   = 1, или 0 след откриване на NON_RESPONDER (§8.4)
c_med    = 0.3 ако screening.hrLoweringMedication, иначе 1        [D]

HR_MODE = SAFETY_ONLY: пулсът участва само в G7 (таван); корекции не се правят.
```

---

## 3. Производни физиологични величини

### 3.1 Максимален пулс

```
HR_max = 208 − 0.7·age          ако sex = MALE                    [E:R11]
HR_max = 206 − 0.88·age         ако sex = FEMALE                  [E:R12]
```

### 3.2 Резерв и относително натоварване (Karvonen)

```
HRR  = HR_max − HR_rest
x(t) = (HR(t) − HR_rest) / HRR          ∈ ℝ, типично [0, 1]
HR(x) = HR_rest + x·HRR
```

### 3.3 Коридори по програма (в единици x)

Референция за зони: умерено 0.40–0.59, високо 0.60–0.89 от HRR   [E:R14]

| Goal × Mode | x_lo | x_hi | x_cap |
|---|---|---|---|
| TONE × ACTIVE | — | 0.70 [D] | 0.85 [D] |
| TONE × PASSIVE | — | 0.45 [D] | 0.60 [D] |
| FAT × ACTIVE | 0.40 [E:R14] | 0.59 [E:R14] | 0.80 [D] |
| FAT × PASSIVE | 0.25 [D] | 0.45 [D] | 0.60 [D] |
| MASSAGE / DRAIN / CELLULITE | — | 0.30 [D] | 0.45 [D] |

Модификатори:

```
Fitness:  Δx = { LOW: −0.05, MID: 0, HIGH: +0.05 }               [D]
Възраст:  Δx_age = −0.05 ако age ≥ 60                            [D]
x_hi', x_cap' = x + Δx + Δx_age
HR_cap = min( HR(x_cap'), HR_max, HR_cap_override ?: ∞ )
```

---

## 4. Шаблони на програмите

### 4.1 Сегмент, цикъл, фаза

```kotlin
data class Segment(
    val f_Hz: Double,        // честота
    val pw_us: Int,          // ширина на импулса (на фаза, двуфазен правоъгълен)
    val t_s: Double,         // продължителност на сегмента
    val sigma: Double        // фактор на силата спрямо I_cal (0..1)
)
data class Cycle(
    val on: List<Segment>,   // 1 сегмент = единична честота; 2 = редуване A↔B
    val t_off_s: Double,     // пауза (0 mA)
    val ramp_up_s: Double,
    val ramp_down_s: Double,
    val channelDelay_s: Map<Channel, Double> = emptyMap()   // само за DRAIN
)
data class Phase(
    val id: PhaseId,          // WARMUP, MAIN, METABOLIC, COOLDOWN
    val share: Double,        // дял от T_total
    val phi: Double,          // фактор на фазата към I_cal
    val cycle: Cycle,
    val blockMode: BlockMode  // FATIGUE_DRIVEN | CONTINUOUS
)
```

### 4.2 Общи твърди стойности

```
Импулс: двуфазен, правоъгълен                                    [E:R2]
ramp_up ∈ [0.3, 0.5] s за всеки цикъл с f ≥ 20 Hz                [E:R1]
TONE: T_total ≤ 1200 s                                           [E:R1]
FAT:  T_total ∈ [1800, 2400] s при умерен интензитет             [E:R1]
```

### 4.3 Шаблони (стойности по подразбиране)

**TONE × ACTIVE** — T_default = 1200 s

| Фаза | share | φ | on | t_off | блокове |
|---|---|---|---|---|---|
| WARMUP | 0.15 [D] | 0.6→1.0 линейно [D] | 85 Hz / 350 µs / 4 s [E:R3] | 4 s [E:R3] | CONTINUOUS |
| MAIN | 0.75 [D] | 1.0 | 85 Hz / 350 µs / 6 s [E:R2] | 4 s [E:R2] | FATIGUE_DRIVEN |
| COOLDOWN | 0.10 [D] | 0.5 [D] | 5 Hz / 250 µs / непрекъснато [E:R8] | 0 | CONTINUOUS |

**FAT × ACTIVE** — T_default = 1800 s

| Фаза | share | φ | on | t_off | блокове |
|---|---|---|---|---|---|
| WARMUP | 0.10 [D] | 0.6→0.9 [D] | 85 Hz / 350 µs / 4 s | 4 s | CONTINUOUS |
| MAIN | 0.40 [D] | 0.9 [D] | 85 Hz / 350 µs / 4 s | 4 s | FATIGUE_DRIVEN |
| METABOLIC | 0.40 [D] | 0.8 [D] | A: 85 Hz / 350 µs / 4 s ↔ B: 6 Hz / 350 µs / 4 s, σ_B = 0.7 [D] | 0 | FATIGUE_DRIVEN |
| COOLDOWN | 0.10 [D] | 0.5 [D] | 5 Hz / 250 µs / непрекъснато | 0 | CONTINUOUS |

Основание за B = 4–8 Hz: максимален прираст на енергоразхода при 4–6 Hz [E:R7].

**MASSAGE × PASSIVE** — T_default = 1200 s [D]

| Фаза | share | φ | on | t_off |
|---|---|---|---|---|
| WARMUP | 0.15 | 0.5→0.8 | 3 Hz / 250 µs / 10 s | 2 s |
| MAIN | 0.75 | 0.8 | редуване 2 Hz ↔ 8 Hz, 10 s/10 s | 2 s |
| COOLDOWN | 0.10 | 0.5 | 2 Hz / 250 µs / непрекъснато | 0 |

Всички стойности [D]; честотният диапазон 1–10 Hz е в рамките на нететаничната стимулация.

**DRAIN × PASSIVE** — T_default = 1200 s [D]

```
Цикъл: последователна вълна по канали от периферията към центъра
  ред на каналите (крака):  THIGH_L/R → GLUTE → ABDOMEN, LOWER_BACK
  ред на каналите (горна):  ARM_L/R → LAT, UPPER_BACK, CHEST
  channelDelay_s(k) = ord(k)·Δ_ch,  Δ_ch = 1.0 s                 [D]
Сегмент: 1 Hz / 300 µs / 3 s  или  36 Hz / 300 µs / 1.5 s        [E:R9]
  (36 Hz: по-голям ефект върху венозния поток, повече дискомфорт)
ramp_up ≥ 1.0 s, ramp_down ≥ 0.5 s                              [D]
t_off след цялата вълна: 5 s                                    [D]
```

**CELLULITE × PASSIVE** — композиция [D]; няма контролирани доказателства за EMS срещу целулит

```
MAIN_1 (0.45·T): TONE-сегмент 85 Hz / 350 µs / 4 s : 6 s, φ = 0.6, само канали THIGH, GLUTE
MAIN_2 (0.45·T): DRAIN-вълна (горе)
COOLDOWN (0.10·T): 3 Hz
```

### 4.4 Ограничения на PASSIVE за TONE/FAT

```
φ_max(PASSIVE, f ≥ 20 Hz) = 0.7                                  [D]
t_on_max(PASSIVE, f ≥ 20 Hz) = 4 s                               [D]
t_off_min(PASSIVE) = t_on                                        [D]
```

Основание: без движение натоварването не се разпределя по дължината на мускула [E:R6].

---

## 5. Защитни ограничения (SAFETY_GUARDS)

Проверяват се на всеки тик, преди изчисляването на изхода.

```
G1  Непрекъсната тетания:   за f ≥ 20 Hz: t_on_continuous ≤ t_on_max(phase)   [E:R1]
G2  Рампа:                   ramp_up ≥ 0.3 s при f ≥ 20 Hz                    [E:R1]
G3  Скорост на тока:         |dI_k/dt| ≤ ΔI_max = 2 mA/s (извън рампите)       [D]
G4  Горна граница на тока:   I_k ≤ I_cal,k · φ_max  (φ_max ≤ 1.0)
                             превишаване само с TRAINER_CONFIRM
G5  Честота:                 корекциите никога не вдигат f на сегмент ≥ 20 Hz  [E:R4,R5]
G6  Бюджет на дозата:        Q_session,k ≤ Q_budget,k                          [D] (§6.2)
G7  Пулс:                    HR ≥ HR_cap → STIM_PAUSE + ALERT
G8  Остарял пулс:            age(HR) > 10 s → HR_CONTROLLER = FROZEN           [D]
G9  Асиметрия:               |I_L − I_R| / max(I_L, I_R) > 0.25 → CHECKPOINT   [D]
G10 Аварийно спиране:        STOP → I_k = 0 за ≤ 1 тик
G11 Анкета:                  всяко REJECT условие от §1.2 → сесията не стартира
G12 Връзка с гривната:       загуба > 30 s в MAIN/METABOLIC → φ ← min(φ, 0.8)   [D]
                             загуба > 120 s → COOLDOWN                          [D]
G13 Човешки вход:            НАМАЛИ → u_k ← u_k − 0.10 за всички канали,
                             без автоматично връщане в текущия блок             [D]
```

### 5.1 Допълнителни граници при SOLO [D]

```
φ_max           = 0.9           (не се позволява G4 превишаване)
x_cap_SOLO      = x_cap' − 0.05
t_on_max        = 4 s           за f ≥ 20 Hz
Q_budget        = Q_plan        (β = 0)
Контролни точки: задължителен CR10 вход; без отговор за 15 s → STIM_PAUSE
Бутон СТОП:     винаги видим, един допир, и физически бутон на устройството ако има
G7 продължаване: автоматично само след HR ≤ HR(x_rec) за ≥ 30 s + потвърждение
```

---

## 6. Динамика: изход, доза, умора

Дискретизация: `dt = 100 ms` [D]

### 6.1 Ток на изхода по канал k

```
I_k(t) = I_cal,k · φ(t) · σ(t) · r(t) · u_k(t)

φ(t)  — фактор на фазата
σ(t)  — фактор на сегмента (A или B)
r(t)  — рампа: линейна 0→1 за ramp_up, 1→0 за ramp_down; 0 в паузата
u_k   — множител от HR контролера, u_k ∈ [u_min, 1],  u_min = 0.6    [D]
```

### 6.2 Доза (заряд)

```
q_k(t) = I_k(t) · pw(t)                   [mA·µs = nC на фаза на импулса]
Q_k    = Σ_t 2 · q_k(t) · f(t) · dt       [nC], двуфазен → ×2

Q_budget,k = Q_plan,k · (1 + β),  β = 0.10                       [D]
Q_plan,k   = Σ по генерирания план при u = 1
```

Основание: общият заряд предсказва силата; серии с еднакъв заряд дават еднакъв въртящ момент [E:R5].

### 6.3 Модел на умората (генерира блоковете и почивките)

```
По време на импулс:   dF_k/dt =  w(f) · ρ_k(t)
По време на пауза:    dF_k/dt = −F_k / τ_r

w(f)    = (f / 85)^γ,         γ = 0.5                            [D]
ρ_k(t)  = I_k(t) / I_cal,k
F̄       = mean_k F_k       (само активни канали)

Параметри по кондиция:
                LOW    MID    HIGH
F_max   [D]     12     15     18
F_rec   [D]      4      5      6
τ_r [s] [D]     40     30     22
```

Монотонност на w(f): при еднаква сила по-високата честота предизвиква повече умора [E:R4,R5]. Бърза поява на умора при стимулация поради синхронно и фиксирано активиране [E:R6].

### 6.4 Генериране на блоковете (BlockMode = FATIGUE_DRIVEN)

```
Блокът продължава, докато:
    F̄ < F_max'   И   t_block < t_block_max = 180 s              [D]
Край на блока → REST:
    I = 0 (или COOLDOWN-сегмент при FAT/METABOLIC, по избор)      [D]
REST продължава, докато:
    F̄ ≤ F_rec   И   HR_ok(REST)   И   t_rest ≥ t_rest_min = 20 s [D]
    или t_rest ≥ t_rest_max = 120 s → следва блок с φ ← 0.9·φ     [D]
Фазата приключва при изтичане на share·T (блокът се довършва до края на текущия цикъл).
```

---

## 7. Обработка на пулса в реално време

```
Вход: поток (t_i, bpm_i) от гривната; интервал Δt_HR от §2

1. Валидиране: както §2 (диапазон, наклон S_max)
2. Изглаждане: HR_s(t) = α·bpm + (1−α)·HR_s(t−1),  α = 0.3       [D]
3. Флаг за артефакт: проби с |Δ| > 15 bpm за < 3 s по време на импулс
   → отхвърлят се; при > 20% отхвърлени за 60 s → FLAG_EMS_ARTIFACT [D]
4. x(t) = (HR_s(t) − HR_rest) / HRR
```

### 7.1 Показатели на блок j (основна фаза)

```
ΔHR_j    = max_{t∈блок j} HR_s − HR_s(начало на блок j)
Q_j      = Σ_k Q_k в блок j
R_j      = ΔHR_j / Q_j                        реакция на единица доза
D_j      = R_j / R_ref                        отклонение, R_ref = R на първия блок от MAIN

Възстановяване в почивка j:
HR_s(t) ≈ HR_b + (HR_e − HR_b)·e^{−t/τ_HR,j}      (напасване по най-малки квадрати)
V_j     = τ_HR,j / τ_HR,ref                   забавяне на възстановяването
```

---

## 8. HR контролер

Работи само когато c_HR > 0, HR_MODE ≠ SAFETY_ONLY и фазата е MAIN/METABOLIC.
При c_rate = 0.5 се изпълняват само L2 и L1 (решения на ниво блок).
Всяка корекция се мащабира с c_HR чрез арбитъра (ниво C).

**Пасивни програми (MASSAGE, DRAIN, CELLULITE и PASSIVE варианти):** реакцията на пулса е малка спрямо шума на гривната → HR_MODE = SAFETY_ONLY по дефиниция [D]. Управлението е изцяло от плана и модела на умората.

### 8.1 Грешки

```
e_hi(t) = max(0, x(t) − x_hi')
e_lo(t) = max(0, x_lo' − x(t))          (само където x_lo е дефиниран)
```

### 8.2 Действия (ред на прилагане — от най-мекото)

```
L3  Пауза в цикъла (на всеки цикъл, с ограничение на скоростта):
    t_off ← clamp( t_off_base · (1 + k1·e_hi), t_off_base, 2.5·t_off_base )
    k1 = 4                                                        [D]

L4  Сегмент B (само ако има редуване):
    σ_B ← clamp( σ_B_base · (1 − k2·e_hi), 0, σ_B_base ),  k2 = 3 [D]
    при σ_B = 0 → B става пауза

L2  Блокове (в края на всеки блок):
    F_max' ← F_max · (1 − k3·max(0, D_j − 1)),  k3 = 0.5           [D]
    REST продължава до x ≤ x_rec = x_hi' − 0.10                   [D]
    V_j > 1.3 → t_rest_min ← 1.3 · t_rest_min                     [D]

L1  Сесия (при устойчиво отклонение):
    ако D_j > 1.4 за 2 поредни блока или V_j > 1.5                [D]
      → Q_budget ← Q_used + 0.5·(Q_budget − Q_used)
      → ако и следващият блок изпълнява условието → COOLDOWN

u   Множител на тока (последна мярка, само MAIN):
    ако e_hi > 0.10 въпреки L3–L4 за ≥ 2 цикъла:
      u_k ← max(u_min, u_k − 0.05)  на цикъл                       [D]
    възстановяване: u_k ← min(1, u_k + 0.02) на цикъл при e_hi = 0

Под коридора (FAT, e_lo > 0):
    t_rest_min ← max(20 s, 0.8 · t_rest_min)
    σ_B ← min(σ_B_base, σ_B + 0.05) на блок
    ✗ без повишаване на u над 1, ✗ без повишаване на f
```

### 8.3 Дисциплина на контура

```
Хистерезис:   активиране при e_hi > 0.02, деактивиране при e_hi = 0 за ≥ 2 цикъла  [D]
Скорост:      L3/L4/u — максимум 1 промяна на цикъл; L2/L1 — само в края на блок
Закъснение:   решенията за L2/L1 използват показатели на ниво блок (§7.1),
              не моментни стойности
c_HR = 0:     изпълнява се генерираният план без корекции; G7 остава активен
              само при валидна последна стойност
```

### 8.4 Откриване на NON_RESPONDER

Пулсът не отразява натоварването (лекарства, индивидуална реакция, лош контакт на гривната).

```
След първите 2 блока от MAIN:
  ако max x < 0.10   И   Q_used ≥ 0.25·Q_plan                      [D]
  → c_resp = 0, HR_MODE = SAFETY_ONLY, флаг в отчета
```

### 8.5 Упражненията в ACTIVE режим

В ACTIVE пулсът отразява сумата „упражнение + стимулация“. За да е сравнимо D_j:

```
Всеки блок носи exerciseClass ∈ {LOWER, UPPER, CORE, FULL, STATIC}  (от плана) [D]
R_ref се води отделно за всеки exerciseClass (първият блок от класа)
D_j = R_j / R_ref[exerciseClass_j]
Смяна на упражнението извън плана (решение на оператора) → нов R_ref за класа
```

---

## 9. Автомат на състоянията

```
IDLE
 └─▶ VALIDATE_INPUT + SCREENING (§1.2, G11) ──✗──▶ REJECT
      └─▶ CALIB_REST_HR  (§2, §2.1)
           └─▶ DERIVE     (§3: HR_max, HRR, коридори, HR_cap; §5.1 при SOLO)
                └─▶ PLAN       (§4, §6: фази, цикли, Q_plan, Q_budget)
                     └─▶ CALIB   (I_cal по канал до целевото CR10)
                           TRAINER: ръчно
                           SELF:    автоматично покачване с ΔI_max по канал,
                                    потребителят спира на целевото усещане [D]
                          └─▶ RUN
                               ├─ WARMUP
                               ├─ MAIN      ⇄ REST   (FATIGUE_DRIVEN)
                               ├─ METABOLIC ⇄ REST   (само FAT)
                               └─ COOLDOWN
                               └─▶ DONE → REPORT

Прекъсвания от всяко състояние на RUN:
  CHECKPOINT  при: начало на MAIN, 50% от MAIN, преди последния блок,
              G9, FLAG_*                                          [E:R1: ≥3 проверки на зона]
              → пауза, операторът въвежда CR10 по канал; I_cal се коригира
                само в посока надолу, освен при TRAINER
  STIM_PAUSE  при G7 → продължава само след HR ≤ HR(x_rec) и потвърждение
                от оператора (при SOLO: §5.1)
  USER_PAUSE  бутон ПАУЗА → I = 0; F_k продължава да спада по §6.3;
                продължаване от началото на текущия цикъл
  STOP        при G10 → DONE (прекратена)
```

---

## 10. Отчет след сесията

```
За всеки блок j:   t_start, t_block, t_rest, Q_j, F̄_end, ΔHR_j, R_j, D_j, τ_HR,j, V_j
За сесията:        Q_total / Q_budget, време в коридора [%], max x, брой активирания
                   на L1–L4, u_min достигнат, флагове, checkpoints
HRR_60 след край:  HR_s(t_end) − HR_s(t_end + 60 s)
Сурови данни:      HR поток, I_k(t) на 10 Hz, събития — за калибриране (§11)
```

---

## 11. Калибриране на [D] параметрите

```
Данни:     отчети от §10 + CR10 от контролните точки
Цел 1:     w(f), γ, τ_r, F_max  ← напасване F̄ към спада на CR10/поносимостта
           между контролните точки при еднакъв I_cal
Цел 2:     R_ref, k1–k3          ← минимизиране на време извън коридора при
           ограничение „брой L1 активирания → минимум“
Цел 3:     α, S_max, праг за артефакт ← от логовете на гривната: разпределение на
           скоковете по време на импулс срещу по време на пауза
           (разлика между двете = артефакт от стимулацията)
Правило:   нито една калибрирана стойност не отслабва G1–G13
```

---

## 13. Покритие на сценариите

| Сценарий | Обработка |
|---|---|
| Противопоказание, температура, алкохол/стрес, възраст < 18 | REJECT (§1.2, G11) |
| Нестабилен пулс в покой | удължаване на W; после WARN (§2) |
| Пулс в покой ≥ 100 | FLAG; SOLO → REJECT (§2) |
| Лекарства, понижаващи пулса | c_med = 0.3 (§2.1) |
| Гривната праща рядко (Δt_HR > 3 s / > 10 s) | само L1/L2 / само таван (§2.1) |
| Гривната прекъсва по време на сесия | G12: по-нисък φ → COOLDOWN |
| Артефакти от стимулацията | отхвърляне на проби, c_valid ↓ (§7) |
| Пулсът не реагира на натоварването | NON_RESPONDER → SAFETY_ONLY (§8.4) |
| Пулсът расте прекомерно | L3 → L4 → L2 → L1 → u (§8.2); таван → G7 |
| Пулсът под коридора (FAT) | по-къси почивки, повече сегмент B; без +mA, без +Hz |
| Упражнението променя пулса (ACTIVE) | R_ref по клас упражнение (§8.5) |
| Пасивна програма | SAFETY_ONLY по дефиниция (§8) |
| Неравномерна сила ляво/дясно | G9 → контролна точка |
| Прекомерно усещане | НАМАЛИ (G13) или СТОП (G10) |
| Без отговор на контролна точка (SOLO) | STIM_PAUSE (§5.1) |
| Пауза по желание | USER_PAUSE, умората продължава да спада (§9) |

**Граници на универсалността (от данните, не от алгоритъма):**
- HR_max по формула е средна стойност за популацията; индивидуалното отклонение се поема от HR_rest в Karvonen и от R_ref в рамките на сесията, но не изцяло.
- Кондицията е самооценка.
- Гривната не отчита ритъмни нарушения; затова известна аритмия е REJECT, а неизвестна не може да бъде открита.
- Алгоритъмът не вижда реакцията на отделните мускули; тя идва само от CR10 в контролните точки и от бутоните.

---

## 12. Източници

- **R1** Kemmler et al. (2023). Position statement and updated international guideline for safe and effective WB-EMS. *Front. Physiol.* 14:1174103.
- **R2** Kemmler et al. (2024). WB-EMS with different impulse intensity on blood pressure… *Front. Physiol.* (85 Hz, 350 µs, двуфазен правоъгълен, 6 s / 4 s).
- **R3** Effects of an impulse frequency dependent 10-week WB-EMS program… (PMC7196755): 350 µs, 4 s / 4 s, CR10.
- **R4** Kesar & Binder-Macleod (2006). Effect of frequency and pulse duration on human muscle fatigue during repetitive electrical stimulation. *Exp. Physiol.* 91:967–976.
- **R5** Gregory et al. (2007). Impact of varying pulse frequency and duration on muscle torque production and fatigue. *Muscle & Nerve.*
- **R6** Maffiuletti (2010). Physiological and methodological considerations for the use of NMES. *Eur. J. Appl. Physiol.* 110:223–234; Bickel, Gregory, Dean (2011). Motor unit recruitment during NMES: a critical appraisal. *Eur. J. Appl. Physiol.*
- **R7** Acute effects of WB-EMS on energy expenditure at rest and during uphill walking (2022). *Metabolites* 12:781.
- **R8** Positive effect of specific low-frequency electrical stimulation during short-term recovery… *Appl. Physiol. Nutr. Metab.* (2014).
- **R9** Electrically induced hemodynamic enhancement via sock-integrated electrodes… 1 Hz vs 36 Hz (2025). *Sci. Rep.*
- **R10** Kemmler et al. (2021). Efficacy of WB-EMS on body composition and muscle strength… meta-analysis. *Front. Physiol.* 12:640657.
- **R11** Tanaka, Monahan, Seals (2001). Age-predicted maximal heart rate revisited. *JACC* 37:153–156.
- **R12** Gulati et al. (2010). Heart rate response to exercise stress testing in asymptomatic women. *Circulation* 122:130–137.
- **R13** Клинична дефиниция: тахикардия в покой > 100 bpm.
- **R14** ACSM's Guidelines for Exercise Testing and Prescription: умерено 40–59 % HRR, високо 60–89 % HRR.
- **R15** Kemmler et al. (2019). Recommended contraindications for the use of non-medical WB-electromyostimulation. *Dtsch. Z. Sportmed.* 70:278–282.
