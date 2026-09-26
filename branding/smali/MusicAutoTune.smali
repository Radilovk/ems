.class public final Lcom/isaigu/gymapp/train/utils/MusicAutoTune;
.super Ljava/lang/Object;
.source "MusicAutoTune.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;,
        Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;
    }
.end annotation


# static fields
.field private static final BUCKET_MS:I = 0x14

.field private static final HIT_GAP_BUCKETS:I = 0x7

.field private static final HIT_LEVEL:F = 0.4f

.field private static final HZ_HI:I = 0x60

.field private static final HZ_LO:I = 0x8

.field private static final SUSTAIN_RHYTHM:F = 0.12f

.field public static final WINDOW_MS:I = 0xfa0


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(DD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;
    .registers 4

    .line 12
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->neutral(DD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public static analyze([F[F[FIDD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;
    .registers 27

    .line 85
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p3

    invoke-static {v8, v9, v0}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->usableLength([F[FI)I

    move-result v10

    .line 86
    invoke-static/range {p4 .. p7}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->hzEnds(DD)[I

    move-result-object v11

    .line 87
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v0, 0xa

    if-ge v10, v0, :cond_22

    .line 88
    invoke-static/range {p4 .. p7}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->neutral(DD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    new-array v2, v13, [Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    aput-object v0, v2, v12

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;-><init>([Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;)V

    return-object v1

    .line 91
    :cond_22
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    invoke-static {v8, v12, v10, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->percentile([FIID)D

    move-result-wide v14

    .line 92
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v14, v0

    if-gez v2, :cond_3f

    .line 93
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    new-array v1, v13, [Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    invoke-static/range {p4 .. p7}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->neutral(DD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;-><init>([Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;)V

    return-object v0

    .line 95
    :cond_3f
    nop

    .line 96
    add-int/lit16 v0, v10, 0xc8

    sub-int/2addr v0, v13

    div-int/lit16 v0, v0, 0xc8

    .line 97
    if-le v0, v13, :cond_55

    add-int/lit8 v1, v0, -0x1

    mul-int/lit16 v1, v1, 0xc8

    sub-int v1, v10, v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_55

    .line 98
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    goto :goto_56

    .line 100
    :cond_55
    move v7, v0

    :goto_56
    new-array v6, v7, [Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    .line 101
    const/4 v4, 0x0

    :goto_59
    if-ge v4, v7, :cond_89

    .line 102
    mul-int/lit16 v2, v4, 0xc8

    .line 103
    add-int/lit8 v0, v7, -0x1

    if-ne v4, v0, :cond_63

    move v3, v10

    goto :goto_6a

    :cond_63
    add-int/lit16 v0, v2, 0xc8

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v3, v0

    .line 104
    :goto_6a
    aget v16, v11, v12

    aget v17, v11, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, v4

    move-wide v4, v14

    move-object v13, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move/from16 v7, v17

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->section([F[FIIDII)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object v0

    aput-object v0, v13, v18

    .line 101
    add-int/lit8 v4, v18, 0x1

    move-object v6, v13

    move/from16 v7, v16

    const/4 v13, 0x1

    goto :goto_59

    .line 106
    :cond_89
    move-object v13, v6

    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    aget v1, v11, v12

    const/4 v2, 0x1

    aget v2, v11, v2

    invoke-static {v13, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->smooth([Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;II)[Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;-><init>([Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;)V

    return-object v0
.end method

.method private static blend(III)I
    .registers 9

    .line 228
    int-to-double v0, p0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double v0, v0, v2

    int-to-double p0, p1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double p0, p0, v4

    add-double/2addr v0, p0

    int-to-double p0, p2

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->iround(D)I

    move-result p0

    const/4 p1, 0x0

    const/16 p2, 0x64

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result p0

    return p0
.end method

.method private static clamp(III)I
    .registers 3

    .line 329
    if-ge p0, p1, :cond_3

    .line 330
    return p1

    .line 332
    :cond_3
    if-le p0, p2, :cond_6

    .line 333
    return p2

    .line 335
    :cond_6
    return p0
.end method

.method private static clamp01(D)D
    .registers 5

    .line 339
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_7

    .line 340
    return-wide v0

    .line 342
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_e

    .line 343
    return-wide v0

    .line 345
    :cond_e
    return-wide p0
.end method

.method private static countHits([FII)I
    .registers 8

    .line 237
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 238
    return v0

    .line 240
    :cond_4
    nop

    .line 241
    const/16 v1, -0x3e8

    .line 242
    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 244
    const v4, 0x3ecccccd    # 0.4f

    if-nez p1, :cond_1d

    array-length p1, p0

    if-lez p1, :cond_1d

    aget p1, p0, v0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_1d

    .line 245
    nop

    .line 246
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    :cond_1d
    nop

    :goto_1e
    if-ge v3, p2, :cond_3d

    array-length p1, p0

    if-ge v3, p1, :cond_3d

    .line 249
    sub-int p1, v3, v1

    const/4 v2, 0x7

    if-ge p1, v2, :cond_29

    .line 250
    goto :goto_3a

    .line 252
    :cond_29
    aget p1, p0, v3

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_3a

    add-int/lit8 p1, v3, -0x1

    aget p1, p0, p1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_3a

    .line 253
    add-int/lit8 v0, v0, 0x1

    .line 254
    move v1, v3

    .line 248
    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 257
    :cond_3d
    return v0
.end method

.method static hzEnds(DD)[I
    .registers 13

    .line 176
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    sub-double/2addr p0, v0

    const-wide/high16 v0, 0x401a000000000000L    # 6.5

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp01(D)D

    move-result-wide p0

    .line 177
    nop

    .line 178
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, -0x3fd4000000000000L    # -14.0

    cmpg-double v4, p2, v2

    if-gez v4, :cond_15

    .line 179
    move-wide p2, v2

    goto :goto_1a

    .line 180
    :cond_15
    cmpl-double v2, p2, v0

    if-lez v2, :cond_1a

    .line 181
    move-wide p2, v0

    .line 183
    :cond_1a
    :goto_1a
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    const-wide v2, 0x400199999999999aL    # 2.2

    mul-double p2, p2, v2

    add-double/2addr p2, v0

    .line 184
    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    cmpg-double v4, p2, v2

    if-gez v4, :cond_2e

    .line 185
    move-wide p2, v2

    goto :goto_33

    .line 186
    :cond_2e
    cmpl-double v2, p2, v0

    if-lez v2, :cond_33

    .line 187
    move-wide p2, v0

    .line 189
    :cond_33
    :goto_33
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x60

    const/16 v6, 0x8

    cmpg-double v7, p0, v0

    if-gez v7, :cond_52

    .line 190
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->iround(D)I

    move-result p0

    invoke-static {p0, v6, v5}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result p0

    .line 191
    new-array p1, v4, [I

    aput p0, p1, v3

    aput p0, p1, v2

    return-object p1

    .line 193
    :cond_52
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    mul-double p0, p0, v0

    .line 194
    sub-double v0, p2, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->iround(D)I

    move-result v0

    const/16 v1, 0x50

    invoke-static {v0, v6, v1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result v0

    .line 195
    add-double/2addr p2, p0

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->iround(D)I

    move-result p0

    invoke-static {p0, v6, v5}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result p0

    .line 196
    if-ge p0, v0, :cond_70

    .line 197
    nop

    .line 198
    nop

    .line 199
    goto :goto_73

    .line 196
    :cond_70
    move v8, v0

    move v0, p0

    move p0, v8

    .line 201
    :goto_73
    sub-int p1, v0, p0

    if-ge p1, v6, :cond_86

    .line 202
    add-int/2addr p0, v0

    div-int/2addr p0, v4

    .line 203
    add-int/lit8 p1, p0, -0x4

    invoke-static {p1, v6, v5}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result p1

    .line 204
    add-int/lit8 p0, p0, 0x4

    invoke-static {p0, v6, v5}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result v0

    move p0, p1

    .line 206
    :cond_86
    new-array p1, v4, [I

    aput p0, p1, v3

    aput v0, p1, v2

    return-object p1
.end method

.method private static iround(D)I
    .registers 2

    .line 325
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method private static neutral(DD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;
    .registers 11

    .line 232
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->hzEnds(DD)[I

    move-result-object p0

    .line 233
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    const/4 p2, 0x0

    aget v5, p0, p2

    const/4 p2, 0x1

    aget v6, p0, p2

    const/16 v1, 0x14

    const/16 v2, 0x2d

    const/16 v3, 0x16

    const/16 v4, 0x1c

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;-><init>(IIIIII)V

    return-object p1
.end method

.method private static percentile([FIID)D
    .registers 12

    .line 285
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_49

    if-gt p2, p1, :cond_7

    goto :goto_49

    .line 288
    :cond_7
    array-length v2, p0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 289
    sub-int v2, p2, p1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [F

    .line 290
    nop

    .line 291
    const/4 v4, 0x0

    :goto_17
    if-ge p1, p2, :cond_2a

    .line 292
    aget v5, p0, p1

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_27

    .line 293
    add-int/lit8 v5, v4, 0x1

    aget v6, p0, p1

    aput v6, v2, v4

    move v4, v5

    .line 291
    :cond_27
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    .line 296
    :cond_2a
    if-nez v4, :cond_2d

    .line 297
    return-wide v0

    .line 299
    :cond_2d
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->sort([FII)V

    .line 300
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    div-double/2addr p3, p0

    add-int/lit8 p0, v4, -0x1

    int-to-double p1, p0

    mul-double p3, p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    .line 301
    if-gez p2, :cond_40

    .line 302
    goto :goto_41

    .line 301
    :cond_40
    move v3, p2

    .line 304
    :goto_41
    if-lt v3, v4, :cond_44

    .line 305
    goto :goto_45

    .line 304
    :cond_44
    move p0, v3

    .line 307
    :goto_45
    aget p0, v2, p0

    float-to-double p0, p0

    return-wide p0

    .line 286
    :cond_49
    :goto_49
    return-wide v0
.end method

.method private static section([F[FIIDII)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;
    .registers 37

    .line 111
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1, v2, v5, v6}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->percentile([FIID)D

    move-result-wide v7

    .line 112
    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    invoke-static {v0, v1, v2, v9, v10}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->percentile([FIID)D

    move-result-wide v9

    .line 113
    const-wide v11, 0x4057c00000000000L    # 95.0

    invoke-static {v0, v1, v2, v11, v12}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->percentile([FIID)D

    move-result-wide v11

    .line 114
    invoke-static {v7, v8, v3, v4}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->sensitivityFor(DD)I

    move-result v14

    .line 116
    const-wide v7, 0x3fb47ae147ae147bL    # 0.08

    mul-double v7, v7, v3

    cmpg-double v13, v11, v7

    if-gez v13, :cond_3d

    .line 117
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    const/16 v15, 0x32

    const/16 v16, 0xc

    const/16 v17, 0x12

    move-object v13, v0

    move/from16 v18, p6

    move/from16 v19, p7

    invoke-direct/range {v13 .. v19}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;-><init>(IIIIII)V

    return-object v0

    .line 119
    :cond_3d
    const-wide v7, 0x3fd999999999999aL    # 0.4

    sub-int v13, v2, v1

    mul-int/lit8 v13, v13, 0x14

    int-to-double v5, v13

    const-wide v17, 0x408f400000000000L    # 1000.0

    div-double v5, v5, v17

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 120
    invoke-static/range {p1 .. p3}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->countHits([FII)I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v5

    .line 121
    const-wide v5, 0x3fdccccccccccccdL    # 0.45

    sub-double/2addr v7, v5

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v7, v7, v17

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp01(D)D

    move-result-wide v7

    .line 122
    nop

    .line 123
    const-wide v17, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide/16 v19, 0x0

    cmpl-double v13, v9, v17

    if-lez v13, :cond_81

    cmpl-double v13, v11, v9

    if-lez v13, :cond_81

    .line 124
    div-double v9, v11, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    const-wide/high16 v15, 0x4034000000000000L    # 20.0

    mul-double v9, v9, v15

    goto :goto_83

    .line 126
    :cond_81
    move-wide/from16 v9, v19

    :goto_83
    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    sub-double/2addr v9, v15

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    div-double/2addr v9, v15

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp01(D)D

    move-result-wide v9

    .line 127
    invoke-static/range {p0 .. p5}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->sustainShare([F[FIID)D

    move-result-wide v0

    .line 128
    const-wide v17, 0x3fe8f5c28f5c28f6L    # 0.78

    mul-double v17, v17, v7

    const-wide v21, 0x3fcc28f5c28f5c29L    # 0.22

    mul-double v21, v21, v9

    add-double v17, v17, v21

    invoke-static/range {v17 .. v18}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp01(D)D

    move-result-wide v17

    .line 129
    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v21

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    sub-double v0, v21, v0

    mul-double v17, v17, v0

    invoke-static/range {v17 .. v18}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp01(D)D

    move-result-wide v0

    .line 131
    const-wide/high16 v17, 0x4030000000000000L    # 16.0

    const-wide/high16 v23, 0x4052000000000000L    # 72.0

    mul-double v23, v23, v0

    add-double v23, v23, v17

    invoke-static/range {v23 .. v24}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->iround(D)I

    move-result v2

    const/16 v13, 0xf

    const/16 v15, 0x5a

    invoke-static {v2, v13, v15}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result v15

    .line 132
    const-wide/high16 v23, 0x4043000000000000L    # 38.0

    const-wide/high16 v25, 0x403c000000000000L    # 28.0

    mul-double v25, v25, v0

    sub-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->iround(D)I

    move-result v2

    const/16 v13, 0x8

    const/16 v5, 0x28

    invoke-static {v2, v13, v5}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result v2

    .line 133
    const-wide v25, 0x4050800000000000L    # 66.0

    const-wide/high16 v27, 0x404f000000000000L    # 62.0

    mul-double v0, v0, v27

    sub-double v25, v25, v0

    invoke-static/range {v25 .. v26}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->iround(D)I

    move-result v0

    const/4 v1, 0x0

    const/16 v6, 0x46

    invoke-static {v0, v1, v6}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result v0

    .line 135
    const-wide v25, 0x3fc999999999999aL    # 0.2

    cmpg-double v16, v9, v25

    if-gez v16, :cond_109

    const-wide v9, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v16, v7, v9

    if-gez v16, :cond_109

    .line 136
    add-int/lit8 v0, v0, 0x8

    invoke-static {v0, v1, v6}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result v0

    .line 139
    :cond_109
    cmpl-double v7, v3, v19

    if-lez v7, :cond_146

    cmpl-double v7, v11, v19

    if-lez v7, :cond_146

    .line 140
    div-double/2addr v11, v3

    .line 141
    const-wide v3, 0x3fd6666666666666L    # 0.35

    cmpg-double v7, v11, v3

    if-gez v7, :cond_146

    .line 142
    sub-double v7, v3, v11

    div-double/2addr v7, v3

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp01(D)D

    move-result-wide v3

    .line 143
    int-to-double v7, v2

    sub-double v21, v21, v3

    mul-double v7, v7, v21

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    mul-double v9, v9, v3

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->iround(D)I

    move-result v2

    invoke-static {v2, v13, v5}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result v2

    .line 144
    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    mul-double v3, v3, v7

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->iround(D)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0, v1, v6}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result v0

    move/from16 v17, v0

    move/from16 v16, v2

    goto :goto_14a

    .line 147
    :cond_146
    move/from16 v17, v0

    move/from16 v16, v2

    :goto_14a
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-object v13, v0

    move/from16 v18, p6

    move/from16 v19, p7

    invoke-direct/range {v13 .. v19}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;-><init>(IIIIII)V

    return-object v0
.end method

.method private static sensitivityFor(DD)I
    .registers 7

    .line 156
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-lez v2, :cond_54

    cmpg-double v2, p2, v0

    if-gtz v2, :cond_b

    goto :goto_54

    .line 159
    :cond_b
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    div-double/2addr p0, p2

    const-wide p2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    .line 160
    const-wide p2, 0x3fbeb851eb851eb8L    # 0.12

    const-wide v0, 0x3fec924924924924L    # 0.8928571428571428

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    .line 161
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    div-double/2addr p0, v0

    .line 162
    const-wide/high16 p2, -0x3fc4000000000000L    # -28.0

    const-wide/high16 v0, -0x3fb7000000000000L    # -50.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_39

    .line 163
    move-wide p0, v0

    goto :goto_3e

    .line 164
    :cond_39
    cmpl-double v0, p0, p2

    if-lez v0, :cond_3e

    .line 165
    move-wide p0, p2

    .line 167
    :cond_3e
    :goto_3e
    const-wide/high16 p2, 0x4049000000000000L    # 50.0

    add-double/2addr p0, p2

    const-wide/high16 p2, 0x4036000000000000L    # 22.0

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->iround(D)I

    move-result p0

    const/4 p1, 0x0

    const/16 p2, 0x64

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->clamp(III)I

    move-result p0

    return p0

    .line 157
    :cond_54
    :goto_54
    const/16 p0, 0x14

    return p0
.end method

.method private static smooth([Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;II)[Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;
    .registers 16

    .line 210
    array-length v0, p0

    .line 211
    new-array v1, v0, [Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    .line 212
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_61

    .line 213
    if-nez v2, :cond_a

    move v3, v2

    goto :goto_c

    :cond_a
    add-int/lit8 v3, v2, -0x1

    .line 214
    :goto_c
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_12

    move v4, v2

    goto :goto_14

    :cond_12
    add-int/lit8 v4, v2, 0x1

    .line 215
    :goto_14
    new-instance v12, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    aget-object v5, p0, v3

    iget v5, v5, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    aget-object v6, p0, v2

    iget v6, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    aget-object v7, p0, v4

    iget v7, v7, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    .line 216
    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->blend(III)I

    move-result v6

    aget-object v5, p0, v3

    iget v5, v5, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    aget-object v7, p0, v2

    iget v7, v7, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    aget-object v8, p0, v4

    iget v8, v8, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    .line 217
    invoke-static {v5, v7, v8}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->blend(III)I

    move-result v7

    aget-object v5, p0, v3

    iget v5, v5, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    aget-object v8, p0, v2

    iget v8, v8, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    aget-object v9, p0, v4

    iget v9, v9, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    .line 218
    invoke-static {v5, v8, v9}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->blend(III)I

    move-result v8

    aget-object v3, p0, v3

    iget v3, v3, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    aget-object v5, p0, v2

    iget v5, v5, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    aget-object v4, p0, v4

    iget v4, v4, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    .line 219
    invoke-static {v3, v5, v4}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->blend(III)I

    move-result v9

    move-object v5, v12

    move v10, p1

    move v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;-><init>(IIIIII)V

    aput-object v12, v1, v2

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 223
    :cond_61
    return-object v1
.end method

.method private static sustainShare([F[FIID)D
    .registers 13

    .line 262
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3e

    if-eqz p1, :cond_3e

    cmpg-double v2, p4, v0

    if-gtz v2, :cond_b

    goto :goto_3e

    .line 265
    :cond_b
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double p4, p4, v2

    .line 266
    nop

    .line 267
    nop

    .line 268
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 269
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    if-ge p2, p3, :cond_37

    .line 270
    aget v4, p0, p2

    float-to-double v4, v4

    cmpg-double v6, v4, p4

    if-gtz v6, :cond_27

    .line 271
    goto :goto_34

    .line 273
    :cond_27
    add-int/lit8 v2, v2, 0x1

    .line 274
    aget v4, p1, p2

    const v5, 0x3df5c28f    # 0.12f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_34

    .line 275
    add-int/lit8 v3, v3, 0x1

    .line 269
    :cond_34
    :goto_34
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    .line 278
    :cond_37
    if-nez v2, :cond_3a

    .line 279
    return-wide v0

    .line 281
    :cond_3a
    int-to-double p0, v3

    int-to-double p2, v2

    div-double/2addr p0, p2

    return-wide p0

    .line 263
    :cond_3e
    :goto_3e
    return-wide v0
.end method

.method private static usableLength([F[FI)I
    .registers 4

    .line 311
    nop

    .line 312
    if-eqz p0, :cond_7

    array-length v0, p0

    if-le p2, v0, :cond_7

    .line 313
    array-length p2, p0

    .line 315
    :cond_7
    if-eqz p1, :cond_d

    array-length v0, p1

    if-le p2, v0, :cond_d

    .line 316
    array-length p2, p1

    .line 318
    :cond_d
    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    if-gez p2, :cond_14

    goto :goto_15

    .line 321
    :cond_14
    return p2

    .line 319
    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method
