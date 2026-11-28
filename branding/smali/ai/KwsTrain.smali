.class public final Lcom/isaigu/gymapp/ai/KwsTrain;
.super Ljava/lang/Object;
.source "KwsTrain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/KwsTrain$Pack;
    }
.end annotation


# static fields
.field public static EPOCHS:I = 0x0

.field public static OWN_NEG:I = 0x0

.field public static PER_CUT:I = 0x0

.field static final Q:F = 12.0f

.field static final SR:I = 0x3e80

.field public static THRESHOLD:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 330
    const/16 v0, 0x96

    sput v0, Lcom/isaigu/gymapp/ai/KwsTrain;->PER_CUT:I

    const/16 v0, 0x9c4

    sput v0, Lcom/isaigu/gymapp/ai/KwsTrain;->OWN_NEG:I

    .line 331
    const/16 v0, 0x32

    sput v0, Lcom/isaigu/gymapp/ai/KwsTrain;->EPOCHS:I

    .line 353
    const v0, 0x3f75c28f    # 0.96f

    sput v0, Lcom/isaigu/gymapp/ai/KwsTrain;->THRESHOLD:F

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hall([F[FLjava/util/Random;)V
    .registers 9

    .prologue
    .line 169
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 170
    const/4 v1, 0x3

    if-ge v0, v1, :cond_19

    .line 171
    if-nez v0, :cond_2d

    array-length v0, p0

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/KwsTrain;->music(ILjava/util/Random;)[F

    move-result-object v0

    .line 172
    :goto_f
    invoke-virtual {p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    mul-double/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/isaigu/gymapp/ai/KwsTrain;->mix([F[FD)V

    .line 174
    :cond_19
    const/4 v0, 0x0

    :goto_1a
    array-length v1, p0

    if-ge v0, v1, :cond_3c

    .line 175
    aget v1, p0, v0

    invoke-virtual {p2}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 171
    :cond_2d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    array-length v0, p0

    invoke-static {p1, v0, p2}, Lcom/isaigu/gymapp/ai/KwsTrain;->slice([FILjava/util/Random;)[F

    move-result-object v0

    goto :goto_f

    :cond_36
    array-length v0, p0

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/KwsTrain;->hiss(ILjava/util/Random;)[F

    move-result-object v0

    goto :goto_f

    .line 177
    :cond_3c
    return-void
.end method

.method public static hiss(ILjava/util/Random;)[F
    .registers 10

    .prologue
    .line 60
    new-array v1, p0, [F

    .line 61
    const-wide/16 v2, 0x0

    .line 62
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_28

    .line 63
    invoke-virtual {p1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v4

    .line 64
    const-wide v6, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v2, v6

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    .line 65
    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 67
    :cond_28
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/KwsTrain;->unit([F)[F

    move-result-object v0

    return-object v0
.end method

.method public static loadPack(Ljava/io/InputStream;)Lcom/isaigu/gymapp/ai/KwsTrain$Pack;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 285
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 286
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v2, 0x4b575350    # 1.4111568E7f

    if-ne v0, v2, :cond_1c

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sget v2, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    if-eq v0, v2, :cond_24

    .line 287
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not a KWS pack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_24
    new-instance v4, Lcom/isaigu/gymapp/ai/KwsTrain$Pack;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/KwsTrain$Pack;-><init>()V

    .line 290
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 291
    sget v0, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    new-array v6, v0, [B

    move v2, v1

    .line 292
    :goto_32
    if-ge v2, v5, :cond_54

    .line 293
    invoke-virtual {v3, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 294
    sget v0, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    new-array v7, v0, [F

    move v0, v1

    .line 295
    :goto_3c
    sget v8, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    if-ge v0, v8, :cond_4b

    .line 296
    aget-byte v8, v6, v0

    int-to-float v8, v8

    const/high16 v9, 0x41400000    # 12.0f

    div-float/2addr v8, v9

    aput v8, v7, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 298
    :cond_4b
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/KwsTrain$Pack;->neg:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_32

    .line 300
    :cond_54
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 301
    new-array v2, v0, [F

    iput-object v2, v4, Lcom/isaigu/gymapp/ai/KwsTrain$Pack;->people:[F

    .line 302
    :goto_5c
    if-ge v1, v0, :cond_6d

    .line 303
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/KwsTrain$Pack;->people:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/KwsTrain;->unmulaw(B)F

    move-result v5

    aput v5, v2, v1

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 305
    :cond_6d
    return-object v4
.end method

.method public static mix([F[FD)V
    .registers 18

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    array-length v2, p0

    const/4 v0, 0x0

    move v4, v1

    :goto_4
    if-ge v0, v2, :cond_14

    aget v1, p0, v0

    .line 145
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 144
    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_4

    .line 147
    :cond_14
    const-wide/16 v2, 0x0

    .line 148
    const/4 v0, 0x0

    .line 149
    array-length v5, p0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v5, :cond_35

    aget v6, p0, v1

    .line 150
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3fb999999999999aL    # 0.1

    float-to-double v12, v4

    mul-double/2addr v10, v12

    cmpl-double v7, v8, v10

    if-lez v7, :cond_32

    .line 151
    mul-float/2addr v6, v6

    float-to-double v6, v6

    add-double/2addr v2, v6

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 149
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 155
    :cond_35
    if-lez v0, :cond_48

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 156
    :goto_3a
    const-wide/16 v4, 0x0

    .line 157
    array-length v3, p1

    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v3, :cond_4b

    aget v6, p1, v2

    .line 158
    mul-float/2addr v6, v6

    float-to-double v6, v6

    add-double/2addr v4, v6

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 155
    :cond_48
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_3a

    .line 160
    :cond_4b
    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    div-double v2, v4, v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v2, v4

    .line 161
    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double v4, p2, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 162
    const/4 v0, 0x0

    :goto_6c
    array-length v2, p0

    if-ge v0, v2, :cond_7d

    array-length v2, p1

    if-ge v0, v2, :cond_7d

    .line 163
    aget v2, p0, v0

    aget v3, p1, v0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    aput v2, p0, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 165
    :cond_7d
    return-void
.end method

.method static mulaw(F)B
    .registers 6

    .prologue
    .line 309
    const v0, -0x39000200    # -32767.0f

    const v1, 0x46fffe00    # 32767.0f

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v1, v0

    .line 310
    if-gez v1, :cond_2d

    const/16 v0, 0x80

    .line 311
    :goto_13
    const/16 v2, 0x7f7b

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit16 v3, v1, 0x84

    .line 312
    const/4 v2, 0x7

    .line 313
    const/16 v1, 0x4000

    :goto_22
    and-int v4, v3, v1

    if-nez v4, :cond_2f

    if-lez v2, :cond_2f

    .line 314
    add-int/lit8 v2, v2, -0x1

    .line 313
    shr-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 310
    :cond_2d
    const/4 v0, 0x0

    goto :goto_13

    .line 316
    :cond_2f
    add-int/lit8 v1, v2, 0x3

    shr-int v1, v3, v1

    and-int/lit8 v1, v1, 0xf

    .line 317
    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    return v0
.end method

.method public static music(ILjava/util/Random;)[F
    .registers 28

    .prologue
    .line 29
    move/from16 v0, p0

    new-array v5, v0, [F

    .line 30
    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v2

    .line 31
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v6

    const-wide v8, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v2, v8

    double-to-int v8, v2

    .line 32
    const/4 v3, 0x0

    :goto_1f
    move/from16 v0, p0

    if-ge v3, v0, :cond_a8

    .line 33
    const-wide v10, 0x405b800000000000L    # 110.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-double v14, v2

    const-wide/high16 v16, 0x4028000000000000L    # 12.0

    div-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    .line 34
    add-int v2, v3, v8

    move/from16 v0, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 35
    const/4 v2, 0x4

    new-array v12, v2, [I

    fill-array-data v12, :array_13c

    array-length v13, v12

    const/4 v2, 0x0

    move v4, v2

    :goto_4d
    if-ge v4, v13, :cond_a5

    aget v2, v12, v4

    .line 36
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    int-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4028000000000000L    # 12.0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v14, v10

    move v2, v3

    .line 37
    :goto_60
    if-ge v2, v9, :cond_a1

    .line 38
    int-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide v18, 0x40cf400000000000L    # 16000.0

    div-double v16, v16, v18

    .line 39
    aget v18, v5, v2

    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v22, v22, v14

    mul-double v22, v22, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide v22, 0x3fb999999999999aL    # 0.1

    const-wide v24, 0x402921fb54442d18L    # 12.566370614359172

    mul-double v24, v24, v14

    mul-double v16, v16, v24

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v22

    add-double v16, v16, v20

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v18

    aput v16, v5, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 35
    :cond_a1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4d

    .line 32
    :cond_a5
    add-int/2addr v3, v8

    goto/16 :goto_1f

    .line 43
    :cond_a8
    const-wide v2, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v2, v6

    double-to-int v4, v2

    .line 44
    const/4 v2, 0x0

    move v3, v2

    :goto_b1
    move/from16 v0, p0

    if-ge v3, v0, :cond_136

    .line 45
    sub-int v2, p0, v3

    const/16 v6, 0x960

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 46
    const/4 v2, 0x0

    :goto_be
    if-ge v2, v6, :cond_fd

    .line 47
    int-to-double v8, v2

    const-wide v10, 0x40cf400000000000L    # 16000.0

    div-double/2addr v8, v10

    .line 48
    add-int v7, v3, v2

    aget v10, v5, v7

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    const-wide/high16 v18, 0x4054000000000000L    # 80.0

    neg-double v0, v8

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x403e000000000000L    # 30.0

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    mul-double v14, v14, v16

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    neg-double v8, v8

    const-wide/high16 v14, 0x4032000000000000L    # 18.0

    mul-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    double-to-float v8, v8

    add-float/2addr v8, v10

    aput v8, v5, v7

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_be

    .line 50
    :cond_fd
    div-int/lit8 v2, v4, 0x2

    add-int v6, v3, v2

    sub-int v2, p0, v6

    const/16 v7, 0x280

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 51
    const/4 v2, 0x0

    :goto_10a
    if-ge v2, v7, :cond_131

    .line 52
    add-int v8, v6, v2

    aget v9, v5, v8

    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v10

    neg-int v12, v2

    int-to-double v12, v12

    const-wide v14, 0x40cf400000000000L    # 16000.0

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x4054000000000000L    # 80.0

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v5, v8

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_10a

    .line 44
    :cond_131
    add-int v2, v3, v4

    move v3, v2

    goto/16 :goto_b1

    .line 55
    :cond_136
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/KwsTrain;->unit([F)[F

    move-result-object v2

    return-object v2

    .line 35
    nop

    :array_13c
    .array-data 4
        0x0
        0x4
        0x7
        0xc
    .end array-data
.end method

.method public static negatives([FI[FLjava/util/Random;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI[F",
            "Ljava/util/Random;",
            "Ljava/util/List",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 216
    const/16 v4, 0x2990

    .line 217
    array-length v2, p0

    const/16 v3, 0x2991

    if-ge v2, v3, :cond_8

    .line 230
    :cond_7
    return-void

    .line 220
    :cond_8
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, p1, :cond_7

    .line 221
    array-length v2, p0

    sub-int/2addr v2, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 222
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, -0x3fcc000000000000L    # -20.0

    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    const-wide/high16 v12, 0x4037000000000000L    # 23.0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 223
    new-array v7, v4, [F

    .line 224
    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v4, :cond_37

    .line 225
    add-int v8, v5, v2

    aget v8, p0, v8

    mul-float/2addr v8, v6

    aput v8, v7, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 227
    :cond_37
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v7, v0, v1}, Lcom/isaigu/gymapp/ai/KwsTrain;->hall([F[FLjava/util/Random;)V

    .line 228
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/Kws;->logmel([F)[F

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/Kws;->window([FI)[F

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a
.end method

.method public static otherWord([FI[FLjava/util/Random;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI[F",
            "Ljava/util/Random;",
            "Ljava/util/List",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/KwsTrain;->positives([FI[FLjava/util/Random;Ljava/util/List;Ljava/util/List;)V

    .line 236
    invoke-interface {p4, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    return-void
.end method

.method public static positives([FI[FLjava/util/Random;Ljava/util/List;Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI[F",
            "Ljava/util/Random;",
            "Ljava/util/List",
            "<[F>;",
            "Ljava/util/List",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 186
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, p1, :cond_d3

    .line 187
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/KwsTrain;->speed([FD)[F

    move-result-object v2

    .line 188
    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextBoolean()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 189
    const-wide v6, 0x3fc999999999999aL    # 0.2

    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v0, p3

    invoke-static {v2, v6, v7, v0}, Lcom/isaigu/gymapp/ai/KwsTrain;->reverb([FDLjava/util/Random;)[F

    move-result-object v2

    .line 191
    :cond_31
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, -0x3fcc000000000000L    # -20.0

    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    const-wide/high16 v12, 0x4037000000000000L    # 23.0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v5, v6

    .line 192
    const-wide v6, 0x3fa999999999999aL    # 0.05

    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    const-wide v10, 0x3fc5c28f5c28f5c3L    # 0.17

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 193
    array-length v3, v2

    add-int/2addr v3, v6

    add-int/lit16 v3, v3, 0x12c0

    new-array v7, v3, [F

    .line 194
    const/4 v3, 0x0

    :goto_63
    array-length v8, v2

    if-ge v3, v8, :cond_70

    .line 195
    add-int v8, v6, v3

    aget v9, v2, v3

    mul-float/2addr v9, v5

    aput v9, v7, v8

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 197
    :cond_70
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v7, v0, v1}, Lcom/isaigu/gymapp/ai/KwsTrain;->hall([F[FLjava/util/Random;)V

    .line 198
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/Kws;->logmel([F)[F

    move-result-object v3

    .line 199
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/Kws;->frames([F)I

    move-result v5

    .line 200
    const/16 v7, 0x40

    if-ge v5, v7, :cond_88

    .line 186
    :cond_83
    :goto_83
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_2

    .line 203
    :cond_88
    div-int/lit16 v6, v6, 0xa0

    array-length v2, v2

    div-int/lit16 v2, v2, 0xa0

    .line 204
    const/4 v7, 0x1

    const/16 v8, 0x3c

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x40

    add-int/lit8 v8, v8, -0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    .line 205
    const/4 v8, 0x0

    add-int/lit8 v9, v5, -0x40

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 206
    invoke-static {v3, v7}, Lcom/isaigu/gymapp/ai/Kws;->window([FI)[F

    move-result-object v8

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v5, v5, -0x40

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 208
    if-eqz p5, :cond_83

    if-ltz v2, :cond_83

    if-eq v2, v7, :cond_83

    .line 209
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/ai/Kws;->window([FI)[F

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 212
    :cond_d3
    return-void
.end method

.method public static reverb([FDLjava/util/Random;)[F
    .registers 17

    .prologue
    .line 96
    const-wide v0, 0x40cf400000000000L    # 16000.0

    mul-double/2addr v0, p1

    double-to-int v4, v0

    .line 97
    new-array v5, v4, [F

    .line 98
    const-wide/16 v2, 0x0

    .line 99
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v4, :cond_2d

    .line 100
    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v6

    const-wide v8, -0x3fe4666666666666L    # -6.9

    int-to-double v10, v0

    mul-double/2addr v8, v10

    int-to-double v10, v4

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v1, v6

    aput v1, v5, v0

    .line 101
    aget v1, v5, v0

    aget v6, v5, v0

    mul-float/2addr v1, v6

    float-to-double v6, v1

    add-double/2addr v2, v6

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 103
    :cond_2d
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v5, v0

    .line 104
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    .line 105
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v0, v2, v0

    double-to-float v2, v0

    .line 107
    array-length v0, p0

    new-array v6, v0, [F

    .line 108
    const/4 v0, 0x0

    :goto_42
    array-length v1, p0

    if-ge v0, v1, :cond_50

    .line 109
    aget v1, v6, v0

    aget v3, p0, v0

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    aput v1, v6, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 111
    :cond_50
    const/4 v1, 0x1

    :goto_51
    if-ge v1, v4, :cond_6d

    .line 112
    aget v0, v5, v1

    mul-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    move v0, v1

    .line 113
    :goto_5a
    array-length v7, p0

    if-ge v0, v7, :cond_6a

    .line 114
    aget v7, v6, v0

    sub-int v8, v0, v1

    aget v8, p0, v8

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    aput v7, v6, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 111
    :cond_6a
    add-int/lit8 v1, v1, 0x4

    goto :goto_51

    .line 117
    :cond_6d
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    .line 118
    const/4 v0, 0x0

    :goto_72
    array-length v1, p0

    if-ge v0, v1, :cond_86

    .line 119
    aget v1, p0, v0

    aget v7, p0, v0

    mul-float/2addr v1, v7

    float-to-double v8, v1

    add-double/2addr v4, v8

    .line 120
    aget v1, v6, v0

    aget v7, v6, v0

    mul-float/2addr v1, v7

    float-to-double v8, v1

    add-double/2addr v2, v8

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 122
    :cond_86
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v0, v2

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 123
    const/4 v0, 0x0

    :goto_94
    array-length v2, v6

    if-ge v0, v2, :cond_9f

    .line 124
    aget v2, v6, v0

    mul-float/2addr v2, v1

    aput v2, v6, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 126
    :cond_9f
    return-object v6
.end method

.method public static savePack(Ljava/util/List;[F)[B
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;[F)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 265
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 266
    const v0, 0x4b575350    # 1.4111568E7f

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 267
    sget v0, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 268
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 269
    sget v0, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    new-array v5, v0, [B

    .line 270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move v1, v2

    .line 271
    :goto_32
    sget v7, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    if-ge v1, v7, :cond_51

    .line 272
    const/16 v7, -0x7f

    const/16 v8, 0x7f

    aget v9, v0, v1

    const/high16 v10, 0x41400000    # 12.0f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 274
    :cond_51
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_25

    .line 276
    :cond_55
    array-length v0, p1

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 277
    array-length v0, p1

    :goto_5a
    if-ge v2, v0, :cond_68

    aget v1, p1, v2

    .line 278
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/KwsTrain;->mulaw(F)B

    move-result v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 280
    :cond_68
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 281
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static silence(I[FLjava/util/Random;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[F",
            "Ljava/util/Random;",
            "Ljava/util/List",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 241
    const/16 v3, 0x2990

    .line 242
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    if-ge v2, p0, :cond_53

    .line 243
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 244
    if-nez v0, :cond_36

    invoke-static {v3, p2}, Lcom/isaigu/gymapp/ai/KwsTrain;->music(ILjava/util/Random;)[F

    move-result-object v0

    .line 245
    :goto_11
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 246
    const/4 v1, 0x0

    :goto_23
    if-ge v1, v3, :cond_43

    .line 247
    aget v5, v0, v1

    mul-float/2addr v5, v4

    invoke-virtual {p2}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v0, v1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 244
    :cond_36
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    invoke-static {p1, v3, p2}, Lcom/isaigu/gymapp/ai/KwsTrain;->slice([FILjava/util/Random;)[F

    move-result-object v0

    goto :goto_11

    :cond_3e
    invoke-static {v3, p2}, Lcom/isaigu/gymapp/ai/KwsTrain;->hiss(ILjava/util/Random;)[F

    move-result-object v0

    goto :goto_11

    .line 249
    :cond_43
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Kws;->logmel([F)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/Kws;->window([FI)[F

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 251
    :cond_53
    return-void
.end method

.method public static slice([FILjava/util/Random;)[F
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 72
    new-array v2, p1, [F

    .line 73
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_a

    :cond_8
    move-object v0, v2

    .line 80
    :goto_9
    return-object v0

    .line 76
    :cond_a
    array-length v0, p0

    if-le v0, p1, :cond_20

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 77
    :goto_13
    if-ge v1, p1, :cond_22

    .line 78
    add-int v3, v0, v1

    array-length v4, p0

    rem-int/2addr v3, v4

    aget v3, p0, v3

    aput v3, v2, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_20
    move v0, v1

    .line 76
    goto :goto_13

    .line 80
    :cond_22
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/KwsTrain;->unit([F)[F

    move-result-object v0

    goto :goto_9
.end method

.method public static speed([FD)[F
    .registers 14

    .prologue
    .line 130
    array-length v0, p0

    int-to-double v0, v0

    div-double/2addr v0, p1

    double-to-int v2, v0

    .line 131
    new-array v3, v2, [F

    .line 132
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_33

    .line 133
    int-to-double v4, v1

    mul-double/2addr v4, p1

    .line 134
    double-to-int v0, v4

    .line 135
    int-to-double v6, v0

    sub-double/2addr v4, v6

    .line 136
    add-int/lit8 v6, v0, 0x1

    array-length v7, p0

    if-ge v6, v7, :cond_29

    aget v6, p0, v0

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v4

    mul-double/2addr v6, v8

    add-int/lit8 v0, v0, 0x1

    aget v0, p0, v0

    float-to-double v8, v0

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    double-to-float v0, v4

    :goto_23
    aput v0, v3, v1

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 136
    :cond_29
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget v0, p0, v0

    goto :goto_23

    .line 138
    :cond_33
    return-object v3
.end method

.method public static train(Ljava/util/List;[FLcom/isaigu/gymapp/ai/KwsTrain$Pack;JLcom/isaigu/gymapp/ai/Kws$Progress;)Lcom/isaigu/gymapp/ai/Kws;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;[F",
            "Lcom/isaigu/gymapp/ai/KwsTrain$Pack;",
            "J",
            "Lcom/isaigu/gymapp/ai/Kws$Progress;",
            ")",
            "Lcom/isaigu/gymapp/ai/Kws;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4, p3, p4}, Ljava/util/Random;-><init>(J)V

    .line 339
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v6, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/isaigu/gymapp/ai/KwsTrain$Pack;->neg:Ljava/util/List;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 341
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 342
    sget v2, Lcom/isaigu/gymapp/ai/KwsTrain;->PER_CUT:I

    iget-object v3, p2, Lcom/isaigu/gymapp/ai/KwsTrain$Pack;->people:[F

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/ai/KwsTrain;->positives([FI[FLjava/util/Random;Ljava/util/List;Ljava/util/List;)V

    goto :goto_15

    .line 344
    :cond_29
    if-eqz p1, :cond_32

    .line 345
    sget v1, Lcom/isaigu/gymapp/ai/KwsTrain;->OWN_NEG:I

    iget-object v2, p2, Lcom/isaigu/gymapp/ai/KwsTrain$Pack;->people:[F

    invoke-static {p1, v1, v2, v4, v6}, Lcom/isaigu/gymapp/ai/KwsTrain;->negatives([FI[FLjava/util/Random;Ljava/util/List;)V

    .line 347
    :cond_32
    sget v7, Lcom/isaigu/gymapp/ai/KwsTrain;->EPOCHS:I

    move-wide v8, p3

    move-object/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/ai/Kws;->train(Ljava/util/List;Ljava/util/List;IJLcom/isaigu/gymapp/ai/Kws$Progress;)Lcom/isaigu/gymapp/ai/Kws;

    move-result-object v1

    .line 348
    sget v2, Lcom/isaigu/gymapp/ai/KwsTrain;->THRESHOLD:F

    iput v2, v1, Lcom/isaigu/gymapp/ai/Kws;->threshold:F

    .line 349
    return-object v1
.end method

.method static unit([F)[F
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 84
    const-wide/16 v2, 0x0

    .line 85
    array-length v4, p0

    move v1, v0

    :goto_5
    if-ge v1, v4, :cond_f

    aget v5, p0, v1

    .line 86
    mul-float/2addr v5, v5

    float-to-double v6, v5

    add-double/2addr v2, v6

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 88
    :cond_f
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x1

    array-length v6, p0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v2, v6

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v2, v4, v2

    double-to-float v1, v2

    .line 89
    :goto_26
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 90
    aget v2, p0, v0

    mul-float/2addr v2, v1

    aput v2, p0, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 92
    :cond_31
    return-object p0
.end method

.method static unmulaw(B)F
    .registers 4

    .prologue
    .line 321
    xor-int/lit8 v0, p0, -0x1

    and-int/lit16 v0, v0, 0xff

    .line 322
    and-int/lit16 v1, v0, 0x80

    shr-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, 0x7

    and-int/lit8 v0, v0, 0xf

    .line 323
    shl-int/lit8 v0, v0, 0x3

    add-int/lit16 v0, v0, 0x84

    shl-int/2addr v0, v2

    add-int/lit16 v0, v0, -0x84

    .line 324
    if-eqz v1, :cond_18

    neg-int v0, v0

    int-to-float v0, v0

    :goto_17
    return v0

    :cond_18
    int-to-float v0, v0

    goto :goto_17
.end method
