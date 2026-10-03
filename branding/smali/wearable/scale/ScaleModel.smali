.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleModel;
.super Ljava/lang/Object;
.source "ScaleModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;
    }
.end annotation


# static fields
.field static final AT50:D

.field static final GEO:D = 0.8736

.field static final Q:D = 0.02

.field static final R:D = 1.0

.field static final TRUNK_SHARE:D = 0.037

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 37
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->AT50:D

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static body(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIID)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;
    .registers 24

    .prologue
    .line 108
    invoke-static/range {p0 .. p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->withFat(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIID)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v2

    .line 109
    if-nez v2, :cond_8

    .line 110
    const/4 v2, 0x0

    .line 122
    :cond_7
    :goto_7
    return-object v2

    .line 112
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v8

    .line 113
    iget-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->leanKg:D

    move-wide/from16 v16, v0

    .line 114
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_7

    const-wide/16 v4, 0x0

    cmpl-double v3, v16, v4

    if-lez v3, :cond_7

    .line 115
    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->weightKg:D

    .line 118
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v4, v0

    move/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->ffmSun(ZDDD)D

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 119
    move/from16 v0, p3

    int-to-double v12, v0

    move/from16 v10, p1

    move/from16 v11, p2

    move-wide v14, v8

    invoke-static/range {v10 .. v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->smmJanssen(ZIDD)D

    move-result-wide v8

    div-double/2addr v8, v4

    const-wide v10, 0x3fd851eb851eb852L    # 0.38

    const-wide v12, 0x3fe3d70a3d70a3d7L    # 0.62

    invoke-static/range {v8 .. v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->clamp(DDD)D

    move-result-wide v4

    mul-double v4, v4, v16

    .line 120
    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->skeletalPct:D

    goto :goto_7
.end method

.method static clamp(DDD)D
    .registers 8

    .prologue
    .line 82
    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static entry(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIJLcom/isaigu/gymapp/wearable/scale/ScaleModel$State;)Lorg/json/JSONObject;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static/range {p0 .. p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D

    move-result-wide v10

    .line 187
    const/4 v2, 0x0

    .line 188
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    .line 189
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_37

    .line 190
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v6, v10, v6

    sub-double/2addr v4, v6

    mul-double v8, v2, v4

    .line 191
    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    move-object/from16 v3, p6

    move-wide/from16 v4, p4

    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->step(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;JDD)D

    move-result-wide v2

    .line 192
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    div-double/2addr v2, v12

    sub-double v2, v6, v2

    mul-double v6, v4, v2

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->body(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIID)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v2

    .line 194
    :cond_37
    move-wide/from16 v0, p4

    invoke-static {p0, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->toJson(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;J)Lorg/json/JSONObject;

    move-result-object v3

    .line 195
    const-string v4, "v"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    if-eqz v2, :cond_7f

    .line 197
    const-string v2, "fr"

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 198
    const-string v2, "lr"

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 199
    const-string v2, "var"

    move-object/from16 v0, p6

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 201
    :cond_7f
    if-lez p2, :cond_88

    .line 202
    const-string v2, "pa"

    move/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    :cond_88
    return-object v3
.end method

.method public static fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D
    .registers 16

    .prologue
    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->of(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v8

    .line 88
    if-nez v8, :cond_9

    .line 89
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 100
    :cond_8
    :goto_8
    return-wide v0

    .line 91
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v6

    .line 92
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 93
    iget-wide v0, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    goto :goto_8

    .line 95
    :cond_1a
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 96
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    int-to-double v2, p3

    move v1, p1

    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->ffmSun(ZDDD)D

    move-result-wide v0

    sub-double v0, v4, v0

    mul-double/2addr v0, v10

    div-double/2addr v0, v4

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->clamp(DDD)D

    move-result-wide v0

    .line 97
    iget-boolean v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatFromScale:Z

    if-eqz v2, :cond_3b

    .line 98
    iget-wide v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_8

    .line 100
    :cond_3b
    if-eqz p1, :cond_8

    iget-wide v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_8
.end method

.method static ffmSun(ZDDD)D
    .registers 14

    .prologue
    .line 72
    mul-double v0, p1, p1

    div-double/2addr v0, p5

    .line 73
    if-eqz p0, :cond_20

    const-wide v2, -0x3fdaa4dd2f1a9fbeL    # -10.678

    const-wide v4, 0x3fe4dd2f1a9fbe77L    # 0.652

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3fd0c49ba5e353f8L    # 0.262

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    const-wide v2, 0x3f8eb851eb851eb8L    # 0.015

    mul-double/2addr v2, p5

    add-double/2addr v0, v2

    :goto_1f
    return-wide v0

    :cond_20
    const-wide v2, -0x3fdcf126e978d4feL    # -9.529

    const-wide v4, 0x3fe645a1cac08312L    # 0.696

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3fc5810624dd2f1bL    # 0.168

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    const-wide v2, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double/2addr v2, p5

    add-double/2addr v0, v2

    goto :goto_1f
.end method

.method static jump(D)D
    .registers 6

    .prologue
    .line 43
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    const-wide v2, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static mark(Lorg/json/JSONObject;ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 257
    const-string v0, "male"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 258
    const-string v0, "hc"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    return-void
.end method

.method public static r50([D[D)D
    .registers 16

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide v12, 0x3ff0978d4fdf3b64L    # 1.037

    const/4 v1, 0x1

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 52
    move v0, v1

    :goto_c
    const/4 v2, 0x5

    if-ge v0, v2, :cond_21

    .line 53
    aget-wide v2, p0, v0

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_1b

    aget-wide v2, p1, v0

    cmpl-double v2, v2, v10

    if-gez v2, :cond_1e

    .line 54
    :cond_1b
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 67
    :goto_1d
    return-wide v0

    .line 52
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 57
    :cond_21
    aget-wide v2, p0, v1

    const/4 v0, 0x3

    aget-wide v4, p0, v0

    add-double/2addr v2, v4

    const/4 v0, 0x2

    aget-wide v4, p0, v0

    add-double/2addr v2, v4

    const/4 v0, 0x4

    aget-wide v4, p0, v0

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    .line 58
    aget-wide v0, p1, v1

    const/4 v4, 0x3

    aget-wide v4, p1, v4

    add-double/2addr v0, v4

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    add-double/2addr v0, v4

    const/4 v4, 0x4

    aget-wide v4, p1, v4

    add-double/2addr v0, v4

    div-double/2addr v0, v6

    .line 59
    aget-wide v4, p0, v8

    aget-wide v6, p1, v8

    .line 60
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v8, v4, v8

    if-ltz v8, :cond_65

    cmpg-double v8, v4, v10

    if-gtz v8, :cond_65

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_65

    cmpg-double v8, v6, v4

    if-gtz v8, :cond_65

    .line 61
    add-double/2addr v2, v4

    .line 62
    add-double/2addr v0, v6

    .line 67
    :goto_59
    const-wide v4, 0x3febf487fcb923a3L    # 0.8736

    sub-double/2addr v0, v2

    sget-wide v6, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->AT50:D

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    goto :goto_1d

    .line 64
    :cond_65
    mul-double/2addr v2, v12

    .line 65
    mul-double/2addr v0, v12

    goto :goto_59
.end method

.method public static reading(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
    .registers 10

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 168
    new-instance v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 170
    const-string v0, "w"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 171
    const-string v0, "z20"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v0, "z100"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 172
    const/4 v0, 0x0

    move v4, v0

    :goto_20
    const/4 v0, 0x5

    if-ge v4, v0, :cond_4b

    .line 173
    iget-object v8, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    if-eqz v6, :cond_47

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {v6, v4, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    :goto_31
    aput-wide v0, v8, v4

    .line 174
    iget-object v8, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    if-eqz v7, :cond_49

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {v7, v4, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    :goto_41
    aput-wide v0, v8, v4

    .line 172
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_20

    :cond_47
    move-wide v0, v2

    .line 173
    goto :goto_31

    :cond_49
    move-wide v0, v2

    .line 174
    goto :goto_41

    .line 176
    :cond_4b
    const-string v0, "sfat"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    .line 177
    return-object v5
.end method

.method public static rebuild(Lorg/json/JSONArray;ZII)Lorg/json/JSONArray;
    .registers 14

    .prologue
    .line 237
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 238
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;-><init>()V

    .line 239
    const/4 v0, 0x0

    move v7, v0

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_43

    .line 240
    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 241
    if-nez v8, :cond_1c

    .line 239
    :goto_18
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c

    .line 245
    :cond_1c
    :try_start_1c
    const-string v0, "z20"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->reading(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->entry(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIJLcom/isaigu/gymapp/wearable/scale/ScaleModel$State;)Lorg/json/JSONObject;

    move-result-object v0

    .line 246
    :goto_35
    invoke-static {v0, p1, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->mark(Lorg/json/JSONObject;ZI)V

    .line 247
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_3b} :catch_3c

    goto :goto_18

    .line 248
    :catch_3c
    move-exception v0

    .line 249
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_18

    :cond_41
    move-object v0, v8

    .line 245
    goto :goto_35

    .line 252
    :cond_43
    return-object v9
.end method

.method static smmJanssen(ZIDD)D
    .registers 12

    .prologue
    .line 78
    mul-double v0, p2, p2

    div-double/2addr v0, p4

    const-wide v2, 0x3fd9a9fbe76c8b44L    # 0.401

    mul-double/2addr v2, v0

    if-eqz p0, :cond_2c

    const-wide v0, 0x400e99999999999aL    # 3.825

    :goto_10
    add-double/2addr v0, v2

    const-wide v2, 0x3fb22d0e56041893L    # 0.071

    const/16 v4, 0x12

    const/16 v5, 0x5a

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x40146872b020c49cL    # 5.102

    add-double/2addr v0, v2

    return-wide v0

    :cond_2c
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method public static stale(Lorg/json/JSONArray;ZII)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 225
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 226
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 227
    if-eqz v2, :cond_39

    const-string v3, "z20"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_37

    const-string v3, "pa"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p2, :cond_37

    const-string v3, "hc"

    .line 228
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p3, :cond_37

    const-string v3, "male"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_39

    .line 229
    :cond_37
    const/4 v1, 0x1

    .line 232
    :cond_38
    return v1

    .line 225
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static stateOf(Lorg/json/JSONArray;)Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;
    .registers 7

    .prologue
    .line 209
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;-><init>()V

    .line 210
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_46

    .line 211
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_47

    const-string v3, "lean"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_47

    .line 213
    const-string v0, "lean"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 214
    const-string v0, "var"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    .line 215
    const-string v0, "w"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    .line 216
    const-string v0, "t"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    .line 220
    :cond_46
    return-object v1

    .line 210
    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_b
.end method

.method public static step(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;JDD)D
    .registers 22

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->on()Z

    move-result v2

    if-eqz v2, :cond_5c

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 143
    :goto_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->on()Z

    move-result v4

    if-eqz v4, :cond_33

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_33

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    sub-double v4, p3, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static/range {p3 .. p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->jump(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5f

    .line 144
    :cond_33
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 145
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    .line 158
    :goto_3b
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double v4, v4, p3

    const-wide v6, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double v6, v6, p3

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->clamp(DDD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 159
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    .line 160
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    .line 161
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    return-wide v2

    .line 142
    :cond_5c
    const-wide/16 v2, 0x0

    goto :goto_17

    .line 147
    :cond_5f
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    sub-double v4, p3, v4

    .line 148
    const-wide v6, 0x3fd3333333333333L    # 0.3

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    neg-double v10, v2

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 149
    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    mul-double/2addr v6, v4

    add-double/2addr v6, v8

    .line 150
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    const-wide v12, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v2, v12

    add-double/2addr v2, v10

    const-wide v10, 0x3fb70a3d70a3d70aL    # 0.09

    mul-double/2addr v10, v4

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 151
    sub-double v8, p5, v6

    .line 152
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    .line 153
    mul-double v10, v8, v8

    div-double/2addr v10, v2

    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_b8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v8

    mul-double/2addr v10, v8

    div-double v2, v10, v2

    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    div-double/2addr v2, v10

    .line 154
    :goto_a9
    add-double/2addr v2, v4

    div-double v2, v4, v2

    .line 155
    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 156
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v2, v6, v2

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    goto :goto_3b

    .line 153
    :cond_b8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_a9
.end method
