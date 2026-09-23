.class public final Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;
.super Ljava/lang/Object;
.source "SoundEnvelopeMapper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static percentilePeak([FID)D
    .registers 16

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    .line 46
    if-eqz p0, :cond_7

    if-gtz p1, :cond_8

    .line 68
    :cond_7
    :goto_7
    return-wide v2

    .line 49
    :cond_8
    new-array v6, p1, [F

    move v5, v4

    move v1, v4

    .line 51
    :goto_c
    if-ge v5, p1, :cond_22

    array-length v0, p0

    if-ge v5, v0, :cond_22

    .line 52
    aget v0, p0, v5

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_45

    .line 53
    add-int/lit8 v0, v1, 0x1

    aget v7, p0, v5

    aput v7, v6, v1

    .line 51
    :goto_1e
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_c

    .line 56
    :cond_22
    if-eqz v1, :cond_7

    .line 59
    invoke-static {v6, v4, v1}, Ljava/util/Arrays;->sort([FII)V

    .line 60
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v8, p2, v8

    add-int/lit8 v0, v1, -0x1

    int-to-double v10, v0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    .line 61
    if-gez v0, :cond_37

    move v0, v4

    .line 64
    :cond_37
    if-lt v0, v1, :cond_3b

    .line 65
    add-int/lit8 v0, v1, -0x1

    .line 67
    :cond_3b
    aget v0, v6, v0

    float-to-double v0, v0

    .line 68
    cmpg-double v4, v0, v2

    if-gez v4, :cond_43

    move-wide v0, v2

    :cond_43
    move-wide v2, v0

    goto :goto_7

    :cond_45
    move v0, v1

    goto :goto_1e
.end method

.method public static rmsToPercent(DDI)I
    .registers 13

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-lez v0, :cond_c

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_e

    .line 16
    :cond_c
    const/4 v0, 0x0

    .line 41
    :cond_d
    :goto_d
    return v0

    .line 18
    :cond_e
    div-double v0, p0, p2

    .line 19
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_18

    .line 20
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 22
    :cond_18
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 23
    const-wide/high16 v2, -0x3fb7000000000000L    # -50.0

    int-to-double v4, p4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4036000000000000L    # 22.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 24
    cmpg-double v4, v0, v2

    if-gtz v4, :cond_38

    .line 25
    const/4 v0, 0x0

    goto :goto_d

    .line 27
    :cond_38
    sub-double/2addr v0, v2

    neg-double v2, v2

    div-double/2addr v0, v2

    .line 28
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_58

    .line 29
    const-wide/16 v0, 0x0

    .line 33
    :cond_43
    :goto_43
    const-wide v2, 0x3ff1eb851eb851ecL    # 1.12

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 34
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 35
    if-gez v0, :cond_61

    .line 36
    const/4 v0, 0x0

    goto :goto_d

    .line 30
    :cond_58
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_43

    .line 31
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_43

    .line 38
    :cond_61
    const/16 v1, 0x64

    if-le v0, v1, :cond_d

    .line 39
    const/16 v0, 0x64

    goto :goto_d
.end method
