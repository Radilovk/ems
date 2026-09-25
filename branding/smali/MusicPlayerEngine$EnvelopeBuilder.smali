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
.field private static final BASS_CUTOFF_HZ:D = 150.0

.field private static final ONSET_BASS_WEIGHT:D = 0.7

.field private static final ONSET_DECAY:F = 0.72f

.field private static final ONSET_GATE:F = 0.15f

.field private static final ONSET_SLOW_ALPHA:D = 0.2

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

.field private sampleRate:I

.field private sumBass:D

.field private sumSq:D

.field private sumTreble:D

.field private treble:[F

.field private trebleAlpha:D


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    .line 194
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    .line 195
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    .line 199
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->setSampleRate(I)V

    .line 200
    return-void
.end method

.method private static energyDb(D)D
    .locals 4

    .prologue
    .line 360
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
    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    .line 259
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    .line 260
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    goto :goto_0
.end method

.method private flush()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 226
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    if-nez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->ensureCapacity(I)V

    .line 230
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v2, v0

    .line 231
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    iget v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v4, v3

    div-double/2addr v0, v4

    double-to-float v3, v0

    .line 232
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    iget v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    double-to-float v4, v0

    .line 234
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    :goto_1
    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-ge v0, v1, :cond_5

    .line 235
    iget-object v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    add-int/lit8 v6, v6, -0x1

    aget v1, v1, v6

    :goto_2
    aput v1, v5, v0

    .line 236
    iget-object v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    iget v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    add-int/lit8 v6, v6, -0x1

    aget v1, v1, v6

    :goto_3
    aput v1, v5, v0

    .line 237
    iget-object v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    iget v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    add-int/lit8 v6, v6, -0x1

    aget v1, v1, v6

    :goto_4
    aput v1, v5, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 235
    goto :goto_2

    :cond_3
    move v1, v3

    .line 236
    goto :goto_3

    :cond_4
    move v1, v4

    .line 237
    goto :goto_4

    .line 239
    :cond_5
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aget v0, v0, v1

    cmpl-float v0, v2, v0

    if-lez v0, :cond_7

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aput v2, v0, v1

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aput v3, v0, v1

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->treble:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aput v4, v0, v1

    .line 244
    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-le v0, v1, :cond_8

    .line 245
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    .line 247
    :cond_8
    iput-wide v8, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    .line 248
    iput-wide v8, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    .line 249
    iput-wide v8, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    goto/16 :goto_0
.end method

.method private static percentileOfPositive([FID)D
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 344
    new-array v4, p1, [F

    move v2, v3

    move v1, v3

    .line 346
    :goto_0
    if-ge v2, p1, :cond_0

    .line 347
    aget v0, p0, v2

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 348
    add-int/lit8 v0, v1, 0x1

    aget v5, p0, v2

    aput v5, v4, v1

    .line 346
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    .line 351
    :cond_0
    if-nez v1, :cond_1

    .line 352
    const-wide/16 v0, 0x0

    .line 356
    :goto_2
    return-wide v0

    .line 354
    :cond_1
    invoke-static {v4, v3, v1}, Ljava/util/Arrays;->sort([FII)V

    .line 355
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v6, p2, v6

    add-int/lit8 v0, v1, -0x1

    int-to-double v8, v0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    .line 356
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
    .line 302
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v3, v0, [F

    .line 303
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v5, v0, [Z

    .line 304
    const-wide v0, 0x3fa999999999999aL    # 0.05

    mul-double v6, p1, v0

    .line 305
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v8, v0, [F

    .line 306
    const/4 v1, 0x0

    .line 307
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v0, v2, :cond_2

    .line 308
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

    .line 309
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    aget v2, v2, v0

    float-to-double v10, v2

    cmpl-double v2, v10, v6

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, v5, v0

    .line 310
    aget-boolean v2, v5, v0

    if-eqz v2, :cond_0

    .line 311
    add-int/lit8 v2, v1, 0x1

    aget v4, v3, v0

    aput v4, v8, v1

    move v1, v2

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 314
    :cond_2
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v4, v0, [F

    .line 315
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3

    .line 316
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([FF)V

    move-object v0, v4

    .line 340
    :goto_2
    return-object v0

    .line 319
    :cond_3
    const/4 v0, 0x0

    invoke-static {v8, v0, v1}, Ljava/util/Arrays;->sort([FII)V

    .line 320
    const-wide v6, 0x3fb999999999999aL    # 0.1

    add-int/lit8 v0, v1, -0x1

    int-to-double v10, v0

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    aget v2, v8, v0

    .line 321
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    add-int/lit8 v0, v1, -0x1

    int-to-double v0, v0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    aget v0, v8, v0

    .line 322
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 323
    const/high16 v1, 0x3f000000    # 0.5f

    .line 324
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v7, v0, [F

    .line 325
    const/4 v0, 0x0

    :goto_3
    iget v8, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v0, v8, :cond_5

    .line 326
    aget-boolean v8, v5, v0

    if-eqz v8, :cond_4

    .line 327
    const/4 v1, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aget v9, v3, v0

    sub-float/2addr v9, v2

    div-float/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 329
    :cond_4
    aput v1, v7, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 331
    :cond_5
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v0, v1, :cond_7

    .line 332
    const/4 v3, 0x0

    .line 333
    const/4 v2, 0x0

    .line 334
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

    .line 335
    aget v5, v7, v1

    add-float/2addr v3, v5

    .line 336
    add-int/lit8 v2, v2, 0x1

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 338
    :cond_6
    int-to-float v1, v2

    div-float v1, v3, v1

    aput v1, v4, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move-object v0, v4

    .line 340
    goto :goto_2
.end method


# virtual methods
.method addFrame(JJI)V
    .locals 9

    .prologue
    .line 209
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p3

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 210
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v0, 0x0

    .line 211
    :goto_0
    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-eq v0, v1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->flush()V

    .line 213
    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    .line 215
    :cond_0
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    int-to-double v4, p5

    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    .line 216
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    .line 217
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    int-to-double v2, p5

    int-to-double v4, p5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    .line 218
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    .line 219
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->trebleAlpha:D

    int-to-double v4, p5

    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    .line 220
    int-to-double v0, p5

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lpT:D

    sub-double/2addr v0, v2

    .line 221
    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumTreble:D

    .line 222
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    .line 223
    return-void

    .line 210
    :cond_1
    const-wide/16 v2, 0x4e20

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method finish()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .locals 22

    .prologue
    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->flush()V

    .line 265
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-nez v2, :cond_0

    .line 266
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

    .line 293
    :goto_0
    return-object v3

    .line 268
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v8, v2, [F

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v6

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v4

    .line 271
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v2, v3, :cond_1

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    aget v3, v3, v2

    float-to-double v10, v3

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v10

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    aget v3, v3, v2

    float-to-double v12, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    aget v3, v3, v2

    float-to-double v14, v3

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v12

    .line 274
    const-wide v14, 0x3fe6666666666666L    # 0.7

    const-wide/16 v16, 0x0

    sub-double v18, v10, v6

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide v16, 0x3fd3333333333334L    # 0.30000000000000004

    const-wide/16 v18, 0x0

    sub-double v20, v12, v4

    .line 275
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    .line 276
    double-to-float v3, v14

    aput v3, v8, v2

    .line 277
    const-wide v14, 0x3fc999999999999aL    # 0.2

    sub-double/2addr v10, v6

    mul-double/2addr v10, v14

    add-double/2addr v6, v10

    .line 278
    const-wide v10, 0x3fc999999999999aL    # 0.2

    sub-double/2addr v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 281
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    const-wide v6, 0x4057c00000000000L    # 95.0

    invoke-static {v8, v4, v6, v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->percentileOfPositive([FID)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 282
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v5, v2, [F

    .line 283
    const/4 v3, 0x0

    .line 284
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v2, v4, :cond_3

    .line 285
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aget v4, v8, v2

    float-to-double v12, v4

    div-double/2addr v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-float v4, v10

    .line 286
    const v9, 0x3e19999a    # 0.15f

    cmpg-float v9, v4, v9

    if-gez v9, :cond_2

    .line 287
    const/4 v4, 0x0

    .line 289
    :cond_2
    const v9, 0x3f3851ec    # 0.72f

    mul-float/2addr v3, v9

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 290
    aput v3, v5, v2

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 292
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    const-wide/high16 v6, 0x4058000000000000L    # 96.0

    invoke-static {v2, v3, v6, v7}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->percentilePeak([FID)D

    move-result-wide v8

    .line 293
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

    .line 203
    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    .line 204
    const-wide v0, -0x3f728c2d79401b28L    # -942.4777960769379

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    .line 205
    const-wide v0, -0x3f315204b3a2c6f4L    # -15707.963267948966

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->trebleAlpha:D

    .line 206
    return-void

    .line 203
    :cond_0
    const p1, 0xac44

    goto :goto_0
.end method
