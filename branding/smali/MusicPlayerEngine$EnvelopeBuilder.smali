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


# instance fields
.field private bass:[F

.field private bassAlpha:D

.field private bucket:I

.field private count:I

.field private frames:I

.field private loud:[F

.field private lp1:D

.field private lp2:D

.field private sampleRate:I

.field private sumBass:D

.field private sumSq:D


# direct methods
.method constructor <init>(I)V
    .registers 4

    .prologue
    const/16 v1, 0x1000

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    .line 178
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    .line 179
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    .line 183
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->setSampleRate(I)V

    .line 184
    return-void
.end method

.method private static energyDb(D)D
    .registers 6

    .prologue
    .line 288
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private ensureCapacity(I)V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    array-length v0, v0

    if-gt p1, v0, :cond_6

    .line 236
    :goto_5
    return-void

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    .line 235
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    goto :goto_5
.end method

.method private flush()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 206
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    if-nez v0, :cond_b

    .line 227
    :cond_a
    :goto_a
    return-void

    .line 209
    :cond_b
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->ensureCapacity(I)V

    .line 210
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v2, v0

    .line 211
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    iget v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    int-to-double v4, v3

    div-double/2addr v0, v4

    double-to-float v3, v0

    .line 213
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    :goto_26
    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-ge v0, v1, :cond_51

    .line 214
    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v1, :cond_4d

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    :goto_38
    aput v1, v4, v0

    .line 215
    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-lez v1, :cond_4f

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    iget v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    add-int/lit8 v5, v5, -0x1

    aget v1, v1, v5

    :goto_48
    aput v1, v4, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_4d
    move v1, v2

    .line 214
    goto :goto_38

    :cond_4f
    move v1, v3

    .line 215
    goto :goto_48

    .line 217
    :cond_51
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v0, v1, :cond_61

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aget v0, v0, v1

    cmpl-float v0, v2, v0

    if-lez v0, :cond_6d

    .line 218
    :cond_61
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aput v2, v0, v1

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    aput v3, v0, v1

    .line 221
    :cond_6d
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-le v0, v1, :cond_7b

    .line 222
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    .line 224
    :cond_7b
    iput-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    .line 225
    iput-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    goto :goto_a
.end method

.method private static percentileOfPositive([FID)D
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 272
    new-array v4, p1, [F

    move v2, v3

    move v1, v3

    .line 274
    :goto_5
    if-ge v2, p1, :cond_18

    .line 275
    aget v0, p0, v2

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3b

    .line 276
    add-int/lit8 v0, v1, 0x1

    aget v5, p0, v2

    aput v5, v4, v1

    .line 274
    :goto_14
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_5

    .line 279
    :cond_18
    if-nez v1, :cond_1d

    .line 280
    const-wide/16 v0, 0x0

    .line 284
    :goto_1c
    return-wide v0

    .line 282
    :cond_1d
    invoke-static {v4, v3, v1}, Ljava/util/Arrays;->sort([FII)V

    .line 283
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v6, p2, v6

    add-int/lit8 v0, v1, -0x1

    int-to-double v8, v0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    .line 284
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v0, v4, v0

    float-to-double v0, v0

    goto :goto_1c

    :cond_3b
    move v0, v1

    goto :goto_14
.end method


# virtual methods
.method addFrame(JJI)V
    .registers 15

    .prologue
    .line 192
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p3

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 193
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4b

    const/4 v0, 0x0

    .line 194
    :goto_10
    iget v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    if-eq v0, v1, :cond_19

    .line 195
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->flush()V

    .line 196
    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bucket:I

    .line 198
    :cond_19
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    int-to-double v4, p5

    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    .line 199
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp1:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    .line 200
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    int-to-double v2, p5

    int-to-double v4, p5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumSq:D

    .line 201
    iget-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->lp2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sumBass:D

    .line 202
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->frames:I

    .line 203
    return-void

    .line 193
    :cond_4b
    const-wide/16 v2, 0x4e20

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_10
.end method

.method finish()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .registers 23

    .prologue
    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->flush()V

    .line 240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-nez v2, :cond_20

    .line 241
    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    invoke-direct/range {v2 .. v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;-><init>([F[FID)V

    .line 268
    :goto_1f
    return-object v2

    .line 243
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v8, v2, [F

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v6

    .line 245
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

    .line 246
    const/4 v2, 0x0

    :goto_48
    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v2, v3, :cond_a2

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bass:[F

    aget v3, v3, v2

    float-to-double v10, v3

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->energyDb(D)D

    move-result-wide v10

    .line 248
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

    .line 249
    const-wide v14, 0x3fe6666666666666L    # 0.7

    const-wide/16 v16, 0x0

    sub-double v18, v10, v6

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide v16, 0x3fd3333333333334L    # 0.30000000000000004

    const-wide/16 v18, 0x0

    sub-double v20, v12, v4

    .line 250
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    .line 251
    double-to-float v3, v14

    aput v3, v8, v2

    .line 252
    const-wide v14, 0x3fc999999999999aL    # 0.2

    sub-double/2addr v10, v6

    mul-double/2addr v10, v14

    add-double/2addr v6, v10

    .line 253
    const-wide v10, 0x3fc999999999999aL    # 0.2

    sub-double/2addr v12, v4

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 256
    :cond_a2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    const-wide v6, 0x4057c00000000000L    # 95.0

    invoke-static {v8, v4, v6, v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->percentileOfPositive([FID)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 257
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    new-array v4, v2, [F

    .line 258
    const/4 v3, 0x0

    .line 259
    const/4 v2, 0x0

    :goto_bd
    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    if-ge v2, v5, :cond_e3

    .line 260
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aget v5, v8, v2

    float-to-double v12, v5

    div-double/2addr v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-float v5, v10

    .line 261
    const v9, 0x3e19999a    # 0.15f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_d6

    .line 262
    const/4 v5, 0x0

    .line 264
    :cond_d6
    const v9, 0x3f3851ec    # 0.72f

    mul-float/2addr v3, v9

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 265
    aput v3, v4, v2

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    .line 267
    :cond_e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    const-wide/high16 v6, 0x4058000000000000L    # 96.0

    invoke-static {v2, v3, v6, v7}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->percentilePeak([FID)D

    move-result-wide v6

    .line 268
    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->loud:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->count:I

    invoke-direct/range {v2 .. v7}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;-><init>([F[FID)V

    goto/16 :goto_1f
.end method

.method setSampleRate(I)V
    .registers 8

    .prologue
    .line 187
    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_19

    :goto_4
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    .line 188
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, -0x3f728c2d79401b28L    # -942.4777960769379

    iget v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->sampleRate:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeBuilder;->bassAlpha:D

    .line 189
    return-void

    .line 187
    :cond_19
    const p1, 0xac44

    goto :goto_4
.end method
