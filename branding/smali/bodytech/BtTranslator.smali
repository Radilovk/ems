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

.field static final PLAIN_T:[I

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

.field private cycDown:I

.field private cycUp:I

.field private cycleOk:Z

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

.field private lastRun:I

.field private final legK:[F

.field private legsOwn:Z

.field private on:Z

.field private final parts:[I

.field private phase:I

.field private progT:[I

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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->PLAIN_T:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x186a0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/16 v4, 0x9

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seenArms:I

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    .line 51
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    move v0, v1

    .line 53
    :goto_1a
    if-ge v0, v6, :cond_25

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 55
    :cond_25
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    .line 56
    const/16 v0, 0x55

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 60
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 71
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    .line 72
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    .line 73
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    .line 84
    iput-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 86
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    .line 87
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    .line 88
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    .line 89
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    .line 90
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    .line 91
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    .line 104
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J

    .line 113
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->PLAIN_T:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    .line 116
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    return-void
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 495
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

    .line 347
    if-eqz p0, :cond_7

    array-length v0, p2

    if-nez v0, :cond_9

    :cond_7
    move v0, v3

    .line 357
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v2, v4

    move v0, v4

    move v1, v3

    .line 349
    :goto_c
    const/16 v5, 0xa

    if-ge v2, v5, :cond_1c

    .line 350
    aget v5, p0, v2

    aget v6, p1, v2

    if-eq v5, v6, :cond_19

    .line 352
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 349
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 355
    :cond_1c
    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    move v0, v3

    goto :goto_8

    .line 356
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

    .line 357
    goto :goto_8
.end method

.method static clampHz(I)I
    .registers 3

    .prologue
    const/16 v1, 0x2710

    const/4 v0, 0x1

    .line 367
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

    .line 375
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

    .line 371
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
    .line 583
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    .line 584
    if-gtz v0, :cond_f

    .line 586
    :cond_c
    :goto_c
    return p2

    .line 583
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 585
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result p2

    goto :goto_c

    .line 586
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
.end method

.method private effUs(II)I
    .registers 5

    .prologue
    .line 590
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v0

    .line 591
    if-gtz v0, :cond_f

    .line 593
    :cond_c
    :goto_c
    return p2

    .line 590
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 592
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result p2

    goto :goto_c

    .line 593
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
.end method

.method private static keepMs([BI)J
    .registers 6

    .prologue
    .line 309
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 310
    if-gtz v0, :cond_11

    move v0, p1

    .line 311
    :cond_11
    if-lez p1, :cond_22

    if-ge p1, v0, :cond_22

    .line 312
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
    .line 618
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v0

    .line 619
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

    .line 362
    const v2, 0x7a120

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v3

    div-int/2addr v2, v3

    .line 363
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

    .line 560
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 561
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 562
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 563
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_13
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 565
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 566
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
    const/16 v7, 0x55

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 500
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    if-eqz v0, :cond_15

    .line 501
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 503
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 505
    :cond_15
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_1a

    .line 536
    :goto_19
    return-void

    .line 506
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit2()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->reset()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 509
    :goto_30
    const/16 v2, 0x8

    if-gt v0, v2, :cond_dd

    .line 510
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    const v2, 0x1010101

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNor(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    const/16 v2, 0x168

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->tPeriod(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v2, v2, v1

    invoke-static {v0, v6, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v2, v2, v6

    invoke-static {v0, v5, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v3, v3, v5

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v2, v2, v0

    if-lez v2, :cond_b2

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_b2
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 525
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v4, v2, v0

    .line 526
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v7, v2, v0

    .line 527
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    const/16 v3, 0x168

    aput v3, v2, v0

    .line 528
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v3, v3, v1

    aput v3, v2, v0

    .line 529
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v3, v3, v5

    aput v3, v2, v0

    .line 530
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v1, v2, v0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_30

    .line 532
    :cond_dd
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 534
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 535
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    goto/16 :goto_19
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

    .line 551
    const/4 v0, 0x1

    :goto_2
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1a

    .line 552
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v0

    if-eqz v1, :cond_17

    .line 553
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v2, v1, v0

    .line 551
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 557
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
    .line 635
    const/16 v0, 0x9

    new-array v10, v0, [I

    .line 636
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v0, :cond_3c

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    .line 637
    :goto_f
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 638
    const/4 v3, 0x1

    move v4, v3

    :goto_13
    const/16 v3, 0x8

    if-gt v4, v3, :cond_45

    .line 639
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->target(I)I

    move-result v3

    aput v3, v10, v4

    .line 640
    aget v3, v10, v4

    if-gtz v3, :cond_29

    if-eqz v0, :cond_38

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->works(I)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 641
    :cond_29
    add-int/lit8 v1, v1, 0x1

    .line 642
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v3, v3, v4

    .line 643
    :goto_33
    if-eqz v2, :cond_37

    if-ge v3, v2, :cond_38

    :cond_37
    move v2, v3

    .line 638
    :cond_38
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_13

    .line 636
    :cond_3c
    const/4 v0, 0x0

    goto :goto_f

    .line 642
    :cond_3e
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-direct {p0, v4, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effHz(II)I

    move-result v3

    goto :goto_33

    .line 647
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

    .line 655
    :goto_57
    const/4 v3, 0x0

    .line 656
    const/4 v4, 0x1

    move v5, v4

    :goto_5a
    const/16 v4, 0x8

    if-gt v5, v4, :cond_9d

    .line 657
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    const/4 v6, 0x1

    add-int/lit8 v7, v5, -0x1

    shl-int/2addr v6, v7

    and-int/2addr v4, v6

    if-nez v4, :cond_6d

    .line 656
    :cond_67
    :goto_67
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_5a

    .line 647
    :cond_6b
    const/4 v1, 0x0

    goto :goto_57

    .line 658
    :cond_6d
    aget v4, v10, v5

    if-lez v4, :cond_87

    .line 659
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

    .line 660
    :cond_87
    if-eqz v0, :cond_67

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mapped(I)Z

    move-result v4

    if-eqz v4, :cond_67

    if-eqz v1, :cond_67

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v4, v4, v5

    if-eq v4, v2, :cond_67

    .line 661
    const/4 v4, 0x1

    add-int/lit8 v6, v5, -0x1

    shl-int/2addr v4, v6

    or-int/2addr v3, v4

    goto :goto_67

    .line 666
    :cond_9d
    const/4 v4, 0x1

    :goto_9e
    const/16 v5, 0x8

    if-gt v4, v5, :cond_bc

    .line 667
    aget v5, v10, v4

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v6, v6, v4

    if-ge v5, v6, :cond_b9

    .line 668
    aget v5, v10, v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v6, v10, v4

    aput v6, v5, v4

    .line 666
    :cond_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    .line 672
    :cond_bc
    if-eqz v3, :cond_cb

    .line 673
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    const/4 v4, 0x0

    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 675
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 677
    :cond_cb
    if-nez v1, :cond_d0

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 678
    :cond_d0
    const/4 v8, 0x0

    .line 679
    const/4 v4, 0x0

    .line 680
    const/4 v5, 0x1

    move v9, v5

    :goto_d4
    const/16 v5, 0x8

    if-gt v9, v5, :cond_219

    .line 681
    aget v11, v10, v9

    .line 682
    if-nez v11, :cond_12c

    if-eqz v0, :cond_12c

    invoke-static {v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mapped(I)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 684
    if-eqz v1, :cond_103

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v5, v5, v9

    if-eq v5, v2, :cond_103

    .line 685
    invoke-static {v9, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v2, v4, v9

    .line 687
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    const/4 v5, 0x1

    add-int/lit8 v6, v9, -0x1

    shl-int/2addr v5, v6

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 688
    const/4 v4, 0x1

    .line 690
    :cond_103
    const/4 v5, 0x1

    add-int/lit8 v6, v9, -0x1

    shl-int/2addr v5, v6

    or-int/2addr v5, v8

    .line 724
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

    .line 725
    :cond_11c
    invoke-static {v9, v11}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v11, v6, v9

    .line 680
    :cond_127
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v8, v5

    goto :goto_d4

    .line 691
    :cond_12c
    if-lez v11, :cond_276

    .line 692
    if-eqz v1, :cond_1d5

    move v5, v2

    .line 693
    :goto_131
    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v6, :cond_1e7

    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 694
    :goto_137
    const/16 v7, 0x32

    if-ge v6, v7, :cond_13d

    const/16 v6, 0x32

    .line 695
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

    .line 696
    :cond_14e
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v7, v7, v9

    if-eq v7, v5, :cond_16b

    .line 697
    invoke-static {v9, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v5, v4, v9

    .line 699
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    const/4 v5, 0x1

    add-int/lit8 v7, v9, -0x1

    shl-int/2addr v5, v7

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 700
    const/4 v4, 0x1

    .line 702
    :cond_16b
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aget v5, v5, v9

    if-eq v5, v6, :cond_180

    .line 703
    const/16 v5, 0x1ff

    if-le v6, v5, :cond_1f2

    invoke-static {v9, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->widthRaw(II)[B

    move-result-object v5

    :goto_179
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v6, v5, v9

    .line 706
    :cond_180
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v5, :cond_1f7

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v5, :cond_1f7

    const/4 v5, 0x1

    move v7, v5

    .line 707
    :goto_18a
    if-eqz v7, :cond_1fa

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    move v6, v5

    .line 708
    :goto_18f
    if-eqz v7, :cond_20a

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 709
    :goto_193
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aget v7, v7, v9

    if-eq v7, v6, :cond_1a5

    .line 710
    const/4 v7, 0x2

    invoke-static {v9, v7, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aput v6, v7, v9

    .line 713
    :cond_1a5
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aget v6, v6, v9

    if-eq v6, v5, :cond_1b7

    .line 714
    const/4 v6, 0x4

    invoke-static {v9, v6, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aput v5, v6, v9

    .line 717
    :cond_1b7
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v5, :cond_217

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 718
    :goto_1bd
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aget v6, v6, v9

    if-eq v6, v5, :cond_1ce

    .line 719
    invoke-static {v9, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNorByte(II)[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v5, v6, v9

    .line 722
    :cond_1ce
    const/4 v5, 0x1

    add-int/lit8 v6, v9, -0x1

    shl-int/2addr v5, v6

    or-int/2addr v5, v8

    goto/16 :goto_108

    .line 692
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

    .line 693
    :cond_1e7
    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-direct {p0, v9, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effUs(II)I

    move-result v6

    goto/16 :goto_137

    .line 695
    :cond_1ef
    const/4 v7, 0x0

    goto/16 :goto_147

    .line 703
    :cond_1f2
    invoke-static {v9, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v5

    goto :goto_179

    .line 706
    :cond_1f7
    const/4 v5, 0x0

    move v7, v5

    goto :goto_18a

    .line 707
    :cond_1fa
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v5, :cond_203

    const v5, 0x186a0

    move v6, v5

    goto :goto_18f

    :cond_203
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move v6, v5

    goto :goto_18f

    .line 708
    :cond_20a
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v5, :cond_210

    const/4 v5, 0x0

    goto :goto_193

    :cond_210
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    const/4 v7, 0x3

    aget v5, v5, v7

    goto/16 :goto_193

    .line 717
    :cond_217
    const/4 v5, 0x1

    goto :goto_1bd

    .line 729
    :cond_219
    if-eqz v8, :cond_21e

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    .line 730
    :cond_21e
    if-eqz v1, :cond_267

    if-eqz v3, :cond_224

    if-nez v0, :cond_267

    :cond_224
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-ne v8, v1, :cond_22c

    if-eqz v4, :cond_267

    if-nez v0, :cond_267

    .line 734
    :cond_22c
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 735
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_23a

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_23a
    invoke-static {v8}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    iput v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 738
    invoke-direct {p0, p1, v8, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->startSlide(Ljava/util/List;II)V

    .line 743
    :cond_246
    :goto_246
    if-eqz v3, :cond_275

    .line 746
    const/4 v0, 0x1

    :goto_249
    const/16 v1, 0x8

    if-gt v0, v1, :cond_275

    .line 747
    aget v1, v10, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_264

    .line 748
    aget v1, v10, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v2, v10, v0

    aput v2, v1, v0

    .line 746
    :cond_264
    add-int/lit8 v0, v0, 0x1

    goto :goto_249

    .line 739
    :cond_267
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eq v8, v0, :cond_246

    .line 740
    invoke-static {v8}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    iput v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    goto :goto_246

    .line 753
    :cond_275
    return-void

    :cond_276
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

    .line 478
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-nez v0, :cond_7

    .line 483
    :goto_6
    return-void

    :cond_7
    move v0, v1

    .line 479
    :goto_8
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1f

    .line 480
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    add-int/lit8 v3, v0, -0x1

    shl-int v3, v1, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 479
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 482
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

    .line 570
    if-ltz p3, :cond_18

    const/4 v0, 0x3

    if-gt p3, v0, :cond_18

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-eq v0, p3, :cond_17

    .line 572
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aput p3, v0, p2

    .line 579
    :cond_17
    :goto_17
    return-void

    .line 575
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-lez v0, :cond_17

    .line 576
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
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

    .line 757
    const v0, 0xf4240

    div-int v4, v0, p3

    .line 758
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    .line 759
    const-wide v6, 0x413e848000000000L    # 2000000.0

    .line 761
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideFrames:I

    move v3, v1

    .line 762
    :goto_13
    const/16 v0, 0x8

    if-gt v3, v0, :cond_52

    .line 763
    add-int/lit8 v0, v3, -0x1

    shl-int v0, v1, v0

    and-int/2addr v0, p2

    if-nez v0, :cond_23

    move v0, v2

    .line 762
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_13

    .line 764
    :cond_23
    if-lez v2, :cond_4f

    .line 766
    int-to-double v8, v2

    int-to-double v10, v4

    mul-double/2addr v8, v10

    int-to-double v10, v5

    div-double/2addr v8, v10

    .line 767
    int-to-double v10, v4

    mul-double/2addr v10, v8

    sub-double v8, v6, v8

    div-double v8, v10, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    .line 768
    if-ge v0, v1, :cond_38

    move v0, v1

    .line 769
    :cond_38
    add-int/2addr v0, v4

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->period(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    add-int/lit8 v8, v3, -0x1

    shl-int v8, v1, v8

    or-int/2addr v0, v8

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 771
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideFrames:I

    .line 773
    :cond_4f
    add-int/lit8 v0, v2, 0x1

    goto :goto_1f

    .line 775
    :cond_52
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    if-eqz v0, :cond_60

    .line 776
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    .line 777
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J

    .line 779
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

    .line 783
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    if-nez v0, :cond_6

    .line 790
    :goto_5
    return-void

    :cond_6
    move v0, v1

    .line 784
    :goto_7
    const/16 v2, 0x8

    if-gt v0, v2, :cond_22

    .line 785
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

    .line 784
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 787
    :cond_22
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 788
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    .line 789
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

    .line 598
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v1, v0, p1

    .line 613
    :cond_d
    :goto_d
    return v1

    .line 599
    :cond_e
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v4

    .line 600
    if-ltz v4, :cond_d

    const/16 v2, 0xa

    if-ge v4, v2, :cond_d

    .line 601
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v2

    .line 602
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v5, v7, :cond_22

    if-eq v2, v0, :cond_d

    .line 603
    :cond_22
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v5, v0, :cond_28

    if-eq v2, v7, :cond_d

    .line 604
    :cond_28
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v2, v2, v4

    int-to-float v2, v2

    .line 605
    const/4 v5, 0x4

    if-ne v4, v5, :cond_75

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v5, v5, v4

    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seenArms:I

    if-ne v5, v6, :cond_75

    .line 608
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v2, v7, :cond_6f

    :goto_3c
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v0

    if-lez v0, :cond_71

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effUs(II)I

    move-result v0

    .line 609
    :goto_48
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    if-ne v0, v2, :cond_4d

    move v0, v1

    .line 610
    :cond_4d
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v2, v2, v4

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsExact(II)F

    move-result v0

    .line 612
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

    .line 613
    if-ltz v0, :cond_d

    if-le v0, v3, :cond_73

    move v1, v3

    goto :goto_d

    :cond_6f
    move v0, v1

    .line 608
    goto :goto_3c

    :cond_71
    move v0, v1

    goto :goto_48

    :cond_73
    move v1, v0

    .line 613
    goto :goto_d

    :cond_75
    move v0, v2

    goto :goto_55
.end method

.method public static testCap(II)I
    .registers 3

    .prologue
    .line 322
    const/16 v0, 0x63

    return v0
.end method

.method private works(I)Z
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 624
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mapped(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 626
    :goto_9
    return v1

    .line 625
    :cond_a
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v2

    .line 626
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

    .line 540
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 541
    const/4 v0, 0x1

    :goto_5
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1d

    .line 542
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1a

    .line 543
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v2, v1, v0

    .line 541
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 547
    :cond_1d
    return-void
.end method


# virtual methods
.method public declared-synchronized armed()Z
    .registers 2

    .prologue
    .line 161
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
    .line 210
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_13

    const/4 v1, 0x5

    if-eq p1, v1, :cond_13

    .line 212
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 213
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 215
    :cond_13
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 216
    const/4 v1, 0x1

    if-ne p1, v1, :cond_90

    .line 219
    const/16 v1, 0xa

    new-array v4, v1, [I

    .line 220
    const/4 v1, 0x0

    :goto_1e
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2d

    add-int/lit8 v2, v1, 0x1

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v2

    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 221
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v5

    .line 222
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ltz v1, :cond_3a

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_62

    :cond_3a
    const/4 v1, 0x1

    move v3, v1

    .line 223
    :goto_3c
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aget-object v1, v1, v3

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->byHand([I[I[I)I

    move-result v6

    .line 224
    if-ltz v6, :cond_75

    .line 226
    array-length v7, v5

    const/4 v1, 0x0

    move v2, v1

    :goto_49
    if-ge v2, v7, :cond_72

    aget v8, v5, v2

    .line 227
    if-ne v8, v6, :cond_66

    aget v1, v4, v8

    .line 228
    :goto_51
    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    aget v10, v4, v8

    if-lez v10, :cond_6f

    int-to-float v1, v1

    aget v10, v4, v8

    int-to-float v10, v10

    div-float/2addr v1, v10

    :goto_5c
    aput v1, v9, v8

    .line 226
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_49

    .line 222
    :cond_62
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    move v3, v1

    goto :goto_3c

    .line 227
    :cond_66
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aget-object v1, v1, v3

    invoke-virtual {p0, v1, v8}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legValue([II)I

    move-result v1

    goto :goto_51

    .line 228
    :cond_6f
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5c

    .line 230
    :cond_72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    .line 232
    :cond_75
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aput-object v4, v1, v3

    .line 233
    const/4 v1, 0x0

    :goto_7a
    const/16 v2, 0xa

    if-ge v1, v2, :cond_89

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    invoke-virtual {p0, v4, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legValue([II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 234
    :cond_89
    const/4 v1, 0x4

    aget v1, v4, v1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seenArms:I
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_125

    .line 304
    :cond_8e
    :goto_8e
    monitor-exit p0

    return-object v0

    .line 235
    :cond_90
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1eb

    .line 236
    const/4 v1, 0x1

    :try_start_94
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v2

    or-int v6, v1, v2

    .line 237
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v7

    .line 238
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    .line 239
    const/16 v2, 0xa

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_128

    const/4 v2, 0x1

    move v5, v2

    .line 240
    :goto_b8
    if-eqz v5, :cond_12b

    if-lez v7, :cond_12b

    const/4 v2, 0x1

    move v4, v2

    .line 241
    :goto_be
    const/4 v2, 0x5

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v8

    const/4 v2, 0x6

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v9

    .line 242
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->cycle()Z

    move-result v2

    if-eqz v2, :cond_12e

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycleOk:Z

    if-eqz v2, :cond_12e

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v2, :cond_12e

    if-lez v8, :cond_12e

    if-lez v9, :cond_12e

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12e

    const/4 v2, 0x1

    move v3, v2

    .line 243
    :goto_e1
    if-eqz v3, :cond_131

    invoke-virtual {p0, v8, v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycleT(II)[I

    move-result-object v2

    .line 244
    :goto_e7
    iget-boolean v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v8, :cond_10d

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    invoke-static {v2, v8}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v8

    if-nez v8, :cond_10d

    if-nez v3, :cond_ff

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    sget-object v9, Lcom/isaigu/gymapp/bodytech/BtTranslator;->PLAIN_T:[I

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v8

    if-nez v8, :cond_10d

    .line 246
    :cond_ff
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 247
    iput-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    .line 248
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 249
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 250
    const/4 v2, 0x0

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    .line 252
    :cond_10d
    if-eqz v3, :cond_139

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v2, :cond_139

    if-nez v4, :cond_139

    .line 254
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    .line 255
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_134

    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J
    :try_end_123
    .catchall {:try_start_94 .. :try_end_123} :catchall_125

    goto/16 :goto_8e

    .line 210
    :catchall_125
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_128
    const/4 v2, 0x0

    move v5, v2

    goto :goto_b8

    .line 240
    :cond_12b
    const/4 v2, 0x0

    move v4, v2

    goto :goto_be

    .line 242
    :cond_12e
    const/4 v2, 0x0

    move v3, v2

    goto :goto_e1

    .line 243
    :cond_131
    :try_start_131
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtTranslator;->PLAIN_T:[I

    goto :goto_e7

    .line 256
    :cond_134
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 259
    :cond_139
    if-eqz v3, :cond_17a

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v2, :cond_17a

    if-eqz v4, :cond_17a

    .line 260
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 261
    const/16 v2, 0x32

    if-ge v1, v2, :cond_173

    const/16 v1, 0x32

    :cond_149
    :goto_149
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 262
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 263
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_168

    .line 266
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 267
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v1, :cond_165

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_165
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 270
    :cond_168
    const/4 v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    .line 271
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 272
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 261
    :cond_173
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_149

    const/16 v1, 0x1ff

    goto :goto_149

    .line 275
    :cond_17a
    if-eqz v4, :cond_1a6

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    :goto_17e
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    .line 276
    if-eqz v5, :cond_184

    if-gtz v7, :cond_1a8

    :cond_184
    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v2, :cond_1a8

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v2, :cond_1a8

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v2, :cond_1a8

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v2, :cond_1a8

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold()Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 278
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->quiet(Ljava/util/List;)V

    .line 279
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    goto/16 :goto_8e

    .line 275
    :cond_1a6
    const/4 v2, 0x0

    goto :goto_17e

    .line 280
    :cond_1a8
    if-eqz v5, :cond_1ac

    if-gtz v7, :cond_1b1

    .line 281
    :cond_1ac
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 282
    :cond_1b1
    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-nez v2, :cond_1cb

    .line 284
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 285
    const/16 v2, 0x32

    if-ge v1, v2, :cond_1c4

    const/16 v1, 0x32

    :cond_1bd
    :goto_1bd
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 286
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 285
    :cond_1c4
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_1bd

    const/16 v1, 0x1ff

    goto :goto_1bd

    .line 288
    :cond_1cb
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 289
    const/16 v2, 0x32

    if-ge v1, v2, :cond_1e4

    const/16 v1, 0x32

    :cond_1d3
    :goto_1d3
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 292
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 293
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 294
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 289
    :cond_1e4
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_1d3

    const/16 v1, 0x1ff

    goto :goto_1d3

    .line 296
    :cond_1eb
    const/16 v1, 0xf1

    if-ne p1, v1, :cond_1f4

    .line 297
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    goto/16 :goto_8e

    .line 298
    :cond_1f4
    const/16 v1, 0xf2

    if-ne p1, v1, :cond_200

    .line 299
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 300
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 301
    :cond_200
    const/4 v1, 0x5

    if-ne p1, v1, :cond_8e

    .line 302
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batterySync()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20a
    .catchall {:try_start_131 .. :try_end_20a} :catchall_125

    goto/16 :goto_8e
.end method

.method public declared-synchronized cycle(IIZ)V
    .registers 6

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0xbb8

    :try_start_4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycUp:I

    .line 126
    const/4 v0, 0x0

    const/16 v1, 0xbb8

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycDown:I

    .line 127
    iput-boolean p3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycleOk:Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1f

    .line 128
    monitor-exit p0

    return-void

    .line 125
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cycleNow()[I
    .registers 2

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method cycleT(II)[I
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 137
    mul-int/lit16 v2, p1, 0x3e8

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycUp:I

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycDown:I

    .line 138
    add-int v3, v1, v0

    if-le v3, v2, :cond_15

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 140
    sub-int v0, v2, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    :cond_15
    const/16 v3, 0xa

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 143
    const/4 v3, 0x4

    new-array v3, v3, [I

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    const/4 v1, 0x2

    aput v0, v3, v1

    const/4 v0, 0x3

    mul-int/lit16 v1, p2, 0x3e8

    aput v1, v3, v0

    return-object v3
.end method

.method public declared-synchronized forget()V
    .registers 3

    .prologue
    .line 180
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 181
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    .line 182
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1f

    .line 188
    monitor-exit p0

    return-void

    .line 180
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
    .line 487
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_13

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 489
    :cond_13
    monitor-exit p0

    return-object v0

    .line 487
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOn()Z
    .registers 2

    .prologue
    .line 175
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

    .line 331
    monitor-enter p0

    if-eqz p1, :cond_b

    if-ltz p2, :cond_b

    :try_start_8
    array-length v0, p1
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_55

    if-lt p2, v0, :cond_d

    .line 342
    :cond_b
    :goto_b
    monitor-exit p0

    return v1

    .line 332
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v5

    .line 334
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

    .line 335
    :cond_22
    if-nez v4, :cond_27

    aget v1, p1, p2

    goto :goto_b

    .line 336
    :cond_27
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    if-nez v0, :cond_41

    .line 338
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

    .line 339
    goto :goto_b

    .line 341
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

    .line 342
    if-ltz v0, :cond_b

    if-le v0, v2, :cond_53

    move v1, v2

    goto :goto_b

    :cond_53
    move v1, v0

    goto :goto_b

    .line 331
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lost(I)V
    .registers 4

    .prologue
    .line 156
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

    .line 157
    :cond_d
    monitor-exit p0

    return-void

    .line 156
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized phase(I)V
    .registers 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized phaseNow()I
    .registers 2

    .prologue
    .line 148
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
    .line 421
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_123

    move-result v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    if-nez p2, :cond_13

    :cond_10
    move-object v0, v1

    .line 467
    :goto_11
    monitor-exit p0

    return-object v0

    .line 423
    :cond_13
    const/4 v2, 0x0

    .line 424
    const/4 v0, 0x1

    :goto_15
    const/16 v3, 0x8

    if-gt v0, v3, :cond_126

    .line 425
    :try_start_19
    array-length v3, p1

    if-ge v0, v3, :cond_2c

    aget v3, p1, v0

    if-lez v3, :cond_2c

    move v4, v0

    .line 430
    :goto_21
    if-nez v4, :cond_2f

    .line 431
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_2a

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    :cond_2a
    move-object v0, v1

    .line 432
    goto :goto_11

    .line 424
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 434
    :cond_2f
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtTranslator;->PLAIN_T:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 436
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->PLAIN_T:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 439
    :cond_46
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 440
    const/4 v0, 0x0

    .line 441
    const/4 v2, 0x1

    :goto_4b
    const/16 v3, 0x8

    if-gt v2, v3, :cond_5e

    array-length v3, p1

    if-ge v2, v3, :cond_5b

    aget v3, p1, v2

    if-lez v3, :cond_5b

    const/4 v3, 0x1

    add-int/lit8 v5, v2, -0x1

    shl-int/2addr v3, v5

    or-int/2addr v0, v3

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 442
    :cond_5e
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-eqz v2, :cond_6d

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-ne v2, v0, :cond_6a

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    if-eq p4, v2, :cond_6d

    :cond_6a
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 443
    :cond_6d
    const/4 v2, 0x1

    move v3, v2

    :goto_6f
    const/16 v2, 0x8

    if-gt v3, v2, :cond_a9

    .line 444
    array-length v2, p1

    if-ge v3, v2, :cond_9d

    aget v2, p1, v3

    .line 445
    :goto_78
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    if-gez v2, :cond_9f

    const/4 v2, 0x0

    :cond_7d
    :goto_7d
    aput v2, v5, v3

    .line 446
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    array-length v2, p2

    if-ge v3, v2, :cond_a6

    aget v2, p2, v3

    if-lez v2, :cond_a6

    aget v2, p2, v3

    :goto_8a
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v2

    aput v2, v5, v3

    .line 447
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v2, v2, v3

    if-lez v2, :cond_99

    invoke-direct {p0, v1, v3, p4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 443
    :cond_99
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6f

    .line 444
    :cond_9d
    const/4 v2, 0x0

    goto :goto_78

    .line 445
    :cond_9f
    const/16 v6, 0x63

    if-le v2, v6, :cond_7d

    const/16 v2, 0x63

    goto :goto_7d

    .line 446
    :cond_a6
    const/16 v2, 0x55

    goto :goto_8a

    .line 449
    :cond_a9
    if-ltz p4, :cond_b5

    const/4 v2, 0x3

    if-gt p4, v2, :cond_b5

    .line 450
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    .line 451
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    .line 453
    :cond_b5
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 454
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 455
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v0

    .line 456
    const/4 v2, 0x1

    :goto_c4
    const/16 v3, 0x8

    if-gt v2, v3, :cond_e3

    .line 457
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v3, v3, v2

    if-lez v3, :cond_e0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v3

    if-ge v3, v0, :cond_e0

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v0

    .line 456
    :cond_e0
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 459
    :cond_e3
    const/16 v2, 0x32

    if-ge p3, v2, :cond_116

    const/16 v0, 0x32

    :cond_e9
    :goto_e9
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 460
    invoke-static {p5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    .line 461
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v0, :cond_11a

    invoke-static {p6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v0

    :goto_f9
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 462
    const/4 v0, 0x1

    if-ge p7, v0, :cond_11c

    const/4 p7, 0x1

    :cond_ff
    :goto_ff
    iput p7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 463
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 465
    const-wide/16 v2, 0x5dc

    add-long v2, v2, p8

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 466
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_113
    .catchall {:try_start_19 .. :try_end_113} :catchall_123

    move-object v0, v1

    .line 467
    goto/16 :goto_11

    .line 459
    :cond_116
    if-gt p3, v0, :cond_e9

    move v0, p3

    goto :goto_e9

    .line 461
    :cond_11a
    const/4 v0, 0x0

    goto :goto_f9

    .line 462
    :cond_11c
    const/16 v0, 0x1f

    if-le p7, v0, :cond_ff

    const/16 p7, 0x1f

    goto :goto_ff

    .line 421
    :catchall_123
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_126
    move v4, v2

    goto/16 :goto_21
.end method

.method public declared-synchronized programmed()Z
    .registers 2

    .prologue
    .line 171
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
    .line 166
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

    .line 195
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 197
    const/4 v2, 0x0

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    .line 198
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    .line 199
    :goto_10
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 200
    :cond_1d
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

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 202
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    .line 203
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 204
    :cond_3a
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_3f

    .line 205
    monitor-exit p0

    return-object v1

    .line 195
    :catchall_3f
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
    .line 805
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_f

    .line 808
    :goto_d
    monitor-exit p0

    return-object v0

    .line 807
    :cond_f
    :try_start_f
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_d

    .line 805
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takeSlide()[J
    .registers 5

    .prologue
    .line 797
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x0

    .line 800
    :goto_a
    monitor-exit p0

    return-object v0

    .line 798
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

    .line 799
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_25

    goto :goto_a

    .line 797
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
    .line 471
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 473
    :cond_d
    monitor-exit p0

    return-object v0

    .line 471
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
    .line 404
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    .line 405
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const/16 v1, 0x8

    if-le p1, v1, :cond_f

    .line 410
    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    .line 406
    :cond_f
    const/16 v0, 0x9

    :try_start_11
    new-array v1, v0, [I

    .line 407
    const/16 v0, 0x9

    new-array v2, v0, [I

    .line 408
    aput p2, v1, p1

    .line 409
    aput p3, v2, p1

    move-object v0, p0

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    .line 410
    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programOn([I[IIIIIIJ)Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2c

    move-result-object v0

    goto :goto_d

    .line 404
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
    .line 390
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
    .line 395
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
    .line 380
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
    .line 317
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
