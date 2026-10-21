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

.field public static final GATE_MAX_HZ:I = 0xc

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

.field private gateFresh:Z

.field private gateGen:I

.field private gateHz:I

.field private gateMask:I

.field private gating:Z

.field private hz:I

.field private lastRun:I

.field private final legK:[F

.field private legsOwn:Z

.field private mainHz:I

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
    .registers 9

    .prologue
    const/16 v7, 0x55

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
    :goto_1c
    if-ge v0, v6, :cond_27

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 55
    :cond_27
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    .line 56
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

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

    .line 127
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mainHz:I

    return-void
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 548
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

    .line 400
    if-eqz p0, :cond_7

    array-length v0, p2

    if-nez v0, :cond_9

    :cond_7
    move v0, v3

    .line 410
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v2, v4

    move v0, v4

    move v1, v3

    .line 402
    :goto_c
    const/16 v5, 0xa

    if-ge v2, v5, :cond_1c

    .line 403
    aget v5, p0, v2

    aget v6, p1, v2

    if-eq v5, v6, :cond_19

    .line 405
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 402
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 408
    :cond_1c
    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    move v0, v3

    goto :goto_8

    .line 409
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

    .line 410
    goto :goto_8
.end method

.method static clampHz(I)I
    .registers 3

    .prologue
    const/16 v1, 0x2710

    const/4 v0, 0x1

    .line 420
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

    .line 428
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

    .line 424
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
    .line 636
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    .line 637
    if-gtz v0, :cond_13

    .line 639
    :cond_10
    :goto_10
    return p2

    .line 636
    :cond_11
    const/4 v0, 0x0

    goto :goto_a

    .line 638
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result p2

    goto :goto_10

    .line 639
    :cond_1e
    if-ge v0, p2, :cond_10

    move p2, v0

    goto :goto_10
.end method

.method private effUs(II)I
    .registers 5

    .prologue
    .line 643
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v0

    .line 644
    if-gtz v0, :cond_f

    .line 646
    :cond_c
    :goto_c
    return p2

    .line 643
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 645
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result p2

    goto :goto_c

    .line 646
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
.end method

.method private static keepMs([BI)J
    .registers 6

    .prologue
    .line 362
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 363
    if-gtz v0, :cond_11

    move v0, p1

    .line 364
    :cond_11
    if-lez p1, :cond_22

    if-ge p1, v0, :cond_22

    .line 365
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
    .line 671
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v0

    .line 672
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

    .line 415
    const v2, 0x7a120

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v3

    div-int/2addr v2, v3

    .line 416
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

    .line 613
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 614
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 615
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 616
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_13
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 618
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 619
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

    .line 553
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    if-eqz v0, :cond_15

    .line 554
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 556
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 558
    :cond_15
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_1a

    .line 589
    :goto_19
    return-void

    .line 559
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit2()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->reset()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 562
    :goto_30
    const/16 v2, 0x8

    if-gt v0, v2, :cond_dd

    .line 563
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const v2, 0x1010101

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNor(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    const/16 v2, 0x168

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->tPeriod(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v2, v2, v1

    invoke-static {v0, v6, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v2, v2, v6

    invoke-static {v0, v5, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v3, v3, v5

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v2, v2, v0

    if-lez v2, :cond_b2

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_b2
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 578
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v4, v2, v0

    .line 579
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v7, v2, v0

    .line 580
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    const/16 v3, 0x168

    aput v3, v2, v0

    .line 581
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v3, v3, v1

    aput v3, v2, v0

    .line 582
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    aget v3, v3, v5

    aput v3, v2, v0

    .line 583
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v1, v2, v0

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_30

    .line 585
    :cond_dd
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 587
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 588
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

    .line 604
    const/4 v0, 0x1

    :goto_2
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1a

    .line 605
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v0

    if-eqz v1, :cond_17

    .line 606
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v2, v1, v0

    .line 604
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 610
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
    .line 688
    const/16 v0, 0x9

    new-array v10, v0, [I

    .line 689
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v0, :cond_3c

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    .line 690
    :goto_f
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 691
    const/4 v3, 0x1

    move v4, v3

    :goto_13
    const/16 v3, 0x8

    if-gt v4, v3, :cond_45

    .line 692
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->target(I)I

    move-result v3

    aput v3, v10, v4

    .line 693
    aget v3, v10, v4

    if-gtz v3, :cond_29

    if-eqz v0, :cond_38

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->works(I)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 694
    :cond_29
    add-int/lit8 v1, v1, 0x1

    .line 695
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v3, v3, v4

    .line 696
    :goto_33
    if-eqz v2, :cond_37

    if-ge v3, v2, :cond_38

    :cond_37
    move v2, v3

    .line 691
    :cond_38
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_13

    .line 689
    :cond_3c
    const/4 v0, 0x0

    goto :goto_f

    .line 695
    :cond_3e
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-direct {p0, v4, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effHz(II)I

    move-result v3

    goto :goto_33

    .line 700
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

    .line 708
    :goto_57
    const/4 v3, 0x0

    .line 709
    const/4 v4, 0x1

    move v5, v4

    :goto_5a
    const/16 v4, 0x8

    if-gt v5, v4, :cond_9d

    .line 710
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    const/4 v6, 0x1

    add-int/lit8 v7, v5, -0x1

    shl-int/2addr v6, v7

    and-int/2addr v4, v6

    if-nez v4, :cond_6d

    .line 709
    :cond_67
    :goto_67
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_5a

    .line 700
    :cond_6b
    const/4 v1, 0x0

    goto :goto_57

    .line 711
    :cond_6d
    aget v4, v10, v5

    if-lez v4, :cond_87

    .line 712
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

    .line 713
    :cond_87
    if-eqz v0, :cond_67

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mapped(I)Z

    move-result v4

    if-eqz v4, :cond_67

    if-eqz v1, :cond_67

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v4, v4, v5

    if-eq v4, v2, :cond_67

    .line 714
    const/4 v4, 0x1

    add-int/lit8 v6, v5, -0x1

    shl-int/2addr v4, v6

    or-int/2addr v3, v4

    goto :goto_67

    .line 719
    :cond_9d
    const/4 v4, 0x1

    :goto_9e
    const/16 v5, 0x8

    if-gt v4, v5, :cond_bc

    .line 720
    aget v5, v10, v4

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v6, v6, v4

    if-ge v5, v6, :cond_b9

    .line 721
    aget v5, v10, v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v6, v10, v4

    aput v6, v5, v4

    .line 719
    :cond_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    .line 725
    :cond_bc
    if-eqz v3, :cond_cb

    .line 726
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    const/4 v4, 0x0

    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 728
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 730
    :cond_cb
    if-nez v1, :cond_d0

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 731
    :cond_d0
    const/4 v8, 0x0

    .line 732
    const/4 v4, 0x0

    .line 733
    const/4 v5, 0x1

    move v9, v5

    :goto_d4
    const/16 v5, 0x8

    if-gt v9, v5, :cond_219

    .line 734
    aget v11, v10, v9

    .line 735
    if-nez v11, :cond_12c

    if-eqz v0, :cond_12c

    invoke-static {v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mapped(I)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 737
    if-eqz v1, :cond_103

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v5, v5, v9

    if-eq v5, v2, :cond_103

    .line 738
    invoke-static {v9, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v2, v4, v9

    .line 740
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    const/4 v5, 0x1

    add-int/lit8 v6, v9, -0x1

    shl-int/2addr v5, v6

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 741
    const/4 v4, 0x1

    .line 743
    :cond_103
    const/4 v5, 0x1

    add-int/lit8 v6, v9, -0x1

    shl-int/2addr v5, v6

    or-int/2addr v5, v8

    .line 777
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

    .line 778
    :cond_11c
    invoke-static {v9, v11}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v11, v6, v9

    .line 733
    :cond_127
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v8, v5

    goto :goto_d4

    .line 744
    :cond_12c
    if-lez v11, :cond_2b3

    .line 745
    if-eqz v1, :cond_1d5

    move v5, v2

    .line 746
    :goto_131
    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v6, :cond_1e7

    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 747
    :goto_137
    const/16 v7, 0x32

    if-ge v6, v7, :cond_13d

    const/16 v6, 0x32

    .line 748
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

    .line 749
    :cond_14e
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v7, v7, v9

    if-eq v7, v5, :cond_16b

    .line 750
    invoke-static {v9, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v5, v4, v9

    .line 752
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    const/4 v5, 0x1

    add-int/lit8 v7, v9, -0x1

    shl-int/2addr v5, v7

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 753
    const/4 v4, 0x1

    .line 755
    :cond_16b
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aget v5, v5, v9

    if-eq v5, v6, :cond_180

    .line 756
    const/16 v5, 0x1ff

    if-le v6, v5, :cond_1f2

    invoke-static {v9, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->widthRaw(II)[B

    move-result-object v5

    :goto_179
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v6, v5, v9

    .line 759
    :cond_180
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v5, :cond_1f7

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v5, :cond_1f7

    const/4 v5, 0x1

    move v7, v5

    .line 760
    :goto_18a
    if-eqz v7, :cond_1fa

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    move v6, v5

    .line 761
    :goto_18f
    if-eqz v7, :cond_20a

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 762
    :goto_193
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aget v7, v7, v9

    if-eq v7, v6, :cond_1a5

    .line 763
    const/4 v7, 0x2

    invoke-static {v9, v7, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aput v6, v7, v9

    .line 766
    :cond_1a5
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aget v6, v6, v9

    if-eq v6, v5, :cond_1b7

    .line 767
    const/4 v6, 0x4

    invoke-static {v9, v6, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aput v5, v6, v9

    .line 770
    :cond_1b7
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v5, :cond_217

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 771
    :goto_1bd
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aget v6, v6, v9

    if-eq v6, v5, :cond_1ce

    .line 772
    invoke-static {v9, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNorByte(II)[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v5, v6, v9

    .line 775
    :cond_1ce
    const/4 v5, 0x1

    add-int/lit8 v6, v9, -0x1

    shl-int/2addr v5, v6

    or-int/2addr v5, v8

    goto/16 :goto_108

    .line 745
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

    .line 746
    :cond_1e7
    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-direct {p0, v9, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effUs(II)I

    move-result v6

    goto/16 :goto_137

    .line 748
    :cond_1ef
    const/4 v7, 0x0

    goto/16 :goto_147

    .line 756
    :cond_1f2
    invoke-static {v9, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v5

    goto :goto_179

    .line 759
    :cond_1f7
    const/4 v5, 0x0

    move v7, v5

    goto :goto_18a

    .line 760
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

    .line 761
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

    .line 770
    :cond_217
    const/4 v5, 0x1

    goto :goto_1bd

    .line 782
    :cond_219
    iget-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    if-eqz v5, :cond_256

    .line 784
    iput v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateMask:I

    .line 785
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 786
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateFresh:Z

    if-eqz v0, :cond_234

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_234

    .line 787
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 790
    :cond_234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateFresh:Z

    .line 791
    const/4 v0, 0x1

    :goto_238
    const/16 v1, 0x8

    if-gt v0, v1, :cond_2b2

    .line 792
    aget v1, v10, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_253

    .line 793
    aget v1, v10, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v2, v10, v0

    aput v2, v1, v0

    .line 791
    :cond_253
    add-int/lit8 v0, v0, 0x1

    goto :goto_238

    .line 799
    :cond_256
    if-eqz v8, :cond_25b

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    .line 800
    :cond_25b
    if-eqz v1, :cond_2a4

    if-eqz v3, :cond_261

    if-nez v0, :cond_2a4

    :cond_261
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-ne v8, v1, :cond_269

    if-eqz v4, :cond_2a4

    if-nez v0, :cond_2a4

    .line 804
    :cond_269
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 805
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_277

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_277
    invoke-static {v8}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    iput v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 808
    invoke-direct {p0, p1, v8, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->startSlide(Ljava/util/List;II)V

    .line 813
    :cond_283
    :goto_283
    if-eqz v3, :cond_2b2

    .line 816
    const/4 v0, 0x1

    :goto_286
    const/16 v1, 0x8

    if-gt v0, v1, :cond_2b2

    .line 817
    aget v1, v10, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_2a1

    .line 818
    aget v1, v10, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v2, v10, v0

    aput v2, v1, v0

    .line 816
    :cond_2a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_286

    .line 809
    :cond_2a4
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eq v8, v0, :cond_283

    .line 810
    invoke-static {v8}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    iput v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    goto :goto_283

    .line 823
    :cond_2b2
    return-void

    :cond_2b3
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

    .line 531
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-nez v0, :cond_7

    .line 536
    :goto_6
    return-void

    :cond_7
    move v0, v1

    .line 532
    :goto_8
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1f

    .line 533
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    add-int/lit8 v3, v0, -0x1

    shl-int v3, v1, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 532
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 535
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

    .line 623
    if-ltz p3, :cond_18

    const/4 v0, 0x3

    if-gt p3, v0, :cond_18

    .line 624
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-eq v0, p3, :cond_17

    .line 625
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aput p3, v0, p2

    .line 632
    :cond_17
    :goto_17
    return-void

    .line 628
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-lez v0, :cond_17

    .line 629
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
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

    .line 827
    const v0, 0xf4240

    div-int v4, v0, p3

    .line 828
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    .line 829
    const-wide v6, 0x413e848000000000L    # 2000000.0

    .line 831
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideFrames:I

    move v3, v1

    .line 832
    :goto_13
    const/16 v0, 0x8

    if-gt v3, v0, :cond_52

    .line 833
    add-int/lit8 v0, v3, -0x1

    shl-int v0, v1, v0

    and-int/2addr v0, p2

    if-nez v0, :cond_23

    move v0, v2

    .line 832
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_13

    .line 834
    :cond_23
    if-lez v2, :cond_4f

    .line 836
    int-to-double v8, v2

    int-to-double v10, v4

    mul-double/2addr v8, v10

    int-to-double v10, v5

    div-double/2addr v8, v10

    .line 837
    int-to-double v10, v4

    mul-double/2addr v10, v8

    sub-double v8, v6, v8

    div-double v8, v10, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    .line 838
    if-ge v0, v1, :cond_38

    move v0, v1

    .line 839
    :cond_38
    add-int/2addr v0, v4

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->period(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    add-int/lit8 v8, v3, -0x1

    shl-int v8, v1, v8

    or-int/2addr v0, v8

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 841
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideFrames:I

    .line 843
    :cond_4f
    add-int/lit8 v0, v2, 0x1

    goto :goto_1f

    .line 845
    :cond_52
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    if-eqz v0, :cond_60

    .line 846
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    .line 847
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J

    .line 849
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

    .line 853
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    if-nez v0, :cond_6

    .line 860
    :goto_5
    return-void

    :cond_6
    move v0, v1

    .line 854
    :goto_7
    const/16 v2, 0x8

    if-gt v0, v2, :cond_22

    .line 855
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

    .line 854
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 857
    :cond_22
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 858
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    .line 859
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

    .line 651
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v1, v0, p1

    .line 666
    :cond_d
    :goto_d
    return v1

    .line 652
    :cond_e
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v4

    .line 653
    if-ltz v4, :cond_d

    const/16 v2, 0xa

    if-ge v4, v2, :cond_d

    .line 654
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v2

    .line 655
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v5, v7, :cond_22

    if-eq v2, v0, :cond_d

    .line 656
    :cond_22
    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v5, v0, :cond_28

    if-eq v2, v7, :cond_d

    .line 657
    :cond_28
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v2, v2, v4

    int-to-float v2, v2

    .line 658
    const/4 v5, 0x4

    if-ne v4, v5, :cond_75

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v5, v5, v4

    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seenArms:I

    if-ne v5, v6, :cond_75

    .line 661
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v2, v7, :cond_6f

    :goto_3c
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v0

    if-lez v0, :cond_71

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effUs(II)I

    move-result v0

    .line 662
    :goto_48
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    if-ne v0, v2, :cond_4d

    move v0, v1

    .line 663
    :cond_4d
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v2, v2, v4

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsExact(II)F

    move-result v0

    .line 665
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

    .line 666
    if-ltz v0, :cond_d

    if-le v0, v3, :cond_73

    move v1, v3

    goto :goto_d

    :cond_6f
    move v0, v1

    .line 661
    goto :goto_3c

    :cond_71
    move v0, v1

    goto :goto_48

    :cond_73
    move v1, v0

    .line 666
    goto :goto_d

    :cond_75
    move v0, v2

    goto :goto_55
.end method

.method public static testCap(II)I
    .registers 3

    .prologue
    .line 375
    const/16 v0, 0x63

    return v0
.end method

.method private works(I)Z
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 677
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mapped(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 679
    :goto_9
    return v1

    .line 678
    :cond_a
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v2

    .line 679
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

    .line 593
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 594
    const/4 v0, 0x1

    :goto_5
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1d

    .line 595
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1a

    .line 596
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v2, v1, v0

    .line 594
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 600
    :cond_1d
    return-void
.end method


# virtual methods
.method public declared-synchronized armed()Z
    .registers 2

    .prologue
    .line 196
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
    .line 245
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_13

    const/4 v1, 0x5

    if-eq p1, v1, :cond_13

    .line 247
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 248
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 250
    :cond_13
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 251
    const/4 v1, 0x1

    if-ne p1, v1, :cond_90

    .line 254
    const/16 v1, 0xa

    new-array v4, v1, [I

    .line 255
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

    .line 256
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v5

    .line 257
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ltz v1, :cond_3a

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_62

    :cond_3a
    const/4 v1, 0x1

    move v3, v1

    .line 258
    :goto_3c
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aget-object v1, v1, v3

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->byHand([I[I[I)I

    move-result v6

    .line 259
    if-ltz v6, :cond_75

    .line 261
    array-length v7, v5

    const/4 v1, 0x0

    move v2, v1

    :goto_49
    if-ge v2, v7, :cond_72

    aget v8, v5, v2

    .line 262
    if-ne v8, v6, :cond_66

    aget v1, v4, v8

    .line 263
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

    .line 261
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_49

    .line 257
    :cond_62
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    move v3, v1

    goto :goto_3c

    .line 262
    :cond_66
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aget-object v1, v1, v3

    invoke-virtual {p0, v1, v8}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legValue([II)I

    move-result v1

    goto :goto_51

    .line 263
    :cond_6f
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5c

    .line 265
    :cond_72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    .line 267
    :cond_75
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seen:[[I

    aput-object v4, v1, v3

    .line 268
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

    .line 269
    :cond_89
    const/4 v1, 0x4

    aget v1, v4, v1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->seenArms:I
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_147

    .line 357
    :cond_8e
    :goto_8e
    monitor-exit p0

    return-object v0

    .line 270
    :cond_90
    const/4 v1, 0x3

    if-ne p1, v1, :cond_274

    .line 271
    const/4 v1, 0x1

    :try_start_94
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v2

    or-int v6, v1, v2

    .line 272
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v7

    .line 273
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    .line 274
    const/16 v2, 0xa

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14a

    const/4 v2, 0x1

    move v5, v2

    .line 275
    :goto_b8
    if-eqz v5, :cond_14e

    if-lez v7, :cond_14e

    const/4 v2, 0x1

    move v4, v2

    .line 276
    :goto_be
    if-eqz v4, :cond_d3

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d3

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->gate()Z

    move-result v2

    if-eqz v2, :cond_d3

    const/16 v2, 0xc

    if-gt v7, v2, :cond_d3

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-nez v2, :cond_e0

    :cond_d3
    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    if-eqz v2, :cond_e0

    .line 277
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    .line 278
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateGen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateGen:I

    .line 280
    :cond_e0
    const/4 v2, 0x5

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v8

    const/4 v2, 0x6

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v9

    .line 281
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->cycle()Z

    move-result v2

    if-eqz v2, :cond_152

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycleOk:Z

    if-eqz v2, :cond_152

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v2, :cond_152

    if-lez v8, :cond_152

    if-lez v9, :cond_152

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_152

    const/4 v2, 0x1

    move v3, v2

    .line 282
    :goto_103
    if-eqz v3, :cond_155

    invoke-virtual {p0, v8, v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycleT(II)[I

    move-result-object v2

    .line 283
    :goto_109
    iget-boolean v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v8, :cond_12f

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    invoke-static {v2, v8}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v8

    if-nez v8, :cond_12f

    if-nez v3, :cond_121

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    sget-object v9, Lcom/isaigu/gymapp/bodytech/BtTranslator;->PLAIN_T:[I

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v8

    if-nez v8, :cond_12f

    .line 285
    :cond_121
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 286
    iput-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    .line 287
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 288
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 289
    const/4 v2, 0x0

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    .line 291
    :cond_12f
    if-eqz v3, :cond_15d

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v2, :cond_15d

    if-nez v4, :cond_15d

    .line 293
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    .line 294
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_158

    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J
    :try_end_145
    .catchall {:try_start_94 .. :try_end_145} :catchall_147

    goto/16 :goto_8e

    .line 245
    :catchall_147
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    :cond_14a
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_b8

    .line 275
    :cond_14e
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_be

    .line 281
    :cond_152
    const/4 v2, 0x0

    move v3, v2

    goto :goto_103

    .line 282
    :cond_155
    :try_start_155
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtTranslator;->PLAIN_T:[I

    goto :goto_109

    .line 295
    :cond_158
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 298
    :cond_15d
    if-eqz v3, :cond_19e

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v2, :cond_19e

    if-eqz v4, :cond_19e

    .line 299
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 300
    const/16 v2, 0x32

    if-ge v1, v2, :cond_197

    const/16 v1, 0x32

    :cond_16d
    :goto_16d
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 301
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 302
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18c

    .line 305
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V

    .line 306
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v1, :cond_189

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_189
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 309
    :cond_18c
    const/4 v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    .line 310
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 311
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 300
    :cond_197
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_16d

    const/16 v1, 0x1ff

    goto :goto_16d

    .line 314
    :cond_19e
    if-eqz v4, :cond_1ca

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    :goto_1a2
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    .line 315
    if-eqz v5, :cond_1a8

    if-gtz v7, :cond_1cc

    :cond_1a8
    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v2, :cond_1cc

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v2, :cond_1cc

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v2, :cond_1cc

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v2, :cond_1cc

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->hold()Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 317
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->quiet(Ljava/util/List;)V

    .line 318
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    goto/16 :goto_8e

    .line 314
    :cond_1ca
    const/4 v2, 0x0

    goto :goto_1a2

    .line 319
    :cond_1cc
    if-eqz v5, :cond_1d0

    if-gtz v7, :cond_1d5

    .line 320
    :cond_1d0
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 321
    :cond_1d5
    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-nez v2, :cond_1ef

    .line 323
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 324
    const/16 v2, 0x32

    if-ge v1, v2, :cond_1e8

    const/16 v1, 0x32

    :cond_1e1
    :goto_1e1
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 325
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 324
    :cond_1e8
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_1e1

    const/16 v1, 0x1ff

    goto :goto_1e1

    .line 326
    :cond_1ef
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_240

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->gate()Z

    move-result v2

    if-eqz v2, :cond_240

    const/16 v2, 0xc

    if-gt v7, v2, :cond_240

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v2, :cond_240

    .line 328
    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    if-eqz v2, :cond_20a

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateHz:I

    if-eq v2, v7, :cond_237

    :cond_20a
    const/4 v2, 0x1

    :goto_20b
    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateFresh:Z

    .line 329
    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateFresh:Z

    if-eqz v2, :cond_217

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateGen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateGen:I

    .line 330
    :cond_217
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    .line 331
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateHz:I

    .line 332
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mainHz:I

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 333
    const/16 v2, 0x32

    if-ge v1, v2, :cond_239

    const/16 v1, 0x32

    :cond_226
    :goto_226
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 334
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 335
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 336
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 328
    :cond_237
    const/4 v2, 0x0

    goto :goto_20b

    .line 333
    :cond_239
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_226

    const/16 v1, 0x1ff

    goto :goto_226

    .line 338
    :cond_240
    iget-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    if-eqz v2, :cond_24a

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateGen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateGen:I

    .line 339
    :cond_24a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    .line 340
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 341
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_256

    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->mainHz:I

    .line 342
    :cond_256
    const/16 v2, 0x32

    if-ge v1, v2, :cond_26d

    const/16 v1, 0x32

    :cond_25c
    :goto_25c
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 345
    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->keepMs([BI)J

    move-result-wide v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 346
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 347
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 342
    :cond_26d
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_25c

    const/16 v1, 0x1ff

    goto :goto_25c

    .line 349
    :cond_274
    const/16 v1, 0xf1

    if-ne p1, v1, :cond_27d

    .line 350
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    goto/16 :goto_8e

    .line 351
    :cond_27d
    const/16 v1, 0xf2

    if-ne p1, v1, :cond_289

    .line 352
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 353
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    goto/16 :goto_8e

    .line 354
    :cond_289
    const/4 v1, 0x5

    if-ne p1, v1, :cond_8e

    .line 355
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batterySync()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_293
    .catchall {:try_start_155 .. :try_end_293} :catchall_147

    goto/16 :goto_8e
.end method

.method public declared-synchronized cycle(IIZ)V
    .registers 6

    .prologue
    .line 136
    monitor-enter p0

    const/4 v0, 0x0

    const/16 v1, 0xbb8

    :try_start_4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycUp:I

    .line 137
    const/4 v0, 0x0

    const/16 v1, 0xbb8

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycDown:I

    .line 138
    iput-boolean p3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycleOk:Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1f

    .line 139
    monitor-exit p0

    return-void

    .line 136
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cycleNow()[I
    .registers 2

    .prologue
    .line 167
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

    .line 172
    mul-int/lit16 v2, p1, 0x3e8

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycUp:I

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->cycDown:I

    .line 173
    add-int v3, v1, v0

    if-le v3, v2, :cond_15

    .line 174
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 175
    sub-int v0, v2, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 177
    :cond_15
    const/16 v3, 0xa

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 178
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
    .line 215
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideMask:I

    .line 216
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I

    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1f

    .line 223
    monitor-exit p0

    return-void

    .line 215
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gate()[I
    .registers 4

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateGen:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateHz:I

    aput v2, v0, v1
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1e

    :goto_1a
    monitor-exit p0

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1a

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gateOff(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateGen:I

    if-ne p1, v1, :cond_12

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1f

    if-nez v1, :cond_14

    .line 162
    :cond_12
    :goto_12
    monitor-exit p0

    return-object v0

    .line 160
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1f

    goto :goto_12

    .line 158
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gateOn(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 148
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gating:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateGen:I

    if-ne p1, v1, :cond_1a

    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateMask:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_2d

    if-nez v1, :cond_1c

    .line 153
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-object v0

    .line 150
    :cond_1c
    :try_start_1c
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateMask:I

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->gateMask:I

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2d

    goto :goto_1a

    .line 148
    :catchall_2d
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
    .line 540
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 541
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_13

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 542
    :cond_13
    monitor-exit p0

    return-object v0

    .line 540
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOn()Z
    .registers 2

    .prologue
    .line 210
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

    .line 384
    monitor-enter p0

    if-eqz p1, :cond_b

    if-ltz p2, :cond_b

    :try_start_8
    array-length v0, p1
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_55

    if-lt p2, v0, :cond_d

    .line 395
    :cond_b
    :goto_b
    monitor-exit p0

    return v1

    .line 385
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->legSliders()[I

    move-result-object v5

    .line 387
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

    .line 388
    :cond_22
    if-nez v4, :cond_27

    aget v1, p1, p2

    goto :goto_b

    .line 389
    :cond_27
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    if-nez v0, :cond_41

    .line 391
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

    .line 392
    goto :goto_b

    .line 394
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

    .line 395
    if-ltz v0, :cond_b

    if-le v0, v2, :cond_53

    move v1, v2

    goto :goto_b

    :cond_53
    move v1, v0

    goto :goto_b

    .line 384
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lost(I)V
    .registers 4

    .prologue
    .line 191
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

    .line 192
    :cond_d
    monitor-exit p0

    return-void

    .line 191
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized phase(I)V
    .registers 3

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 132
    monitor-exit p0

    return-void

    .line 131
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized phaseNow()I
    .registers 2

    .prologue
    .line 183
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
    .line 474
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_123

    move-result v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    if-nez p2, :cond_13

    :cond_10
    move-object v0, v1

    .line 520
    :goto_11
    monitor-exit p0

    return-object v0

    .line 476
    :cond_13
    const/4 v2, 0x0

    .line 477
    const/4 v0, 0x1

    :goto_15
    const/16 v3, 0x8

    if-gt v0, v3, :cond_126

    .line 478
    :try_start_19
    array-length v3, p1

    if-ge v0, v3, :cond_2c

    aget v3, p1, v0

    if-lez v3, :cond_2c

    move v4, v0

    .line 483
    :goto_21
    if-nez v4, :cond_2f

    .line 484
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_2a

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    :cond_2a
    move-object v0, v1

    .line 485
    goto :goto_11

    .line 477
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 487
    :cond_2f
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtTranslator;->PLAIN_T:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 489
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->PLAIN_T:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->progT:[I

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 492
    :cond_46
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 493
    const/4 v0, 0x0

    .line 494
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

    .line 495
    :cond_5e
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-eqz v2, :cond_6d

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-ne v2, v0, :cond_6a

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    if-eq p4, v2, :cond_6d

    :cond_6a
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 496
    :cond_6d
    const/4 v2, 0x1

    move v3, v2

    :goto_6f
    const/16 v2, 0x8

    if-gt v3, v2, :cond_a9

    .line 497
    array-length v2, p1

    if-ge v3, v2, :cond_9d

    aget v2, p1, v3

    .line 498
    :goto_78
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    if-gez v2, :cond_9f

    const/4 v2, 0x0

    :cond_7d
    :goto_7d
    aput v2, v5, v3

    .line 499
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

    .line 500
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v2, v2, v3

    if-lez v2, :cond_99

    invoke-direct {p0, v1, v3, p4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 496
    :cond_99
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6f

    .line 497
    :cond_9d
    const/4 v2, 0x0

    goto :goto_78

    .line 498
    :cond_9f
    const/16 v6, 0x63

    if-le v2, v6, :cond_7d

    const/16 v2, 0x63

    goto :goto_7d

    .line 499
    :cond_a6
    const/16 v2, 0x55

    goto :goto_8a

    .line 502
    :cond_a9
    if-ltz p4, :cond_b5

    const/4 v2, 0x3

    if-gt p4, v2, :cond_b5

    .line 503
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    .line 504
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    .line 506
    :cond_b5
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 507
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 508
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v0

    .line 509
    const/4 v2, 0x1

    :goto_c4
    const/16 v3, 0x8

    if-gt v2, v3, :cond_e3

    .line 510
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

    .line 509
    :cond_e0
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 512
    :cond_e3
    const/16 v2, 0x32

    if-ge p3, v2, :cond_116

    const/16 v0, 0x32

    :cond_e9
    :goto_e9
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 513
    invoke-static {p5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    .line 514
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v0, :cond_11a

    invoke-static {p6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v0

    :goto_f9
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 515
    const/4 v0, 0x1

    if-ge p7, v0, :cond_11c

    const/4 p7, 0x1

    :cond_ff
    :goto_ff
    iput p7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 516
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 518
    const-wide/16 v2, 0x5dc

    add-long v2, v2, p8

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 519
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_113
    .catchall {:try_start_19 .. :try_end_113} :catchall_123

    move-object v0, v1

    .line 520
    goto/16 :goto_11

    .line 512
    :cond_116
    if-gt p3, v0, :cond_e9

    move v0, p3

    goto :goto_e9

    .line 514
    :cond_11a
    const/4 v0, 0x0

    goto :goto_f9

    .line 515
    :cond_11c
    const/16 v0, 0x1f

    if-le p7, v0, :cond_ff

    const/16 p7, 0x1f

    goto :goto_ff

    .line 474
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
    .line 206
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
    .line 201
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

    .line 230
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 232
    const/4 v2, 0x0

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lastRun:I

    .line 233
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legsOwn:Z

    .line 234
    :goto_10
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->legK:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 235
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

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 237
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    .line 238
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 239
    :cond_3a
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_3f

    .line 240
    monitor-exit p0

    return-object v1

    .line 230
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
    .line 875
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 876
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slideGen:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_f

    .line 878
    :goto_d
    monitor-exit p0

    return-object v0

    .line 877
    :cond_f
    :try_start_f
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->stopSlide(Ljava/util/List;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_d

    .line 875
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takeSlide()[J
    .registers 5

    .prologue
    .line 867
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x0

    .line 870
    :goto_a
    monitor-exit p0

    return-object v0

    .line 868
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

    .line 869
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->slidePending:J
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_25

    goto :goto_a

    .line 867
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
    .line 524
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 526
    :cond_d
    monitor-exit p0

    return-object v0

    .line 524
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
    .line 457
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    .line 458
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const/16 v1, 0x8

    if-le p1, v1, :cond_f

    .line 463
    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    .line 459
    :cond_f
    const/16 v0, 0x9

    :try_start_11
    new-array v1, v0, [I

    .line 460
    const/16 v0, 0x9

    new-array v2, v0, [I

    .line 461
    aput p2, v1, p1

    .line 462
    aput p3, v2, p1

    move-object v0, p0

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    .line 463
    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programOn([I[IIIIIIJ)Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2c

    move-result-object v0

    goto :goto_d

    .line 457
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
    .line 443
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
    .line 448
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
    .line 433
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
    .line 370
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
