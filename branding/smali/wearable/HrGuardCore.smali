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

.field private energy:Lcom/isaigu/gymapp/ai/AiEnergy;

.field private final filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

.field private forecast:D

.field private hold:Z

.field private hrMax:I

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
            "Ljava/util/ArrayDeque<",
            "[D>;"
        }
    .end annotation
.end field

.field private runStartMs:J

.field private sBeforeHold:D

.field private sF:D

.field private slope:D


# direct methods
.method public constructor <init>()V
    .registers 4

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
    const/16 v0, 0xb4

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    .line 86
    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    .line 87
    const/16 v0, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    .line 89
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 90
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 91
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 93
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 97
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 98
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    .line 101
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    .line 105
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    return-void
.end method

.method private action(Ljava/lang/String;J)V
    .registers 4

    .line 469
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    .line 470
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastActionMs:J

    .line 471
    return-void
.end method

.method public static autoUpper(I)I
    .registers 2

    .line 144
    const/16 v0, 0xb4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->autoUpper(II)I

    move-result p0

    return p0
.end method

.method public static autoUpper(II)I
    .registers 6

    .line 149
    if-gtz p0, :cond_b

    .line 150
    const/16 p0, 0xb4

    if-ne p1, p0, :cond_9

    .line 151
    const/16 p0, 0x96

    return p0

    .line 153
    :cond_9
    const/16 p0, 0x46

    .line 155
    :cond_b
    int-to-double v0, p0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    sub-int/2addr p1, p0

    int-to-double p0, p1

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 156
    const/16 p0, 0x82

    const/16 v0, 0xa0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private checkEffect(J)V
    .registers 9

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-eqz v0, :cond_36

    iget-wide v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_b

    goto :goto_36

    .line 345
    :cond_b
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result p1

    .line 346
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingSlope:D

    const-wide v4, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v2, v4

    cmpg-double p2, v0, v2

    if-ltz p2, :cond_2d

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    if-gtz p2, :cond_24

    goto :goto_2d

    .line 349
    :cond_24
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p1

    goto :goto_32

    .line 347
    :cond_2d
    :goto_2d
    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    const/4 v0, 0x0

    aput v0, p2, p1

    .line 351
    :goto_32
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 352
    return-void

    .line 343
    :cond_36
    :goto_36
    return-void
.end method

.method private chooseLever(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;
    .registers 12

    .line 322
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    const-wide v2, 0x3fe6666666efd6c5L    # 0.7000000009999999

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    cmpl-double v7, v0, v2

    if-lez v7, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v0, v0, v6

    if-ge v0, v5, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 323
    :goto_17
    if-nez p2, :cond_2d

    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    const/16 v7, 0xfa

    if-lt v1, v7, :cond_2d

    iget-wide v7, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    cmpl-double v1, v7, v2

    if-lez v1, :cond_2d

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v1, v1, v4

    if-ge v1, v5, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 324
    :goto_2e
    if-nez p2, :cond_43

    iget p1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    const/16 p2, 0x32

    if-le p1, p2, :cond_43

    iget-wide p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    cmpl-double v7, p1, v2

    if-lez v7, :cond_43

    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget p1, p1, v5

    if-ge p1, v5, :cond_43

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    .line 325
    :goto_44
    if-eqz v0, :cond_49

    .line 326
    sget-object p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    return-object p1

    .line 328
    :cond_49
    if-eqz v1, :cond_4e

    .line 329
    sget-object p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    return-object p1

    .line 331
    :cond_4e
    if-eqz v4, :cond_53

    .line 332
    sget-object p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    return-object p1

    .line 334
    :cond_53
    iget-wide p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    const-wide v0, 0x3fd999999aac7a59L    # 0.40000000100000005

    cmpl-double v2, p1, v0

    if-lez v2, :cond_61

    .line 335
    sget-object p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    return-object p1

    .line 337
    :cond_61
    const/4 p1, 0x0

    return-object p1
.end method

.method private computeSlope()D
    .registers 21

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    .line 448
    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    if-ge v1, v4, :cond_e

    .line 449
    return-wide v2

    .line 451
    :cond_e
    nop

    .line 452
    nop

    .line 453
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v5, v2

    move-wide v7, v5

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    .line 454
    aget-wide v11, v9, v11

    add-double/2addr v5, v11

    .line 455
    aget-wide v10, v9, v10

    add-double/2addr v7, v10

    .line 456
    goto :goto_18

    .line 457
    :cond_2d
    int-to-double v12, v1

    div-double/2addr v5, v12

    .line 458
    div-double/2addr v7, v12

    .line 459
    nop

    .line 460
    nop

    .line 461
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v12, v2

    move-wide v14, v12

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    .line 462
    aget-wide v16, v4, v11

    sub-double v16, v16, v5

    aget-wide v18, v4, v11

    sub-double v18, v18, v5

    mul-double v16, v16, v18

    add-double v12, v12, v16

    .line 463
    aget-wide v16, v4, v11

    sub-double v16, v16, v5

    aget-wide v18, v4, v10

    sub-double v18, v18, v7

    mul-double v16, v16, v18

    add-double v14, v14, v16

    .line 464
    goto :goto_3a

    .line 465
    :cond_5f
    cmpl-double v1, v12, v2

    if-lez v1, :cond_65

    div-double v2, v14, v12

    :cond_65
    return-wide v2
.end method

.method private static cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J
    .registers 5

    .line 439
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr v0, p0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/16 v2, 0x1770

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static duty(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)D
    .registers 6

    .line 431
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v0, :cond_7

    .line 432
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 434
    :cond_7
    const/4 v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 435
    int-to-double v1, v0

    const/4 v3, 0x0

    iget p0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr v0, p0

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method private energyStim(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/ai/AiEnergy$Stim;
    .registers 12

    .line 402
    if-eqz p1, :cond_af

    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v0, :cond_af

    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    if-gtz v0, :cond_c

    goto/16 :goto_af

    .line 405
    :cond_c
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;-><init>()V

    .line 406
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    .line 407
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->disabled:[Z

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    .line 408
    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 409
    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 410
    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    if-lez v1, :cond_29

    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    goto :goto_2b

    :cond_29
    const/16 v1, 0x15e

    :goto_2b
    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 411
    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 412
    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 413
    int-to-double v4, v1

    add-int/2addr v1, v2

    int-to-double v6, v1

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 414
    iget-boolean v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v1, :cond_54

    if-lez v2, :cond_54

    .line 415
    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    int-to-double v4, v1

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    .line 416
    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    .line 417
    int-to-double v1, v2

    div-double/2addr v1, v6

    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    .line 419
    :cond_54
    const/4 v1, 0x0

    :goto_55
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    array-length v4, v2

    if-ge v1, v4, :cond_a6

    .line 420
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-eqz v2, :cond_6d

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6a

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    aget v2, v2, v1

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    int-to-double v6, v2

    goto :goto_6e

    :cond_6d
    move-wide v6, v4

    .line 421
    :goto_6e
    div-double/2addr v6, v4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_78

    const-wide v8, 0x3fa999999999999aL    # 0.05

    goto :goto_7a

    :cond_78
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_7a
    mul-double v6, v6, v8

    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    .line 422
    iget-boolean v8, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v8, :cond_85

    iget v8, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    goto :goto_86

    :cond_85
    const/4 v8, 0x0

    :goto_86
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v8, v2

    mul-double v6, v6, v8

    div-double/2addr v6, v4

    iget v2, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    int-to-double v4, v2

    mul-double v6, v6, v4

    const-wide v4, 0x4075e00000000000L    # 350.0

    div-double/2addr v6, v4

    .line 423
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    aget-wide v4, v2, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 425
    :cond_a6
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, v0, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    .line 426
    return-object v0

    .line 403
    :cond_af
    :goto_af
    const/4 p1, 0x0

    return-object p1
.end method

.method private hrFresh(J)Z
    .registers 8

    .line 443
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-gez v2, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private stepDown(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;DI)Z
    .registers 15

    .line 285
    iget-wide p4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    int-to-double v0, p6

    sub-double/2addr p4, v0

    .line 286
    iget p6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    int-to-double v0, p6

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double p4, p4, v2

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    add-double/2addr p4, v2

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p4

    .line 287
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    const-wide/16 v2, 0x0

    cmp-long p6, v0, v2

    if-lez p6, :cond_30

    sub-long v0, p1, v0

    const-wide/32 v2, 0xdbba0

    cmp-long p6, v0, v2

    if-lez p6, :cond_30

    .line 288
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    mul-double p4, p4, v0

    .line 290
    :cond_30
    iget p6, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p6, :cond_3e

    iget p6, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    const/16 v2, 0x14

    if-ge p6, v2, :cond_3e

    const/4 p6, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p6, 0x0

    .line 291
    :goto_3f
    if-eqz p6, :cond_45

    .line 292
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double p4, p4, v2

    .line 294
    :cond_45
    invoke-direct {p0, p3, p6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->chooseLever(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    move-result-object p6

    .line 295
    if-nez p6, :cond_4c

    .line 296
    return v0

    .line 298
    :cond_4c
    iput-object p6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 299
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingSlope:D

    .line 300
    const-wide/16 v2, 0x4e20

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    .line 302
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v0

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v2

    if-ltz v0, :cond_67

    goto :goto_6d

    :cond_67
    const-wide/16 v4, 0x3a98

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_6d
    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    .line 303
    sget-object p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$1;->$SwitchMap$com$isaigu$gymapp$wearable$HrGuardCore$Lever:[I

    invoke-virtual {p6}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result p6

    aget p3, p3, p6

    const-wide v2, 0x3fe6666666666666L    # 0.7

    if-eq p3, v1, :cond_b1

    const/4 p6, 0x2

    if-eq p3, p6, :cond_a2

    .line 313
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    const-wide v6, 0x3fe6666666efd6c5L    # 0.7000000009999999

    cmpl-double p3, v4, v6

    if-lez p3, :cond_8e

    goto :goto_93

    :cond_8e
    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 314
    :goto_93
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    sub-double/2addr v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    iput-wide p3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 315
    const-string p3, "strength_down"

    invoke-direct {p0, p3, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    goto :goto_c0

    .line 309
    :cond_a2
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    sub-double/2addr v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    iput-wide p3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 310
    const-string p3, "freq_down"

    invoke-direct {p0, p3, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 311
    goto :goto_c0

    .line 305
    :cond_b1
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    sub-double/2addr v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    iput-wide p3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 306
    const-string p3, "width_down"

    invoke-direct {p0, p3, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 307
    nop

    .line 318
    :goto_c0
    return v1
.end method

.method private stepUp(J)Z
    .registers 12

    .line 355
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    const-wide v4, 0x3fe6666665dcf607L    # 0.699999999

    cmpg-double v6, v0, v4

    if-gez v6, :cond_1d

    .line 356
    const-wide v4, 0x3fe6666666666666L    # 0.7

    add-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    goto :goto_46

    .line 357
    :cond_1d
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_2d

    .line 358
    add-double/2addr v4, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    goto :goto_46

    .line 359
    :cond_2d
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    cmpg-double v8, v4, v6

    if-gez v8, :cond_3b

    .line 360
    add-double/2addr v4, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    goto :goto_46

    .line 361
    :cond_3b
    cmpg-double v4, v0, v6

    if-gez v4, :cond_4d

    .line 362
    add-double/2addr v0, v2

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 366
    :goto_46
    const-string v0, "restore"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 367
    const/4 p1, 0x1

    return p1

    .line 364
    :cond_4d
    const/4 p1, 0x0

    return p1
.end method

.method private tickCalibration(J)V
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v0, :cond_5

    .line 271
    return-void

    .line 273
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_17

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->acceptUnstable()V

    .line 277
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_32

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setRestHr(I)V

    .line 279
    const-string v0, "calibrated"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 280
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 282
    :cond_32
    return-void
.end method


# virtual methods
.method public csvHeader()Ljava/lang/String;
    .registers 2

    .line 516
    const-string v0, "t_ms,hr,slope,forecast,rest,upper,cap,hz,pw_us,on_s,off_s,strength,active_pause,s_factor,pw_factor,hz_factor,hold,action,kcal"

    return-object v0
.end method

.method public csvRow(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Ljava/lang/String;
    .registers 9

    .line 521
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/Object;

    .line 522
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget-wide v3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v1, v3

    iget-wide v3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v1, v3

    iget p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x5

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x6

    aput-object p1, v1, v3

    .line 523
    if-eqz p3, :cond_50

    iget p1, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    goto :goto_51

    :cond_50
    const/4 p1, 0x0

    :goto_51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x7

    aput-object p1, v1, v3

    const/16 p1, 0x8

    if-eqz p3, :cond_5f

    iget v3, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/16 p1, 0x9

    if-eqz p3, :cond_6d

    iget v3, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    goto :goto_6e

    :cond_6d
    const/4 v3, 0x0

    :goto_6e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/16 p1, 0xa

    if-eqz p3, :cond_7b

    iget v3, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    goto :goto_7c

    :cond_7b
    const/4 v3, 0x0

    :goto_7c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/16 p1, 0xb

    .line 524
    if-eqz p3, :cond_89

    iget v3, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    goto :goto_8a

    :cond_89
    const/4 v3, 0x0

    :goto_8a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/16 p1, 0xc

    if-eqz p3, :cond_99

    iget-boolean p3, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz p3, :cond_99

    const/4 p2, 0x1

    :cond_99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/16 p1, 0xd

    .line 525
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v1, p1

    const/16 p1, 0xe

    iget-wide p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v1, p1

    const/16 p1, 0xf

    iget-wide p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v1, p1

    const/16 p1, 0x10

    iget-boolean p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/16 p1, 0x11

    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    aput-object p2, v1, p1

    const/16 p1, 0x12

    iget-object p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEnergy;->getKcal()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v1, p1

    .line 521
    const-string p1, "%d,%.1f,%.3f,%.1f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%.2f,%.2f,%.2f,%d,%s,%.1f"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAutoUpper()I
    .registers 3

    .line 160
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->autoUpper(II)I

    move-result v0

    return v0
.end method

.method public getCalibLeftMs()J
    .registers 8

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    goto :goto_16

    :cond_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v3

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_16
    return-wide v1
.end method

.method public getCalibProgress()D
    .registers 8

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_1a

    :cond_7
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v3

    long-to-double v3, v3

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_1a
    return-wide v0
.end method

.method public getCap()I
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    const/16 v1, 0xc8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getForecast()D
    .registers 3

    .line 500
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    return-wide v0
.end method

.method public getFreqFactor()D
    .registers 3

    .line 484
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    return-wide v0
.end method

.method public getHr()D
    .registers 3

    .line 492
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHrMax()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    return v0
.end method

.method public getKcal()D
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->getKcal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAction()Ljava/lang/String;
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionMs()J
    .registers 3

    .line 508
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastActionMs:J

    return-wide v0
.end method

.method public getRestHr()I
    .registers 2

    .line 196
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    return v0
.end method

.method public getSlope()D
    .registers 3

    .line 496
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    return-wide v0
.end method

.method public getStrengthFactor()D
    .registers 3

    .line 476
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    :goto_9
    return-wide v0
.end method

.method public getUpper()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    if-lez v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getAutoUpper()I

    move-result v0

    :goto_9
    return v0
.end method

.method public getWidthFactor()D
    .registers 3

    .line 480
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    return-wide v0
.end method

.method public isCalibrating()Z
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isHold()Z
    .registers 2

    .line 488
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    return v0
.end method

.method public isManualUpper()Z
    .registers 2

    .line 173
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onHr(JIZ)V
    .registers 9

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v0, :cond_7

    .line 203
    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiRestHr;->onSample(JI)V

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiHrFilter;->onSample(JIZ)Z

    move-result p3

    if-eqz p3, :cond_4a

    .line 206
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    const/4 p4, 0x2

    new-array p4, p4, [D

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    const/4 v0, 0x0

    aput-wide p1, p4, v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v2

    aput-wide v2, p4, v1

    invoke-virtual {p3, p4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 207
    :goto_2a
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4a

    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [D

    aget-wide v1, p3, v0

    const-wide/high16 p3, 0x403e000000000000L    # 30.0

    sub-double p3, p1, p3

    cmpg-double v3, v1, p3

    if-gez v3, :cond_4a

    .line 208
    iget-object p3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_2a

    .line 211
    :cond_4a
    return-void
.end method

.method public onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V
    .registers 6

    .line 372
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-ne p1, v0, :cond_c

    .line 373
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 374
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    goto :goto_15

    .line 375
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-ne p1, v0, :cond_13

    .line 376
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    goto :goto_15

    .line 378
    :cond_13
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 380
    :goto_15
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result p1

    aput v1, v0, p1

    .line 381
    return-void
.end method

.method public resetEnergy()V
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->reset()V

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 398
    return-void
.end method

.method public resetFactors()V
    .registers 5

    .line 384
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 385
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 386
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 389
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 390
    const/4 v1, 0x0

    :goto_13
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 391
    aput v0, v2, v1

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 393
    :cond_1d
    return-void
.end method

.method public setManualUpper(I)V
    .registers 3

    .line 110
    const/16 v0, 0x50

    if-lt p1, v0, :cond_9

    const/16 v0, 0xdc

    if-gt p1, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, -0x1

    :goto_a
    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    .line 111
    return-void
.end method

.method public setMaxStepPct(I)V
    .registers 3

    .line 114
    const/16 v0, 0x14

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    .line 115
    return-void
.end method

.method public setPerson(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 4

    .line 128
    if-nez p1, :cond_e

    .line 129
    const/16 p1, 0xb4

    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    .line 130
    new-instance p1, Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-direct {p1}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    goto :goto_1f

    .line 132
    :cond_e
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    .line 133
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->forSession(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 135
    :goto_1f
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 136
    return-void
.end method

.method public setRestHr(I)V
    .registers 4

    .line 118
    const/16 v0, 0x23

    if-lt p1, v0, :cond_9

    const/16 v0, 0x78

    if-gt p1, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, -0x1

    :goto_a
    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    invoke-virtual {v0, p1, v1}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 120
    return-void
.end method

.method public startCalibration(J)V
    .registers 5

    .line 179
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;-><init>(Z)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 180
    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 181
    return-void
.end method

.method public tick(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Z
    .registers 21

    .line 217
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-object/from16 v6, p3

    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->tickCalibration(J)V

    .line 218
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrFresh(J)Z

    move-result v0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_19

    iget-object v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    move-wide v12, v0

    goto :goto_1a

    :cond_19
    move-wide v12, v10

    .line 219
    :goto_1a
    iget-object v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-direct {v7, v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energyStim(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    move-result-object v5

    move-wide/from16 v1, p1

    move-wide v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiEnergy;->tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V

    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->computeSlope()D

    move-result-wide v0

    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    .line 221
    const-wide/16 v2, 0x0

    cmpl-double v4, v12, v2

    if-lez v4, :cond_3c

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    mul-double v0, v0, v4

    add-double v10, v12, v0

    :cond_3c
    iput-wide v10, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    .line 222
    const-wide/16 v0, -0x1

    const/4 v4, 0x0

    if-eqz v6, :cond_fd

    iget-boolean v5, v6, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v5, :cond_fd

    if-nez p4, :cond_4c

    const/4 v2, 0x0

    goto/16 :goto_fe

    .line 226
    :cond_4c
    iget-wide v10, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    const-wide/16 v14, 0x0

    cmp-long v5, v10, v14

    if-gez v5, :cond_56

    .line 227
    iput-wide v8, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 229
    :cond_56
    cmpg-double v5, v12, v2

    if-gtz v5, :cond_5b

    .line 230
    return v4

    .line 232
    :cond_5b
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->checkEffect(J)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v10

    .line 234
    iget-boolean v2, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_8b

    .line 235
    add-int/lit8 v10, v10, -0xa

    int-to-double v0, v10

    cmpg-double v2, v12, v0

    if-gtz v2, :cond_8a

    .line 236
    iput-boolean v4, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 237
    iget-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 238
    invoke-static/range {p3 .. p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v0

    add-long/2addr v0, v8

    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    .line 239
    const-string v0, "resume"

    invoke-direct {v7, v0, v8, v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 240
    return v3

    .line 242
    :cond_8a
    return v4

    .line 244
    :cond_8b
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v2

    int-to-double v14, v2

    cmpl-double v2, v12, v14

    if-ltz v2, :cond_a0

    .line 245
    iput-boolean v3, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 246
    iget-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    .line 247
    const-string v0, "cap"

    invoke-direct {v7, v0, v8, v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 248
    return v3

    .line 250
    :cond_a0
    iget-wide v14, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    int-to-double v3, v10

    cmpl-double v5, v14, v3

    if-lez v5, :cond_bc

    iget-wide v3, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    cmp-long v5, v8, v3

    if-ltz v5, :cond_bc

    .line 251
    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 252
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide v4, v12

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->stepDown(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;DI)Z

    move-result v0

    return v0

    .line 254
    :cond_bc
    add-int/lit8 v10, v10, -0x8

    int-to-double v3, v10

    cmpg-double v5, v12, v3

    if-gtz v5, :cond_d0

    iget-wide v3, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v10, v3, v5

    if-gtz v10, :cond_d0

    const/4 v3, 0x1

    goto :goto_d1

    :cond_d0
    const/4 v3, 0x0

    .line 255
    :goto_d1
    if-nez v3, :cond_d7

    .line 256
    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 257
    const/4 v0, 0x0

    return v0

    .line 259
    :cond_d7
    iget-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_e1

    .line 260
    iput-wide v8, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 262
    :cond_e1
    iget-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    sub-long v0, v8, v0

    const-wide/16 v3, 0x4e20

    cmp-long v5, v0, v3

    if-ltz v5, :cond_fb

    iget-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextRestoreMs:J

    cmp-long v3, v8, v0

    if-ltz v3, :cond_fb

    .line 263
    const-wide/16 v0, 0x2710

    add-long/2addr v0, v8

    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextRestoreMs:J

    .line 264
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->stepUp(J)Z

    move-result v0

    return v0

    .line 266
    :cond_fb
    const/4 v2, 0x0

    return v2

    .line 222
    :cond_fd
    const/4 v2, 0x0

    .line 223
    :goto_fe
    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 224
    return v2
.end method
