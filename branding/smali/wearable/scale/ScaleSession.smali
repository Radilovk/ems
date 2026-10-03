.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleSession;
.super Ljava/lang/Object;
.source "ScaleSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;
    }
.end annotation


# static fields
.field public static final MAX:I = 0x6

.field public static final NEW:I = 0x1

.field public static final REPEAT:I


# instance fields
.field final age:I

.field final heightCm:I

.field final male:Z

.field final quals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;",
            ">;"
        }
    .end annotation
.end field

.field final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZII)V
    .registers 5

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    .line 69
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->male:Z

    .line 70
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->age:I

    .line 71
    iput p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->heightCm:I

    .line 72
    return-void
.end method

.method static eq(DD)Z
    .registers 8

    .prologue
    .line 123
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_22

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v2

    if-gez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_a

    :cond_22
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static gap(DD)D
    .registers 12

    .prologue
    .line 35
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    add-double v4, p0, p2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method static mid(Ljava/util/List;IZ)D
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;",
            ">;IZ)D"
        }
    .end annotation

    .prologue
    .line 190
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [D

    .line 191
    const/4 v0, 0x0

    .line 192
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    .line 193
    if-eqz p2, :cond_2a

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    aget-wide v2, v0, p1

    .line 194
    :goto_1e
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_54

    .line 195
    add-int/lit8 v0, v1, 0x1

    aput-wide v2, v4, v1

    :goto_28
    move v1, v0

    .line 197
    goto :goto_c

    .line 193
    :cond_2a
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    aget-wide v2, v0, p1

    goto :goto_1e

    .line 198
    :cond_2f
    if-nez v1, :cond_34

    .line 199
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 203
    :goto_33
    return-wide v0

    .line 201
    :cond_34
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    .line 202
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 203
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    div-int/lit8 v1, v1, 0x2

    aget-wide v0, v0, v1

    goto :goto_33

    :cond_45
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v0, v2

    div-int/lit8 v1, v1, 0x2

    aget-wide v0, v0, v1

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_33

    :cond_54
    move v0, v1

    goto :goto_28
.end method

.method public static quality(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;
    .registers 14

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;-><init>()V

    .line 45
    if-eqz p0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    if-nez v0, :cond_14

    .line 46
    :cond_10
    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    move-object v0, v3

    .line 59
    :goto_13
    return-object v0

    .line 49
    :cond_14
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    .line 50
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_23
    iput-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    .line 51
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-nez v0, :cond_2d

    move-object v0, v3

    .line 52
    goto :goto_13

    :cond_2b
    move v0, v2

    .line 50
    goto :goto_23

    .line 54
    :cond_2d
    aget-wide v6, v4, v1

    aget-wide v8, v4, v10

    invoke-static {v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->gap(DD)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->armGap:D

    .line 55
    aget-wide v6, v4, v11

    aget-wide v8, v4, v12

    invoke-static {v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->gap(DD)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->legGap:D

    .line 56
    aget-wide v6, v4, v1

    aget-wide v8, v5, v1

    invoke-static {v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->seg(DD)Z

    move-result v0

    if-eqz v0, :cond_9b

    aget-wide v6, v4, v10

    aget-wide v8, v5, v10

    invoke-static {v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->seg(DD)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->armGap:D

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_9b

    move v0, v1

    :goto_5e
    iput-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->arms:Z

    .line 57
    aget-wide v6, v4, v11

    aget-wide v8, v5, v11

    invoke-static {v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->seg(DD)Z

    move-result v0

    if-eqz v0, :cond_9d

    aget-wide v6, v4, v12

    aget-wide v8, v5, v12

    invoke-static {v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->seg(DD)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->legGap:D

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_9d

    move v0, v1

    :goto_7d
    iput-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->legs:Z

    .line 58
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->hasTrunk()Z

    move-result v0

    if-eqz v0, :cond_95

    aget-wide v6, v4, v2

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_96

    aget-wide v4, v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_96

    :cond_95
    move v2, v1

    :cond_96
    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->trunk:Z

    move-object v0, v3

    .line 59
    goto/16 :goto_13

    :cond_9b
    move v0, v2

    .line 56
    goto :goto_5e

    :cond_9d
    move v0, v2

    .line 57
    goto :goto_7d
.end method

.method public static same(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    move v3, v2

    move v4, v2

    .line 113
    :goto_4
    const/4 v0, 0x5

    if-ge v3, v0, :cond_36

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    aget-wide v6, v0, v3

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    aget-wide v8, v0, v3

    invoke-static {v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->eq(DD)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    aget-wide v6, v0, v3

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    aget-wide v8, v0, v3

    invoke-static {v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->eq(DD)Z

    move-result v0

    if-nez v0, :cond_24

    .line 119
    :cond_23
    :goto_23
    return v2

    .line 117
    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    aget-wide v6, v0, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_34

    move v0, v1

    :goto_2f
    or-int/2addr v4, v0

    .line 113
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_34
    move v0, v2

    .line 117
    goto :goto_2f

    .line 119
    :cond_36
    if-nez v4, :cond_4a

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iget-wide v6, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v4, v6

    if-gez v0, :cond_23

    :cond_4a
    move v2, v1

    goto :goto_23
.end method

.method static seg(DD)Z
    .registers 8

    .prologue
    .line 39
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_31

    const-wide v0, 0x4092c00000000000L    # 1200.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_31

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_31

    cmpg-double v0, p2, p0

    if-gez v0, :cond_31

    div-double v0, p2, p0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_31

    div-double v0, p2, p0

    const-wide v2, 0x3fef5c28f5c28f5cL    # 0.98

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_31

    const/4 v0, 0x1

    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method


# virtual methods
.method public add(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_5

    move v0, v1

    .line 107
    :goto_4
    return v0

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    .line 98
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->same(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 99
    goto :goto_4

    .line 102
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_2a

    move v0, v1

    .line 103
    goto :goto_4

    .line 105
    :cond_2a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quality(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public count()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public full()I
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->good()I

    move-result v0

    return v0
.end method

.method good()I
    .registers 4

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    .line 85
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->ok()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 86
    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    .line 88
    goto :goto_8

    .line 89
    :cond_1e
    return v1

    :cond_1f
    move v0, v1

    goto :goto_1c
.end method

.method goodSteps()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->ok()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 138
    :cond_2c
    return-object v2
.end method

.method public lastQuality()Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    goto :goto_9
.end method

.method public merged()Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
    .registers 13

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->goodSteps()Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    .line 162
    :goto_12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 163
    const/4 v0, 0x0

    .line 186
    :goto_19
    return-object v0

    .line 165
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_29

    .line 166
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    goto :goto_19

    .line 168
    :cond_29
    new-instance v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    .line 171
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 172
    const/4 v0, 0x0

    .line 173
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    .line 174
    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    add-double/2addr v6, v10

    .line 175
    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_94

    .line 176
    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    add-double/2addr v4, v10

    .line 177
    add-int/lit8 v0, v2, 0x1

    :goto_5a
    move v2, v0

    .line 179
    goto :goto_3e

    .line 180
    :cond_5c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v10, v0

    div-double/2addr v6, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v10

    iput-wide v6, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 181
    if-lez v2, :cond_8f

    int-to-double v2, v2

    div-double v2, v4, v2

    :goto_74
    iput-wide v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    .line 182
    const/4 v0, 0x0

    :goto_77
    const/4 v2, 0x5

    if-ge v0, v2, :cond_92

    .line 183
    iget-object v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->mid(Ljava/util/List;IZ)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 184
    iget-object v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->mid(Ljava/util/List;IZ)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 181
    :cond_8f
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_74

    :cond_92
    move-object v0, v8

    .line 186
    goto :goto_19

    :cond_94
    move v0, v2

    goto :goto_5a

    :cond_96
    move-object v1, v0

    goto/16 :goto_12
.end method

.method public spread()Z
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->goodSteps()Ljava/util/List;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_d

    .line 150
    :goto_c
    return v2

    .line 147
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    .line 148
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v4

    iget-object v3, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v6, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v6

    .line 149
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->male:Z

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->age:I

    iget v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->heightCm:I

    invoke-static {v0, v3, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D

    move-result-wide v8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->male:Z

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->age:I

    iget v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->heightCm:I

    invoke-static {v1, v0, v3, v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D

    move-result-wide v0

    .line 150
    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->gap(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_5f

    sub-double v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v4

    if-lez v0, :cond_62

    :cond_5f
    const/4 v0, 0x1

    :goto_60
    move v2, v0

    goto :goto_c

    :cond_62
    move v0, v2

    goto :goto_60
.end method
