.class public final Lcom/isaigu/gymapp/bodytech/BtTranslator;
.super Ljava/lang/Object;
.source "BtTranslator.java"


# static fields
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    .line 40
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    .line 42
    const/4 v0, 0x0

    :goto_16
    if-ge v0, v5, :cond_21

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 44
    :cond_21
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    .line 45
    const/16 v0, 0x55

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 49
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 60
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    .line 61
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    .line 62
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    .line 73
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 75
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    .line 76
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    .line 77
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    .line 78
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    .line 79
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    .line 80
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    return-void
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 366
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

    .line 223
    if-eqz p0, :cond_7

    array-length v0, p2

    if-nez v0, :cond_9

    :cond_7
    move v0, v3

    .line 233
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v2, v4

    move v0, v4

    move v1, v3

    .line 225
    :goto_c
    const/16 v5, 0xa

    if-ge v2, v5, :cond_1c

    .line 226
    aget v5, p0, v2

    aget v6, p1, v2

    if-eq v5, v6, :cond_19

    .line 228
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 225
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 231
    :cond_1c
    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    move v0, v3

    goto :goto_8

    .line 232
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

    .line 233
    goto :goto_8
.end method

.method static clampHz(I)I
    .registers 3

    .prologue
    const/16 v1, 0x2710

    const/4 v0, 0x1

    .line 243
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

    .line 251
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

    .line 247
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
    .line 443
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    .line 444
    if-gtz v0, :cond_f

    .line 446
    :cond_c
    :goto_c
    return p2

    .line 443
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 445
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result p2

    goto :goto_c

    .line 446
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
.end method

.method private effUs(II)I
    .registers 5

    .prologue
    .line 450
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v0

    .line 451
    if-gtz v0, :cond_f

    .line 453
    :cond_c
    :goto_c
    return p2

    .line 450
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 452
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result p2

    goto :goto_c

    .line 453
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
.end method

.method public static maxUsAt(I)I
    .registers 5

    .prologue
    const/16 v1, 0x666

    const/16 v0, 0x32

    .line 238
    const v2, 0x7a120

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v3

    div-int/2addr v2, v3

    .line 239
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

    .line 421
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 422
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 423
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_10
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 425
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 426
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

    .line 371
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    if-eqz v0, :cond_18

    .line 372
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 374
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 376
    :cond_18
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_1d

    .line 407
    :goto_1c
    return-void

    .line 377
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit2()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->reset()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 380
    :goto_33
    const/16 v2, 0x8

    if-gt v0, v2, :cond_c6

    .line 381
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    const v2, 0x1010101

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNor(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->tPeriod(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    const/4 v2, 0x2

    invoke-static {v0, v2, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    const/4 v2, 0x3

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    const/4 v2, 0x4

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v2, v2, v0

    if-lez v2, :cond_a5

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_a5
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 396
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v4, v2, v0

    .line 397
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v5, v2, v0

    .line 398
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v6, v2, v0

    .line 399
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aput v7, v2, v0

    .line 400
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aput v4, v2, v0

    .line 401
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v1, v2, v0

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_33

    .line 403
    :cond_c6
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 405
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 406
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    goto/16 :goto_1c
.end method

.method private reconcile(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 475
    const/16 v0, 0x9

    new-array v8, v0, [I

    .line 476
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 477
    const/4 v2, 0x1

    move v3, v2

    :goto_8
    const/16 v2, 0x8

    if-gt v3, v2, :cond_30

    .line 478
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->target(I)I

    move-result v2

    aput v2, v8, v3

    .line 479
    aget v2, v8, v3

    if-lez v2, :cond_25

    .line 480
    add-int/lit8 v0, v0, 0x1

    .line 481
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v2, v2, v3

    .line 482
    :goto_20
    if-eqz v1, :cond_24

    if-ge v2, v1, :cond_25

    :cond_24
    move v1, v2

    .line 477
    :cond_25
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    .line 481
    :cond_29
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-direct {p0, v3, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effHz(II)I

    move-result v2

    goto :goto_20

    .line 485
    :cond_30
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v2, :cond_fc

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->sync()Z

    move-result v2

    if-eqz v2, :cond_fc

    const/4 v2, 0x2

    if-lt v0, v2, :cond_fc

    const/4 v0, 0x1

    .line 486
    :goto_3e
    const/4 v6, 0x0

    .line 487
    const/4 v5, 0x0

    .line 488
    const/4 v2, 0x1

    move v7, v2

    :goto_42
    const/16 v2, 0x8

    if-gt v7, v2, :cond_131

    .line 489
    aget v9, v8, v7

    .line 490
    if-lez v9, :cond_166

    .line 491
    if-eqz v0, :cond_ff

    move v2, v1

    .line 492
    :goto_4d
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v3, :cond_111

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 493
    :goto_53
    const/16 v4, 0x32

    if-ge v3, v4, :cond_59

    const/16 v3, 0x32

    .line 494
    :cond_59
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v4, :cond_6a

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_119

    const/4 v4, 0x1

    :goto_63
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v4

    invoke-direct {p0, p1, v7, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 495
    :cond_6a
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v4, v4, v7

    if-eq v4, v2, :cond_163

    .line 496
    invoke-static {v7, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v2, v4, v7

    .line 498
    const/4 v2, 0x1

    .line 500
    :goto_7c
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aget v4, v4, v7

    if-eq v4, v3, :cond_91

    .line 501
    const/16 v4, 0x1ff

    if-le v3, v4, :cond_11c

    invoke-static {v7, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->widthRaw(II)[B

    move-result-object v4

    :goto_8a
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v3, v4, v7

    .line 504
    :cond_91
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v3, :cond_122

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v3, :cond_122

    const/4 v3, 0x1

    move v5, v3

    .line 505
    :goto_9b
    if-eqz v5, :cond_126

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    move v4, v3

    .line 506
    :goto_a0
    if-eqz v5, :cond_12c

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 507
    :goto_a4
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aget v5, v5, v7

    if-eq v5, v4, :cond_b6

    .line 508
    const/4 v5, 0x2

    invoke-static {v7, v5, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aput v4, v5, v7

    .line 511
    :cond_b6
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aget v4, v4, v7

    if-eq v4, v3, :cond_c8

    .line 512
    const/4 v4, 0x4

    invoke-static {v7, v4, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aput v3, v4, v7

    .line 515
    :cond_c8
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v3, :cond_12f

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 516
    :goto_ce
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aget v4, v4, v7

    if-eq v4, v3, :cond_df

    .line 517
    invoke-static {v7, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNorByte(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v3, v4, v7

    .line 520
    :cond_df
    const/4 v3, 0x1

    add-int/lit8 v4, v7, -0x1

    shl-int/2addr v3, v4

    or-int/2addr v3, v6

    .line 522
    :goto_e4
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v4, v4, v7

    if-eq v9, v4, :cond_f5

    .line 523
    invoke-static {v7, v9}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v9, v4, v7

    .line 488
    :cond_f5
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v5, v2

    move v6, v3

    goto/16 :goto_42

    .line 485
    :cond_fc
    const/4 v0, 0x0

    goto/16 :goto_3e

    .line 491
    :cond_ff
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_109

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v2, v2, v7

    goto/16 :goto_4d

    :cond_109
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-direct {p0, v7, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effHz(II)I

    move-result v2

    goto/16 :goto_4d

    .line 492
    :cond_111
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-direct {p0, v7, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effUs(II)I

    move-result v3

    goto/16 :goto_53

    .line 494
    :cond_119
    const/4 v4, 0x0

    goto/16 :goto_63

    .line 501
    :cond_11c
    invoke-static {v7, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v4

    goto/16 :goto_8a

    .line 504
    :cond_122
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_9b

    .line 505
    :cond_126
    const v3, 0x186a0

    move v4, v3

    goto/16 :goto_a0

    .line 506
    :cond_12c
    const/4 v3, 0x0

    goto/16 :goto_a4

    .line 515
    :cond_12f
    const/4 v3, 0x1

    goto :goto_ce

    .line 527
    :cond_131
    if-eqz v6, :cond_136

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    .line 528
    :cond_136
    if-eqz v0, :cond_155

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_155

    if-eqz v6, :cond_155

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-ne v6, v0, :cond_144

    if-eqz v5, :cond_155

    .line 530
    :cond_144
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iput v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 537
    :cond_154
    :goto_154
    return-void

    .line 533
    :cond_155
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eq v6, v0, :cond_154

    .line 534
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iput v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    goto :goto_154

    :cond_163
    move v2, v5

    goto/16 :goto_7c

    :cond_166
    move v2, v5

    move v3, v6

    goto/16 :goto_e4
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

    .line 349
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-nez v0, :cond_7

    .line 354
    :goto_6
    return-void

    :cond_7
    move v0, v1

    .line 350
    :goto_8
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1f

    .line 351
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    add-int/lit8 v3, v0, -0x1

    shl-int v3, v1, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 350
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 353
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

    .line 430
    if-ltz p3, :cond_18

    const/4 v0, 0x3

    if-gt p3, v0, :cond_18

    .line 431
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-eq v0, p3, :cond_17

    .line 432
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aput p3, v0, p2

    .line 439
    :cond_17
    :goto_17
    return-void

    .line 435
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-lez v0, :cond_17

    .line 436
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aput v1, v0, p2

    goto :goto_17
.end method

.method private target(I)I
    .registers 9

    .prologue
    const/16 v1, 0x63

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 458
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v0, v0, p1

    .line 465
    :cond_d
    :goto_d
    return v0

    .line 459
    :cond_e
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v2

    .line 460
    if-ltz v2, :cond_d

    const/16 v3, 0xa

    if-ge v2, v3, :cond_d

    .line 461
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v3

    .line 462
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v6, :cond_22

    if-eq v3, v5, :cond_d

    .line 463
    :cond_22
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v5, :cond_28

    if-eq v3, v6, :cond_d

    .line 464
    :cond_28
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v2, v3, v2

    int-to-long v2, v2

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 465
    if-ltz v2, :cond_d

    if-le v2, v1, :cond_46

    move v0, v1

    goto :goto_d

    :cond_46
    move v0, v2

    goto :goto_d
.end method

.method public static testCap(II)I
    .registers 3

    .prologue
    .line 198
    const/16 v0, 0x63

    return v0
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

    .line 411
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 412
    const/4 v0, 0x1

    :goto_5
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1d

    .line 413
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1a

    .line 414
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v2, v1, v0

    .line 412
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 418
    :cond_1d
    return-void
.end method


# virtual methods
.method public declared-synchronized armed()Z
    .registers 2

    .prologue
    .line 89
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
    .line 134
    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_13

    const/4 v0, 0x5

    if-eq p1, v0, :cond_13

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 137
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 139
    :cond_13
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 140
    const/4 v0, 0x1

    if-ne p1, v0, :cond_89

    .line 143
    const/16 v0, 0xa

    new-array v4, v0, [I

    .line 144
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

    .line 145
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v5

    .line 146
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ltz v0, :cond_3a

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_62

    :cond_3a
    const/4 v0, 0x1

    move v2, v0

    .line 147
    :goto_3c
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aget-object v0, v0, v2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->byHand([I[I[I)I

    move-result v6

    .line 148
    if-ltz v6, :cond_75

    .line 150
    array-length v7, v5

    const/4 v0, 0x0

    move v1, v0

    :goto_49
    if-ge v1, v7, :cond_72

    aget v8, v5, v1

    .line 151
    if-ne v8, v6, :cond_66

    aget v0, v4, v8

    .line 152
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

    .line 150
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    .line 146
    :cond_62
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    move v2, v0

    goto :goto_3c

    .line 151
    :cond_66
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, v8}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legValue([II)I

    move-result v0

    goto :goto_51

    .line 152
    :cond_6f
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_5c

    .line 154
    :cond_72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    .line 156
    :cond_75
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aput-object v4, v0, v2

    .line 157
    const/4 v0, 0x0

    :goto_7a
    const/16 v1, 0xa

    if-ge v0, v1, :cond_b6

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legValue([II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 158
    :cond_89
    const/4 v0, 0x3

    if-ne p1, v0, :cond_114

    .line 159
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    or-int/2addr v0, v1

    .line 160
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v4

    .line 161
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    .line 162
    const/16 v2, 0xa

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_b8

    const/4 v2, 0x1

    .line 163
    :goto_af
    if-eqz v2, :cond_b3

    if-gtz v4, :cond_ba

    .line 164
    :cond_b3
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_b6
    .catchall {:try_start_1 .. :try_end_b6} :catchall_cc

    .line 188
    :cond_b6
    :goto_b6
    monitor-exit p0

    return-object v3

    .line 162
    :cond_b8
    const/4 v2, 0x0

    goto :goto_af

    .line 165
    :cond_ba
    :try_start_ba
    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-nez v2, :cond_d6

    .line 167
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 168
    const/16 v0, 0x32

    if-ge v1, v0, :cond_cf

    const/16 v1, 0x32

    :cond_c6
    :goto_c6
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 169
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V
    :try_end_cb
    .catchall {:try_start_ba .. :try_end_cb} :catchall_cc

    goto :goto_b6

    .line 134
    :catchall_cc
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :cond_cf
    const/16 v0, 0x1ff

    if-le v1, v0, :cond_c6

    const/16 v1, 0x1ff

    goto :goto_c6

    .line 171
    :cond_d6
    :try_start_d6
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 172
    const/16 v2, 0x32

    if-ge v1, v2, :cond_104

    const/16 v1, 0x32

    :cond_de
    :goto_de
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 173
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10b

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    .line 174
    :goto_ea
    if-gtz v1, :cond_ed

    move v1, v0

    .line 175
    :cond_ed
    if-lez v0, :cond_132

    if-ge v0, v1, :cond_132

    .line 176
    :goto_f1
    if-lez v0, :cond_111

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    :goto_f7
    add-long/2addr v0, p3

    const-wide/16 v4, 0xbb8

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 178
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V

    goto :goto_b6

    .line 172
    :cond_104
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_de

    const/16 v1, 0x1ff

    goto :goto_de

    .line 173
    :cond_10b
    const/4 v1, 0x5

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    goto :goto_ea

    .line 176
    :cond_111
    const-wide/16 v0, 0x1b58

    goto :goto_f7

    .line 180
    :cond_114
    const/16 v0, 0xf1

    if-ne p1, v0, :cond_11c

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    goto :goto_b6

    .line 182
    :cond_11c
    const/16 v0, 0xf2

    if-ne p1, v0, :cond_127

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 184
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    goto :goto_b6

    .line 185
    :cond_127
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b6

    .line 186
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batterySync()[B

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_131
    .catchall {:try_start_d6 .. :try_end_131} :catchall_cc

    goto :goto_b6

    :cond_132
    move v0, v1

    goto :goto_f1
.end method

.method public declared-synchronized forget()V
    .registers 2

    .prologue
    .line 108
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 113
    monitor-exit p0

    return-void

    .line 108
    :catchall_12
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
    .line 358
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_13

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 360
    :cond_13
    monitor-exit p0

    return-object v0

    .line 358
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOn()Z
    .registers 2

    .prologue
    .line 103
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

    .line 207
    monitor-enter p0

    if-eqz p1, :cond_b

    if-ltz p2, :cond_b

    :try_start_8
    array-length v0, p1
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_55

    if-lt p2, v0, :cond_d

    .line 218
    :cond_b
    :goto_b
    monitor-exit p0

    return v1

    .line 208
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v5

    .line 210
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

    .line 211
    :cond_22
    if-nez v4, :cond_27

    aget v1, p1, p2

    goto :goto_b

    .line 212
    :cond_27
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    if-nez v0, :cond_41

    .line 214
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

    .line 215
    goto :goto_b

    .line 217
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

    .line 218
    if-ltz v0, :cond_b

    if-le v0, v2, :cond_53

    move v1, v2

    goto :goto_b

    :cond_53
    move v1, v0

    goto :goto_b

    .line 207
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized phase(I)V
    .registers 3

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 85
    monitor-exit p0

    return-void

    .line 84
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
    .line 297
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10c

    move-result v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    if-nez p2, :cond_13

    :cond_10
    move-object v0, v1

    .line 338
    :goto_11
    monitor-exit p0

    return-object v0

    .line 299
    :cond_13
    const/4 v2, 0x0

    .line 300
    const/4 v0, 0x1

    :goto_15
    const/16 v3, 0x8

    if-gt v0, v3, :cond_10f

    .line 301
    :try_start_19
    array-length v3, p1

    if-ge v0, v3, :cond_2c

    aget v3, p1, v0

    if-lez v3, :cond_2c

    move v4, v0

    .line 306
    :goto_21
    if-nez v4, :cond_2f

    .line 307
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_2a

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    :cond_2a
    move-object v0, v1

    .line 308
    goto :goto_11

    .line 300
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 310
    :cond_2f
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 311
    const/4 v0, 0x0

    .line 312
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

    .line 313
    :cond_47
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-eqz v2, :cond_56

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-ne v2, v0, :cond_53

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    if-eq p4, v2, :cond_56

    :cond_53
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 314
    :cond_56
    const/4 v2, 0x1

    move v3, v2

    :goto_58
    const/16 v2, 0x8

    if-gt v3, v2, :cond_92

    .line 315
    array-length v2, p1

    if-ge v3, v2, :cond_86

    aget v2, p1, v3

    .line 316
    :goto_61
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    if-gez v2, :cond_88

    const/4 v2, 0x0

    :cond_66
    :goto_66
    aput v2, v5, v3

    .line 317
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

    .line 318
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v2, v2, v3

    if-lez v2, :cond_82

    invoke-direct {p0, v1, v3, p4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 314
    :cond_82
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_58

    .line 315
    :cond_86
    const/4 v2, 0x0

    goto :goto_61

    .line 316
    :cond_88
    const/16 v6, 0x63

    if-le v2, v6, :cond_66

    const/16 v2, 0x63

    goto :goto_66

    .line 317
    :cond_8f
    const/16 v2, 0x55

    goto :goto_73

    .line 320
    :cond_92
    if-ltz p4, :cond_9e

    const/4 v2, 0x3

    if-gt p4, v2, :cond_9e

    .line 321
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    .line 322
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    .line 324
    :cond_9e
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 325
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 326
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v0

    .line 327
    const/4 v2, 0x1

    :goto_ad
    const/16 v3, 0x8

    if-gt v2, v3, :cond_cc

    .line 328
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

    .line 327
    :cond_c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    .line 330
    :cond_cc
    const/16 v2, 0x32

    if-ge p3, v2, :cond_ff

    const/16 v0, 0x32

    :cond_d2
    :goto_d2
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 331
    invoke-static {p5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    .line 332
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v0, :cond_103

    invoke-static {p6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v0

    :goto_e2
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 333
    const/4 v0, 0x1

    if-ge p7, v0, :cond_105

    const/4 p7, 0x1

    :cond_e8
    :goto_e8
    iput p7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 336
    const-wide/16 v2, 0x5dc

    add-long v2, v2, p8

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 337
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_fc
    .catchall {:try_start_19 .. :try_end_fc} :catchall_10c

    move-object v0, v1

    .line 338
    goto/16 :goto_11

    .line 330
    :cond_ff
    if-gt p3, v0, :cond_d2

    move v0, p3

    goto :goto_d2

    .line 332
    :cond_103
    const/4 v0, 0x0

    goto :goto_e2

    .line 333
    :cond_105
    const/16 v0, 0x1f

    if-le p7, v0, :cond_e8

    const/16 p7, 0x1f

    goto :goto_e8

    .line 297
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
    .line 99
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
    .line 94
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

    .line 120
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 122
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    .line 123
    :goto_d
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 124
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

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 126
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    .line 127
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 128
    :cond_37
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_3c

    .line 129
    monitor-exit p0

    return-object v1

    .line 120
    :catchall_3c
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
    .line 342
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 344
    :cond_d
    monitor-exit p0

    return-object v0

    .line 342
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
    .line 280
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    .line 281
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const/16 v1, 0x8

    if-le p1, v1, :cond_f

    .line 286
    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    .line 282
    :cond_f
    const/16 v0, 0x9

    :try_start_11
    new-array v1, v0, [I

    .line 283
    const/16 v0, 0x9

    new-array v2, v0, [I

    .line 284
    aput p2, v1, p1

    .line 285
    aput p3, v2, p1

    move-object v0, p0

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    .line 286
    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programOn([I[IIIIIIJ)Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2c

    move-result-object v0

    goto :goto_d

    .line 280
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
    .line 266
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
    .line 271
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
    .line 256
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
    .line 193
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
