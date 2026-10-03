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
.field public static final MAX:I = 0x3

.field public static final NEED_BASELINE:I = 0x2

.field public static final NEED_CONFIRM:I = 0x3

.field public static final NEED_CONTACT:I = 0x1

.field public static final NEED_DISAGREE:I = 0x4

.field public static final NEED_NONE:I


# instance fields
.field final age:I

.field final heightCm:I

.field final hist:Lorg/json/JSONArray;

.field final male:Z

.field public need:I

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
.method public constructor <init>(Lorg/json/JSONArray;ZII)V
    .registers 6

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->need:I

    .line 74
    if-eqz p1, :cond_1f

    :goto_16
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->hist:Lorg/json/JSONArray;

    .line 75
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->male:Z

    .line 76
    iput p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->age:I

    .line 77
    iput p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->heightCm:I

    .line 78
    return-void

    .line 74
    :cond_1f
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_16
.end method

.method static gap(DD)D
    .registers 12

    .prologue
    .line 37
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
    .line 211
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [D

    .line 212
    const/4 v0, 0x0

    .line 213
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

    .line 214
    if-eqz p2, :cond_2a

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    aget-wide v2, v0, p1

    .line 215
    :goto_1e
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_54

    .line 216
    add-int/lit8 v0, v1, 0x1

    aput-wide v2, v4, v1

    :goto_28
    move v1, v0

    .line 218
    goto :goto_c

    .line 214
    :cond_2a
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    aget-wide v2, v0, p1

    goto :goto_1e

    .line 219
    :cond_2f
    if-nez v1, :cond_34

    .line 220
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 224
    :goto_33
    return-wide v0

    .line 222
    :cond_34
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    .line 223
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 224
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

    .line 46
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;-><init>()V

    .line 47
    if-eqz p0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    if-nez v0, :cond_14

    .line 48
    :cond_10
    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    move-object v0, v3

    .line 61
    :goto_13
    return-object v0

    .line 51
    :cond_14
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    .line 52
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_23
    iput-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    .line 53
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-nez v0, :cond_2d

    move-object v0, v3

    .line 54
    goto :goto_13

    :cond_2b
    move v0, v2

    .line 52
    goto :goto_23

    .line 56
    :cond_2d
    aget-wide v6, v4, v1

    aget-wide v8, v4, v10

    invoke-static {v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->gap(DD)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->armGap:D

    .line 57
    aget-wide v6, v4, v11

    aget-wide v8, v4, v12

    invoke-static {v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->gap(DD)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->legGap:D

    .line 58
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

    .line 59
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

    .line 60
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

    .line 61
    goto/16 :goto_13

    :cond_9b
    move v0, v2

    .line 58
    goto :goto_5e

    :cond_9d
    move v0, v2

    .line 59
    goto :goto_7d
.end method

.method static seg(DD)Z
    .registers 8

    .prologue
    .line 41
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
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quality(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->decide()I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->need:I

    .line 114
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->need:I

    return v0
.end method

.method agree(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)Z
    .registers 12

    .prologue
    .line 150
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v0

    iget-object v2, p2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v3, p2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v2

    .line 151
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->male:Z

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->age:I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->heightCm:I

    invoke-static {p1, v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D

    move-result-wide v4

    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->male:Z

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->age:I

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->heightCm:I

    invoke-static {p2, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D

    move-result-wide v6

    .line 152
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->gap(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3c

    sub-double v0, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3c

    const/4 v0, 0x1

    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public count()I
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method decide()I
    .registers 6

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 119
    if-lt v0, v1, :cond_c

    .line 135
    :cond_b
    :goto_b
    return v2

    .line 122
    :cond_c
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    .line 123
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->ok()Z

    move-result v0

    if-nez v0, :cond_1e

    move v2, v3

    .line 124
    goto :goto_b

    .line 126
    :cond_1e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->goodSteps()Ljava/util/List;

    move-result-object v4

    .line 127
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_41

    .line 128
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->hasHistory()Z

    move-result v0

    if-nez v0, :cond_30

    .line 129
    const/4 v2, 0x2

    goto :goto_b

    .line 131
    :cond_30
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->far(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_3d
    move v2, v0

    goto :goto_b

    :cond_3f
    move v0, v2

    goto :goto_3d

    .line 134
    :cond_41
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->agree(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v2, 0x4

    goto :goto_b
.end method

.method far(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)Z
    .registers 20

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->hist:Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->stateOf(Lorg/json/JSONArray;)Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->on()Z

    move-result v3

    if-nez v3, :cond_10

    .line 159
    const/4 v2, 0x0

    .line 171
    :goto_f
    return v2

    .line 161
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->male:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->age:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->heightCm:I

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D

    move-result-wide v4

    .line 162
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 163
    const/4 v2, 0x0

    goto :goto_f

    .line 165
    :cond_2a
    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    sub-long/2addr v8, v10

    long-to-double v8, v8

    const-wide v10, 0x4194997000000000L    # 8.64E7

    div-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 166
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    cmpl-double v3, v6, v8

    if-gtz v3, :cond_5b

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iget-wide v10, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->jump(D)D

    move-result-wide v10

    cmpl-double v3, v8, v10

    if-lez v3, :cond_5d

    .line 167
    :cond_5b
    const/4 v2, 0x0

    goto :goto_f

    .line 169
    :cond_5d
    iget-wide v8, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    const-wide v10, 0x3fd3333333333333L    # 0.3

    const-wide v12, 0x3fdccccccccccccdL    # 0.45

    neg-double v14, v6

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iget-wide v14, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 170
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    iget-wide v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    const-wide v12, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v6, v12

    add-double/2addr v2, v6

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 171
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v12

    sub-double v4, v10, v4

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v6

    cmpl-double v2, v4, v2

    if-lez v2, :cond_ae

    const/4 v2, 0x1

    goto/16 :goto_f

    :cond_ae
    const/4 v2, 0x0

    goto/16 :goto_f
.end method

.method good()I
    .registers 4

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
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

    .line 101
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->ok()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 102
    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    .line 104
    goto :goto_8

    .line 105
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
    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->quals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->ok()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 145
    :cond_2c
    return-object v2
.end method

.method hasHistory()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 89
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->hist:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 90
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->hist:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_1c

    const-string v3, "fat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 92
    const/4 v1, 0x1

    .line 95
    :cond_1b
    return v1

    .line 89
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public lastQuality()Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;
    .registers 3

    .prologue
    .line 85
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
    .line 179
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->goodSteps()Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    .line 183
    :goto_12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 184
    const/4 v0, 0x0

    .line 207
    :goto_19
    return-object v0

    .line 186
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_29

    .line 187
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    goto :goto_19

    .line 189
    :cond_29
    new-instance v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    .line 192
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 193
    const/4 v0, 0x0

    .line 194
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

    .line 195
    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    add-double/2addr v6, v10

    .line 196
    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_94

    .line 197
    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    add-double/2addr v4, v10

    .line 198
    add-int/lit8 v0, v2, 0x1

    :goto_5a
    move v2, v0

    .line 200
    goto :goto_3e

    .line 201
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

    .line 202
    if-lez v2, :cond_8f

    int-to-double v2, v2

    div-double v2, v4, v2

    :goto_74
    iput-wide v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    .line 203
    const/4 v0, 0x0

    :goto_77
    const/4 v2, 0x5

    if-ge v0, v2, :cond_92

    .line 204
    iget-object v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->mid(Ljava/util/List;IZ)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 205
    iget-object v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->mid(Ljava/util/List;IZ)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 202
    :cond_8f
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_74

    :cond_92
    move-object v0, v8

    .line 207
    goto :goto_19

    :cond_94
    move v0, v2

    goto :goto_5a

    :cond_96
    move-object v1, v0

    goto/16 :goto_12
.end method

.method public planned()I
    .registers 3

    .prologue
    .line 229
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->need:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_a
.end method
