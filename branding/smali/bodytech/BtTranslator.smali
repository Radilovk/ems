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
.field private deadlineMs:J

.field private final devHz:[I

.field private final devInt:[I

.field private devMask:I

.field private final devUs:[I

.field private devWave:I

.field private hz:I

.field private on:Z

.field private final parts:[I

.field private phase:I

.field private programmed:Z

.field private testCh:I

.field private testPct:I

.field private unsafe:Z

.field private waveCh:I

.field private final waveTouched:[Z

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
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveTouched:[Z

    .line 46
    const/4 v0, -0x2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWave:I

    .line 47
    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 49
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    .line 50
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    .line 51
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    return-void
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 199
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

    .line 129
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

    .line 133
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

.method private static lower(II)I
    .registers 2

    .prologue
    .line 252
    if-lez p0, :cond_5

    if-ge p0, p1, :cond_5

    :goto_4
    return p0

    :cond_5
    move p0, p1

    goto :goto_4
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

    .line 243
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 244
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 245
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_10
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 247
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 248
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
    const/16 v7, 0x168

    const/16 v6, 0x55

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 204
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    if-eqz v0, :cond_15

    .line 205
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 207
    iput-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 209
    :cond_15
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-nez v0, :cond_27

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave()I

    move-result v0

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWave:I

    if-eq v0, v2, :cond_27

    iput-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 210
    :cond_27
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_2c

    .line 240
    :goto_2b
    return-void

    .line 211
    :cond_2c
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit2()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->reset()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave()I

    move-result v2

    move v0, v1

    .line 215
    :goto_46
    const/16 v3, 0x8

    if-gt v0, v3, :cond_d9

    .line 216
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    const v3, 0x1010101

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNor(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->tPeriod(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v3, 0x2

    const v4, 0x186a0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const/4 v3, 0x3

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const/4 v3, 0x4

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1IntStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1WidthStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3IntStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3WidthStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    if-ltz v2, :cond_cb

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_b7
    :goto_b7
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveTouched:[Z

    aput-boolean v5, v3, v0

    .line 232
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v5, v3, v0

    .line 233
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v6, v3, v0

    .line 234
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v7, v3, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_46

    .line 230
    :cond_cb
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveTouched:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_b7

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 236
    :cond_d9
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 238
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWave:I

    .line 239
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    goto/16 :goto_2b
.end method

.method private reconcile(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x32

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 269
    move v6, v1

    move v5, v2

    .line 270
    :goto_6
    const/16 v0, 0x8

    if-gt v6, v0, :cond_7a

    .line 271
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->target(I)I

    move-result v7

    .line 272
    if-lez v7, :cond_88

    .line 273
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 274
    :goto_16
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v3, :cond_6f

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 275
    :goto_1c
    if-ge v3, v4, :cond_1f

    move v3, v4

    .line 276
    :cond_1f
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v8, v8, v6

    if-eq v8, v0, :cond_30

    .line 277
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v0, v8, v6

    .line 280
    :cond_30
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aget v0, v0, v6

    if-eq v0, v3, :cond_41

    .line 281
    invoke-static {v6, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v3, v0, v6

    .line 284
    :cond_41
    add-int/lit8 v0, v6, -0x1

    shl-int v0, v1, v0

    or-int/2addr v0, v5

    .line 286
    :goto_46
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v3, v3, v6

    if-eq v7, v3, :cond_57

    .line 287
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v7, v3, v6

    .line 270
    :cond_57
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v5, v0

    goto :goto_6

    .line 273
    :cond_5c
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6d

    move v0, v1

    :goto_62
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lower(II)I

    move-result v0

    goto :goto_16

    :cond_6d
    move v0, v2

    goto :goto_62

    .line 274
    :cond_6f
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(I)I

    move-result v3

    iget v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lower(II)I

    move-result v3

    goto :goto_1c

    .line 291
    :cond_7a
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eq v5, v0, :cond_87

    .line 292
    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 295
    :cond_87
    return-void

    :cond_88
    move v0, v5

    goto :goto_46
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
    const/4 v1, 0x0

    .line 182
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-nez v0, :cond_6

    .line 187
    :goto_5
    return-void

    .line 183
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave()I

    move-result v0

    .line 184
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-ltz v0, :cond_1e

    :goto_e
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveTouched:[Z

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    aput-boolean v1, v0, v2

    .line 186
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    goto :goto_5

    :cond_1e
    move v0, v1

    .line 184
    goto :goto_e
.end method

.method private target(I)I
    .registers 9

    .prologue
    const/16 v1, 0x63

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 257
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_10

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-ne p1, v1, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 264
    :cond_f
    :goto_f
    return v0

    .line 258
    :cond_10
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v2

    .line 259
    if-ltz v2, :cond_f

    const/16 v3, 0xa

    if-ge v2, v3, :cond_f

    .line 260
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v3

    .line 261
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v6, :cond_24

    if-eq v3, v5, :cond_f

    .line 262
    :cond_24
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v5, :cond_2a

    if-eq v3, v6, :cond_f

    .line 263
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

    .line 264
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
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCap(IIZ)I

    move-result v0

    return v0
.end method

.method public static testCap(IIZ)I
    .registers 10

    .prologue
    const-wide/16 v0, 0x63

    .line 121
    if-eqz p2, :cond_7

    const/16 v0, 0x63

    .line 125
    :goto_6
    return v0

    .line 122
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 123
    const-wide/16 v4, 0x7788

    .line 124
    cmp-long v6, v2, v4

    if-gtz v6, :cond_20

    .line 125
    :goto_18
    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_6

    .line 124
    :cond_20
    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    goto :goto_18
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
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    monitor-enter p0

    :try_start_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_17

    if-eq p1, v1, :cond_17

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 75
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 77
    :cond_17
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 78
    if-ne p1, v2, :cond_2d

    .line 81
    :goto_1c
    const/16 v0, 0xa

    if-ge v3, v0, :cond_57

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    add-int/lit8 v1, v3, 0x1

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 82
    :cond_2d
    if-ne p1, v5, :cond_9b

    .line 83
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    or-int/2addr v0, v1

    .line 84
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v5

    .line 85
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    .line 86
    const/16 v6, 0xa

    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v6

    if-ne v6, v2, :cond_59

    .line 87
    :goto_50
    if-eqz v2, :cond_54

    if-gtz v5, :cond_5b

    .line 88
    :cond_54
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_88

    .line 104
    :cond_57
    :goto_57
    monitor-exit p0

    return-object v4

    :cond_59
    move v2, v3

    .line 86
    goto :goto_50

    .line 90
    :cond_5b
    :try_start_5b
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 91
    const/16 v2, 0x32

    if-ge v1, v2, :cond_8b

    const/16 v1, 0x32

    :cond_63
    :goto_63
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 92
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v1, v7, :cond_92

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    .line 93
    :goto_6e
    if-gtz v1, :cond_71

    move v1, v0

    .line 94
    :cond_71
    if-lez v0, :cond_ad

    if-ge v0, v1, :cond_ad

    .line 95
    :goto_75
    if-lez v0, :cond_98

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_7b
    add-long/2addr v0, p3

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 97
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_87
    .catchall {:try_start_5b .. :try_end_87} :catchall_88

    goto :goto_57

    .line 72
    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_8b
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_63

    const/16 v1, 0x1ff

    goto :goto_63

    .line 92
    :cond_92
    const/4 v1, 0x5

    :try_start_93
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    goto :goto_6e

    .line 95
    :cond_98
    const-wide/16 v0, 0x1b58

    goto :goto_7b

    .line 99
    :cond_9b
    const/16 v0, 0xf2

    if-ne p1, v0, :cond_a3

    .line 100
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    goto :goto_57

    .line 101
    :cond_a3
    if-ne p1, v1, :cond_57

    .line 102
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batterySync()[B

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catchall {:try_start_93 .. :try_end_ac} :catchall_88

    goto :goto_57

    :cond_ad
    move v0, v1

    goto :goto_75
.end method

.method public declared-synchronized forget()V
    .registers 2

    .prologue
    .line 64
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 68
    monitor-exit p0

    return-void

    .line 64
    :catchall_f
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
    .line 191
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_13

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 193
    :cond_13
    monitor-exit p0

    return-object v0

    .line 191
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOn()Z
    .registers 2

    .prologue
    .line 59
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
    .line 55
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 56
    monitor-exit p0

    return-void

    .line 55
    :catchall_5
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
    .line 175
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 177
    :cond_d
    monitor-exit p0

    return-object v0

    .line 175
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
    .line 148
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

    .line 153
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_67

    move-result v2

    if-nez v2, :cond_13

    if-lt p1, v1, :cond_13

    const/16 v2, 0x8

    if-le p1, v2, :cond_15

    .line 171
    :cond_13
    :goto_13
    monitor-exit p0

    return-object v0

    .line 155
    :cond_15
    :try_start_15
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 156
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-ne v2, p1, :cond_24

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    if-eq p5, v2, :cond_27

    :cond_24
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->restoreWave(Ljava/util/List;)V

    .line 157
    :cond_27
    if-ltz p5, :cond_40

    const/4 v2, 0x3

    if-gt p5, v2, :cond_40

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    if-nez v2, :cond_40

    .line 158
    invoke-static {p1, p5}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveCh:I

    .line 160
    iput p5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveVal:I

    .line 161
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->waveTouched:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 163
    :cond_40
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 164
    invoke-static {p3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampHz(I)I

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 165
    invoke-static {p4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->clampUs(I)I

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 166
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-static {v2, v3, p6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCap(IIZ)I

    move-result v2

    .line 167
    if-ge p2, v1, :cond_6a

    move p2, v1

    :cond_59
    :goto_59
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 169
    const-wide/16 v2, 0x5dc

    add-long/2addr v2, p7

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 170
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_66
    .catchall {:try_start_15 .. :try_end_66} :catchall_67

    goto :goto_13

    .line 153
    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :cond_6a
    if-le p2, v2, :cond_59

    move p2, v2

    goto :goto_59
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
    .line 138
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
    .line 109
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
