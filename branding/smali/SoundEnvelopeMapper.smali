.class public final Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;
.super Ljava/lang/Object;
.source "SoundEnvelopeMapper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static fillPercentLevels(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;I)V"
        }
    .end annotation

    .line 79
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->percentilePeak(Ljava/util/ArrayList;D)D

    move-result-wide v0

    .line 80
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 81
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4, v0, v1, p2}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->rmsToPercent(DDI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 83
    :cond_25
    return-void
.end method

.method public static percentilePeak(Ljava/util/ArrayList;D)D
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;D)D"
        }
    .end annotation

    .line 47
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    if-eqz p0, :cond_6e

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6e

    .line 50
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_32

    .line 52
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 53
    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_2f

    .line 54
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 57
    :cond_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_39

    .line 58
    return-wide v0

    .line 60
    :cond_39
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 61
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-double v4, p0

    mul-double p1, p1, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 62
    if-gez p1, :cond_50

    .line 63
    goto :goto_51

    .line 62
    :cond_50
    move v3, p1

    .line 65
    :goto_51
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt v3, p0, :cond_5d

    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 v3, p0, -0x1

    .line 68
    :cond_5d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    .line 69
    cmpg-double p2, p0, v0

    if-gez p2, :cond_6c

    .line 70
    goto :goto_6d

    .line 69
    :cond_6c
    move-wide v0, p0

    .line 72
    :goto_6d
    return-wide v0

    .line 48
    :cond_6e
    :goto_6e
    return-wide v0
.end method

.method public static rmsToPercent(DDI)I
    .registers 16

    .line 16
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-lez v3, :cond_5d

    cmpg-double v3, p2, v1

    if-gtz v3, :cond_c

    goto :goto_5d

    .line 19
    :cond_c
    div-double/2addr p0, p2

    .line 20
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p0, p2

    if-lez v3, :cond_14

    .line 21
    move-wide p0, p2

    .line 23
    :cond_14
    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {p0, p1, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    mul-double p0, p0, v3

    .line 24
    const-wide/high16 v3, -0x3fb7000000000000L    # -50.0

    int-to-double v5, p4

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    const-wide/high16 v9, 0x4036000000000000L    # 22.0

    mul-double v5, v5, v9

    add-double/2addr v5, v3

    .line 25
    cmpg-double p4, p0, v5

    if-gtz p4, :cond_35

    .line 26
    return v0

    .line 28
    :cond_35
    sub-double/2addr p0, v5

    neg-double v3, v5

    div-double/2addr p0, v3

    .line 29
    cmpg-double p4, p0, v1

    if-gez p4, :cond_3d

    .line 30
    goto :goto_44

    .line 31
    :cond_3d
    cmpl-double p4, p0, p2

    if-lez p4, :cond_43

    .line 32
    move-wide v1, p2

    goto :goto_44

    .line 31
    :cond_43
    move-wide v1, p0

    .line 34
    :goto_44
    const-wide p0, 0x3ff1eb851eb851ecL    # 1.12

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    .line 35
    mul-double p0, p0, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 36
    if-gez p1, :cond_57

    .line 37
    return v0

    .line 39
    :cond_57
    const/16 p0, 0x64

    if-le p1, p0, :cond_5c

    .line 40
    return p0

    .line 42
    :cond_5c
    return p1

    .line 17
    :cond_5d
    :goto_5d
    return v0
.end method
