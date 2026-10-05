.class public final Lcom/isaigu/gymapp/bodytech/BtTranslator;
.super Ljava/lang/Object;
.source "BtTranslator.java"


# static fields
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

.field public static final TEST_HZ_MAX:I = 0x3e8

.field static final TEST_MAX_PCT:I = 0x63

.field static final TEST_MS:J = 0x5dcL


# instance fields
.field private armed:Z

.field private deadlineMs:J

.field private final devHz:[I

.field private final devInt:[I

.field private devMask:I

.field private final devUs:[I

.field private final devWaveCh:[I

.field private hz:I

.field private on:Z

.field private final parts:[I

.field private phase:I

.field private programmed:Z

.field private testCh:I

.field private testPct:I

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

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    .line 53
    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    .line 57
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    return-void
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 226
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
    const/16 v1, 0x3e8

    const/4 v0, 0x1

    .line 158
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

.method static clampUs(I)I
    .registers 3

    .prologue
    const/16 v1, 0x1ff

    const/16 v0, 0x32

    .line 162
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
    .line 300
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    .line 301
    if-gtz v0, :cond_f

    .line 303
    :cond_c
    :goto_c
    return p2

    .line 300
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 302
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result p2

    goto :goto_c

    .line 303
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
.end method

.method private effUs(II)I
    .registers 5

    .prologue
    .line 307
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(IZ)I

    move-result v0

    .line 308
    if-gtz v0, :cond_f

    .line 310
    :cond_c
    :goto_c
    return p2

    .line 307
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 309
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->unlimited()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result p2

    goto :goto_c

    .line 310
    :cond_1a
    if-ge v0, p2, :cond_c

    move p2, v0

    goto :goto_c
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

    .line 278
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 279
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 280
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_10
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 282
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 283
    return-void
.end method

.method private prepare(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x168

    const/16 v5, 0x55

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    if-eqz v0, :cond_15

    .line 232
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 234
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 236
    :cond_15
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_1a

    .line 264
    :goto_19
    return-void

    .line 237
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit2()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->reset()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 240
    :goto_30
    const/16 v2, 0x8

    if-gt v0, v2, :cond_ba

    .line 241
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const v2, 0x1010101

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNor(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->tPeriod(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const/4 v2, 0x2

    const v3, 0x186a0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const/4 v2, 0x3

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const/4 v2, 0x4

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3IntStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3WidthStep(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v2, v2, v0

    if-lez v2, :cond_a5

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_a5
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 256
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v4, v2, v0

    .line 257
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v5, v2, v0

    .line 258
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v6, v2, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_30

    .line 260
    :cond_ba
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 262
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 263
    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    goto/16 :goto_19
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

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 327
    move v7, v4

    move v6, v5

    .line 328
    :goto_6
    const/16 v0, 0x8

    if-gt v7, v0, :cond_7d

    .line 329
    invoke-direct {p0, v7}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->target(I)I

    move-result v8

    .line 330
    if-lez v8, :cond_8f

    .line 331
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_6d

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 332
    :goto_16
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_74

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 333
    :goto_1c
    if-ge v1, v2, :cond_1f

    move v1, v2

    .line 334
    :cond_1f
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-nez v3, :cond_30

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v9, 0x2

    if-ne v3, v9, :cond_7b

    move v3, v4

    :goto_29
    invoke-static {v7, v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v3

    invoke-direct {p0, p1, v7, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 335
    :cond_30
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v3, v3, v7

    if-eq v3, v0, :cond_41

    .line 336
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v0, v3, v7

    .line 339
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aget v0, v0, v7

    if-eq v0, v1, :cond_52

    .line 340
    invoke-static {v7, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v1, v0, v7

    .line 343
    :cond_52
    add-int/lit8 v0, v7, -0x1

    shl-int v0, v4, v0

    or-int/2addr v0, v6

    .line 345
    :goto_57
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v7

    if-eq v8, v1, :cond_68

    .line 346
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v8, v1, v7

    .line 328
    :cond_68
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto :goto_6

    .line 331
    :cond_6d
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-direct {p0, v7, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effHz(II)I

    move-result v0

    goto :goto_16

    .line 332
    :cond_74
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-direct {p0, v7, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->effUs(II)I

    move-result v1

    goto :goto_1c

    :cond_7b
    move v3, v5

    .line 334
    goto :goto_29

    .line 350
    :cond_7d
    if-eqz v6, :cond_81

    iput-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    .line 351
    :cond_81
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eq v6, v0, :cond_8e

    .line 352
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iput v6, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 355
    :cond_8e
    return-void

    :cond_8f
    move v0, v6

    goto :goto_57
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

    .line 210
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-nez v0, :cond_6

    .line 214
    :goto_5
    return-void

    .line 211
    :cond_6
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->waveFor(IZ)I

    move-result v0

    .line 212
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    invoke-direct {p0, p1, v1, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 213
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

    .line 287
    if-ltz p3, :cond_18

    const/4 v0, 0x3

    if-gt p3, v0, :cond_18

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-eq v0, p3, :cond_17

    .line 289
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aput p3, v0, p2

    .line 296
    :cond_17
    :goto_17
    return-void

    .line 292
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWaveCh:[I

    aget v0, v0, p2

    if-lez v0, :cond_17

    .line 293
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
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

    .line 315
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_10

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-ne p1, v1, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 322
    :cond_f
    :goto_f
    return v0

    .line 316
    :cond_10
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v2

    .line 317
    if-ltz v2, :cond_f

    const/16 v3, 0xa

    if-ge v2, v3, :cond_f

    .line 318
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v3

    .line 319
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v6, :cond_24

    if-eq v3, v5, :cond_f

    .line 320
    :cond_24
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v5, :cond_2a

    if-eq v3, v6, :cond_f

    .line 321
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

    .line 322
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
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCap(IIZ)I

    move-result v0

    return v0
.end method

.method public static testCap(IIZ)I
    .registers 10

    .prologue
    const-wide/16 v0, 0x63

    .line 150
    if-eqz p2, :cond_7

    const/16 v0, 0x63

    .line 154
    :goto_6
    return v0

    .line 151
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 152
    const-wide/16 v4, 0x7788

    .line 153
    cmp-long v6, v2, v4

    if-gtz v6, :cond_20

    .line 154
    :goto_18
    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_6

    .line 153
    :cond_20
    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    goto :goto_18
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

    .line 268
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 269
    const/4 v0, 0x1

    :goto_5
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1d

    .line 270
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1a

    .line 271
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v2, v1, v0

    .line 269
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 275
    :cond_1d
    return-void
.end method


# virtual methods
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

    .line 93
    monitor-enter p0

    :try_start_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_19

    if-eq p1, v3, :cond_19

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 96
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 98
    :cond_19
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 99
    if-ne p1, v4, :cond_2f

    .line 102
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

    .line 103
    :cond_2f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_ae

    .line 104
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v3, 0x2

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v3

    or-int/2addr v0, v3

    .line 105
    const/4 v3, 0x3

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v7

    .line 106
    const/4 v3, 0x4

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v3

    mul-int/lit8 v3, v3, 0x32

    .line 107
    const/16 v8, 0xa

    invoke-static {p2, v8}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v8

    if-ne v8, v4, :cond_5c

    .line 108
    :goto_53
    if-eqz v4, :cond_57

    if-gtz v7, :cond_5e

    .line 109
    :cond_57
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_6c

    .line 133
    :cond_5a
    :goto_5a
    monitor-exit p0

    return-object v6

    :cond_5c
    move v4, v5

    .line 107
    goto :goto_53

    .line 110
    :cond_5e
    :try_start_5e
    iget-boolean v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    if-nez v4, :cond_75

    .line 112
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 113
    if-ge v3, v1, :cond_6f

    :goto_66
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 114
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_6c

    goto :goto_5a

    .line 93
    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_6f
    if-le v3, v2, :cond_73

    move v1, v2

    goto :goto_66

    :cond_73
    move v1, v3

    goto :goto_66

    .line 116
    :cond_75
    :try_start_75
    iput v7, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 117
    if-ge v3, v1, :cond_9f

    :goto_79
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 118
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a5

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    .line 119
    :goto_85
    if-gtz v1, :cond_88

    move v1, v0

    .line 120
    :cond_88
    if-lez v0, :cond_cb

    if-ge v0, v1, :cond_cb

    .line 121
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

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 123
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V

    goto :goto_5a

    .line 117
    :cond_9f
    if-le v3, v2, :cond_a3

    move v1, v2

    goto :goto_79

    :cond_a3
    move v1, v3

    goto :goto_79

    .line 118
    :cond_a5
    const/4 v1, 0x5

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    goto :goto_85

    .line 121
    :cond_ab
    const-wide/16 v0, 0x1b58

    goto :goto_92

    .line 125
    :cond_ae
    const/16 v0, 0xf1

    if-ne p1, v0, :cond_b6

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    goto :goto_5a

    .line 127
    :cond_b6
    const/16 v0, 0xf2

    if-ne p1, v0, :cond_c1

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 129
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    goto :goto_5a

    .line 130
    :cond_c1
    if-ne p1, v3, :cond_5a

    .line 131
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
    .line 70
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 75
    monitor-exit p0

    return-void

    .line 70
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
    .line 218
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_13

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 220
    :cond_13
    monitor-exit p0

    return-object v0

    .line 218
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOn()Z
    .registers 2

    .prologue
    .line 65
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
    .line 61
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 62
    monitor-exit p0

    return-void

    .line 61
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
    .line 82
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->armed:Z

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 85
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->zero(Ljava/util/List;)V

    .line 86
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->used:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 87
    :cond_16
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 88
    monitor-exit p0

    return-object v0

    .line 82
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
    .line 203
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 205
    :cond_d
    monitor-exit p0

    return-object v0

    .line 203
    :catchall_f
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
    .line 177
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
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 182
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_5a

    move-result v2

    if-nez v2, :cond_13

    if-lt p1, v1, :cond_13

    const/16 v2, 0x8

    if-le p1, v2, :cond_15

    .line 199
    :cond_13
    :goto_13
    monitor-exit p0

    return-object v0

    .line 184
    :cond_15
    :try_start_15
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 185
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-ne v2, p1, :cond_24

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    if-eq p5, v2, :cond_27

    :cond_24
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 186
    :cond_27
    invoke-direct {p0, v0, p1, p5}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->sendWave(Ljava/util/List;II)V

    .line 187
    if-ltz p5, :cond_33

    const/4 v2, 0x3

    if-gt p5, v2, :cond_33

    .line 188
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    .line 189
    iput p5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    .line 191
    :cond_33
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 192
    invoke-static {p3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 193
    invoke-static {p4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 194
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-static {v2, v3, p6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCap(IIZ)I

    move-result v2

    .line 195
    if-ge p2, v1, :cond_5d

    move p2, v1

    :cond_4c
    :goto_4c
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 197
    const-wide/16 v2, 0x5dc

    add-long/2addr v2, p7

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 198
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_59
    .catchall {:try_start_15 .. :try_end_59} :catchall_5a

    goto :goto_13

    .line 182
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :cond_5d
    if-le p2, v2, :cond_4c

    move p2, v2

    goto :goto_4c
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
    .line 167
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
    .line 138
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
