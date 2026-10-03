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
.field static final AGE_HOLD_H:D = 12.0

.field static final AGE_LSC:D = 2.0

.field static final AT50:D

.field static final GEO:D = 0.8736

.field static final Q:D = 0.02

.field static final QA:D = 1.0E-6

.field static final R:D = 1.0

.field static final RA:D = 1.44E-4

.field static final TRUNK_SHARE:D = 0.037

.field public static final VERSION:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 41
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static body(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIID)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;
    .registers 24

    .prologue
    .line 122
    invoke-static/range {p0 .. p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->withFat(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIID)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v2

    .line 123
    if-nez v2, :cond_8

    .line 124
    const/4 v2, 0x0

    .line 136
    :cond_7
    :goto_7
    return-object v2

    .line 126
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v8

    .line 127
    iget-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->leanKg:D

    move-wide/from16 v16, v0

    .line 128
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_7

    const-wide/16 v4, 0x0

    cmpl-double v3, v16, v4

    if-lez v3, :cond_7

    .line 129
    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->weightKg:D

    .line 132
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v4, v0

    move/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->ffmSun(ZDDD)D

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 133
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

    .line 134
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
    .line 96
    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static entry(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIJLcom/isaigu/gymapp/wearable/scale/ScaleModel$State;)Lorg/json/JSONObject;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 247
    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->entry(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIJLcom/isaigu/gymapp/wearable/scale/ScaleModel$State;D)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static entry(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIJLcom/isaigu/gymapp/wearable/scale/ScaleModel$State;D)Lorg/json/JSONObject;
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static/range {p0 .. p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D

    move-result-wide v24

    .line 254
    const/4 v13, 0x0

    .line 255
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 256
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_69

    .line 257
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v8, v24, v8

    sub-double/2addr v6, v8

    mul-double v10, v4, v6

    .line 258
    invoke-virtual/range {p6 .. p6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->on()Z

    move-result v4

    if-eqz v4, :cond_11e

    const-wide/16 v4, 0x0

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    sub-long v6, p4, v6

    long-to-double v6, v6

    const-wide v8, 0x4194997000000000L    # 8.64E7

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 259
    :goto_33
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    invoke-static/range {v5 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->step(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;JDD)D

    move-result-wide v4

    .line 260
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    div-double/2addr v4, v12

    sub-double v4, v8, v4

    mul-double v8, v6, v4

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->body(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIID)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v13

    .line 261
    if-eqz v13, :cond_69

    move-object/from16 v12, p6

    move-wide/from16 v14, p4

    move/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, p3

    move-wide/from16 v21, p7

    .line 262
    invoke-static/range {v12 .. v22}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->trait(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;JDZIID)V

    .line 265
    :cond_69
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-static {v0, v13, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->toJson(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;J)Lorg/json/JSONObject;

    move-result-object v4

    .line 266
    const-string v5, "v"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    if-eqz v13, :cond_fd

    .line 268
    const-string v5, "fr"

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v24

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 269
    const-string v5, "lr"

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 270
    const-string v5, "var"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 271
    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_e1

    .line 272
    const-string v5, "ash"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 273
    const-string v5, "asv"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 275
    :cond_e1
    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_fd

    .line 276
    const-string v5, "pag"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 277
    const-string v5, "pagT"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ageT:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 280
    :cond_fd
    if-lez p2, :cond_106

    .line 281
    const-string v5, "pa"

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 283
    :cond_106
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_11d

    .line 284
    const-string v5, "rhr"

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v6, v6, p7

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 286
    :cond_11d
    return-object v4

    .line 258
    :cond_11e
    const-wide/16 v16, 0x0

    goto/16 :goto_33
.end method

.method public static fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D
    .registers 16

    .prologue
    .line 101
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->of(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v8

    .line 102
    if-nez v8, :cond_9

    .line 103
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 114
    :cond_8
    :goto_8
    return-wide v0

    .line 105
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v6

    .line 106
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 107
    iget-wide v0, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    goto :goto_8

    .line 109
    :cond_1a
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 110
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

    .line 111
    iget-boolean v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatFromScale:Z

    if-eqz v2, :cond_3b

    .line 112
    iget-wide v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_8

    .line 114
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
    .line 86
    mul-double v0, p1, p1

    div-double/2addr v0, p5

    .line 87
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
    .line 57
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
    .line 348
    const-string v0, "male"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 349
    const-string v0, "hc"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
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

    .line 66
    move v0, v1

    :goto_c
    const/4 v2, 0x5

    if-ge v0, v2, :cond_21

    .line 67
    aget-wide v2, p0, v0

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_1b

    aget-wide v2, p1, v0

    cmpl-double v2, v2, v10

    if-gez v2, :cond_1e

    .line 68
    :cond_1b
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 81
    :goto_1d
    return-wide v0

    .line 66
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 71
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

    .line 72
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

    .line 73
    aget-wide v4, p0, v8

    aget-wide v6, p1, v8

    .line 74
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

    .line 75
    add-double/2addr v2, v4

    .line 76
    add-double/2addr v0, v6

    .line 81
    :goto_59
    const-wide v4, 0x3febf487fcb923a3L    # 0.8736

    sub-double/2addr v0, v2

    sget-wide v6, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->AT50:D

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    goto :goto_1d

    .line 78
    :cond_65
    mul-double/2addr v2, v12

    .line 79
    mul-double/2addr v0, v12

    goto :goto_59
.end method

.method public static reading(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
    .registers 10

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 229
    new-instance v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 231
    const-string v0, "w"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 232
    const-string v0, "z20"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v0, "z100"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 233
    const/4 v0, 0x0

    move v4, v0

    :goto_20
    const/4 v0, 0x5

    if-ge v4, v0, :cond_4b

    .line 234
    iget-object v8, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    if-eqz v6, :cond_47

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {v6, v4, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    :goto_31
    aput-wide v0, v8, v4

    .line 235
    iget-object v8, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    if-eqz v7, :cond_49

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {v7, v4, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    :goto_41
    aput-wide v0, v8, v4

    .line 233
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_20

    :cond_47
    move-wide v0, v2

    .line 234
    goto :goto_31

    :cond_49
    move-wide v0, v2

    .line 235
    goto :goto_41

    .line 237
    :cond_4b
    const-string v0, "sfat"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    .line 238
    return-object v5
.end method

.method public static rebuild(Lorg/json/JSONArray;ZII)Lorg/json/JSONArray;
    .registers 16

    .prologue
    .line 323
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 324
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;-><init>()V

    .line 325
    const/4 v0, 0x0

    move v9, v0

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_60

    .line 326
    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 327
    if-nez v10, :cond_1c

    .line 325
    :goto_18
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_c

    .line 331
    :cond_1c
    :try_start_1c
    const-string v0, "z20"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 332
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->reading(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "rhr"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v10, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->entry(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIJLcom/isaigu/gymapp/wearable/scale/ScaleModel$State;D)Lorg/json/JSONObject;

    move-result-object v0

    .line 334
    :goto_3d
    if-eq v0, v10, :cond_52

    const-string v1, "n"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 335
    const-string v1, "n"

    const-string v2, "n"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    :cond_52
    invoke-static {v0, p1, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->mark(Lorg/json/JSONObject;ZI)V

    .line 338
    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_58} :catch_59

    goto :goto_18

    .line 339
    :catch_59
    move-exception v0

    .line 340
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_18

    :cond_5e
    move-object v0, v10

    .line 333
    goto :goto_3d

    .line 343
    :cond_60
    return-object v11
.end method

.method static smmJanssen(ZIDD)D
    .registers 12

    .prologue
    .line 92
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

    .line 311
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 312
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 313
    if-eqz v2, :cond_39

    const-string v3, "z20"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_37

    const-string v3, "pa"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p2, :cond_37

    const-string v3, "hc"

    .line 314
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p3, :cond_37

    const-string v3, "male"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_39

    .line 315
    :cond_37
    const/4 v1, 0x1

    .line 318
    :cond_38
    return v1

    .line 311
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static stateOf(Lorg/json/JSONArray;)Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;
    .registers 9

    .prologue
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 291
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;-><init>()V

    .line 292
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_6f

    .line 293
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 294
    if-eqz v2, :cond_70

    const-string v3, "lean"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    const-string v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_70

    .line 295
    const-string v0, "lean"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 296
    const-string v0, "var"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    .line 297
    const-string v0, "w"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    .line 298
    const-string v0, "t"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    .line 299
    const-string v0, "ash"

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    .line 300
    const-string v0, "asv"

    const-wide v4, 0x3f22dfd694ccab3fL    # 1.44E-4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    .line 301
    const-string v0, "pag"

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    .line 302
    const-string v0, "pagT"

    iget-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ageT:J

    .line 306
    :cond_6f
    return-object v1

    .line 292
    :cond_70
    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method public static step(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;JDD)D
    .registers 22

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->on()Z

    move-result v2

    if-eqz v2, :cond_63

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 162
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

    if-lez v4, :cond_66

    :cond_33
    const/4 v4, 0x1

    :goto_34
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    .line 163
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    if-eqz v4, :cond_68

    .line 164
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 165
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    .line 178
    :goto_42
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double v4, v4, p3

    const-wide v6, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double v6, v6, p3

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->clamp(DDD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 179
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    .line 180
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    .line 181
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    return-wide v2

    .line 161
    :cond_63
    const-wide/16 v2, 0x0

    goto :goto_17

    .line 162
    :cond_66
    const/4 v4, 0x0

    goto :goto_34

    .line 167
    :cond_68
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    sub-double v4, p3, v4

    .line 168
    const-wide v6, 0x3fd3333333333333L    # 0.3

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    neg-double v10, v2

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 169
    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    mul-double/2addr v6, v4

    add-double/2addr v6, v8

    .line 170
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

    .line 171
    sub-double v8, p5, v6

    .line 172
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    .line 173
    mul-double v10, v8, v8

    div-double/2addr v10, v2

    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_c1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v8

    mul-double/2addr v10, v8

    div-double v2, v10, v2

    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    div-double/2addr v2, v10

    .line 174
    :goto_b2
    add-double/2addr v2, v4

    div-double v2, v4, v2

    .line 175
    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 176
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v2, v6, v2

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    goto :goto_42

    .line 173
    :cond_c1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_b2
.end method

.method static trait(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;JDZIID)V
    .registers 25

    .prologue
    .line 191
    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->leanKg:D

    .line 192
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    add-double/2addr v2, v6

    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    add-double/2addr v2, v6

    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    const/4 v7, 0x4

    aget-wide v6, v6, v7

    add-double/2addr v2, v6

    .line 194
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_64

    div-double/2addr v2, v4

    .line 195
    :goto_20
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_4d

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-double v6, v2, v6

    if-lez v6, :cond_4d

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpg-double v6, v2, v6

    if-gez v6, :cond_4d

    .line 196
    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    if-nez v6, :cond_44

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 197
    :cond_44
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    .line 198
    const-wide v2, 0x3f22dfd694ccab3fL    # 1.44E-4

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    .line 206
    :cond_4d
    :goto_4d
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    if-eqz v2, :cond_55

    .line 207
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    .line 209
    :cond_55
    const/16 v2, 0x64

    move/from16 v0, p8

    if-lt v0, v2, :cond_63

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 223
    :cond_63
    :goto_63
    return-void

    .line 194
    :cond_64
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_20

    .line 200
    :cond_67
    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    .line 201
    const-wide v8, 0x3f22dfd694ccab3fL    # 1.44E-4

    add-double/2addr v8, v6

    div-double v8, v6, v8

    .line 202
    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    iget-wide v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    sub-double/2addr v2, v12

    mul-double/2addr v2, v8

    add-double/2addr v2, v10

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    .line 203
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v8

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    goto :goto_4d

    .line 212
    :cond_89
    move/from16 v0, p8

    int-to-double v2, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 213
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatKg:D

    div-double/2addr v4, v6

    move-wide/from16 v6, p9

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->physicalAge(DDDZI)D

    move-result-wide v4

    .line 214
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_63

    .line 217
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_df

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_d0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ageT:J

    sub-long v2, p2, v2

    long-to-double v2, v2

    const-wide v6, 0x4184997000000000L    # 4.32E7

    cmpg-double v2, v2, v6

    if-gez v2, :cond_df

    :cond_d0
    const/4 v2, 0x1

    .line 219
    :goto_d1
    if-nez v2, :cond_63

    .line 220
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    .line 221
    move-wide/from16 v0, p2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ageT:J

    goto :goto_63

    .line 217
    :cond_df
    const/4 v2, 0x0

    goto :goto_d1
.end method
