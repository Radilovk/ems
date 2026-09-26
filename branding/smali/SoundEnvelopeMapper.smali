.class public final Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;
.super Ljava/lang/Object;
.source "SoundEnvelopeMapper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static percentilePeak([FID)D
    .registers 12

    .line 46
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    if-eqz p0, :cond_48

    if-gtz p1, :cond_7

    goto :goto_48

    .line 49
    :cond_7
    new-array v2, p1, [F

    .line 50
    nop

    .line 51
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v4, p1, :cond_23

    array-length v6, p0

    if-ge v4, v6, :cond_23

    .line 52
    aget v6, p0, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_20

    .line 53
    add-int/lit8 v6, v5, 0x1

    aget v7, p0, v4

    aput v7, v2, v5

    move v5, v6

    .line 51
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 56
    :cond_23
    if-nez v5, :cond_26

    .line 57
    return-wide v0

    .line 59
    :cond_26
    invoke-static {v2, v3, v5}, Ljava/util/Arrays;->sort([FII)V

    .line 60
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    div-double/2addr p2, p0

    add-int/lit8 p0, v5, -0x1

    int-to-double v6, p0

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    .line 61
    if-gez p2, :cond_39

    .line 62
    goto :goto_3a

    .line 61
    :cond_39
    move v3, p2

    .line 64
    :goto_3a
    if-lt v3, v5, :cond_3d

    .line 65
    goto :goto_3e

    .line 64
    :cond_3d
    move p0, v3

    .line 67
    :goto_3e
    aget p0, v2, p0

    float-to-double p0, p0

    .line 68
    cmpg-double p2, p0, v0

    if-gez p2, :cond_46

    goto :goto_47

    :cond_46
    move-wide v0, p0

    :goto_47
    return-wide v0

    .line 47
    :cond_48
    :goto_48
    return-wide v0
.end method

.method public static rmsToPercent(DDI)I
    .registers 16

    .line 15
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-lez v3, :cond_5d

    cmpg-double v3, p2, v1

    if-gtz v3, :cond_c

    goto :goto_5d

    .line 18
    :cond_c
    div-double/2addr p0, p2

    .line 19
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p0, p2

    if-lez v3, :cond_14

    .line 20
    move-wide p0, p2

    .line 22
    :cond_14
    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {p0, p1, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    mul-double p0, p0, v3

    .line 23
    const-wide/high16 v3, -0x3fb7000000000000L    # -50.0

    int-to-double v5, p4

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    const-wide/high16 v9, 0x4036000000000000L    # 22.0

    mul-double v5, v5, v9

    add-double/2addr v5, v3

    .line 24
    cmpg-double p4, p0, v5

    if-gtz p4, :cond_35

    .line 25
    return v0

    .line 27
    :cond_35
    sub-double/2addr p0, v5

    neg-double v3, v5

    div-double/2addr p0, v3

    .line 28
    cmpg-double p4, p0, v1

    if-gez p4, :cond_3d

    .line 29
    goto :goto_44

    .line 30
    :cond_3d
    cmpl-double p4, p0, p2

    if-lez p4, :cond_43

    .line 31
    move-wide v1, p2

    goto :goto_44

    .line 30
    :cond_43
    move-wide v1, p0

    .line 33
    :goto_44
    const-wide p0, 0x3ff1eb851eb851ecL    # 1.12

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    .line 34
    mul-double p0, p0, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 35
    if-gez p1, :cond_57

    .line 36
    return v0

    .line 38
    :cond_57
    const/16 p0, 0x64

    if-le p1, p0, :cond_5c

    .line 39
    return p0

    .line 41
    :cond_5c
    return p1

    .line 16
    :cond_5d
    :goto_5d
    return v0
.end method
