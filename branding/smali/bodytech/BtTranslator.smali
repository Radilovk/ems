.class public final Lcom/isaigu/gymapp/bodytech/BtTranslator;
.super Ljava/lang/Object;
.source "BtTranslator.java"


# static fields
.field static final ARMS_SLIDER:I = 0x4

.field public static final BURST_MAX_MS:I = 0x3e8

.field static final CMD_BATTERY:I = 0x5

.field static final CMD_RUN:I = 0x3

.field static final CMD_SETTING:I = 0x1

.field static final CMD_START:I = 0xf1

.field static final CMD_STOP:I = 0xf2

.field static final CYCLE_ON_MS:I = 0x186a0

.field static final DEF_HZ:I = 0x55

.field static final DEF_US:I = 0x168

.field static final GRACE_MS:J = 0xbb8L

.field public static final MAIN:I = 0x1

.field public static final MAX_PCT:I = 0x63

.field static final MAX_US:I = 0x1ff

.field static final MIN_US:I = 0x32

.field public static final PAUSE:I = 0x0

.field public static final SECOND:I = 0x2

.field static final SLIDE_MS:I = 0x7d0

.field static final SLOT_MIN_HZ:I = 0x1e

.field public static final STEP_MAX:I = 0x1f

.field public static final TEST_HZ_MAX:I = 0x2710

.field static final TEST_MAX_PCT:I = 0x63

.field static final TEST_MS:J = 0x5dcL

.field public static final TEST_US_MAX:I = 0x666


# instance fields
.field private armed:Z

.field private deadlineMs:J

.field private final devHz:[I

.field private final devInt:[I

.field private devMask:I

.field private final devOff:[I

.field private final devOn:[I

.field private final devStep:[I

.field private final devUs:[I

.field private final devWaveCh:[I

.field private hz:I

.field private final legK:[F

.field private legsOwn:Z

.field private on:Z

.field private final parts:[I

.field private phase:I

.field private programmed:Z

.field private final seen:[[I

.field private seenArms:I

.field private slideFrames:I

.field private slideGen:I

.field private slideMask:I

.field private slidePending:J

.field private testCh:I

.field private final testHzs:[I

.field private testOffMs:I

.field private testOnMs:I

.field private testPct:I

.field private final testPcts:[I

.field private testStep:I

.field private unsafe:Z

.field private used:Z

.field private waveMask:I

.field private waveVal:I

.field private widthUs:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/16 v3, 0x9

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seenArms:I

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    .line 51
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    .line 53
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v5, :cond_24

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 55
    :cond_24
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    .line 56
    const/16 v0, 0x55

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 60
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 71
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    .line 72
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    .line 73
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    .line 84
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 86
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    .line 87
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    .line 88
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    .line 89
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    .line 90
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    .line 91
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J

    return-void
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 418
    if-eqz p0, :cond_a

    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static byHand([I[I[I)I
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 275
    if-eqz p0, :cond_7

    array-length v0, p2

    if-nez v0, :cond_9

    :cond_7
    move v0, v3

    .line 285
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v2, v4

    move v0, v4

    move v1, v3

    .line 277
    :goto_c
    const/16 v5, 0xa

    if-ge v2, v5, :cond_1c

    .line 278
    aget v5, p0, v2

    aget v6, p1, v2

    if-eq v5, v6, :cond_19

    .line 280
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 277
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 283
    :cond_1c
    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    move v0, v3

    goto :goto_8

    .line 284
    :cond_21
    array-length v5, p2

    move v2, v4

    :goto_23
    if-ge v2, v5, :cond_2d

    aget v0, p2, v2

    if-eq v0, v1, :cond_8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    :cond_2d
    move v0, v3

    .line 285
    goto :goto_8
.end method

.method static clampHz(I)I
    .registers 3

    .prologue
    const/16 v1, 0x2710

    const/4 v0, 0x1

    .line 295
    if-ge p0, v0, :cond_7

    move p0, v0

    :cond_6
    :goto_6
    return p0

    :cond_7
    if-le p0, v1, :cond_6

    move p0, v1

    goto :goto_6
.end method

.method static clampMs(I)I
    .registers 2

    .prologue
    const/16 v0, 0x3e8

    .line 303
    if-gez p0, :cond_6

    const/4 p0, 0x0

    :cond_5
    :goto_5
    return p0

    :cond_6
    if-le p0, v0, :cond_5

    move p0, v0

    goto :goto_5
.end method

.method static clampUs(I)I
    .registers 3

    .prologue
    const/16 v1, 0x1ff

    const/16 v0, 0x32

    .line 299
    if-ge p0, v0, :cond_8

    move p0, v0

    :cond_7
    :goto_7
    return p0

    :cond_8
    if-le p0, v1, :cond_7

    move p0, v1

    goto :goto_7
.end method

.method private effHz(II)I
    .registers 5

    .prologue
    .line 506
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    .line 507
    if-gtz v0, :cond_f

    .line 509
    :cond_c
    :goto_c
    return p2

    .line 506
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 508
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result p2

    goto :goto_c

    .line 509
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
.end method

.method private effUs(II)I
    .registers 5

    .prologue
    .line 513
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v0

    .line 514
    if-gtz v0, :cond_f

    .line 516
    :cond_c
    :goto_c
    return p2

    .line 513
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 515
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result p2

    goto :goto_c

    .line 516
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
.end method

.method private static keepMs([BI)J
    .registers 6

    .prologue
    .line 237
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 238
    if-gtz v0, :cond_11

    move v0, p1

    .line 239
    :cond_11
    if-lez p1, :cond_22

    if-ge p1, v0, :cond_22

    .line 240
    :goto_15
    if-lez p1, :cond_1f

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_1b
    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    return-wide v0

    :cond_1f
    const-wide/16 v0, 0x1b58

    goto :goto_1b

    :cond_22
    move p1, v0

    goto :goto_15
.end method

.method private static mapped(I)Z
    .registers 3

    .prologue
    .line 541
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v0

    .line 542
    if-ltz v0, :cond_c

    const/16 v1, 0xa

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static maxUsAt(I)I
    .registers 5

    .prologue
    const/16 v1, 0x666

    const/16 v0, 0x32

    .line 290
    const v2, 0x7a120

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v3

    div-int/2addr v2, v3

    .line 291
    if-ge v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    if-le v2, v1, :cond_13

    move v0, v1

    goto :goto_e

    :cond_13
    move v0, v2

    goto :goto_e
.end method

.method private off(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 484
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 485
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 486
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_13
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 488
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 489
    return-void
.end method

.method private prepare(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const v7, 0x186a0

    const/16 v6, 0x168

    const/16 v5, 0x55

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 423
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    if-eqz v0, :cond_18

    .line 424
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 426
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 428
    :cond_18
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_1d

    .line 459
    :goto_1c
    return-void

    .line 429
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit2()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->reset()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 432
    :goto_33
    const/16 v2, 0x8

    if-gt v0, v2, :cond_c6

    .line 433
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    const v2, 0x1010101

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNor(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->tPeriod(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    const/4 v2, 0x2

    invoke-static {v0, v2, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    const/4 v2, 0x3

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    const/4 v2, 0x4

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v2, v2, v0

    if-lez v2, :cond_a5

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_a5
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 448
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v4, v2, v0

    .line 449
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v5, v2, v0

    .line 450
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v6, v2, v0

    .line 451
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aput v7, v2, v0

    .line 452
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aput v4, v2, v0

    .line 453
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v1, v2, v0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_33

    .line 455
    :cond_c6
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 457
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 458
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    goto/16 :goto_1c
.end method

.method private quiet(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 474
    const/4 v0, 0x1

    :goto_2
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1a

    .line 475
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v0

    if-eqz v1, :cond_17

    .line 476
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v2, v1, v0

    .line 474
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 480
    :cond_1a
    return-void
.end method

.method private reconcile(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 558
    const/16 v0, 0x9

    new-array v10, v0, [I

    .line 559
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v0, :cond_3c

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    .line 560
    :goto_f
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 561
    const/4 v3, 0x1

    move v4, v3

    :goto_13
    const/16 v3, 0x8

    if-gt v4, v3, :cond_45

    .line 562
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->target(I)I

    move-result v3

    aput v3, v10, v4

    .line 563
    aget v3, v10, v4

    if-gtz v3, :cond_29

    if-eqz v0, :cond_38

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->works(I)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 564
    :cond_29
    add-int/lit8 v1, v1, 0x1

    .line 565
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v3, v3, v4

    .line 566
    :goto_33
    if-eqz v2, :cond_37

    if-ge v3, v2, :cond_38

    :cond_37
    move v2, v3

    .line 561
    :cond_38
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_13

    .line 559
    :cond_3c
    const/4 v0, 0x0

    goto :goto_f

    .line 565
    :cond_3e
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-direct {p0, v4, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effHz(II)I

    move-result v3

    goto :goto_33

    .line 570
    :cond_45
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v3, :cond_6b

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slots()Z

    move-result v3

    if-eqz v3, :cond_6b

    const/4 v3, 0x2

    if-lt v1, v3, :cond_6b

    const/16 v1, 0x1e

    if-lt v2, v1, :cond_6b

    const/4 v1, 0x1

    .line 578
    :goto_57
    const/4 v3, 0x0

    .line 579
    const/4 v4, 0x1

    move v5, v4

    :goto_5a
    const/16 v4, 0x8

    if-gt v5, v4, :cond_9d

    .line 580
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    const/4 v6, 0x1

    add-int/lit8 v7, v5, -0x1

    shl-int/2addr v6, v7

    and-int/2addr v4, v6

    if-nez v4, :cond_6d

    .line 579
    :cond_67
    :goto_67
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_5a

    .line 570
    :cond_6b
    const/4 v1, 0x0

    goto :goto_57

    .line 581
    :cond_6d
    aget v4, v10, v5

    if-lez v4, :cond_87

    .line 582
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v6, v4, v5

    if-eqz v1, :cond_80

    move v4, v2

    :goto_78
    if-eq v6, v4, :cond_67

    const/4 v4, 0x1

    add-int/lit8 v6, v5, -0x1

    shl-int/2addr v4, v6

    or-int/2addr v3, v4

    goto :goto_67

    :cond_80
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-direct {p0, v5, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effHz(II)I

    move-result v4

    goto :goto_78

    .line 583
    :cond_87
    if-eqz v0, :cond_67

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mapped(I)Z

    move-result v4

    if-eqz v4, :cond_67

    if-eqz v1, :cond_67

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v4, v4, v5

    if-eq v4, v2, :cond_67

    .line 584
    const/4 v4, 0x1

    add-int/lit8 v6, v5, -0x1

    shl-int/2addr v4, v6

    or-int/2addr v3, v4

    goto :goto_67

    .line 589
    :cond_9d
    const/4 v4, 0x1

    :goto_9e
    const/16 v5, 0x8

    if-gt v4, v5, :cond_bc

    .line 590
    aget v5, v10, v4

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v6, v6, v4

    if-ge v5, v6, :cond_b9

    .line 591
    aget v5, v10, v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v6, v10, v4

    aput v6, v5, v4

    .line 589
    :cond_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    .line 595
    :cond_bc
    if-eqz v3, :cond_cb

    .line 596
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    const/4 v4, 0x0

    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 598
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 600
    :cond_cb
    if-nez v1, :cond_d0

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 601
    :cond_d0
    const/4 v8, 0x0

    .line 602
    const/4 v4, 0x0

    .line 603
    const/4 v5, 0x1

    move v9, v5

    :goto_d4
    const/16 v5, 0x8

    if-gt v9, v5, :cond_203

    .line 604
    aget v11, v10, v9

    .line 605
    if-nez v11, :cond_12c

    if-eqz v0, :cond_12c

    invoke-static {v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mapped(I)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 607
    if-eqz v1, :cond_103

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v5, v5, v9

    if-eq v5, v2, :cond_103

    .line 608
    invoke-static {v9, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v2, v4, v9

    .line 610
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    const/4 v5, 0x1

    add-int/lit8 v6, v9, -0x1

    shl-int/2addr v5, v6

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 611
    const/4 v4, 0x1

    .line 613
    :cond_103
    const/4 v5, 0x1

    add-int/lit8 v6, v9, -0x1

    shl-int/2addr v5, v6

    or-int/2addr v5, v8

    .line 647
    :goto_108
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v6, v6, v9

    if-eq v11, v6, :cond_127

    if-eqz v3, :cond_11c

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v6, v6, v9

    if-le v11, v6, :cond_11c

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v6, v6, v9

    if-gez v6, :cond_127

    .line 648
    :cond_11c
    invoke-static {v9, v11}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v11, v6, v9

    .line 603
    :cond_127
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v8, v5

    goto :goto_d4

    .line 614
    :cond_12c
    if-lez v11, :cond_260

    .line 615
    if-eqz v1, :cond_1d5

    move v5, v2

    .line 616
    :goto_131
    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v6, :cond_1e7

    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 617
    :goto_137
    const/16 v7, 0x32

    if-ge v6, v7, :cond_13d

    const/16 v6, 0x32

    .line 618
    :cond_13d
    iget v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v7, :cond_14e

    iget v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v12, 0x2

    if-ne v7, v12, :cond_1ef

    const/4 v7, 0x1

    :goto_147
    invoke-static {v9, v7}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v7

    invoke-direct {p0, p1, v9, v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 619
    :cond_14e
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v7, v7, v9

    if-eq v7, v5, :cond_16b

    .line 620
    invoke-static {v9, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v5, v4, v9

    .line 622
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    const/4 v5, 0x1

    add-int/lit8 v7, v9, -0x1

    shl-int/2addr v5, v7

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 623
    const/4 v4, 0x1

    .line 625
    :cond_16b
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aget v5, v5, v9

    if-eq v5, v6, :cond_180

    .line 626
    const/16 v5, 0x1ff

    if-le v6, v5, :cond_1f2

    invoke-static {v9, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->widthRaw(II)[B

    move-result-object v5

    :goto_179
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v6, v5, v9

    .line 629
    :cond_180
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v5, :cond_1f7

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v5, :cond_1f7

    const/4 v5, 0x1

    move v7, v5

    .line 630
    :goto_18a
    if-eqz v7, :cond_1fa

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    move v6, v5

    .line 631
    :goto_18f
    if-eqz v7, :cond_1ff

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 632
    :goto_193
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aget v7, v7, v9

    if-eq v7, v6, :cond_1a5

    .line 633
    const/4 v7, 0x2

    invoke-static {v9, v7, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aput v6, v7, v9

    .line 636
    :cond_1a5
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aget v6, v6, v9

    if-eq v6, v5, :cond_1b7

    .line 637
    const/4 v6, 0x4

    invoke-static {v9, v6, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aput v5, v6, v9

    .line 640
    :cond_1b7
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v5, :cond_201

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 641
    :goto_1bd
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aget v6, v6, v9

    if-eq v6, v5, :cond_1ce

    .line 642
    invoke-static {v9, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNorByte(II)[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v5, v6, v9

    .line 645
    :cond_1ce
    const/4 v5, 0x1

    add-int/lit8 v6, v9, -0x1

    shl-int/2addr v5, v6

    or-int/2addr v5, v8

    goto/16 :goto_108

    .line 615
    :cond_1d5
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v5, :cond_1df

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v5, v5, v9

    goto/16 :goto_131

    :cond_1df
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-direct {p0, v9, v5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effHz(II)I

    move-result v5

    goto/16 :goto_131

    .line 616
    :cond_1e7
    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-direct {p0, v9, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effUs(II)I

    move-result v6

    goto/16 :goto_137

    .line 618
    :cond_1ef
    const/4 v7, 0x0

    goto/16 :goto_147

    .line 626
    :cond_1f2
    invoke-static {v9, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v5

    goto :goto_179

    .line 629
    :cond_1f7
    const/4 v5, 0x0

    move v7, v5

    goto :goto_18a

    .line 630
    :cond_1fa
    const v5, 0x186a0

    move v6, v5

    goto :goto_18f

    .line 631
    :cond_1ff
    const/4 v5, 0x0

    goto :goto_193

    .line 640
    :cond_201
    const/4 v5, 0x1

    goto :goto_1bd

    .line 652
    :cond_203
    if-eqz v8, :cond_208

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    .line 653
    :cond_208
    if-eqz v1, :cond_251

    if-eqz v3, :cond_20e

    if-nez v0, :cond_251

    :cond_20e
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-ne v8, v1, :cond_216

    if-eqz v4, :cond_251

    if-nez v0, :cond_251

    .line 657
    :cond_216
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 658
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_224

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_224
    invoke-static {v8}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    iput v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 661
    invoke-direct {p0, p1, v8, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->startSlide(Ljava/util/List;II)V

    .line 666
    :cond_230
    :goto_230
    if-eqz v3, :cond_25f

    .line 669
    const/4 v0, 0x1

    :goto_233
    const/16 v1, 0x8

    if-gt v0, v1, :cond_25f

    .line 670
    aget v1, v10, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_24e

    .line 671
    aget v1, v10, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v2, v10, v0

    aput v2, v1, v0

    .line 669
    :cond_24e
    add-int/lit8 v0, v0, 0x1

    goto :goto_233

    .line 662
    :cond_251
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eq v8, v0, :cond_230

    .line 663
    invoke-static {v8}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    iput v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    goto :goto_230

    .line 676
    :cond_25f
    return-void

    :cond_260
    move v5, v8

    goto/16 :goto_108
.end method

.method private restoreWave(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 401
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-nez v0, :cond_7

    .line 406
    :goto_6
    return-void

    :cond_7
    move v0, v1

    .line 402
    :goto_8
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1f

    .line 403
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    add-int/lit8 v3, v0, -0x1

    shl-int v3, v1, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 402
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 405
    :cond_1f
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    goto :goto_6
.end method

.method private sendWave(Ljava/util/List;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 493
    if-ltz p3, :cond_18

    const/4 v0, 0x3

    if-gt p3, v0, :cond_18

    .line 494
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-eq v0, p3, :cond_17

    .line 495
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aput p3, v0, p2

    .line 502
    :cond_17
    :goto_17
    return-void

    .line 498
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-lez v0, :cond_17

    .line 499
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aput v1, v0, p2

    goto :goto_17
.end method

.method private startSlide(Ljava/util/List;II)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 680
    const v0, 0xf4240

    div-int v4, v0, p3

    .line 681
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    .line 682
    const-wide v6, 0x413e848000000000L    # 2000000.0

    .line 684
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideFrames:I

    move v3, v1

    .line 685
    :goto_13
    const/16 v0, 0x8

    if-gt v3, v0, :cond_52

    .line 686
    add-int/lit8 v0, v3, -0x1

    shl-int v0, v1, v0

    and-int/2addr v0, p2

    if-nez v0, :cond_23

    move v0, v2

    .line 685
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_13

    .line 687
    :cond_23
    if-lez v2, :cond_4f

    .line 689
    int-to-double v8, v2

    int-to-double v10, v4

    mul-double/2addr v8, v10

    int-to-double v10, v5

    div-double/2addr v8, v10

    .line 690
    int-to-double v10, v4

    mul-double/2addr v10, v8

    sub-double v8, v6, v8

    div-double v8, v10, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    .line 691
    if-ge v0, v1, :cond_38

    move v0, v1

    .line 692
    :cond_38
    add-int/2addr v0, v4

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->period(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    add-int/lit8 v8, v3, -0x1

    shl-int v8, v1, v8

    or-int/2addr v0, v8

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 694
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideFrames:I

    .line 696
    :cond_4f
    add-int/lit8 v0, v2, 0x1

    goto :goto_1f

    .line 698
    :cond_52
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    if-eqz v0, :cond_60

    .line 699
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    .line 700
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J

    .line 702
    :cond_60
    return-void
.end method

.method private stopSlide(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 706
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    if-nez v0, :cond_6

    .line 713
    :goto_5
    return-void

    :cond_6
    move v0, v1

    .line 707
    :goto_7
    const/16 v2, 0x8

    if-gt v0, v2, :cond_22

    .line 708
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    add-int/lit8 v3, v0, -0x1

    shl-int v3, v1, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v2, v2, v0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 710
    :cond_22
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 711
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    .line 712
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J

    goto :goto_5
.end method

.method private target(I)I
    .registers 10

    .prologue
    const/16 v3, 0x63

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 521
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v1, v0, p1

    .line 536
    :cond_d
    :goto_d
    return v1

    .line 522
    :cond_e
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v4

    .line 523
    if-ltz v4, :cond_d

    const/16 v2, 0xa

    if-ge v4, v2, :cond_d

    .line 524
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v2

    .line 525
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v5, v7, :cond_22

    if-eq v2, v0, :cond_d

    .line 526
    :cond_22
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v5, v0, :cond_28

    if-eq v2, v7, :cond_d

    .line 527
    :cond_28
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v2, v2, v4

    int-to-float v2, v2

    .line 528
    const/4 v5, 0x4

    if-ne v4, v5, :cond_75

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v5, v5, v4

    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seenArms:I

    if-ne v5, v6, :cond_75

    .line 531
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v2, v7, :cond_6f

    :goto_3c
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v0

    if-lez v0, :cond_71

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effUs(II)I

    move-result v0

    .line 532
    :goto_48
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    if-ne v0, v2, :cond_4d

    move v0, v1

    .line 533
    :cond_4d
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v2, v2, v4

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsExact(II)F

    move-result v0

    .line 535
    :goto_55
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 536
    if-ltz v0, :cond_d

    if-le v0, v3, :cond_73

    move v1, v3

    goto :goto_d

    :cond_6f
    move v0, v1

    .line 531
    goto :goto_3c

    :cond_71
    move v0, v1

    goto :goto_48

    :cond_73
    move v1, v0

    .line 536
    goto :goto_d

    :cond_75
    move v0, v2

    goto :goto_55
.end method

.method public static testCap(II)I
    .registers 3

    .prologue
    .line 250
    const/16 v0, 0x63

    return v0
.end method

.method private works(I)Z
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 547
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mapped(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 549
    :goto_9
    return v1

    .line 548
    :cond_a
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v2

    .line 549
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v3, v4, :cond_14

    if-eq v2, v0, :cond_1c

    :cond_14
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v3, v0, :cond_1a

    if-eq v2, v4, :cond_1c

    :cond_1a
    :goto_1a
    move v1, v0

    goto :goto_9

    :cond_1c
    move v0, v1

    goto :goto_1a
.end method

.method private zero(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 463
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 464
    const/4 v0, 0x1

    :goto_5
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1d

    .line 465
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1a

    .line 466
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v2, v1, v0

    .line 464
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 470
    :cond_1d
    return-void
.end method


# virtual methods
.method public declared-synchronized armed()Z
    .registers 2

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized command(I[BJ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_13

    const/4 v0, 0x5

    if-eq p1, v0, :cond_13

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 177
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 179
    :cond_13
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 180
    const/4 v0, 0x1

    if-ne p1, v0, :cond_90

    .line 183
    const/16 v0, 0xa

    new-array v4, v0, [I

    .line 184
    const/4 v0, 0x0

    :goto_1e
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2d

    add-int/lit8 v1, v0, 0x1

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 185
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v5

    .line 186
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ltz v0, :cond_3a

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_62

    :cond_3a
    const/4 v0, 0x1

    move v2, v0

    .line 187
    :goto_3c
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aget-object v0, v0, v2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->byHand([I[I[I)I

    move-result v6

    .line 188
    if-ltz v6, :cond_75

    .line 190
    array-length v7, v5

    const/4 v0, 0x0

    move v1, v0

    :goto_49
    if-ge v1, v7, :cond_72

    aget v8, v5, v1

    .line 191
    if-ne v8, v6, :cond_66

    aget v0, v4, v8

    .line 192
    :goto_51
    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    aget v10, v4, v8

    if-lez v10, :cond_6f

    int-to-float v0, v0

    aget v10, v4, v8

    int-to-float v10, v10

    div-float/2addr v0, v10

    :goto_5c
    aput v0, v9, v8

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    .line 186
    :cond_62
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    move v2, v0

    goto :goto_3c

    .line 191
    :cond_66
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, v8}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legValue([II)I

    move-result v0

    goto :goto_51

    .line 192
    :cond_6f
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_5c

    .line 194
    :cond_72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    .line 196
    :cond_75
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aput-object v4, v0, v2

    .line 197
    const/4 v0, 0x0

    :goto_7a
    const/16 v1, 0xa

    if-ge v0, v1, :cond_89

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legValue([II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 198
    :cond_89
    const/4 v0, 0x4

    aget v0, v4, v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seenArms:I
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_dc

    .line 232
    :cond_8e
    :goto_8e
    monitor-exit p0

    return-object v3

    .line 199
    :cond_90
    const/4 v0, 0x3

    if-ne p1, v0, :cond_122

    .line 200
    const/4 v0, 0x1

    :try_start_94
    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    or-int v2, v0, v1

    .line 201
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v4

    .line 202
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    .line 203
    const/16 v1, 0xa

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_df

    const/4 v1, 0x1

    .line 204
    :goto_b7
    if-eqz v1, :cond_bb

    if-gtz v4, :cond_e1

    :cond_bb
    iget-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v5, :cond_e1

    iget-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v5, :cond_e1

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v5, :cond_e1

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v5, :cond_e1

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 206
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->quiet(Ljava/util/List;)V

    .line 207
    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J
    :try_end_db
    .catchall {:try_start_94 .. :try_end_db} :catchall_dc

    goto :goto_8e

    .line 174
    :catchall_dc
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_df
    const/4 v1, 0x0

    goto :goto_b7

    .line 208
    :cond_e1
    if-eqz v1, :cond_e5

    if-gtz v4, :cond_e9

    .line 209
    :cond_e5
    :try_start_e5
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    goto :goto_8e

    .line 210
    :cond_e9
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-nez v1, :cond_102

    .line 212
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 213
    const/16 v1, 0x32

    if-ge v0, v1, :cond_fb

    const/16 v0, 0x32

    :cond_f5
    :goto_f5
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 214
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    goto :goto_8e

    .line 213
    :cond_fb
    const/16 v1, 0x1ff

    if-le v0, v1, :cond_f5

    const/16 v0, 0x1ff

    goto :goto_f5

    .line 216
    :cond_102
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 217
    const/16 v1, 0x32

    if-ge v0, v1, :cond_11b

    const/16 v0, 0x32

    :cond_10a
    :goto_10a
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 220
    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 222
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 217
    :cond_11b
    const/16 v1, 0x1ff

    if-le v0, v1, :cond_10a

    const/16 v0, 0x1ff

    goto :goto_10a

    .line 224
    :cond_122
    const/16 v0, 0xf1

    if-ne p1, v0, :cond_12b

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    goto/16 :goto_8e

    .line 226
    :cond_12b
    const/16 v0, 0xf2

    if-ne p1, v0, :cond_137

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 228
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 229
    :cond_137
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8e

    .line 230
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batterySync()[B

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_141
    .catchall {:try_start_e5 .. :try_end_141} :catchall_dc

    goto/16 :goto_8e
.end method

.method public declared-synchronized forget()V
    .registers 3

    .prologue
    .line 145
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 146
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    .line 147
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1f

    .line 153
    monitor-exit p0

    return-void

    .line 145
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized heartbeat(J)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 410
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_13

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 412
    :cond_13
    monitor-exit p0

    return-object v0

    .line 410
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOn()Z
    .registers 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized legValue([II)I
    .registers 10

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 259
    monitor-enter p0

    if-eqz p1, :cond_b

    if-ltz p2, :cond_b

    :try_start_8
    array-length v0, p1
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_55

    if-lt p2, v0, :cond_d

    .line 270
    :cond_b
    :goto_b
    monitor-exit p0

    return v1

    .line 260
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v5

    .line 262
    array-length v6, v5

    move v3, v1

    move v4, v1

    :goto_14
    if-ge v3, v6, :cond_22

    aget v0, v5, v3

    if-ne v0, p2, :cond_20

    const/4 v0, 0x1

    :goto_1b
    or-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_14

    :cond_20
    move v0, v1

    goto :goto_1b

    .line 263
    :cond_22
    if-nez v4, :cond_27

    aget v1, p1, p2

    goto :goto_b

    .line 264
    :cond_27
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    if-nez v0, :cond_41

    .line 266
    array-length v3, v5

    move v2, v1

    move v0, v1

    :goto_2e
    if-ge v2, v3, :cond_3f

    aget v1, v5, v2

    array-length v4, p1

    if-ge v1, v4, :cond_3b

    aget v4, p1, v1

    if-le v4, v0, :cond_3b

    aget v0, p1, v1

    :cond_3b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2e

    :cond_3f
    move v1, v0

    .line 267
    goto :goto_b

    .line 269
    :cond_41
    aget v0, p1, p2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    aget v3, v3, p2

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_55

    move-result v0

    .line 270
    if-ltz v0, :cond_b

    if-le v0, v2, :cond_53

    move v1, v2

    goto :goto_b

    :cond_53
    move v1, v0

    goto :goto_b

    .line 259
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lost(I)V
    .registers 4

    .prologue
    .line 121
    monitor-enter p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    const/16 v0, 0x8

    if-gt p1, v0, :cond_d

    :try_start_8
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    const/4 v1, -0x1

    aput v1, v0, p1
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    .line 122
    :cond_d
    monitor-exit p0

    return-void

    .line 121
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized phase(I)V
    .registers 3

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized phaseNow()I
    .registers 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized programOn([I[IIIIIIJ)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[IIIIIIJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 349
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10c

    move-result v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    if-nez p2, :cond_13

    :cond_10
    move-object v0, v1

    .line 390
    :goto_11
    monitor-exit p0

    return-object v0

    .line 351
    :cond_13
    const/4 v2, 0x0

    .line 352
    const/4 v0, 0x1

    :goto_15
    const/16 v3, 0x8

    if-gt v0, v3, :cond_10f

    .line 353
    :try_start_19
    array-length v3, p1

    if-ge v0, v3, :cond_2c

    aget v3, p1, v0

    if-lez v3, :cond_2c

    move v4, v0

    .line 358
    :goto_21
    if-nez v4, :cond_2f

    .line 359
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_2a

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    :cond_2a
    move-object v0, v1

    .line 360
    goto :goto_11

    .line 352
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 362
    :cond_2f
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 363
    const/4 v0, 0x0

    .line 364
    const/4 v2, 0x1

    :goto_34
    const/16 v3, 0x8

    if-gt v2, v3, :cond_47

    array-length v3, p1

    if-ge v2, v3, :cond_44

    aget v3, p1, v2

    if-lez v3, :cond_44

    const/4 v3, 0x1

    add-int/lit8 v5, v2, -0x1

    shl-int/2addr v3, v5

    or-int/2addr v0, v3

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 365
    :cond_47
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-eqz v2, :cond_56

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-ne v2, v0, :cond_53

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    if-eq p4, v2, :cond_56

    :cond_53
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 366
    :cond_56
    const/4 v2, 0x1

    move v3, v2

    :goto_58
    const/16 v2, 0x8

    if-gt v3, v2, :cond_92

    .line 367
    array-length v2, p1

    if-ge v3, v2, :cond_86

    aget v2, p1, v3

    .line 368
    :goto_61
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    if-gez v2, :cond_88

    const/4 v2, 0x0

    :cond_66
    :goto_66
    aput v2, v5, v3

    .line 369
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    array-length v2, p2

    if-ge v3, v2, :cond_8f

    aget v2, p2, v3

    if-lez v2, :cond_8f

    aget v2, p2, v3

    :goto_73
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v2

    aput v2, v5, v3

    .line 370
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v2, v2, v3

    if-lez v2, :cond_82

    invoke-direct {p0, v1, v3, p4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 366
    :cond_82
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_58

    .line 367
    :cond_86
    const/4 v2, 0x0

    goto :goto_61

    .line 368
    :cond_88
    const/16 v6, 0x63

    if-le v2, v6, :cond_66

    const/16 v2, 0x63

    goto :goto_66

    .line 369
    :cond_8f
    const/16 v2, 0x55

    goto :goto_73

    .line 372
    :cond_92
    if-ltz p4, :cond_9e

    const/4 v2, 0x3

    if-gt p4, v2, :cond_9e

    .line 373
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    .line 374
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    .line 376
    :cond_9e
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 377
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 378
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v0

    .line 379
    const/4 v2, 0x1

    :goto_ad
    const/16 v3, 0x8

    if-gt v2, v3, :cond_cc

    .line 380
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v3, v3, v2

    if-lez v3, :cond_c9

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v3

    if-ge v3, v0, :cond_c9

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v0

    .line 379
    :cond_c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    .line 382
    :cond_cc
    const/16 v2, 0x32

    if-ge p3, v2, :cond_ff

    const/16 v0, 0x32

    :cond_d2
    :goto_d2
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 383
    invoke-static {p5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    .line 384
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v0, :cond_103

    invoke-static {p6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v0

    :goto_e2
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 385
    const/4 v0, 0x1

    if-ge p7, v0, :cond_105

    const/4 p7, 0x1

    :cond_e8
    :goto_e8
    iput p7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 388
    const-wide/16 v2, 0x5dc

    add-long v2, v2, p8

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 389
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_fc
    .catchall {:try_start_19 .. :try_end_fc} :catchall_10c

    move-object v0, v1

    .line 390
    goto/16 :goto_11

    .line 382
    :cond_ff
    if-gt p3, v0, :cond_d2

    move v0, p3

    goto :goto_d2

    .line 384
    :cond_103
    const/4 v0, 0x0

    goto :goto_e2

    .line 385
    :cond_105
    const/16 v0, 0x1f

    if-le p7, v0, :cond_e8

    const/16 p7, 0x1f

    goto :goto_e8

    .line 349
    :catchall_10c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10f
    move v4, v2

    goto/16 :goto_21
.end method

.method public declared-synchronized programmed()Z
    .registers 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ran()Z
    .registers 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 160
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 162
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    .line 163
    :goto_d
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 164
    :cond_1a
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    aput-object v7, v3, v4

    aput-object v7, v0, v2

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 166
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    .line 167
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 168
    :cond_37
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_3c

    .line 169
    monitor-exit p0

    return-object v1

    .line 160
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized slideEnd(J)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 728
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_f

    .line 731
    :goto_d
    monitor-exit p0

    return-object v0

    .line 730
    :cond_f
    :try_start_f
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_d

    .line 728
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takeSlide()[J
    .registers 5

    .prologue
    .line 720
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x0

    .line 723
    :goto_a
    monitor-exit p0

    return-object v0

    .line 721
    :cond_c
    const/4 v0, 0x3

    :try_start_d
    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideFrames:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 722
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_25

    goto :goto_a

    .line 720
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized testOff()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 394
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 396
    :cond_d
    monitor-exit p0

    return-object v0

    .line 394
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized testOn(IIIIIIIIJ)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 332
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    .line 333
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const/16 v1, 0x8

    if-le p1, v1, :cond_f

    .line 338
    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    .line 334
    :cond_f
    const/16 v0, 0x9

    :try_start_11
    new-array v1, v0, [I

    .line 335
    const/16 v0, 0x9

    new-array v2, v0, [I

    .line 336
    aput p2, v1, p1

    .line 337
    aput p3, v2, p1

    move-object v0, p0

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    .line 338
    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programOn([I[IIIIIIJ)Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2c

    move-result-object v0

    goto :goto_d

    .line 332
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized testOn(IIIIIJ)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 318
    monitor-enter p0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v8, p6

    :try_start_a
    invoke-virtual/range {v1 .. v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOn(IIIIIZJ)Ljava/util/List;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized testOn(IIIIIZJ)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 323
    monitor-enter p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v10, p7

    :try_start_f
    invoke-virtual/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOn(IIIIIIIIJ)Ljava/util/List;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_15

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized testOn(IIJ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 308
    monitor-enter p0

    const/16 v3, 0x55

    const/16 v4, 0x168

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p3

    :try_start_a
    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOn(IIIIIJ)Ljava/util/List;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized training()Z
    .registers 2

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
