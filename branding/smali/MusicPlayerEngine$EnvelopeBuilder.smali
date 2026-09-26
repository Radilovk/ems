.class final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnvelopeBuilder"
.end annotation


# static fields
.field private static final BAND_BASS:D = 0.45

.field private static final BAND_HIGH:D = 0.15

.field private static final BAND_MID:D = 0.4

.field private static final BASS_CUTOFF_HZ:D = 150.0

.field private static final ONSET_DECAY:F = 0.72f

.field private static final ONSET_GATE:F = 0.15f

.field private static final ONSET_SLOW_ALPHA:D = 0.2

.field private static final STRONG_DECAY:D = 0.97

.field private static final TONE_HALF_WINDOW:I = 0x3

.field private static final TREBLE_CUTOFF_HZ:D = 2500.0


# instance fields
.field private bass:[F

.field private bassAlpha:D

.field private bucket:I

.field private count:I

.field private frames:I

.field private loud:[F

.field private lp1:D

.field private lp2:D

.field private lpT:D

.field private mid:[F

.field private sampleRate:I

.field private sumBass:D

.field private sumMid:D

.field private sumSq:D

.field private sumTreble:D

.field private toneMedianDb:D

.field private toneSpanDb:D

.field private treble:[F

.field private trebleAlpha:D


# direct methods
.method constructor <init>(I)V
    .registers 4

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/16 v0, 0x1000

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    .line 204
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    .line 208
    const/4 v1, -0x1

    iput v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    .line 212
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    .line 213
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    .line 217
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->setSampleRate(I)V

    .line 218
    return-void
.end method

.method private static energyDb(D)D
    .registers 4

    .line 400
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private ensureCapacity(I)V
    .registers 4

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    array-length v1, v0

    if-gt p1, v1, :cond_6

    .line 279
    return-void

    .line 281
    :cond_6
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    .line 286
    return-void
.end method

.method private flush()V
    .registers 9

    .line 246
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-ltz v0, :cond_a4

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    if-nez v1, :cond_a

    goto/16 :goto_a4

    .line 249
    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->ensureCapacity(I)V

    .line 250
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 251
    iget-wide v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    iget v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v4, v3

    div-double/2addr v1, v4

    double-to-float v1, v1

    .line 252
    iget-wide v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    int-to-double v6, v3

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 253
    iget-wide v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumMid:D

    int-to-double v6, v3

    div-double/2addr v4, v6

    double-to-float v3, v4

    .line 255
    iget v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    :goto_2d
    iget v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-ge v4, v5, :cond_6c

    .line 256
    iget-object v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v6, :cond_3c

    add-int/lit8 v6, v6, -0x1

    aget v6, v5, v6

    goto :goto_3d

    :cond_3c
    move v6, v0

    :goto_3d
    aput v6, v5, v4

    .line 257
    iget-object v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    iget v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v6, :cond_4a

    add-int/lit8 v6, v6, -0x1

    aget v6, v5, v6

    goto :goto_4b

    :cond_4a
    move v6, v1

    :goto_4b
    aput v6, v5, v4

    .line 258
    iget-object v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    iget v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v6, :cond_58

    add-int/lit8 v6, v6, -0x1

    aget v6, v5, v6

    goto :goto_59

    :cond_58
    move v6, v2

    :goto_59
    aput v6, v5, v4

    .line 259
    iget-object v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    iget v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v6, :cond_66

    add-int/lit8 v6, v6, -0x1

    aget v6, v5, v6

    goto :goto_67

    :cond_66
    move v6, v3

    :goto_67
    aput v6, v5, v4

    .line 255
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 261
    :cond_6c
    iget v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v5, v4, :cond_78

    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    aget v4, v4, v5

    cmpl-float v4, v0, v4

    if-lez v4, :cond_8a

    .line 262
    :cond_78
    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aput v0, v4, v5

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    aput v1, v0, v5

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    aput v2, v0, v5

    .line 265
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    aput v3, v0, v5

    .line 267
    :cond_8a
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-le v1, v2, :cond_96

    .line 268
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    .line 270
    :cond_96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    .line 271
    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    .line 272
    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    .line 273
    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumMid:D

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    .line 275
    return-void

    .line 247
    :cond_a4
    :goto_a4
    return-void
.end method

.method private static percentileOfPositive([FID)D
    .registers 10

    .line 384
    new-array v0, p1, [F

    .line 385
    nop

    .line 386
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v2, p1, :cond_19

    .line 387
    aget v4, p0, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    .line 388
    add-int/lit8 v4, v3, 0x1

    aget v5, p0, v2

    aput v5, v0, v3

    move v3, v4

    .line 386
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 391
    :cond_19
    if-nez v3, :cond_1e

    .line 392
    const-wide/16 p0, 0x0

    return-wide p0

    .line 394
    :cond_1e
    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->sort([FII)V

    .line 395
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    div-double/2addr p2, p0

    add-int/lit8 v3, v3, -0x1

    int-to-double p0, v3

    mul-double p2, p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 396
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aget p0, v0, p0

    float-to-double p0, p0

    return-wide p0
.end method

.method private toneCurve(D)[F
    .registers 15

    .line 338
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v1, v0, [F

    .line 339
    new-array v2, v0, [Z

    .line 340
    const-wide v3, 0x3fa999999999999aL    # 0.05

    mul-double p1, p1, v3

    .line 341
    new-array v0, v0, [F

    .line 342
    nop

    .line 343
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    iget v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    const/4 v7, 0x1

    if-ge v4, v6, :cond_49

    .line 344
    iget-object v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    aget v6, v6, v4

    float-to-double v8, v6

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v8

    iget-object v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    aget v6, v6, v4

    float-to-double v10, v6

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v6, v8

    aput v6, v1, v4

    .line 345
    iget-object v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    aget v6, v6, v4

    float-to-double v8, v6

    cmpl-double v6, v8, p1

    if-lez v6, :cond_38

    goto :goto_39

    :cond_38
    const/4 v7, 0x0

    :goto_39
    aput-boolean v7, v2, v4

    .line 346
    aget-boolean v6, v2, v4

    if-eqz v6, :cond_46

    .line 347
    add-int/lit8 v6, v5, 0x1

    aget v7, v1, v4

    aput v7, v0, v5

    move v5, v6

    .line 343
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 350
    :cond_49
    new-array p1, v6, [F

    .line 351
    const/16 p2, 0xa

    const/high16 v4, 0x3f000000    # 0.5f

    if-ge v5, p2, :cond_5b

    .line 352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->toneSpanDb:D

    .line 353
    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->toneMedianDb:D

    .line 354
    invoke-static {p1, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 355
    return-object p1

    .line 357
    :cond_5b
    invoke-static {v0, v3, v5}, Ljava/util/Arrays;->sort([FII)V

    .line 358
    const-wide v8, 0x3fb999999999999aL    # 0.1

    add-int/lit8 p2, v5, -0x1

    int-to-double v10, p2

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int p2, v8

    aget p2, v0, p2

    .line 359
    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v6, v8

    aget v6, v0, v6

    .line 360
    sub-float/2addr v6, p2

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-double v9, v9

    iput-wide v9, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->toneSpanDb:D

    .line 361
    div-int/lit8 v5, v5, 0x2

    aget v0, v0, v5

    float-to-double v9, v0

    iput-wide v9, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->toneMedianDb:D

    .line 362
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 363
    nop

    .line 364
    iget v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v6, v6, [F

    .line 365
    const/4 v9, 0x0

    :goto_99
    iget v10, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v9, v10, :cond_b2

    .line 366
    aget-boolean v10, v2, v9

    if-eqz v10, :cond_ad

    .line 367
    aget v4, v1, v9

    sub-float/2addr v4, p2

    div-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 369
    :cond_ad
    aput v4, v6, v9

    .line 365
    add-int/lit8 v9, v9, 0x1

    goto :goto_99

    .line 371
    :cond_b2
    const/4 p2, 0x0

    :goto_b3
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge p2, v0, :cond_db

    .line 372
    nop

    .line 373
    nop

    .line 374
    add-int/lit8 v0, p2, -0x3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c1
    iget v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    sub-int/2addr v4, v7

    add-int/lit8 v5, p2, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v0, v4, :cond_d4

    .line 375
    aget v4, v6, v0

    add-float/2addr v1, v4

    .line 376
    add-int/lit8 v2, v2, 0x1

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 378
    :cond_d4
    int-to-float v0, v2

    div-float/2addr v1, v0

    aput v1, p1, p2

    .line 371
    add-int/lit8 p2, p2, 0x1

    goto :goto_b3

    .line 380
    :cond_db
    return-object p1
.end method


# virtual methods
.method addFrame(JJI)V
    .registers 12

    .line 227
    const-wide/32 v0, 0xf4240

    mul-long p3, p3, v0

    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    .line 228
    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_12

    const/4 p1, 0x0

    goto :goto_16

    :cond_12
    const-wide/16 p3, 0x4e20

    div-long/2addr p1, p3

    long-to-int p1, p1

    .line 229
    :goto_16
    iget p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-eq p1, p2, :cond_1f

    .line 230
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->flush()V

    .line 231
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    .line 233
    :cond_1f
    iget-wide p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    iget-wide p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    int-to-double v0, p5

    sub-double v2, v0, p1

    mul-double v2, v2, p3

    add-double/2addr p1, v2

    iput-wide p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    .line 234
    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    sub-double/2addr p1, v2

    mul-double p3, p3, p1

    add-double/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    .line 235
    iget-wide p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    mul-double p3, v0, v0

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    .line 236
    iget-wide p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    mul-double p3, v2, v2

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    .line 237
    iget-wide p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    iget-wide p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->trebleAlpha:D

    sub-double v4, v0, p1

    mul-double p3, p3, v4

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    .line 238
    sub-double/2addr v0, p1

    .line 239
    iget-wide p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    mul-double v0, v0, v0

    add-double/2addr p3, v0

    iput-wide p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    .line 240
    sub-double/2addr p1, v2

    .line 241
    iget-wide p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumMid:D

    mul-double p1, p1, p1

    add-double/2addr p3, p1

    iput-wide p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumMid:D

    .line 242
    iget p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    .line 243
    return-void
.end method

.method finish()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .registers 28

    .line 289
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->flush()V

    .line 290
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_28

    .line 291
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    const/4 v4, 0x1

    new-array v5, v4, [F

    aput v2, v5, v3

    new-array v6, v4, [F

    aput v2, v6, v3

    new-array v7, v4, [F

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v7, v3

    const/4 v8, 0x1

    const-wide/high16 v9, 0x4054000000000000L    # 80.0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v14}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;-><init>([F[F[FIDDD)V

    return-object v1

    .line 295
    :cond_28
    new-array v1, v1, [F

    .line 296
    iget-object v4, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    aget v4, v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v4

    .line 297
    iget-object v6, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    aget v6, v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v6

    .line 298
    iget-object v8, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    aget v8, v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v8

    .line 299
    const/4 v10, 0x0

    :goto_46
    iget v11, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v10, v11, :cond_a9

    .line 300
    iget-object v11, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    aget v11, v11, v10

    float-to-double v11, v11

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v11

    .line 301
    iget-object v13, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    aget v13, v13, v10

    float-to-double v13, v13

    invoke-static {v13, v14}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v13

    .line 302
    iget-object v15, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    aget v15, v15, v10

    float-to-double v2, v15

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v2

    .line 303
    const-wide v16, 0x3fdccccccccccccdL    # 0.45

    sub-double/2addr v11, v4

    move-wide/from16 v18, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    mul-double v20, v20, v16

    const-wide v16, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v13, v6

    .line 304
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v16, 0x3fc3333333333333L    # 0.15

    sub-double/2addr v2, v8

    .line 305
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    mul-double v4, v4, v16

    add-double v4, v20, v4

    .line 306
    double-to-float v4, v4

    aput v4, v1, v10

    .line 307
    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double v11, v11, v4

    add-double v11, v18, v11

    .line 308
    mul-double v13, v13, v4

    add-double/2addr v6, v13

    .line 309
    mul-double v2, v2, v4

    add-double/2addr v8, v2

    .line 299
    add-int/lit8 v10, v10, 0x1

    move-wide v4, v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_46

    .line 313
    :cond_a9
    const-wide v2, 0x4057c00000000000L    # 95.0

    invoke-static {v1, v11, v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->percentileOfPositive([FID)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 314
    iget v6, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v6, v6, [F

    .line 315
    nop

    .line 316
    nop

    .line 317
    move-wide v8, v2

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_c1
    iget v11, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v7, v11, :cond_103

    .line 318
    aget v11, v1, v7

    float-to-double v11, v11

    const-wide v13, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double v8, v8, v13

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 319
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const-wide v13, 0x3fb47ae147ae147bL    # 0.08

    mul-double v13, v13, v2

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 320
    aget v13, v1, v7

    float-to-double v13, v13

    div-double/2addr v13, v11

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    double-to-float v11, v11

    .line 321
    const v12, 0x3e19999a    # 0.15f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_f5

    .line 322
    const/4 v11, 0x0

    .line 324
    :cond_f5
    const v12, 0x3f3851ec    # 0.72f

    mul-float v10, v10, v12

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 325
    aput v10, v6, v7

    .line 317
    add-int/lit8 v7, v7, 0x1

    goto :goto_c1

    .line 327
    :cond_103
    iget-object v1, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    const-wide/high16 v2, 0x4058000000000000L    # 96.0

    invoke-static {v1, v11, v2, v3}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->percentilePeak([FID)D

    move-result-wide v1

    .line 328
    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->toneCurve(D)[F

    move-result-object v19

    .line 329
    new-instance v3, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget-object v4, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v5, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    iget-wide v7, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->toneSpanDb:D

    iget-wide v9, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->toneMedianDb:D

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move/from16 v20, v5

    move-wide/from16 v21, v1

    move-wide/from16 v23, v7

    move-wide/from16 v25, v9

    invoke-direct/range {v16 .. v26}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;-><init>([F[F[FIDDD)V

    return-object v3
.end method

.method setSampleRate(I)V
    .registers 8

    .line 221
    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_5

    goto :goto_8

    :cond_5
    const p1, 0xac44

    :goto_8
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    .line 222
    const-wide v0, -0x3f728c2d79401b28L    # -942.4777960769379

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    .line 223
    const-wide v0, -0x3f315204b3a2c6f4L    # -15707.963267948966

    iget p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    int-to-double v4, p1

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->trebleAlpha:D

    .line 224
    return-void
.end method
