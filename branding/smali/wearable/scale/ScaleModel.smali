.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleModel;
.super Ljava/lang/Object;
.source "ScaleModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;
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

.field static final RHO:[D

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

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_18

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->RHO:[D

    return-void

    :array_18
    .array-data 8
        0x3fed1eb851eb851fL    # 0.91
        0x3fec28f5c28f5c29L    # 0.88
        0x3fec28f5c28f5c29L    # 0.88
        0x3fec28f5c28f5c29L    # 0.88
        0x3fec28f5c28f5c29L    # 0.88
    .end array-data
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
    .line 150
    invoke-static/range {p0 .. p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->withFat(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIID)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v2

    .line 151
    if-nez v2, :cond_8

    .line 152
    const/4 v2, 0x0

    .line 164
    :cond_7
    :goto_7
    return-object v2

    .line 154
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v8

    .line 155
    iget-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->leanKg:D

    move-wide/from16 v16, v0

    .line 156
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_7

    const-wide/16 v4, 0x0

    cmpl-double v3, v16, v4

    if-lez v3, :cond_7

    .line 157
    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->weightKg:D

    .line 160
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v4, v0

    move/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->ffmSun(ZDDD)D

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 161
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

    .line 162
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
    .line 119
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
    .line 312
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
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->entry(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIJLcom/isaigu/gymapp/wearable/scale/ScaleModel$State;DLcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static entry(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIJLcom/isaigu/gymapp/wearable/scale/ScaleModel$State;DLcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;)Lorg/json/JSONObject;
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 324
    if-eqz p9, :cond_13f

    move-object/from16 v0, p9

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->why:Ljava/lang/String;

    move-object/from16 v0, p9

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->cond:I

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleCheck;->skeptic(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_13f

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p6

    iput-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->skeptic:Z

    .line 325
    invoke-static/range {p0 .. p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D

    move-result-wide v24

    .line 326
    const/4 v13, 0x0

    .line 327
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 328
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_83

    .line 329
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v8, v24, v8

    sub-double/2addr v6, v8

    mul-double v10, v4, v6

    .line 330
    invoke-virtual/range {p6 .. p6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->on()Z

    move-result v4

    if-eqz v4, :cond_142

    const-wide/16 v4, 0x0

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    sub-long v6, p4, v6

    long-to-double v6, v6

    const-wide v8, 0x4194997000000000L    # 8.64E7

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 331
    :goto_48
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    invoke-static/range {v5 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->step(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;JDD)D

    move-result-wide v4

    .line 332
    const/4 v6, 0x0

    move-object/from16 v0, p6

    iput-boolean v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->skeptic:Z

    .line 333
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

    .line 334
    if-eqz v13, :cond_83

    move-object/from16 v12, p6

    move-wide/from16 v14, p4

    move/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, p3

    move-wide/from16 v21, p7

    .line 335
    invoke-static/range {v12 .. v22}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->trait(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;JDZIID)V

    .line 338
    :cond_83
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-static {v0, v13, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->toJson(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;J)Lorg/json/JSONObject;

    move-result-object v4

    .line 339
    const-string v5, "v"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 340
    if-eqz v13, :cond_117

    .line 341
    const-string v5, "fr"

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v24

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 342
    const-string v5, "lr"

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 343
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

    .line 344
    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_fb

    .line 345
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

    .line 346
    const-string v5, "asv"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 348
    :cond_fb
    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_117

    .line 349
    const-string v5, "pag"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 350
    const-string v5, "pagT"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ageT:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 353
    :cond_117
    if-eqz p9, :cond_11e

    .line 354
    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->put(Lorg/json/JSONObject;)V

    .line 356
    :cond_11e
    if-lez p2, :cond_127

    .line 357
    const-string v5, "pa"

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    :cond_127
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_13e

    .line 360
    const-string v5, "rhr"

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v6, v6, p7

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 362
    :cond_13e
    return-object v4

    .line 324
    :cond_13f
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 330
    :cond_142
    const-wide/16 v16, 0x0

    goto/16 :goto_48
.end method

.method public static fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D
    .registers 16

    .prologue
    .line 124
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->of(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v8

    .line 125
    if-nez v8, :cond_9

    .line 126
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 142
    :cond_8
    :goto_8
    return-wide v0

    .line 128
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v6

    .line 129
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 130
    iget-wide v0, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    goto :goto_8

    .line 132
    :cond_1a
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 133
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

    .line 134
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->single:Z

    if-eqz v2, :cond_3f

    .line 137
    iget-boolean v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatFromScale:Z

    if-eqz v2, :cond_8

    iget-wide v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_8

    .line 139
    :cond_3f
    iget-boolean v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatFromScale:Z

    if-eqz v2, :cond_4a

    .line 140
    iget-wide v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_8

    .line 142
    :cond_4a
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
    .line 109
    mul-double v0, p1, p1

    div-double/2addr v0, p5

    .line 110
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
    .line 425
    const-string v0, "male"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 426
    const-string v0, "hc"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 427
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

    .line 89
    move v0, v1

    :goto_c
    const/4 v2, 0x5

    if-ge v0, v2, :cond_21

    .line 90
    aget-wide v2, p0, v0

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_1b

    aget-wide v2, p1, v0

    cmpl-double v2, v2, v10

    if-gez v2, :cond_1e

    .line 91
    :cond_1b
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 104
    :goto_1d
    return-wide v0

    .line 89
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 94
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

    .line 95
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

    .line 96
    aget-wide v4, p0, v8

    aget-wide v6, p1, v8

    .line 97
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

    .line 98
    add-double/2addr v2, v4

    .line 99
    add-double/2addr v0, v6

    .line 104
    :goto_59
    const-wide v4, 0x3febf487fcb923a3L    # 0.8736

    sub-double/2addr v0, v2

    sget-wide v6, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->AT50:D

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    goto :goto_1d

    .line 101
    :cond_65
    mul-double/2addr v2, v12

    .line 102
    mul-double/2addr v0, v12

    goto :goto_59
.end method

.method public static reading(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 293
    new-instance v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 294
    iput-boolean v4, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 295
    const-string v0, "w"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 296
    const-string v0, "z20"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v0, "z100"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move v6, v5

    .line 297
    :goto_20
    const/4 v0, 0x5

    if-ge v6, v0, :cond_4b

    .line 298
    iget-object v10, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    if-eqz v8, :cond_47

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {v8, v6, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    :goto_31
    aput-wide v0, v10, v6

    .line 299
    iget-object v10, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    if-eqz v9, :cond_49

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {v9, v6, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    :goto_41
    aput-wide v0, v10, v6

    .line 297
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_20

    :cond_47
    move-wide v0, v2

    .line 298
    goto :goto_31

    :cond_49
    move-wide v0, v2

    .line 299
    goto :goto_41

    .line 301
    :cond_4b
    const-string v0, "sfat"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    .line 302
    const-string v0, "f1"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_5f

    move v0, v4

    :goto_5c
    iput-boolean v0, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->single:Z

    .line 303
    return-object v7

    :cond_5f
    move v0, v5

    .line 302
    goto :goto_5c
.end method

.method public static rebuild(Lorg/json/JSONArray;ZII)Lorg/json/JSONArray;
    .registers 19

    .prologue
    .line 399
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 400
    new-instance v8, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;

    invoke-direct {v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;-><init>()V

    .line 401
    const/4 v2, 0x0

    move v12, v2

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v12, v2, :cond_6b

    .line 402
    invoke-virtual {p0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 403
    if-nez v13, :cond_1c

    .line 401
    :goto_18
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_c

    .line 407
    :cond_1c
    :try_start_1c
    const-string v2, "z20"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 408
    invoke-static {v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->reading(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v2

    const-string v3, "t"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v3, "rhr"

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v13, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    .line 409
    invoke-static {v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;->of(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;

    move-result-object v11

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 408
    invoke-static/range {v2 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->entry(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIJLcom/isaigu/gymapp/wearable/scale/ScaleModel$State;DLcom/isaigu/gymapp/wearable/scale/ScaleModel$Notes;)Lorg/json/JSONObject;

    move-result-object v2

    .line 411
    :goto_44
    if-eq v2, v13, :cond_59

    const-string v3, "n"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 412
    const-string v3, "n"

    const-string v4, "n"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 414
    :cond_59
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->mark(Lorg/json/JSONObject;ZI)V

    .line 415
    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_63} :catch_64

    goto :goto_18

    .line 416
    :catch_64
    move-exception v2

    .line 417
    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_18

    :cond_69
    move-object v2, v13

    .line 410
    goto :goto_44

    .line 420
    :cond_6b
    return-object v14
.end method

.method public static single(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;[D)V
    .registers 12

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->single:Z

    .line 76
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3a

    .line 77
    aget-wide v2, p1, v0

    .line 78
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2f

    .line 79
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->RHO:[D

    aget-wide v4, v4, v0

    sub-double/2addr v4, v8

    sget-wide v6, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->AT50:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 80
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->RHO:[D

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    aget-wide v4, v4, v0

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 76
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 82
    :cond_2f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    aput-wide v4, v2, v0

    aput-wide v4, v1, v0

    goto :goto_2c

    .line 85
    :cond_3a
    return-void
.end method

.method static smmJanssen(ZIDD)D
    .registers 12

    .prologue
    .line 115
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

    .line 387
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 388
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 389
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

    .line 390
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p3, :cond_37

    const-string v3, "male"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_39

    .line 391
    :cond_37
    const/4 v1, 0x1

    .line 394
    :cond_38
    return v1

    .line 387
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static stateOf(Lorg/json/JSONArray;)Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;
    .registers 9

    .prologue
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 367
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;-><init>()V

    .line 368
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_6f

    .line 369
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 370
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

    .line 371
    const-string v0, "lean"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 372
    const-string v0, "var"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    .line 373
    const-string v0, "w"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    .line 374
    const-string v0, "t"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    .line 375
    const-string v0, "ash"

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    .line 376
    const-string v0, "asv"

    const-wide v4, 0x3f22dfd694ccab3fL    # 1.44E-4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    .line 377
    const-string v0, "pag"

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    .line 378
    const-string v0, "pagT"

    iget-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ageT:J

    .line 382
    :cond_6f
    return-object v1

    .line 368
    :cond_70
    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method public static step(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;JDD)D
    .registers 22

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->on()Z

    move-result v2

    if-eqz v2, :cond_67

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 223
    :goto_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->on()Z

    move-result v4

    if-eqz v4, :cond_37

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_37

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->skeptic:Z

    if-nez v4, :cond_6a

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    sub-double v4, p3, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static/range {p3 .. p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->jump(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6a

    :cond_37
    const/4 v4, 0x1

    :goto_38
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    .line 224
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    if-eqz v4, :cond_6c

    .line 225
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 226
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    .line 242
    :goto_46
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double v4, v4, p3

    const-wide v6, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double v6, v6, p3

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->clamp(DDD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 243
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    .line 244
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    .line 245
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    return-wide v2

    .line 222
    :cond_67
    const-wide/16 v2, 0x0

    goto :goto_17

    .line 223
    :cond_6a
    const/4 v4, 0x0

    goto :goto_38

    .line 228
    :cond_6c
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    sub-double v6, p3, v4

    .line 229
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->skeptic:Z

    if-eqz v4, :cond_c1

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 230
    :goto_79
    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    .line 231
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    const-wide v12, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v2, v12

    add-double/2addr v2, v10

    const-wide v10, 0x3fb70a3d70a3d70aL    # 0.09

    mul-double/2addr v10, v6

    mul-double/2addr v6, v10

    add-double/2addr v2, v6

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 232
    sub-double v8, p5, v4

    .line 233
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    .line 234
    mul-double v10, v8, v8

    div-double/2addr v10, v2

    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_d6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v8

    mul-double/2addr v10, v8

    div-double v2, v10, v2

    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    div-double/2addr v2, v10

    .line 235
    :goto_ab
    iget-boolean v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->skeptic:Z

    if-eqz v10, :cond_b2

    .line 236
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v10

    .line 238
    :cond_b2
    add-double/2addr v2, v6

    div-double v2, v6, v2

    .line 239
    mul-double/2addr v8, v2

    add-double/2addr v4, v8

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 240
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    goto :goto_46

    .line 229
    :cond_c1
    const-wide v4, 0x3fd3333333333333L    # 0.3

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    neg-double v10, v2

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    goto :goto_79

    .line 234
    :cond_d6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_ab
.end method

.method static trait(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;JDZIID)V
    .registers 25

    .prologue
    .line 255
    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->leanKg:D

    .line 256
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

    .line 258
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_64

    div-double/2addr v2, v4

    .line 259
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

    .line 260
    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    if-nez v6, :cond_44

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 261
    :cond_44
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    .line 262
    const-wide v2, 0x3f22dfd694ccab3fL    # 1.44E-4

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    .line 270
    :cond_4d
    :goto_4d
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    if-eqz v2, :cond_55

    .line 271
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    .line 273
    :cond_55
    const/16 v2, 0x64

    move/from16 v0, p8

    if-lt v0, v2, :cond_63

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 287
    :cond_63
    :goto_63
    return-void

    .line 258
    :cond_64
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_20

    .line 264
    :cond_67
    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    .line 265
    const-wide v8, 0x3f22dfd694ccab3fL    # 1.44E-4

    add-double/2addr v8, v6

    div-double v8, v6, v8

    .line 266
    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    iget-wide v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    sub-double/2addr v2, v12

    mul-double/2addr v2, v8

    add-double/2addr v2, v10

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    .line 267
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v8

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    goto :goto_4d

    .line 276
    :cond_89
    move/from16 v0, p8

    int-to-double v2, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 277
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

    .line 278
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_63

    .line 281
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

    .line 283
    :goto_d1
    if-nez v2, :cond_63

    .line 284
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    .line 285
    move-wide/from16 v0, p2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ageT:J

    goto :goto_63

    .line 281
    :cond_df
    const/4 v2, 0x0

    goto :goto_d1
.end method
