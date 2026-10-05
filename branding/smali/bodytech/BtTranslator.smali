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

.field private testOffMs:I

.field private testOnMs:I

.field private testPct:I

.field private testStep:I

.field private unsafe:Z

.field private used:Z

.field private waveCh:I

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

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    .line 58
    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    .line 61
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    .line 62
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    .line 63
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    .line 64
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    .line 65
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    return-void
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 250
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

    .line 166
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

    .line 174
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

    .line 170
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
    .line 327
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    .line 328
    if-gtz v0, :cond_f

    .line 330
    :cond_c
    :goto_c
    return p2

    .line 327
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 329
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result p2

    goto :goto_c

    .line 330
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
.end method

.method private effUs(II)I
    .registers 5

    .prologue
    .line 334
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v0

    .line 335
    if-gtz v0, :cond_f

    .line 337
    :cond_c
    :goto_c
    return p2

    .line 334
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 336
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result p2

    goto :goto_c

    .line 337
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

    .line 161
    const v2, 0x7a120

    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v3

    div-int/2addr v2, v3

    .line 162
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

    .line 305
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 306
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 307
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_10
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 309
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 310
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

    .line 255
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    if-eqz v0, :cond_18

    .line 256
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 258
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 260
    :cond_18
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_1d

    .line 291
    :goto_1c
    return-void

    .line 261
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit2()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->reset()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 264
    :goto_33
    const/16 v2, 0x8

    if-gt v0, v2, :cond_c6

    .line 265
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const v2, 0x1010101

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNor(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->tPeriod(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    const/4 v2, 0x2

    invoke-static {v0, v2, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v2, 0x3

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v2, 0x4

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v2, v2, v0

    if-lez v2, :cond_a5

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_a5
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 280
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v4, v2, v0

    .line 281
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v5, v2, v0

    .line 282
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v6, v2, v0

    .line 283
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aput v7, v2, v0

    .line 284
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aput v4, v2, v0

    .line 285
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v1, v2, v0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_33

    .line 287
    :cond_c6
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 289
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 290
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

    .line 354
    move v7, v4

    move v6, v5

    .line 355
    :goto_7
    const/16 v0, 0x8

    if-gt v7, v0, :cond_e2

    .line 356
    invoke-direct {p0, v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->target(I)I

    move-result v8

    .line 357
    if-lez v8, :cond_f4

    .line 358
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_be

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 359
    :goto_17
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_c6

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 360
    :goto_1d
    if-ge v1, v2, :cond_20

    move v1, v2

    .line 361
    :cond_20
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v3, :cond_30

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v3, v9, :cond_ce

    move v3, v4

    :goto_29
    invoke-static {v7, v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v3

    invoke-direct {p0, p1, v7, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 362
    :cond_30
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v3, v3, v7

    if-eq v3, v0, :cond_41

    .line 363
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v0, v3, v7

    .line 366
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aget v0, v0, v7

    if-eq v0, v1, :cond_56

    .line 367
    const/16 v0, 0x1ff

    if-le v1, v0, :cond_d1

    invoke-static {v7, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->widthRaw(II)[B

    move-result-object v0

    :goto_4f
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v1, v0, v7

    .line 370
    :cond_56
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_d7

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v0, :cond_d7

    move v3, v4

    .line 371
    :goto_5f
    if-eqz v3, :cond_d9

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    move v1, v0

    .line 372
    :goto_64
    if-eqz v3, :cond_de

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 373
    :goto_68
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aget v3, v3, v7

    if-eq v3, v1, :cond_79

    .line 374
    invoke-static {v7, v9, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOn:[I

    aput v1, v3, v7

    .line 377
    :cond_79
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aget v1, v1, v7

    if-eq v1, v0, :cond_8b

    .line 378
    const/4 v1, 0x4

    invoke-static {v7, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devOff:[I

    aput v0, v1, v7

    .line 381
    :cond_8b
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_e0

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 382
    :goto_91
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aget v1, v1, v7

    if-eq v1, v0, :cond_a2

    .line 383
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNorByte(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devStep:[I

    aput v0, v1, v7

    .line 386
    :cond_a2
    add-int/lit8 v0, v7, -0x1

    shl-int v0, v4, v0

    or-int/2addr v0, v6

    .line 388
    :goto_a7
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v7

    if-eq v8, v1, :cond_b8

    .line 389
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v8, v1, v7

    .line 355
    :cond_b8
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto/16 :goto_7

    .line 358
    :cond_be
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-direct {p0, v7, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effHz(II)I

    move-result v0

    goto/16 :goto_17

    .line 359
    :cond_c6
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-direct {p0, v7, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effUs(II)I

    move-result v1

    goto/16 :goto_1d

    :cond_ce
    move v3, v5

    .line 361
    goto/16 :goto_29

    .line 367
    :cond_d1
    invoke-static {v7, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v0

    goto/16 :goto_4f

    :cond_d7
    move v3, v5

    .line 370
    goto :goto_5f

    .line 371
    :cond_d9
    const v0, 0x186a0

    move v1, v0

    goto :goto_64

    :cond_de
    move v0, v5

    .line 372
    goto :goto_68

    :cond_e0
    move v0, v4

    .line 381
    goto :goto_91

    .line 393
    :cond_e2
    if-eqz v6, :cond_e6

    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    .line 394
    :cond_e6
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eq v6, v0, :cond_f3

    .line 395
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iput v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 398
    :cond_f3
    return-void

    :cond_f4
    move v0, v6

    goto :goto_a7
.end method

.method private restoreWave(Ljava/util/List;)V
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

    .line 234
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-nez v0, :cond_6

    .line 238
    :goto_5
    return-void

    .line 235
    :cond_6
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v0

    .line 236
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    invoke-direct {p0, p1, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 237
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    goto :goto_5
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

    .line 314
    if-ltz p3, :cond_18

    const/4 v0, 0x3

    if-gt p3, v0, :cond_18

    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-eq v0, p3, :cond_17

    .line 316
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aput p3, v0, p2

    .line 323
    :cond_17
    :goto_17
    return-void

    .line 319
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-lez v0, :cond_17

    .line 320
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
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

    .line 342
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_10

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-ne p1, v1, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 349
    :cond_f
    :goto_f
    return v0

    .line 343
    :cond_10
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v2

    .line 344
    if-ltz v2, :cond_f

    const/16 v3, 0xa

    if-ge v2, v3, :cond_f

    .line 345
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v3

    .line 346
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v6, :cond_24

    if-eq v3, v5, :cond_f

    .line 347
    :cond_24
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v5, :cond_2a

    if-eq v3, v6, :cond_f

    .line 348
    :cond_2a
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

    .line 349
    if-ltz v2, :cond_f

    if-le v2, v1, :cond_48

    move v0, v1

    goto :goto_f

    :cond_48
    move v0, v2

    goto :goto_f
.end method

.method public static testCap(II)I
    .registers 3

    .prologue
    .line 156
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

    .line 295
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 296
    const/4 v0, 0x1

    :goto_5
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1d

    .line 297
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1a

    .line 298
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v2, v1, v0

    .line 296
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 302
    :cond_1d
    return-void
.end method


# virtual methods
.method public declared-synchronized armed()Z
    .registers 2

    .prologue
    .line 74
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

    .line 106
    monitor-enter p0

    :try_start_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_19

    if-eq p1, v3, :cond_19

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 109
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 111
    :cond_19
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 112
    if-ne p1, v4, :cond_2f

    .line 115
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

    .line 116
    :cond_2f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_ae

    .line 117
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v3, 0x2

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v3

    or-int/2addr v0, v3

    .line 118
    const/4 v3, 0x3

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v7

    .line 119
    const/4 v3, 0x4

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v3

    mul-int/lit8 v3, v3, 0x32

    .line 120
    const/16 v8, 0xa

    invoke-static {p2, v8}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v8

    if-ne v8, v4, :cond_5c

    .line 121
    :goto_53
    if-eqz v4, :cond_57

    if-gtz v7, :cond_5e

    .line 122
    :cond_57
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_6c

    .line 146
    :cond_5a
    :goto_5a
    monitor-exit p0

    return-object v6

    :cond_5c
    move v4, v5

    .line 120
    goto :goto_53

    .line 123
    :cond_5e
    :try_start_5e
    iget-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-nez v4, :cond_75

    .line 125
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 126
    if-ge v3, v1, :cond_6f

    :goto_66
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 127
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_6c

    goto :goto_5a

    .line 106
    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_6f
    if-le v3, v2, :cond_73

    move v1, v2

    goto :goto_66

    :cond_73
    move v1, v3

    goto :goto_66

    .line 129
    :cond_75
    :try_start_75
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 130
    if-ge v3, v1, :cond_9f

    :goto_79
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 131
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a5

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    .line 132
    :goto_85
    if-gtz v1, :cond_88

    move v1, v0

    .line 133
    :cond_88
    if-lez v0, :cond_cb

    if-ge v0, v1, :cond_cb

    .line 134
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

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 136
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V

    goto :goto_5a

    .line 130
    :cond_9f
    if-le v3, v2, :cond_a3

    move v1, v2

    goto :goto_79

    :cond_a3
    move v1, v3

    goto :goto_79

    .line 131
    :cond_a5
    const/4 v1, 0x5

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    goto :goto_85

    .line 134
    :cond_ab
    const-wide/16 v0, 0x1b58

    goto :goto_92

    .line 138
    :cond_ae
    const/16 v0, 0xf1

    if-ne p1, v0, :cond_b6

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    goto :goto_5a

    .line 140
    :cond_b6
    const/16 v0, 0xf2

    if-ne p1, v0, :cond_c1

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 142
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    goto :goto_5a

    .line 143
    :cond_c1
    if-ne p1, v3, :cond_5a

    .line 144
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
    .line 83
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 88
    monitor-exit p0

    return-void

    .line 83
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
    .line 242
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_13

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 244
    :cond_13
    monitor-exit p0

    return-object v0

    .line 242
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOn()Z
    .registers 2

    .prologue
    .line 78
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
    .line 69
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 95
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 98
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    .line 99
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 100
    :cond_16
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 101
    monitor-exit p0

    return-object v0

    .line 95
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
    .line 227
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 229
    :cond_d
    monitor-exit p0

    return-object v0

    .line 227
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized testOn(IIIIIIIIJ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 203
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_71

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    if-lt p1, v1, :cond_13

    const/16 v1, 0x8

    if-le p1, v1, :cond_15

    .line 223
    :cond_13
    :goto_13
    monitor-exit p0

    return-object v0

    .line 205
    :cond_15
    :try_start_15
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 206
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-eqz v1, :cond_27

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-ne v1, p1, :cond_24

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    if-eq p5, v1, :cond_27

    :cond_24
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 207
    :cond_27
    invoke-direct {p0, v0, p1, p5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 208
    if-ltz p5, :cond_33

    const/4 v1, 0x3

    if-gt p5, v1, :cond_33

    .line 209
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    .line 210
    iput p5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    .line 212
    :cond_33
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 213
    invoke-static {p3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 214
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v1

    .line 215
    const/16 v2, 0x32

    if-ge p4, v2, :cond_74

    const/16 p4, 0x32

    :cond_47
    :goto_47
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 216
    invoke-static {p6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    .line 217
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOnMs:I

    if-lez v1, :cond_78

    invoke-static {p7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampMs(I)I

    move-result v1

    :goto_57
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testOffMs:I

    .line 218
    const/4 v1, 0x1

    if-ge p8, v1, :cond_7a

    const/4 p8, 0x1

    :cond_5d
    :goto_5d
    iput p8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testStep:I

    .line 219
    const/4 v1, 0x1

    if-ge p2, v1, :cond_81

    const/4 p2, 0x1

    :cond_63
    :goto_63
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 221
    const-wide/16 v2, 0x5dc

    add-long/2addr v2, p9

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 222
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_70
    .catchall {:try_start_15 .. :try_end_70} :catchall_71

    goto :goto_13

    .line 203
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    :cond_74
    if-le p4, v1, :cond_47

    move p4, v1

    goto :goto_47

    .line 217
    :cond_78
    const/4 v1, 0x0

    goto :goto_57

    .line 218
    :cond_7a
    const/16 v1, 0x1f

    if-le p8, v1, :cond_5d

    const/16 p8, 0x1f

    goto :goto_5d

    .line 219
    :cond_81
    const/16 v1, 0x63

    if-le p2, v1, :cond_63

    const/16 p2, 0x63

    goto :goto_63
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
    .line 189
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
    .line 194
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
    .line 179
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
    .line 151
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
