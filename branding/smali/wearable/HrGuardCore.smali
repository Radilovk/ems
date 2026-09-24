.class public final Lcom/isaigu/gymapp/wearable/HrGuardCore;
.super Ljava/lang/Object;
.source "HrGuardCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;,
        Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;
    }
.end annotation


# static fields
.field public static final CALIB_MS:I = 0x7530

.field public static final CALM_MS:J = 0x4e20L

.field public static final CAP_OVER:I = 0xc

.field public static final DRIFT_AFTER_MS:J = 0xdbba0L

.field public static final EFFECT_CHECK_MS:J = 0x4e20L

.field public static final HZ_FLOOR:D = 0.7

.field public static final HZ_MIN_TETANIC:I = 0x32

.field public static final LAG_S:D = 20.0

.field public static final MIN_ACT_GAP_MS:J = 0x1770L

.field public static final POP_HR_MAX:I = 0xb4

.field public static final PW_FLOOR:D = 0.7

.field public static final PW_MIN_US:I = 0xfa

.field public static final RESTORE_EVERY_MS:J = 0x2710L

.field public static final RESTORE_STEP:D = 0.03

.field public static final SETTLE_MS:J = 0x3a98L

.field public static final SLOPE_WINDOW_S:D = 30.0

.field public static final S_FLOOR:D = 0.4

.field public static final S_SOFT_FLOOR:D = 0.7

.field public static final UPPER_DEFAULT:I = 0x96

.field public static final UPPER_MAX:I = 0xa0

.field public static final UPPER_MIN:I = 0x82

.field public static final UPPER_SHARE:D = 0.65


# instance fields
.field private calib:Lcom/isaigu/gymapp/ai/AiRestHr;

.field private calmSinceMs:J

.field private final energy:Lcom/isaigu/gymapp/ai/AiEnergy;

.field private final filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

.field private forecast:D

.field private hold:Z

.field private hrRest:I

.field private hzF:D

.field private lastAction:Ljava/lang/String;

.field private lastActionMs:J

.field private manualUpper:I

.field private maxStepPct:I

.field private nextActMs:J

.field private nextRestoreMs:J

.field private final noEffect:[I

.field private final peakCharge:[D

.field private pendingCheckMs:J

.field private pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

.field private pendingSlope:D

.field private pwF:D

.field private final recent:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<[D>;"
        }
    .end annotation
.end field

.field private runStartMs:J

.field private sBeforeHold:D

.field private sF:D

.field private slope:D


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v1, -0x1

    const-wide/16 v4, -0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    .line 79
    new-instance v0, Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    .line 80
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    .line 81
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 83
    iput v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    .line 84
    iput v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    .line 85
    const/16 v0, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    .line 87
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 88
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 89
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 91
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    .line 93
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 95
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    .line 99
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    .line 103
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    return-void
.end method

.method private action(Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 439
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    .line 440
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastActionMs:J

    .line 441
    return-void
.end method

.method public static autoUpper(I)I
    .registers 7

    .prologue
    .line 122
    if-gtz p0, :cond_5

    .line 123
    const/16 v0, 0x96

    .line 126
    :goto_4
    return v0

    .line 125
    :cond_5
    int-to-double v0, p0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    rsub-int v4, p0, 0xb4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 126
    const/16 v1, 0x82

    const/16 v2, 0xa0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4
.end method

.method private checkEffect(J)V
    .registers 12

    .prologue
    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    .line 322
    :cond_a
    :goto_a
    return-void

    .line 315
    :cond_b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v0

    .line 316
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingSlope:D

    const-wide v6, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_27

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_30

    .line 317
    :cond_27
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 321
    :goto_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    goto :goto_a

    .line 319
    :cond_30
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    goto :goto_2c
.end method

.method private chooseLever(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;
    .registers 13

    .prologue
    const-wide v8, 0x3fe6666666efd6c5L    # 0.7000000009999999

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    cmpl-double v2, v2, v8

    if-lez v2, :cond_43

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v2, v2, v1

    if-ge v2, v6, :cond_43

    move v3, v0

    .line 293
    :goto_15
    if-nez p2, :cond_45

    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    const/16 v4, 0xfa

    if-lt v2, v4, :cond_45

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    cmpl-double v2, v4, v8

    if-lez v2, :cond_45

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v2, v2, v0

    if-ge v2, v6, :cond_45

    move v2, v0

    .line 294
    :goto_2a
    if-nez p2, :cond_47

    iget v4, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    const/16 v5, 0x32

    if-le v4, v5, :cond_47

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    cmpl-double v4, v4, v8

    if-lez v4, :cond_47

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v4, v4, v6

    if-ge v4, v6, :cond_47

    .line 295
    :goto_3e
    if-eqz v3, :cond_49

    .line 296
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 307
    :goto_42
    return-object v0

    :cond_43
    move v3, v1

    .line 292
    goto :goto_15

    :cond_45
    move v2, v1

    .line 293
    goto :goto_2a

    :cond_47
    move v0, v1

    .line 294
    goto :goto_3e

    .line 298
    :cond_49
    if-eqz v2, :cond_4e

    .line 299
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    goto :goto_42

    .line 301
    :cond_4e
    if-eqz v0, :cond_53

    .line 302
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    goto :goto_42

    .line 304
    :cond_53
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    const-wide v2, 0x3fd999999aac7a59L    # 0.40000000100000005

    cmpl-double v0, v0, v2

    if-lez v0, :cond_61

    .line 305
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    goto :goto_42

    .line 307
    :cond_61
    const/4 v0, 0x0

    goto :goto_42
.end method

.method private computeSlope()D
    .registers 19

    .prologue
    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    .line 418
    const/4 v2, 0x4

    if-ge v8, v2, :cond_e

    .line 419
    const-wide/16 v2, 0x0

    .line 435
    :goto_d
    return-wide v2

    .line 421
    :cond_e
    const-wide/16 v6, 0x0

    .line 422
    const-wide/16 v2, 0x0

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v2

    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 424
    const/4 v3, 0x0

    aget-wide v10, v2, v3

    add-double/2addr v6, v10

    .line 425
    const/4 v3, 0x1

    aget-wide v2, v2, v3

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 426
    goto :goto_1b

    .line 427
    :cond_31
    int-to-double v2, v8

    div-double v10, v6, v2

    .line 428
    int-to-double v2, v8

    div-double v8, v4, v2

    .line 429
    const-wide/16 v6, 0x0

    .line 430
    const-wide/16 v2, 0x0

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v4, v2

    :goto_44
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 432
    const/4 v3, 0x0

    aget-wide v14, v2, v3

    sub-double/2addr v14, v10

    const/4 v3, 0x0

    aget-wide v16, v2, v3

    sub-double v16, v16, v10

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    .line 433
    const/4 v3, 0x0

    aget-wide v14, v2, v3

    sub-double/2addr v14, v10

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    sub-double/2addr v2, v8

    mul-double/2addr v2, v14

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 434
    goto :goto_44

    .line 435
    :cond_68
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-lez v2, :cond_71

    div-double v2, v4, v6

    goto :goto_d

    :cond_71
    const-wide/16 v2, 0x0

    goto :goto_d
.end method

.method private static cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 409
    const-wide/16 v0, 0x1770

    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static duty(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)D
    .registers 6

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v0, :cond_7

    .line 402
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 405
    :goto_6
    return-wide v0

    .line 404
    :cond_7
    const/4 v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 405
    int-to-double v2, v0

    const/4 v1, 0x0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    goto :goto_6
.end method

.method private energyStim(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/ai/AiEnergy$Stim;
    .registers 14

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const/4 v1, 0x0

    .line 372
    if-eqz p1, :cond_d

    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v0, :cond_d

    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    if-gtz v0, :cond_f

    .line 373
    :cond_d
    const/4 v0, 0x0

    .line 396
    :goto_e
    return-object v0

    .line 375
    :cond_f
    new-instance v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;-><init>()V

    .line 376
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    .line 377
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->disabled:[Z

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    .line 378
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    int-to-double v2, v0

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 379
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    iput v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 380
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    if-lez v0, :cond_9e

    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    :goto_2b
    iput v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 381
    const/4 v0, 0x1

    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 382
    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 383
    int-to-double v8, v0

    add-int v3, v0, v2

    int-to-double v10, v3

    div-double/2addr v8, v10

    iput-wide v8, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 384
    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v3, :cond_57

    if-lez v2, :cond_57

    .line 385
    iget v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    int-to-double v8, v3

    iput-wide v8, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    .line 386
    iget v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseHz:I

    iput v3, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    .line 387
    int-to-double v8, v2

    add-int/2addr v0, v2

    int-to-double v2, v0

    div-double v2, v8, v2

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    :cond_57
    move v0, v1

    .line 389
    :goto_58
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    array-length v2, v2

    if-ge v0, v2, :cond_aa

    .line 390
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    if-eqz v2, :cond_a3

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    array-length v2, v2

    if-ge v0, v2, :cond_a1

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    aget v2, v2, v0

    :goto_6a
    int-to-double v2, v2

    .line 391
    :goto_6b
    div-double v8, v2, v6

    const/4 v2, 0x4

    if-ne v0, v2, :cond_a5

    const-wide v2, 0x3fa999999999999aL    # 0.05

    :goto_75
    mul-double/2addr v8, v2

    iget v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    .line 392
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v2, :cond_a8

    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    :goto_7e
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    div-double/2addr v2, v6

    iget v5, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    int-to-double v8, v5

    mul-double/2addr v2, v8

    const-wide v8, 0x4075e00000000000L    # 350.0

    div-double/2addr v2, v8

    .line 393
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    aget-wide v8, v8, v0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, v5, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 380
    :cond_9e
    const/16 v0, 0x15e

    goto :goto_2b

    :cond_a1
    move v2, v1

    .line 390
    goto :goto_6a

    :cond_a3
    move-wide v2, v6

    goto :goto_6b

    .line 391
    :cond_a5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_75

    :cond_a8
    move v2, v1

    .line 392
    goto :goto_7e

    .line 395
    :cond_aa
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    move-object v0, v4

    .line 396
    goto/16 :goto_e
.end method

.method private hrFresh(J)Z
    .registers 8

    .prologue
    .line 413
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private stepDown(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;DI)Z
    .registers 16

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    int-to-double v2, p6

    sub-double/2addr v0, v2

    .line 256
    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 257
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    .line 258
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    .line 260
    :cond_30
    iget v2, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    if-lez v2, :cond_48

    iget v2, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_48

    const/4 v2, 0x1

    .line 261
    :goto_3b
    if-eqz v2, :cond_40

    .line 262
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    .line 264
    :cond_40
    invoke-direct {p0, p3, v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->chooseLever(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    move-result-object v4

    .line 265
    if-nez v4, :cond_4a

    .line 266
    const/4 v0, 0x0

    .line 288
    :goto_47
    return v0

    .line 260
    :cond_48
    const/4 v2, 0x0

    goto :goto_3b

    .line 268
    :cond_4a
    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 269
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingSlope:D

    .line 270
    const-wide/16 v2, 0x4e20

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    .line 272
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v5

    int-to-double v6, v5

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_8f

    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v2

    :goto_64
    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    .line 273
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_ca

    .line 283
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    const-wide v4, 0x3fe6666666efd6c5L    # 0.7000000009999999

    cmpl-double v2, v2, v4

    if-lez v2, :cond_c4

    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 284
    :goto_7e
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    sub-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 285
    const-string v0, "strength_down"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 288
    :goto_8d
    const/4 v0, 0x1

    goto :goto_47

    .line 272
    :cond_8f
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v2

    const-wide/16 v6, 0x3a98

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_64

    .line 275
    :pswitch_9a
    const-wide v2, 0x3fe6666666666666L    # 0.7

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    sub-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 276
    const-string v0, "width_down"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    goto :goto_8d

    .line 279
    :pswitch_af
    const-wide v2, 0x3fe6666666666666L    # 0.7

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    sub-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 280
    const-string v0, "freq_down"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    goto :goto_8d

    .line 283
    :cond_c4
    const-wide v2, 0x3fd999999999999aL    # 0.4

    goto :goto_7e

    .line 273
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_af
    .end packed-switch
.end method

.method private stepUp(J)Z
    .registers 12

    .prologue
    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 325
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    const-wide v2, 0x3fe6666665dcf607L    # 0.699999999

    cmpg-double v0, v0, v2

    if-gez v0, :cond_27

    .line 326
    const-wide v0, 0x3fe6666666666666L    # 0.7

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    add-double/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 336
    :goto_20
    const-string v0, "restore"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 337
    const/4 v0, 0x1

    :goto_26
    return v0

    .line 327
    :cond_27
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_37

    .line 328
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    add-double/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    goto :goto_20

    .line 329
    :cond_37
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_47

    .line 330
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    add-double/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    goto :goto_20

    .line 331
    :cond_47
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_57

    .line 332
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    add-double/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    goto :goto_20

    .line 334
    :cond_57
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private tickCalibration(J)V
    .registers 6

    .prologue
    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v0, :cond_5

    .line 252
    :cond_4
    :goto_4
    return-void

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_19

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->acceptUnstable()V

    .line 247
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_4

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setRestHr(I)V

    .line 249
    const-string v0, "calibrated"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    goto :goto_4
.end method


# virtual methods
.method public csvHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 486
    const-string v0, "t_ms,hr,slope,forecast,rest,upper,cap,hz,pw_us,on_s,off_s,strength,active_pause,s_factor,pw_factor,hz_factor,hold,action,kcal"

    return-object v0
.end method

.method public csvRow(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 491
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d,%.1f,%.3f,%.1f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%.2f,%.2f,%.2f,%d,%s,%.1f"

    const/16 v0, 0x13

    new-array v5, v0, [Ljava/lang/Object;

    .line 492
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    iget v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x7

    .line 493
    if-eqz p3, :cond_dc

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    :goto_52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0x8

    if-eqz p3, :cond_df

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    :goto_5e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0x9

    if-eqz p3, :cond_e2

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    :goto_6a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0xa

    if-eqz p3, :cond_e4

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    :goto_76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0xb

    .line 494
    if-eqz p3, :cond_e6

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    :goto_82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0xc

    if-eqz p3, :cond_e8

    iget-boolean v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v0, :cond_e8

    move v0, v2

    :goto_91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v0, 0xd

    .line 495
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0xe

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0xf

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x10

    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    if-eqz v6, :cond_ea

    :goto_bd
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    aput-object v1, v5, v0

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEnergy;->getKcal()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v0

    .line 491
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_dc
    move v0, v1

    .line 493
    goto/16 :goto_52

    :cond_df
    move v0, v1

    goto/16 :goto_5e

    :cond_e2
    move v0, v1

    goto :goto_6a

    :cond_e4
    move v0, v1

    goto :goto_76

    :cond_e6
    move v0, v1

    .line 494
    goto :goto_82

    :cond_e8
    move v0, v1

    goto :goto_91

    :cond_ea
    move v2, v1

    .line 495
    goto :goto_bd
.end method

.method public getAutoUpper()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->autoUpper(I)I

    move-result v0

    return v0
.end method

.method public getCalibLeftMs()J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 162
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v2, :cond_7

    :goto_6
    return-wide v0

    :cond_7
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_6
.end method

.method public getCalibProgress()D
    .registers 7

    .prologue
    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_6
.end method

.method public getCap()I
    .registers 3

    .prologue
    .line 139
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getForecast()D
    .registers 3

    .prologue
    .line 470
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    return-wide v0
.end method

.method public getFreqFactor()D
    .registers 3

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    return-wide v0
.end method

.method public getHr()D
    .registers 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getKcal()D
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->getKcal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionMs()J
    .registers 3

    .prologue
    .line 478
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastActionMs:J

    return-wide v0
.end method

.method public getRestHr()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    return v0
.end method

.method public getSlope()D
    .registers 3

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    return-wide v0
.end method

.method public getStrengthFactor()D
    .registers 3

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    goto :goto_6
.end method

.method public getUpper()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getAutoUpper()I

    move-result v0

    goto :goto_6
.end method

.method public getWidthFactor()D
    .registers 3

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    return-wide v0
.end method

.method public isCalibrating()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isHold()Z
    .registers 2

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    return v0
.end method

.method public isManualUpper()Z
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onHr(JIZ)V
    .registers 14

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v0, :cond_f

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiRestHr;->onSample(JI)V

    .line 175
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiHrFilter;->onSample(JIZ)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    new-array v1, v1, [D

    long-to-double v2, p1

    div-double/2addr v2, v6

    aput-wide v2, v1, v8

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v4

    aput-wide v4, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 177
    :goto_2c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    aget-wide v0, v0, v8

    long-to-double v2, p1

    div-double/2addr v2, v6

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4d

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_2c

    .line 181
    :cond_4d
    return-void
.end method

.method public onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 342
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-ne p1, v0, :cond_14

    .line 343
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 344
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 350
    :goto_b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v1

    aput v4, v0, v1

    .line 351
    return-void

    .line 345
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-ne p1, v0, :cond_1b

    .line 346
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    goto :goto_b

    .line 348
    :cond_1b
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    goto :goto_b
.end method

.method public resetEnergy()V
    .registers 5

    .prologue
    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->reset()V

    .line 367
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 368
    return-void
.end method

.method public resetFactors()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 354
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 355
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 356
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 357
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 359
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    move v0, v1

    .line 360
    :goto_13
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1f

    .line 361
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aput v1, v2, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 363
    :cond_1f
    return-void
.end method

.method public setManualUpper(I)V
    .registers 3

    .prologue
    .line 108
    const/16 v0, 0x50

    if-lt p1, v0, :cond_b

    const/16 v0, 0xdc

    if-gt p1, v0, :cond_b

    :goto_8
    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    .line 109
    return-void

    .line 108
    :cond_b
    const/4 p1, -0x1

    goto :goto_8
.end method

.method public setMaxStepPct(I)V
    .registers 4

    .prologue
    .line 112
    const/4 v0, 0x2

    const/16 v1, 0x14

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    .line 113
    return-void
.end method

.method public setRestHr(I)V
    .registers 5

    .prologue
    .line 116
    const/16 v0, 0x23

    if-lt p1, v0, :cond_14

    const/16 v0, 0x78

    if-gt p1, v0, :cond_14

    :goto_8
    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 118
    return-void

    .line 116
    :cond_14
    const/4 p1, -0x1

    goto :goto_8
.end method

.method public startCalibration(J)V
    .registers 6

    .prologue
    .line 149
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;-><init>(Z)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 151
    return-void
.end method

.method public tick(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Z
    .registers 12

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->tickCalibration(J)V

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrFresh(J)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v4

    .line 189
    :goto_f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energyStim(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    move-result-object v6

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AiEnergy;->tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V

    .line 190
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->computeSlope()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    .line 191
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_44

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    :goto_31
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    .line 192
    if-eqz p3, :cond_3b

    iget-boolean v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v0, :cond_3b

    if-nez p4, :cond_47

    .line 193
    :cond_3b
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 194
    const/4 v0, 0x0

    .line 236
    :goto_40
    return v0

    .line 188
    :cond_41
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    goto :goto_f

    .line 191
    :cond_44
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_31

    .line 196
    :cond_47
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_51

    .line 197
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 199
    :cond_51
    const-wide/16 v0, 0x0

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_59

    .line 200
    const/4 v0, 0x0

    goto :goto_40

    .line 202
    :cond_59
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->checkEffect(J)V

    .line 203
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v6

    .line 204
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    if-eqz v0, :cond_8b

    .line 205
    add-int/lit8 v0, v6, -0xa

    int-to-double v0, v0

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_89

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 207
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 208
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    .line 209
    const-string v0, "resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 210
    const/4 v0, 0x1

    goto :goto_40

    .line 212
    :cond_89
    const/4 v0, 0x0

    goto :goto_40

    .line 214
    :cond_8b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_a2

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 216
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    .line 217
    const-string v0, "cap"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 218
    const/4 v0, 0x1

    goto :goto_40

    .line 220
    :cond_a2
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    int-to-double v2, v6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_bb

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_bb

    .line 221
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 222
    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->stepDown(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;DI)Z

    move-result v0

    goto :goto_40

    .line 224
    :cond_bb
    add-int/lit8 v0, v6, -0x8

    int-to-double v0, v0

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_d7

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_d7

    const/4 v0, 0x1

    .line 225
    :goto_ce
    if-nez v0, :cond_d9

    .line 226
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 227
    const/4 v0, 0x0

    goto/16 :goto_40

    .line 224
    :cond_d7
    const/4 v0, 0x0

    goto :goto_ce

    .line 229
    :cond_d9
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_e3

    .line 230
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 232
    :cond_e3
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_fe

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextRestoreMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_fe

    .line 233
    const-wide/16 v0, 0x2710

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextRestoreMs:J

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->stepUp(J)Z

    move-result v0

    goto/16 :goto_40

    .line 236
    :cond_fe
    const/4 v0, 0x0

    goto/16 :goto_40
.end method
