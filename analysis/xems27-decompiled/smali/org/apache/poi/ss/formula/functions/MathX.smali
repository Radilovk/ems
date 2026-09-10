.class final Lorg/apache/poi/ss/formula/functions/MathX;
.super Ljava/lang/Object;
.source "MathX.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static acosh(D)D
    .locals 4
    .param p0, "d"    # D

    .line 341
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static asinh(D)D
    .locals 4
    .param p0, "d"    # D

    .line 349
    mul-double v0, p0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static atanh(D)D
    .locals 4
    .param p0, "d"    # D

    .line 357
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v2, p0, v0

    sub-double/2addr v0, p0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static average([D)D
    .locals 8
    .param p0, "values"    # [D

    .line 143
    const-wide/16 v0, 0x0

    .line 144
    .local v0, "ave":D
    const-wide/16 v2, 0x0

    .line 145
    .local v2, "sum":D
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, p0

    .local v5, "iSize":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 146
    aget-wide v6, p0, v4

    add-double/2addr v2, v6

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_0
    array-length v4, p0

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 149
    return-wide v0
.end method

.method public static ceiling(DD)D
    .locals 3
    .param p0, "n"    # D
    .param p2, "s"    # D

    .line 265
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    cmpl-double v2, p2, v0

    if-gtz v2, :cond_1

    :cond_0
    cmpl-double v2, p0, v0

    if-lez v2, :cond_2

    cmpg-double v2, p2, v0

    if-gez v2, :cond_2

    .line 266
    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .local v0, "c":D
    goto :goto_0

    .line 269
    .end local v0    # "c":D
    :cond_2
    cmpl-double v2, p0, v0

    if-eqz v2, :cond_4

    cmpl-double v2, p2, v0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    mul-double v0, v0, p2

    .line 272
    .restart local v0    # "c":D
    :cond_4
    :goto_0
    return-wide v0
.end method

.method public static cosh(D)D
    .locals 8
    .param p0, "d"    # D

    .line 365
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 366
    .local v2, "ePowX":D
    neg-double v4, p0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 367
    .local v0, "ePowNegX":D
    add-double v4, v2, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static factorial(I)D
    .locals 5
    .param p0, "n"    # I

    .line 286
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 288
    .local v0, "d":D
    if-ltz p0, :cond_2

    .line 289
    const/16 v2, 0xaa

    if-gt p0, v2, :cond_1

    .line 290
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p0, :cond_0

    .line 291
    int-to-double v3, v2

    mul-double v0, v0, v3

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 295
    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1

    .line 299
    :cond_2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 301
    :goto_1
    return-wide v0
.end method

.method public static floor(DD)D
    .locals 3
    .param p0, "n"    # D
    .param p2, "s"    # D

    .line 237
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    cmpl-double v2, p2, v0

    if-gtz v2, :cond_2

    :cond_0
    cmpl-double v2, p0, v0

    if-lez v2, :cond_1

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_2

    :cond_1
    cmpl-double v2, p2, v0

    if-nez v2, :cond_3

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_3

    .line 238
    :cond_2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .local v0, "f":D
    goto :goto_0

    .line 241
    .end local v0    # "f":D
    :cond_3
    cmpl-double v2, p0, v0

    if-eqz v2, :cond_5

    cmpl-double v2, p2, v0

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double v0, v0, p2

    .line 244
    .restart local v0    # "f":D
    :cond_5
    :goto_0
    return-wide v0
.end method

.method public static max([D)D
    .locals 6
    .param p0, "values"    # [D

    .line 212
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 213
    .local v0, "max":D
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p0

    .local v3, "iSize":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 214
    aget-wide v4, p0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_0
    return-wide v0
.end method

.method public static min([D)D
    .locals 6
    .param p0, "values"    # [D

    .line 199
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 200
    .local v0, "min":D
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p0

    .local v3, "iSize":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 201
    aget-wide v4, p0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_0
    return-wide v0
.end method

.method public static mod(DD)D
    .locals 5
    .param p0, "n"    # D
    .param p2, "d"    # D

    .line 321
    const-wide/16 v0, 0x0

    .line 323
    .local v0, "result":D
    const-wide/16 v2, 0x0

    cmpl-double v4, p2, v2

    if-nez v4, :cond_0

    .line 324
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/MathX;->sign(D)S

    move-result v2

    invoke-static {p2, p3}, Lorg/apache/poi/ss/formula/functions/MathX;->sign(D)S

    move-result v3

    if-ne v2, v3, :cond_1

    .line 327
    rem-double v0, p0, p2

    goto :goto_0

    .line 330
    :cond_1
    rem-double v2, p0, p2

    add-double/2addr v2, p2

    rem-double v0, v2, p2

    .line 333
    :goto_0
    return-wide v0
.end method

.method public static nChooseK(II)D
    .locals 7
    .param p0, "n"    # I
    .param p1, "k"    # I

    .line 402
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 403
    .local v0, "d":D
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    if-ge p0, p1, :cond_0

    goto :goto_1

    .line 407
    :cond_0
    sub-int v2, p0, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 408
    .local v2, "minnk":I
    sub-int v3, p0, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 409
    .local v3, "maxnk":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, p0, :cond_1

    .line 410
    add-int/lit8 v5, v4, 0x1

    int-to-double v5, v5

    mul-double v0, v0, v5

    .line 409
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 412
    .end local v4    # "i":I
    :cond_1
    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/MathX;->factorial(I)D

    move-result-wide v4

    div-double/2addr v0, v4

    goto :goto_2

    .line 404
    .end local v2    # "minnk":I
    .end local v3    # "maxnk":I
    :cond_2
    :goto_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 415
    :goto_2
    return-wide v0
.end method

.method public static product([D)D
    .locals 6
    .param p0, "values"    # [D

    .line 183
    const-wide/16 v0, 0x0

    .line 184
    .local v0, "product":D
    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    .line 185
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 186
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p0

    .local v3, "iSize":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 187
    aget-wide v4, p0, v2

    mul-double v0, v0, v4

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_0
    return-wide v0
.end method

.method public static round(DI)D
    .locals 2
    .param p0, "n"    # D
    .param p2, "p"    # I

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .local v0, "retval":D
    goto :goto_1

    .line 54
    .end local v0    # "retval":D
    :cond_1
    :goto_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 60
    .restart local v0    # "retval":D
    :goto_1
    return-wide v0
.end method

.method public static roundDown(DI)D
    .locals 2
    .param p0, "n"    # D
    .param p2, "p"    # I

    .line 109
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .local v0, "retval":D
    goto :goto_1

    .line 110
    .end local v0    # "retval":D
    :cond_1
    :goto_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 116
    .restart local v0    # "retval":D
    :goto_1
    return-wide v0
.end method

.method public static roundUp(DI)D
    .locals 2
    .param p0, "n"    # D
    .param p2, "p"    # I

    .line 81
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .local v0, "retval":D
    goto :goto_1

    .line 82
    .end local v0    # "retval":D
    :cond_1
    :goto_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 88
    .restart local v0    # "retval":D
    :goto_1
    return-wide v0
.end method

.method public static sign(D)S
    .locals 3
    .param p0, "d"    # D

    .line 131
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    int-to-short v0, v0

    return v0
.end method

.method public static sinh(D)D
    .locals 8
    .param p0, "d"    # D

    .line 375
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 376
    .local v2, "ePowX":D
    neg-double v4, p0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 377
    .local v0, "ePowNegX":D
    sub-double v4, v2, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static sum([D)D
    .locals 6
    .param p0, "values"    # [D

    .line 158
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p0

    .local v3, "iSize":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 160
    aget-wide v4, p0, v2

    add-double/2addr v0, v4

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_0
    return-wide v0
.end method

.method public static sumsq([D)D
    .locals 8
    .param p0, "values"    # [D

    .line 170
    const-wide/16 v0, 0x0

    .line 171
    .local v0, "sumsq":D
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p0

    .local v3, "iSize":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 172
    aget-wide v4, p0, v2

    aget-wide v6, p0, v2

    mul-double v4, v4, v6

    add-double/2addr v0, v4

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_0
    return-wide v0
.end method

.method public static tanh(D)D
    .locals 8
    .param p0, "d"    # D

    .line 385
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 386
    .local v2, "ePowX":D
    neg-double v4, p0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 387
    .local v0, "ePowNegX":D
    sub-double v4, v2, v0

    add-double v6, v2, v0

    div-double/2addr v4, v6

    return-wide v4
.end method
