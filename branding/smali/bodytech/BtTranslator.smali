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

.field private on:Z

.field private final parts:[I

.field private phase:I

.field private programmed:Z

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
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x9

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    .line 31
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    .line 32
    const/16 v0, 0x55

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 36
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 47
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    .line 48
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    .line 49
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    .line 60
    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 62
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    .line 63
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    .line 64
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    .line 65
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    .line 66
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    .line 67
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    return-void
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 291
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

.method static clampHz(I)I
    .registers 3

    .prologue
    const/16 v1, 0x2710

    const/4 v0, 0x1

    .line 168
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

    .line 176
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

    .line 172
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
    .line 368
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    .line 369
    if-gtz v0, :cond_f

    .line 371
    :cond_c
    :goto_c
    return p2

    .line 368
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 370
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result p2

    goto :goto_c

    .line 371
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
.end method

.method private effUs(II)I
    .registers 5

    .prologue
    .line 375
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v0

    .line 376
    if-gtz v0, :cond_f

    .line 378
    :cond_c
    :goto_c
    return p2

    .line 375
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 377
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result p2

    goto :goto_c

    .line 378
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

    .line 163
    const v2, 0x7a120

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v3

    div-int/2addr v2, v3

    .line 164
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

    .line 346
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 347
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 348
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_10
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 350
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 351
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

    .line 296
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    if-eqz v0, :cond_18

    .line 297
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 299
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 301
    :cond_18
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_1d

    .line 332
    :goto_1c
    return-void

    .line 302
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit2()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->reset()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 305
    :goto_33
    const/16 v2, 0x8

    if-gt v0, v2, :cond_c6

    .line 306
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    const v2, 0x1010101

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNor(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->tPeriod(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    const/4 v2, 0x2

    invoke-static {v0, v2, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const/4 v2, 0x3

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    const/4 v2, 0x4

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v2, v2, v0

    if-lez v2, :cond_a5

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_a5
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 321
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v4, v2, v0

    .line 322
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v5, v2, v0

    .line 323
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v6, v2, v0

    .line 324
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aput v7, v2, v0

    .line 325
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aput v4, v2, v0

    .line 326
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v1, v2, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_33

    .line 328
    :cond_c6
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 330
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 331
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    goto/16 :goto_1c
.end method

.method private reconcile(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x32

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 395
    move v7, v4

    move v6, v5

    .line 396
    :goto_7
    const/16 v0, 0x8

    if-gt v7, v0, :cond_e4

    .line 397
    invoke-direct {p0, v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->target(I)I

    move-result v8

    .line 398
    if-lez v8, :cond_f6

    .line 399
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v0, v0, v7

    .line 400
    :goto_19
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_c8

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 401
    :goto_1f
    if-ge v1, v2, :cond_22

    move v1, v2

    .line 402
    :cond_22
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v3, :cond_32

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v3, v9, :cond_d0

    move v3, v4

    :goto_2b
    invoke-static {v7, v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v3

    invoke-direct {p0, p1, v7, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 403
    :cond_32
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v3, v3, v7

    if-eq v3, v0, :cond_43

    .line 404
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v0, v3, v7

    .line 407
    :cond_43
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aget v0, v0, v7

    if-eq v0, v1, :cond_58

    .line 408
    const/16 v0, 0x1ff

    if-le v1, v0, :cond_d3

    invoke-static {v7, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->widthRaw(II)[B

    move-result-object v0

    :goto_51
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v1, v0, v7

    .line 411
    :cond_58
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_d9

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v0, :cond_d9

    move v3, v4

    .line 412
    :goto_61
    if-eqz v3, :cond_db

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    move v1, v0

    .line 413
    :goto_66
    if-eqz v3, :cond_e0

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 414
    :goto_6a
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aget v3, v3, v7

    if-eq v3, v1, :cond_7b

    .line 415
    invoke-static {v7, v9, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aput v1, v3, v7

    .line 418
    :cond_7b
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aget v1, v1, v7

    if-eq v1, v0, :cond_8d

    .line 419
    const/4 v1, 0x4

    invoke-static {v7, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aput v0, v1, v7

    .line 422
    :cond_8d
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_e2

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 423
    :goto_93
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aget v1, v1, v7

    if-eq v1, v0, :cond_a4

    .line 424
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNorByte(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v0, v1, v7

    .line 427
    :cond_a4
    add-int/lit8 v0, v7, -0x1

    shl-int v0, v4, v0

    or-int/2addr v0, v6

    .line 429
    :goto_a9
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v7

    if-eq v8, v1, :cond_ba

    .line 430
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v8, v1, v7

    .line 396
    :cond_ba
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto/16 :goto_7

    .line 399
    :cond_c0
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-direct {p0, v7, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effHz(II)I

    move-result v0

    goto/16 :goto_19

    .line 400
    :cond_c8
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-direct {p0, v7, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effUs(II)I

    move-result v1

    goto/16 :goto_1f

    :cond_d0
    move v3, v5

    .line 402
    goto/16 :goto_2b

    .line 408
    :cond_d3
    invoke-static {v7, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v0

    goto/16 :goto_51

    :cond_d9
    move v3, v5

    .line 411
    goto :goto_61

    .line 412
    :cond_db
    const v0, 0x186a0

    move v1, v0

    goto :goto_66

    :cond_e0
    move v0, v5

    .line 413
    goto :goto_6a

    :cond_e2
    move v0, v4

    .line 422
    goto :goto_93

    .line 434
    :cond_e4
    if-eqz v6, :cond_e8

    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    .line 435
    :cond_e8
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eq v6, v0, :cond_f5

    .line 436
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iput v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 439
    :cond_f5
    return-void

    :cond_f6
    move v0, v6

    goto :goto_a9
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

    .line 274
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-nez v0, :cond_7

    .line 279
    :goto_6
    return-void

    :cond_7
    move v0, v1

    .line 275
    :goto_8
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1f

    .line 276
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    add-int/lit8 v3, v0, -0x1

    shl-int v3, v1, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 275
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 278
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

    .line 355
    if-ltz p3, :cond_18

    const/4 v0, 0x3

    if-gt p3, v0, :cond_18

    .line 356
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-eq v0, p3, :cond_17

    .line 357
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aput p3, v0, p2

    .line 364
    :cond_17
    :goto_17
    return-void

    .line 360
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-lez v0, :cond_17

    .line 361
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
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

    .line 383
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v0, v0, p1

    .line 390
    :cond_d
    :goto_d
    return v0

    .line 384
    :cond_e
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v2

    .line 385
    if-ltz v2, :cond_d

    const/16 v3, 0xa

    if-ge v2, v3, :cond_d

    .line 386
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v3

    .line 387
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v6, :cond_22

    if-eq v3, v5, :cond_d

    .line 388
    :cond_22
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v5, :cond_28

    if-eq v3, v6, :cond_d

    .line 389
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

    .line 390
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
    .line 158
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

    .line 336
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 337
    const/4 v0, 0x1

    :goto_5
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1d

    .line 338
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1a

    .line 339
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v2, v1, v0

    .line 337
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 343
    :cond_1d
    return-void
.end method


# virtual methods
.method public declared-synchronized armed()Z
    .registers 2

    .prologue
    .line 76
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
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/16 v2, 0x1ff

    const/16 v1, 0x32

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 108
    monitor-enter p0

    :try_start_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_19

    if-eq p1, v3, :cond_19

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 111
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 113
    :cond_19
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 114
    if-ne p1, v4, :cond_2f

    .line 117
    :goto_1e
    const/16 v0, 0xa

    if-ge v5, v0, :cond_5a

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    add-int/lit8 v1, v5, 0x1

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    aput v1, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 118
    :cond_2f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_ae

    .line 119
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v3, 0x2

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v3

    or-int/2addr v0, v3

    .line 120
    const/4 v3, 0x3

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v7

    .line 121
    const/4 v3, 0x4

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v3

    mul-int/lit8 v3, v3, 0x32

    .line 122
    const/16 v8, 0xa

    invoke-static {p2, v8}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v8

    if-ne v8, v4, :cond_5c

    .line 123
    :goto_53
    if-eqz v4, :cond_57

    if-gtz v7, :cond_5e

    .line 124
    :cond_57
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_6c

    .line 148
    :cond_5a
    :goto_5a
    monitor-exit p0

    return-object v6

    :cond_5c
    move v4, v5

    .line 122
    goto :goto_53

    .line 125
    :cond_5e
    :try_start_5e
    iget-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-nez v4, :cond_75

    .line 127
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 128
    if-ge v3, v1, :cond_6f

    :goto_66
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 129
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_6c

    goto :goto_5a

    .line 108
    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :cond_6f
    if-le v3, v2, :cond_73

    move v1, v2

    goto :goto_66

    :cond_73
    move v1, v3

    goto :goto_66

    .line 131
    :cond_75
    :try_start_75
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 132
    if-ge v3, v1, :cond_9f

    :goto_79
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 133
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a5

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    .line 134
    :goto_85
    if-gtz v1, :cond_88

    move v1, v0

    .line 135
    :cond_88
    if-lez v0, :cond_cb

    if-ge v0, v1, :cond_cb

    .line 136
    :goto_8c
    if-lez v0, :cond_ab

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_92
    add-long/2addr v0, p3

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 138
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V

    goto :goto_5a

    .line 132
    :cond_9f
    if-le v3, v2, :cond_a3

    move v1, v2

    goto :goto_79

    :cond_a3
    move v1, v3

    goto :goto_79

    .line 133
    :cond_a5
    const/4 v1, 0x5

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    goto :goto_85

    .line 136
    :cond_ab
    const-wide/16 v0, 0x1b58

    goto :goto_92

    .line 140
    :cond_ae
    const/16 v0, 0xf1

    if-ne p1, v0, :cond_b6

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    goto :goto_5a

    .line 142
    :cond_b6
    const/16 v0, 0xf2

    if-ne p1, v0, :cond_c1

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 144
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    goto :goto_5a

    .line 145
    :cond_c1
    if-ne p1, v3, :cond_5a

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batterySync()[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ca
    .catchall {:try_start_75 .. :try_end_ca} :catchall_6c

    goto :goto_5a

    :cond_cb
    move v0, v1

    goto :goto_8c
.end method

.method public declared-synchronized forget()V
    .registers 2

    .prologue
    .line 85
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 90
    monitor-exit p0

    return-void

    .line 85
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
    .line 283
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_13

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 285
    :cond_13
    monitor-exit p0

    return-object v0

    .line 283
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOn()Z
    .registers 2

    .prologue
    .line 80
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

.method public declared-synchronized phase(I)V
    .registers 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 72
    monitor-exit p0

    return-void

    .line 71
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
    .line 222
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10c

    move-result v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    if-nez p2, :cond_13

    :cond_10
    move-object v0, v1

    .line 263
    :goto_11
    monitor-exit p0

    return-object v0

    .line 224
    :cond_13
    const/4 v2, 0x0

    .line 225
    const/4 v0, 0x1

    :goto_15
    const/16 v3, 0x8

    if-gt v0, v3, :cond_10f

    .line 226
    :try_start_19
    array-length v3, p1

    if-ge v0, v3, :cond_2c

    aget v3, p1, v0

    if-lez v3, :cond_2c

    move v4, v0

    .line 231
    :goto_21
    if-nez v4, :cond_2f

    .line 232
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_2a

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    :cond_2a
    move-object v0, v1

    .line 233
    goto :goto_11

    .line 225
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 235
    :cond_2f
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 236
    const/4 v0, 0x0

    .line 237
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

    .line 238
    :cond_47
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-eqz v2, :cond_56

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    if-ne v2, v0, :cond_53

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    if-eq p4, v2, :cond_56

    :cond_53
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 239
    :cond_56
    const/4 v2, 0x1

    move v3, v2

    :goto_58
    const/16 v2, 0x8

    if-gt v3, v2, :cond_92

    .line 240
    array-length v2, p1

    if-ge v3, v2, :cond_86

    aget v2, p1, v3

    .line 241
    :goto_61
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    if-gez v2, :cond_88

    const/4 v2, 0x0

    :cond_66
    :goto_66
    aput v2, v5, v3

    .line 242
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

    .line 243
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v2, v2, v3

    if-lez v2, :cond_82

    invoke-direct {p0, v1, v3, p4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 239
    :cond_82
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_58

    .line 240
    :cond_86
    const/4 v2, 0x0

    goto :goto_61

    .line 241
    :cond_88
    const/16 v6, 0x63

    if-le v2, v6, :cond_66

    const/16 v2, 0x63

    goto :goto_66

    .line 242
    :cond_8f
    const/16 v2, 0x55

    goto :goto_73

    .line 245
    :cond_92
    if-ltz p4, :cond_9e

    const/4 v2, 0x3

    if-gt p4, v2, :cond_9e

    .line 246
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveMask:I

    .line 247
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    .line 249
    :cond_9e
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testHzs:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 251
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v0

    .line 252
    const/4 v2, 0x1

    :goto_ad
    const/16 v3, 0x8

    if-gt v2, v3, :cond_cc

    .line 253
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

    .line 252
    :cond_c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    .line 255
    :cond_cc
    const/16 v2, 0x32

    if-ge p3, v2, :cond_ff

    const/16 v0, 0x32

    :cond_d2
    :goto_d2
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 256
    invoke-static {p5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    .line 257
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v0, :cond_103

    invoke-static {p6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v0

    :goto_e2
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 258
    const/4 v0, 0x1

    if-ge p7, v0, :cond_105

    const/4 p7, 0x1

    :cond_e8
    :goto_e8
    iput p7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 259
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPcts:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 261
    const-wide/16 v2, 0x5dc

    add-long v2, v2, p8

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 262
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_fc
    .catchall {:try_start_19 .. :try_end_fc} :catchall_10c

    move-object v0, v1

    .line 263
    goto/16 :goto_11

    .line 255
    :cond_ff
    if-gt p3, v0, :cond_d2

    move v0, p3

    goto :goto_d2

    .line 257
    :cond_103
    const/4 v0, 0x0

    goto :goto_e2

    .line 258
    :cond_105
    const/16 v0, 0x1f

    if-le p7, v0, :cond_e8

    const/16 p7, 0x1f

    goto :goto_e8

    .line 222
    :catchall_10c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10f
    move v4, v2

    goto/16 :goto_21
.end method

.method public declared-synchronized reset()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 100
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    .line 101
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 102
    :cond_16
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 103
    monitor-exit p0

    return-object v0

    .line 97
    :catchall_1b
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
    .line 267
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 269
    :cond_d
    monitor-exit p0

    return-object v0

    .line 267
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
    .line 205
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    .line 206
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const/16 v1, 0x8

    if-le p1, v1, :cond_f

    .line 211
    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    .line 207
    :cond_f
    const/16 v0, 0x9

    :try_start_11
    new-array v1, v0, [I

    .line 208
    const/16 v0, 0x9

    new-array v2, v0, [I

    .line 209
    aput p2, v1, p1

    .line 210
    aput p3, v2, p1

    move-object v0, p0

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    .line 211
    invoke-virtual/range {v0 .. v9}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programOn([I[IIIIIIJ)Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2c

    move-result-object v0

    goto :goto_d

    .line 205
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
    .line 191
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
    .line 196
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
    .line 181
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
    .line 153
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
