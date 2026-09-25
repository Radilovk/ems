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
    .locals 6

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
    const/16 v0, 0xb4

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    .line 85
    iput v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    .line 86
    iput v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    .line 87
    const/16 v0, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    .line 89
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 90
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 91
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 93
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    .line 95
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 97
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    .line 101
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    .line 105
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    return-void
.end method

.method private action(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    .line 470
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastActionMs:J

    .line 471
    return-void
.end method

.method public static autoUpper(I)I
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0xb4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->autoUpper(II)I

    move-result v0

    return v0
.end method

.method public static autoUpper(II)I
    .locals 6

    .prologue
    .line 149
    if-gtz p0, :cond_1

    .line 150
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    .line 151
    const/16 v0, 0x96

    .line 156
    :goto_0
    return v0

    .line 153
    :cond_0
    const/16 p0, 0x46

    .line 155
    :cond_1
    int-to-double v0, p0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    sub-int v4, p1, p0

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 156
    const/16 v1, 0x82

    const/16 v2, 0xa0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private checkEffect(J)V
    .locals 9

    .prologue
    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v0

    .line 346
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingSlope:D

    const-wide v6, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_2

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_3

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 351
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    goto :goto_0

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    goto :goto_1
.end method

.method private chooseLever(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;
    .locals 10

    .prologue
    const-wide v8, 0x3fe6666666efd6c5L    # 0.7000000009999999

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    cmpl-double v2, v2, v8

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v2, v2, v1

    if-ge v2, v6, :cond_0

    move v3, v0

    .line 323
    :goto_0
    if-nez p2, :cond_1

    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    const/16 v4, 0xfa

    if-lt v2, v4, :cond_1

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    cmpl-double v2, v4, v8

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v2, v2, v0

    if-ge v2, v6, :cond_1

    move v2, v0

    .line 324
    :goto_1
    if-nez p2, :cond_2

    iget v4, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    const/16 v5, 0x32

    if-le v4, v5, :cond_2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    cmpl-double v4, v4, v8

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v4, v4, v6

    if-ge v4, v6, :cond_2

    .line 325
    :goto_2
    if-eqz v3, :cond_3

    .line 326
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 337
    :goto_3
    return-object v0

    :cond_0
    move v3, v1

    .line 322
    goto :goto_0

    :cond_1
    move v2, v1

    .line 323
    goto :goto_1

    :cond_2
    move v0, v1

    .line 324
    goto :goto_2

    .line 328
    :cond_3
    if-eqz v2, :cond_4

    .line 329
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    goto :goto_3

    .line 331
    :cond_4
    if-eqz v0, :cond_5

    .line 332
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    goto :goto_3

    .line 334
    :cond_5
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    const-wide v2, 0x3fd999999aac7a59L    # 0.40000000100000005

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    .line 335
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    goto :goto_3

    .line 337
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private computeSlope()D
    .locals 18

    .prologue
    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    .line 448
    const/4 v2, 0x4

    if-ge v8, v2, :cond_0

    .line 449
    const-wide/16 v2, 0x0

    .line 465
    :goto_0
    return-wide v2

    .line 451
    :cond_0
    const-wide/16 v6, 0x0

    .line 452
    const-wide/16 v2, 0x0

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v2

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 454
    const/4 v3, 0x0

    aget-wide v10, v2, v3

    add-double/2addr v6, v10

    .line 455
    const/4 v3, 0x1

    aget-wide v2, v2, v3

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 456
    goto :goto_1

    .line 457
    :cond_1
    int-to-double v2, v8

    div-double v10, v6, v2

    .line 458
    int-to-double v2, v8

    div-double v8, v4, v2

    .line 459
    const-wide/16 v6, 0x0

    .line 460
    const-wide/16 v2, 0x0

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v4, v2

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 462
    const/4 v3, 0x0

    aget-wide v14, v2, v3

    sub-double/2addr v14, v10

    const/4 v3, 0x0

    aget-wide v16, v2, v3

    sub-double v16, v16, v10

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    .line 463
    const/4 v3, 0x0

    aget-wide v14, v2, v3

    sub-double/2addr v14, v10

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    sub-double/2addr v2, v8

    mul-double/2addr v2, v14

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 464
    goto :goto_2

    .line 465
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-lez v2, :cond_3

    div-double v2, v4, v6

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private static cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 439
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
    .locals 5

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v0, :cond_0

    .line 432
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 435
    :goto_0
    return-wide v0

    .line 434
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 435
    int-to-double v2, v0

    const/4 v1, 0x0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    goto :goto_0
.end method

.method private energyStim(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/ai/AiEnergy$Stim;
    .locals 12

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const/4 v1, 0x0

    .line 402
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    if-gtz v0, :cond_1

    .line 403
    :cond_0
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    .line 405
    :cond_1
    new-instance v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;-><init>()V

    .line 406
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    .line 407
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->disabled:[Z

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    .line 408
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    int-to-double v2, v0

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 409
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    iput v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 410
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    if-lez v0, :cond_3

    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    :goto_1
    iput v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 411
    const/4 v0, 0x1

    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 412
    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 413
    int-to-double v8, v0

    add-int v3, v0, v2

    int-to-double v10, v3

    div-double/2addr v8, v10

    iput-wide v8, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 414
    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v3, :cond_2

    if-lez v2, :cond_2

    .line 415
    iget v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    int-to-double v8, v3

    iput-wide v8, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    .line 416
    iget v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseHz:I

    iput v3, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    .line 417
    int-to-double v8, v2

    add-int/2addr v0, v2

    int-to-double v2, v0

    div-double v2, v8, v2

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    :cond_2
    move v0, v1

    .line 419
    :goto_2
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 420
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    aget v2, v2, v0

    :goto_3
    int-to-double v2, v2

    .line 421
    :goto_4
    div-double v8, v2, v6

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    const-wide v2, 0x3fa999999999999aL    # 0.05

    :goto_5
    mul-double/2addr v8, v2

    iget v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    .line 422
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v2, :cond_7

    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    :goto_6
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

    .line 423
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    aget-wide v8, v8, v0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, v5, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 410
    :cond_3
    const/16 v0, 0x15e

    goto :goto_1

    :cond_4
    move v2, v1

    .line 420
    goto :goto_3

    :cond_5
    move-wide v2, v6

    goto :goto_4

    .line 421
    :cond_6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    :cond_7
    move v2, v1

    .line 422
    goto :goto_6

    .line 425
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    move-object v0, v4

    .line 426
    goto/16 :goto_0
.end method

.method private hrFresh(J)Z
    .locals 5

    .prologue
    .line 443
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stepDown(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;DI)Z
    .locals 9

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    int-to-double v2, p6

    sub-double/2addr v0, v2

    .line 286
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

    .line 287
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 288
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    .line 290
    :cond_0
    iget v2, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    if-lez v2, :cond_2

    iget v2, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    .line 291
    :goto_0
    if-eqz v2, :cond_1

    .line 292
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    .line 294
    :cond_1
    invoke-direct {p0, p3, v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->chooseLever(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    move-result-object v4

    .line 295
    if-nez v4, :cond_3

    .line 296
    const/4 v0, 0x0

    .line 318
    :goto_1
    return v0

    .line 290
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 298
    :cond_3
    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

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

    move-result v5

    int-to-double v6, v5

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_4

    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v2

    :goto_2
    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    .line 303
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 313
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    const-wide v4, 0x3fe6666666efd6c5L    # 0.7000000009999999

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 314
    :goto_3
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    sub-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 315
    const-string v0, "strength_down"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 318
    :goto_4
    const/4 v0, 0x1

    goto :goto_1

    .line 302
    :cond_4
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v2

    const-wide/16 v6, 0x3a98

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_2

    .line 305
    :pswitch_0
    const-wide v2, 0x3fe6666666666666L    # 0.7

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    sub-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 306
    const-string v0, "width_down"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    goto :goto_4

    .line 309
    :pswitch_1
    const-wide v2, 0x3fe6666666666666L    # 0.7

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    sub-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 310
    const-string v0, "freq_down"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    goto :goto_4

    .line 313
    :cond_5
    const-wide v2, 0x3fd999999999999aL    # 0.4

    goto :goto_3

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private stepUp(J)Z
    .locals 9

    .prologue
    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 355
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    const-wide v2, 0x3fe6666665dcf607L    # 0.699999999

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 356
    const-wide v0, 0x3fe6666666666666L    # 0.7

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    add-double/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 366
    :goto_0
    const-string v0, "restore"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 367
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 357
    :cond_0
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 358
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    add-double/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    goto :goto_0

    .line 359
    :cond_1
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 360
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    add-double/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    goto :goto_0

    .line 361
    :cond_2
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3

    .line 362
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    add-double/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    goto :goto_0

    .line 364
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private tickCalibration(J)V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_2

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->acceptUnstable()V

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setRestHr(I)V

    .line 279
    const-string v0, "calibrated"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    goto :goto_0
.end method


# virtual methods
.method public csvHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    const-string v0, "t_ms,hr,slope,forecast,rest,upper,cap,hz,pw_us,on_s,off_s,strength,active_pause,s_factor,pw_factor,hz_factor,hold,action,kcal"

    return-object v0
.end method

.method public csvRow(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 521
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d,%.1f,%.3f,%.1f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%.2f,%.2f,%.2f,%d,%s,%.1f"

    const/16 v0, 0x13

    new-array v5, v0, [Ljava/lang/Object;

    .line 522
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

    .line 523
    if-eqz p3, :cond_0

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0x8

    if-eqz p3, :cond_1

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0x9

    if-eqz p3, :cond_2

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0xa

    if-eqz p3, :cond_3

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0xb

    .line 524
    if-eqz p3, :cond_4

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0xc

    if-eqz p3, :cond_5

    iget-boolean v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v0, 0xd

    .line 525
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

    if-eqz v6, :cond_6

    :goto_6
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

    .line 521
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 523
    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    .line 524
    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    move v2, v1

    .line 525
    goto :goto_6
.end method

.method public getAutoUpper()I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->autoUpper(II)I

    move-result v0

    return v0
.end method

.method public getCalibLeftMs()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 192
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getCalibProgress()D
    .locals 6

    .prologue
    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
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

    goto :goto_0
.end method

.method public getCap()I
    .locals 2

    .prologue
    .line 169
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getForecast()D
    .locals 2

    .prologue
    .line 500
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    return-wide v0
.end method

.method public getFreqFactor()D
    .locals 2

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    return-wide v0
.end method

.method public getHr()D
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHrMax()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    return v0
.end method

.method public getKcal()D
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->getKcal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionMs()J
    .locals 2

    .prologue
    .line 508
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastActionMs:J

    return-wide v0
.end method

.method public getRestHr()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    return v0
.end method

.method public getSlope()D
    .locals 2

    .prologue
    .line 496
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    return-wide v0
.end method

.method public getStrengthFactor()D
    .locals 2

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    goto :goto_0
.end method

.method public getUpper()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getAutoUpper()I

    move-result v0

    goto :goto_0
.end method

.method public getWidthFactor()D
    .locals 2

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    return-wide v0
.end method

.method public isCalibrating()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHold()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    return v0
.end method

.method public isManualUpper()Z
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHr(JIZ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiRestHr;->onSample(JI)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiHrFilter;->onSample(JIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
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

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

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

    if-gez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method public onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 372
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-ne p1, v0, :cond_0

    .line 373
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 374
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v1

    aput v4, v0, v1

    .line 381
    return-void

    .line 375
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-ne p1, v0, :cond_1

    .line 376
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    goto :goto_0

    .line 378
    :cond_1
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    goto :goto_0
.end method

.method public resetEnergy()V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->reset()V

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 398
    return-void
.end method

.method public resetFactors()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 384
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 385
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 386
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 387
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 389
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    move v0, v1

    .line 390
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aput v1, v2, v0

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method public setManualUpper(I)V
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x50

    if-lt p1, v0, :cond_0

    const/16 v0, 0xdc

    if-gt p1, v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    .line 111
    return-void

    .line 110
    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public setMaxStepPct(I)V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x2

    const/16 v1, 0x14

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    .line 115
    return-void
.end method

.method public setPerson(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .locals 3

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const/16 v0, 0xb4

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    .line 130
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 136
    return-void

    .line 132
    :cond_0
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    .line 133
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->forSession(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    goto :goto_0
.end method

.method public setRestHr(I)V
    .locals 3

    .prologue
    .line 118
    const/16 v0, 0x23

    if-lt p1, v0, :cond_0

    const/16 v0, 0x78

    if-gt p1, v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public startCalibration(J)V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;-><init>(Z)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 181
    return-void
.end method

.method public tick(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Z
    .locals 7

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->tickCalibration(J)V

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrFresh(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v4

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energyStim(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    move-result-object v6

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/AiEnergy;->tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V

    .line 220
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->computeSlope()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    .line 221
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_2

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    :goto_1
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    .line 222
    if-eqz p3, :cond_0

    iget-boolean v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v0, :cond_0

    if-nez p4, :cond_3

    .line 223
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 224
    const/4 v0, 0x0

    .line 266
    :goto_2
    return v0

    .line 218
    :cond_1
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 221
    :cond_2
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1

    .line 226
    :cond_3
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 227
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 229
    :cond_4
    const-wide/16 v0, 0x0

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_5

    .line 230
    const/4 v0, 0x0

    goto :goto_2

    .line 232
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->checkEffect(J)V

    .line 233
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v6

    .line 234
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    if-eqz v0, :cond_7

    .line 235
    add-int/lit8 v0, v6, -0xa

    int-to-double v0, v0

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_6

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 237
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 238
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    .line 239
    const-string v0, "resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 240
    const/4 v0, 0x1

    goto :goto_2

    .line 242
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 244
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_8

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 246
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    .line 247
    const-string v0, "cap"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 248
    const/4 v0, 0x1

    goto :goto_2

    .line 250
    :cond_8
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    int-to-double v2, v6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 251
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 252
    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->stepDown(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;DI)Z

    move-result v0

    goto :goto_2

    .line 254
    :cond_9
    add-int/lit8 v0, v6, -0x8

    int-to-double v0, v0

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_a

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    .line 255
    :goto_3
    if-nez v0, :cond_b

    .line 256
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 257
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 254
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 259
    :cond_b
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    .line 260
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 262
    :cond_c
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextRestoreMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    .line 263
    const-wide/16 v0, 0x2710

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextRestoreMs:J

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->stepUp(J)Z

    move-result v0

    goto/16 :goto_2

    .line 266
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_2
.end method
