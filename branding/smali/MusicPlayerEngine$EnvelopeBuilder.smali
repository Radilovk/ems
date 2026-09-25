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

.field private treble:[F

.field private trebleAlpha:D


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    .line 195
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    .line 200
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    .line 201
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    .line 205
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->setSampleRate(I)V

    .line 206
    return-void
.end method

.method private static energyDb(D)D
    .locals 4

    .prologue
    .line 383
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private ensureCapacity(I)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    .line 271
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    .line 272
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    .line 273
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    goto :goto_0
.end method

.method private flush()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 234
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->ensureCapacity(I)V

    .line 238
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v2, v0

    .line 239
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    iget v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v4, v3

    div-double/2addr v0, v4

    double-to-float v3, v0

    .line 240
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    iget v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    double-to-float v4, v0

    .line 241
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumMid:D

    iget v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v6, v5

    div-double/2addr v0, v6

    double-to-float v5, v0

    .line 243
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    :goto_1
    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-ge v0, v1, :cond_6

    .line 244
    iget-object v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v7, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v1, v7

    :goto_2
    aput v1, v6, v0

    .line 245
    iget-object v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    iget v7, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v1, v7

    :goto_3
    aput v1, v6, v0

    .line 246
    iget-object v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    iget v7, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v1, v7

    :goto_4
    aput v1, v6, v0

    .line 247
    iget-object v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    iget v7, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v1, v7

    :goto_5
    aput v1, v6, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 244
    goto :goto_2

    :cond_3
    move v1, v3

    .line 245
    goto :goto_3

    :cond_4
    move v1, v4

    .line 246
    goto :goto_4

    :cond_5
    move v1, v5

    .line 247
    goto :goto_5

    .line 249
    :cond_6
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aget v0, v0, v1

    cmpl-float v0, v2, v0

    if-lez v0, :cond_8

    .line 250
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aput v2, v0, v1

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aput v3, v0, v1

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aput v4, v0, v1

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aput v5, v0, v1

    .line 255
    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-le v0, v1, :cond_9

    .line 256
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    .line 258
    :cond_9
    iput-wide v8, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    .line 259
    iput-wide v8, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    .line 260
    iput-wide v8, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    .line 261
    iput-wide v8, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumMid:D

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    goto/16 :goto_0
.end method

.method private static percentileOfPositive([FID)D
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 367
    new-array v4, p1, [F

    move v2, v3

    move v1, v3

    .line 369
    :goto_0
    if-ge v2, p1, :cond_0

    .line 370
    aget v0, p0, v2

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 371
    add-int/lit8 v0, v1, 0x1

    aget v5, p0, v2

    aput v5, v4, v1

    .line 369
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    .line 374
    :cond_0
    if-nez v1, :cond_1

    .line 375
    const-wide/16 v0, 0x0

    .line 379
    :goto_2
    return-wide v0

    .line 377
    :cond_1
    invoke-static {v4, v3, v1}, Ljava/util/Arrays;->sort([FII)V

    .line 378
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v6, p2, v6

    add-int/lit8 v0, v1, -0x1

    int-to-double v8, v0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    .line 379
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v0, v4, v0

    float-to-double v0, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private toneCurve(D)[F
    .locals 15

    .prologue
    .line 325
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v3, v0, [F

    .line 326
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v5, v0, [Z

    .line 327
    const-wide v0, 0x3fa999999999999aL    # 0.05

    mul-double v6, p1, v0

    .line 328
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v8, v0, [F

    .line 329
    const/4 v1, 0x0

    .line 330
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v0, v2, :cond_2

    .line 331
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    aget v2, v2, v0

    float-to-double v10, v2

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v10

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    aget v2, v2, v0

    float-to-double v12, v2

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    double-to-float v2, v10

    aput v2, v3, v0

    .line 332
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    aget v2, v2, v0

    float-to-double v10, v2

    cmpl-double v2, v10, v6

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, v5, v0

    .line 333
    aget-boolean v2, v5, v0

    if-eqz v2, :cond_0

    .line 334
    add-int/lit8 v2, v1, 0x1

    aget v4, v3, v0

    aput v4, v8, v1

    move v1, v2

    .line 330
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 337
    :cond_2
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v4, v0, [F

    .line 338
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3

    .line 339
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([FF)V

    move-object v0, v4

    .line 363
    :goto_2
    return-object v0

    .line 342
    :cond_3
    const/4 v0, 0x0

    invoke-static {v8, v0, v1}, Ljava/util/Arrays;->sort([FII)V

    .line 343
    const-wide v6, 0x3fb999999999999aL    # 0.1

    add-int/lit8 v0, v1, -0x1

    int-to-double v10, v0

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    aget v2, v8, v0

    .line 344
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    add-int/lit8 v0, v1, -0x1

    int-to-double v0, v0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    aget v0, v8, v0

    .line 345
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 346
    const/high16 v1, 0x3f000000    # 0.5f

    .line 347
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v7, v0, [F

    .line 348
    const/4 v0, 0x0

    :goto_3
    iget v8, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v0, v8, :cond_5

    .line 349
    aget-boolean v8, v5, v0

    if-eqz v8, :cond_4

    .line 350
    const/4 v1, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aget v9, v3, v0

    sub-float/2addr v9, v2

    div-float/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 352
    :cond_4
    aput v1, v7, v0

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 354
    :cond_5
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v0, v1, :cond_7

    .line 355
    const/4 v3, 0x0

    .line 356
    const/4 v2, 0x0

    .line 357
    const/4 v1, 0x0

    add-int/lit8 v5, v0, -0x3

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_5
    iget v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v0, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-gt v1, v5, :cond_6

    .line 358
    aget v5, v7, v1

    add-float/2addr v3, v5

    .line 359
    add-int/lit8 v2, v2, 0x1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 361
    :cond_6
    int-to-float v1, v2

    div-float v1, v3, v1

    aput v1, v4, v0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move-object v0, v4

    .line 363
    goto :goto_2
.end method


# virtual methods
.method addFrame(JJI)V
    .locals 9

    .prologue
    .line 215
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p3

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 216
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v0, 0x0

    .line 217
    :goto_0
    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-eq v0, v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->flush()V

    .line 219
    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    .line 221
    :cond_0
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    int-to-double v4, p5

    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    .line 222
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    .line 223
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    int-to-double v2, p5

    int-to-double v4, p5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    .line 224
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    .line 225
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->trebleAlpha:D

    int-to-double v4, p5

    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    .line 226
    int-to-double v0, p5

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    sub-double/2addr v0, v2

    .line 227
    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    .line 228
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    sub-double/2addr v0, v2

    .line 229
    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumMid:D

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumMid:D

    .line 230
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    .line 231
    return-void

    .line 216
    :cond_1
    const-wide/16 v2, 0x4e20

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method finish()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .locals 26

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->flush()V

    .line 278
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-nez v2, :cond_0

    .line 279
    new-instance v3, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    const/4 v2, 0x1

    new-array v4, v2, [F

    const/4 v2, 0x0

    const/4 v5, 0x0

    aput v5, v4, v2

    const/4 v2, 0x1

    new-array v5, v2, [F

    const/4 v2, 0x0

    const/4 v6, 0x0

    aput v6, v5, v2

    const/4 v2, 0x1

    new-array v6, v2, [F

    const/4 v2, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v6, v2

    const/4 v7, 0x1

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;-><init>([F[F[FID)V

    .line 316
    :goto_0
    return-object v3

    .line 283
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v10, v2, [F

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v8

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v6

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v4

    .line 287
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v2, v3, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    aget v3, v3, v2

    float-to-double v12, v3

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v12

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->mid:[F

    aget v3, v3, v2

    float-to-double v14, v3

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v14

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    aget v3, v3, v2

    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v16

    .line 291
    const-wide v18, 0x3fdccccccccccccdL    # 0.45

    const-wide/16 v20, 0x0

    sub-double v22, v12, v8

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide v20, 0x3fd999999999999aL    # 0.4

    const-wide/16 v22, 0x0

    sub-double v24, v14, v6

    .line 292
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide v20, 0x3fc3333333333333L    # 0.15

    const-wide/16 v22, 0x0

    sub-double v24, v16, v4

    .line 293
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    .line 294
    move-wide/from16 v0, v18

    double-to-float v3, v0

    aput v3, v10, v2

    .line 295
    const-wide v18, 0x3fc999999999999aL    # 0.2

    sub-double/2addr v12, v8

    mul-double v12, v12, v18

    add-double/2addr v8, v12

    .line 296
    const-wide v12, 0x3fc999999999999aL    # 0.2

    sub-double/2addr v14, v6

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    .line 297
    const-wide v12, 0x3fc999999999999aL    # 0.2

    sub-double v14, v16, v4

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    const-wide v6, 0x4057c00000000000L    # 95.0

    invoke-static {v10, v4, v6, v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->percentileOfPositive([FID)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 302
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v5, v2, [F

    .line 303
    const/4 v3, 0x0

    .line 305
    const/4 v2, 0x0

    move-wide v6, v8

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v2, v4, :cond_3

    .line 306
    aget v4, v10, v2

    float-to-double v12, v4

    const-wide v14, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double/2addr v6, v14

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 307
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide v14, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v14, v8

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 308
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aget v4, v10, v2

    float-to-double v0, v4

    move-wide/from16 v16, v0

    div-double v12, v16, v12

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    double-to-float v4, v12

    .line 309
    const v11, 0x3e19999a    # 0.15f

    cmpg-float v11, v4, v11

    if-gez v11, :cond_2

    .line 310
    const/4 v4, 0x0

    .line 312
    :cond_2
    const v11, 0x3f3851ec    # 0.72f

    mul-float/2addr v3, v11

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 313
    aput v3, v5, v2

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 315
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    const-wide/high16 v6, 0x4058000000000000L    # 96.0

    invoke-static {v2, v3, v6, v7}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->percentilePeak([FID)D

    move-result-wide v8

    .line 316
    new-instance v3, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->toneCurve(D)[F

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;-><init>([F[F[FID)V

    goto/16 :goto_0
.end method

.method setSampleRate(I)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 209
    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    .line 210
    const-wide v0, -0x3f728c2d79401b28L    # -942.4777960769379

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    .line 211
    const-wide v0, -0x3f315204b3a2c6f4L    # -15707.963267948966

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->trebleAlpha:D

    .line 212
    return-void

    .line 209
    :cond_0
    const p1, 0xac44

    goto :goto_0
.end method
