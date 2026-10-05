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

.field static final ALLOW:D = 0.5

.field static final AT50:D

.field static final GEO:D = 0.8736

.field static final Q:D = 0.03

.field static final QA:D = 1.0E-6

.field static final R:D = 1.5

.field static final RA:D = 1.44E-4

.field static final REL:D = 0.03

.field static final REL_DAY:D = 0.01

.field static final RHO:[D

.field static final TISSUE_DAY:D = 0.15

.field static final TRUNK_SHARE:D = 0.037

.field public static final VERSION:I = 0x6


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

    .line 79
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
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static body(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIID)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;
    .registers 24

    .prologue
    .line 161
    invoke-static/range {p0 .. p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->withFat(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIID)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v2

    .line 162
    if-nez v2, :cond_8

    .line 163
    const/4 v2, 0x0

    .line 175
    :cond_7
    :goto_7
    return-object v2

    .line 165
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v8

    .line 166
    iget-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->leanKg:D

    move-wide/from16 v16, v0

    .line 167
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_7

    const-wide/16 v4, 0x0

    cmpl-double v3, v16, v4

    if-lez v3, :cond_7

    .line 168
    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->weightKg:D

    .line 171
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v4, v0

    move/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->ffmSun(ZDDD)D

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 172
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

    .line 173
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
    .line 130
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
    .line 325
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
    .line 331
    invoke-static/range {p0 .. p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D

    move-result-wide v24

    .line 332
    const/4 v13, 0x0

    .line 333
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 334
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_74

    .line 335
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v8, v24, v8

    sub-double/2addr v6, v8

    mul-double v10, v4, v6

    .line 336
    invoke-virtual/range {p6 .. p6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->on()Z

    move-result v4

    if-eqz v4, :cond_eb

    const-wide/16 v4, 0x0

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    sub-long v6, p4, v6

    long-to-double v6, v6

    const-wide v8, 0x4194997000000000L    # 8.64E7

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 337
    :goto_33
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    invoke-static/range {v5 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->step(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;JDD)D

    move-result-wide v4

    .line 338
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

    .line 339
    if-eqz v13, :cond_74

    .line 340
    move-wide/from16 v0, v16

    move-object/from16 v2, p6

    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ratioDays:D

    .line 341
    move-object/from16 v0, p6

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->ratios(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;)V

    move-object/from16 v12, p6

    move-wide/from16 v14, p4

    move/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, p3

    move-wide/from16 v21, p7

    .line 342
    invoke-static/range {v12 .. v22}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->trait(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;JDZIID)V

    .line 345
    :cond_74
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-static {v0, v13, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->toJson(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;J)Lorg/json/JSONObject;

    move-result-object v5

    .line 346
    const-string v4, "v"

    const/4 v6, 0x6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    if-eqz v13, :cond_13d

    .line 348
    const-string v4, "fr"

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v24

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 349
    const-string v4, "lr"

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 350
    const-string v4, "var"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 351
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ratio:[D

    if-eqz v4, :cond_f4

    .line 352
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 353
    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ratio:[D

    array-length v8, v7

    const/4 v4, 0x0

    :goto_d0
    if-ge v4, v8, :cond_ef

    aget-wide v10, v7, v4

    .line 354
    const-wide v12, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x40c3880000000000L    # 10000.0

    div-double/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 353
    add-int/lit8 v4, v4, 0x1

    goto :goto_d0

    .line 336
    :cond_eb
    const-wide/16 v16, 0x0

    goto/16 :goto_33

    .line 356
    :cond_ef
    const-string v4, "sr"

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    :cond_f4
    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_121

    .line 359
    const-string v4, "ash"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 360
    const-string v4, "asv"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 362
    :cond_121
    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_13d

    .line 363
    const-string v4, "pag"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 364
    const-string v4, "pagT"

    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ageT:J

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 367
    :cond_13d
    if-lez p2, :cond_146

    .line 368
    const-string v4, "pa"

    move/from16 v0, p2

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    :cond_146
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_15d

    .line 371
    const-string v4, "rhr"

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v6, v6, p7

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 373
    :cond_15d
    return-object v5
.end method

.method public static fatPct(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)D
    .registers 16

    .prologue
    .line 135
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->of(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v8

    .line 136
    if-nez v8, :cond_9

    .line 137
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 153
    :cond_8
    :goto_8
    return-wide v0

    .line 139
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->r50([D[D)D

    move-result-wide v6

    .line 140
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 141
    iget-wide v0, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    goto :goto_8

    .line 143
    :cond_1a
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 144
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

    .line 145
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->single:Z

    if-eqz v2, :cond_3f

    .line 148
    iget-boolean v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatFromScale:Z

    if-eqz v2, :cond_8

    iget-wide v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_8

    .line 150
    :cond_3f
    iget-boolean v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatFromScale:Z

    if-eqz v2, :cond_4a

    .line 151
    iget-wide v2, v8, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_8

    .line 153
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
    .line 120
    mul-double v0, p1, p1

    div-double/2addr v0, p5

    .line 121
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
    .line 68
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
    .line 442
    const-string v0, "male"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 443
    const-string v0, "hc"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 444
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

    .line 100
    move v0, v1

    :goto_c
    const/4 v2, 0x5

    if-ge v0, v2, :cond_21

    .line 101
    aget-wide v2, p0, v0

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_1b

    aget-wide v2, p1, v0

    cmpl-double v2, v2, v10

    if-gez v2, :cond_1e

    .line 102
    :cond_1b
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 115
    :goto_1d
    return-wide v0

    .line 100
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 105
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

    .line 106
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

    .line 107
    aget-wide v4, p0, v8

    aget-wide v6, p1, v8

    .line 108
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

    .line 109
    add-double/2addr v2, v4

    .line 110
    add-double/2addr v0, v6

    .line 115
    :goto_59
    const-wide v4, 0x3febf487fcb923a3L    # 0.8736

    sub-double/2addr v0, v2

    sget-wide v6, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->AT50:D

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    goto :goto_1d

    .line 112
    :cond_65
    mul-double/2addr v2, v12

    .line 113
    mul-double/2addr v0, v12

    goto :goto_59
.end method

.method static ratios(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;)V
    .registers 26

    .prologue
    .line 233
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->leanKg:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatKg:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->weightKg:D

    move-wide/from16 v16, v0

    .line 234
    const-wide/16 v2, 0x0

    cmpl-double v2, v12, v2

    if-lez v2, :cond_1a

    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-gtz v2, :cond_1b

    .line 259
    :cond_1a
    :goto_1a
    return-void

    .line 237
    :cond_1b
    const/16 v2, 0xb

    new-array v9, v2, [D

    .line 238
    const/4 v2, 0x0

    :goto_20
    const/4 v3, 0x5

    if-ge v2, v3, :cond_3a

    .line 239
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    aget-wide v4, v3, v2

    div-double/2addr v4, v12

    aput-wide v4, v9, v2

    .line 240
    add-int/lit8 v3, v2, 0x5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segFatKg:[D

    aget-wide v4, v4, v2

    div-double/2addr v4, v14

    aput-wide v4, v9, v3

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 242
    :cond_3a
    const/16 v2, 0xa

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->skeletalPct:D

    mul-double v4, v4, v16

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    div-double/2addr v4, v12

    aput-wide v4, v9, v2

    .line 243
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ratioDays:D

    .line 245
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    if-nez v4, :cond_c4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ratio:[D

    if-eqz v4, :cond_c4

    .line 246
    const/16 v4, 0xb

    new-array v8, v4, [D

    .line 247
    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v6

    add-double v18, v4, v2

    .line 248
    const/4 v2, 0x0

    move v10, v2

    :goto_6b
    const/16 v2, 0xb

    if-ge v10, v2, :cond_90

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ratio:[D

    aget-wide v20, v2, v10

    .line 250
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    aget-wide v2, v9, v10

    sub-double v2, v2, v20

    move-wide/from16 v0, v18

    neg-double v4, v0

    mul-double v4, v4, v20

    mul-double v6, v18, v20

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->clamp(DDD)D

    move-result-wide v2

    mul-double v2, v2, v22

    add-double v2, v2, v20

    aput-wide v2, v8, v10

    .line 248
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_6b

    :cond_90
    move-object v2, v8

    .line 253
    :goto_91
    const/4 v3, 0x0

    :goto_92
    const/4 v4, 0x5

    if-ge v3, v4, :cond_ac

    .line 254
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    aget-wide v6, v2, v3

    mul-double/2addr v6, v12

    aput-wide v6, v4, v3

    .line 255
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segFatKg:[D

    add-int/lit8 v5, v3, 0x5

    aget-wide v6, v2, v5

    mul-double/2addr v6, v14

    aput-wide v6, v4, v3

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 257
    :cond_ac
    const/16 v3, 0xa

    aget-wide v4, v2, v3

    mul-double/2addr v4, v12

    div-double v4, v4, v16

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->skeletalPct:D

    .line 258
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ratio:[D

    goto/16 :goto_1a

    :cond_c4
    move-object v2, v9

    goto :goto_91
.end method

.method public static reading(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 306
    new-instance v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 307
    iput-boolean v4, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 308
    const-string v0, "w"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 309
    const-string v0, "z20"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v0, "z100"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move v6, v5

    .line 310
    :goto_20
    const/4 v0, 0x5

    if-ge v6, v0, :cond_4b

    .line 311
    iget-object v10, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    if-eqz v8, :cond_47

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {v8, v6, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    :goto_31
    aput-wide v0, v10, v6

    .line 312
    iget-object v10, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    if-eqz v9, :cond_49

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {v9, v6, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    :goto_41
    aput-wide v0, v10, v6

    .line 310
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_20

    :cond_47
    move-wide v0, v2

    .line 311
    goto :goto_31

    :cond_49
    move-wide v0, v2

    .line 312
    goto :goto_41

    .line 314
    :cond_4b
    const-string v0, "sfat"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    .line 315
    const-string v0, "f1"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_5f

    move v0, v4

    :goto_5c
    iput-boolean v0, v7, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->single:Z

    .line 316
    return-object v7

    :cond_5f
    move v0, v5

    .line 315
    goto :goto_5c
.end method

.method public static rebuild(Lorg/json/JSONArray;ZII)Lorg/json/JSONArray;
    .registers 16

    .prologue
    .line 417
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 418
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;-><init>()V

    .line 419
    const/4 v0, 0x0

    move v9, v0

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_60

    .line 420
    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 421
    if-nez v10, :cond_1c

    .line 419
    :goto_18
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_c

    .line 425
    :cond_1c
    :try_start_1c
    const-string v0, "z20"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 426
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

    .line 428
    :goto_3d
    if-eq v0, v10, :cond_52

    const-string v1, "n"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 429
    const-string v1, "n"

    const-string v2, "n"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 431
    :cond_52
    invoke-static {v0, p1, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->mark(Lorg/json/JSONObject;ZI)V

    .line 432
    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_58} :catch_59

    goto :goto_18

    .line 433
    :catch_59
    move-exception v0

    .line 434
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_18

    :cond_5e
    move-object v0, v10

    .line 427
    goto :goto_3d

    .line 437
    :cond_60
    return-object v11
.end method

.method public static single(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;[D)V
    .registers 12

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->single:Z

    .line 87
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3a

    .line 88
    aget-wide v2, p1, v0

    .line 89
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2f

    .line 90
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->RHO:[D

    aget-wide v4, v4, v0

    sub-double/2addr v4, v8

    sget-wide v6, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->AT50:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 91
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->RHO:[D

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    aget-wide v4, v4, v0

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 87
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 93
    :cond_2f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    aput-wide v4, v2, v0

    aput-wide v4, v1, v0

    goto :goto_2c

    .line 96
    :cond_3a
    return-void
.end method

.method static smmJanssen(ZIDD)D
    .registers 12

    .prologue
    .line 126
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

    .line 405
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 406
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 407
    if-eqz v2, :cond_39

    const-string v3, "z20"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_37

    const-string v3, "pa"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p2, :cond_37

    const-string v3, "hc"

    .line 408
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p3, :cond_37

    const-string v3, "male"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_39

    .line 409
    :cond_37
    const/4 v1, 0x1

    .line 412
    :cond_38
    return v1

    .line 405
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static stateOf(Lorg/json/JSONArray;)Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;
    .registers 11

    .prologue
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    const/16 v6, 0xb

    .line 378
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;-><init>()V

    .line 379
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_95

    .line 380
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 381
    if-eqz v2, :cond_91

    const-string v3, "lean"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_91

    const-string v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_91

    .line 382
    const-string v0, "lean"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 383
    const-string v0, "var"

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    .line 384
    const-string v0, "w"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    .line 385
    const-string v0, "t"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    .line 386
    const-string v0, "ash"

    invoke-virtual {v2, v0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    .line 387
    const-string v0, "asv"

    const-wide v4, 0x3f22dfd694ccab3fL    # 1.44E-4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    .line 388
    const-string v0, "pag"

    invoke-virtual {v2, v0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    .line 389
    const-string v0, "pagT"

    iget-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ageT:J

    .line 390
    const-string v0, "sr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 391
    if-eqz v2, :cond_95

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v0, v6, :cond_95

    .line 392
    new-array v0, v6, [D

    iput-object v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ratio:[D

    .line 393
    const/4 v0, 0x0

    :goto_84
    if-ge v0, v6, :cond_95

    .line 394
    iget-object v3, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ratio:[D

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 379
    :cond_91
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_f

    .line 400
    :cond_95
    return-object v1
.end method

.method public static step(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;JDD)D
    .registers 22

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->on()Z

    move-result v2

    if-eqz v2, :cond_6f

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 204
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

    if-lez v4, :cond_72

    :cond_33
    const/4 v4, 0x1

    :goto_34
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    .line 205
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v8, p5, p3

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    .line 207
    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    if-eqz v6, :cond_74

    .line 209
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    move-wide v2, v4

    .line 221
    :goto_47
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v6

    sub-double v2, v4, v2

    mul-double v2, v2, p3

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double v4, v4, p3

    const-wide v6, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double v6, v6, p3

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->clamp(DDD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    .line 222
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    .line 223
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->t:J

    .line 224
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    return-wide v2

    .line 203
    :cond_6f
    const-wide/16 v2, 0x0

    goto :goto_17

    .line 204
    :cond_72
    const/4 v4, 0x0

    goto :goto_34

    .line 211
    :cond_74
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    iget-wide v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    mul-double/2addr v8, v6

    .line 212
    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    const-wide v12, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 213
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide v12, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v2, v12

    add-double/2addr v6, v2

    .line 214
    sub-double v2, v4, v8

    neg-double v4, v6

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->clamp(DDD)D

    move-result-wide v4

    .line 215
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    add-double/2addr v2, v10

    .line 216
    mul-double v6, v4, v4

    div-double/2addr v6, v2

    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    cmpl-double v6, v6, v12

    if-lez v6, :cond_c0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v4

    mul-double/2addr v6, v4

    div-double v2, v6, v2

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    div-double/2addr v2, v6

    .line 217
    :goto_b3
    add-double/2addr v2, v10

    div-double v6, v10, v2

    .line 218
    mul-double v2, v6, v4

    add-double/2addr v2, v8

    .line 219
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v4, v10

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    goto :goto_47

    .line 216
    :cond_c0
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    goto :goto_b3
.end method

.method static trait(Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;JDZIID)V
    .registers 25

    .prologue
    .line 268
    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->leanKg:D

    .line 269
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

    .line 271
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_64

    div-double/2addr v2, v4

    .line 272
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

    .line 273
    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    if-nez v6, :cond_44

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 274
    :cond_44
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    .line 275
    const-wide v2, 0x3f22dfd694ccab3fL    # 1.44E-4

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    .line 283
    :cond_4d
    :goto_4d
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->restarted:Z

    if-eqz v2, :cond_55

    .line 284
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    .line 286
    :cond_55
    const/16 v2, 0x64

    move/from16 v0, p8

    if-lt v0, v2, :cond_63

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 300
    :cond_63
    :goto_63
    return-void

    .line 271
    :cond_64
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_20

    .line 277
    :cond_67
    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    .line 278
    const-wide v8, 0x3f22dfd694ccab3fL    # 1.44E-4

    add-double/2addr v8, v6

    div-double v8, v6, v8

    .line 279
    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    iget-wide v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    sub-double/2addr v2, v12

    mul-double/2addr v2, v8

    add-double/2addr v2, v10

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ash:D

    .line 280
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v8

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->asv:D

    goto :goto_4d

    .line 289
    :cond_89
    move/from16 v0, p8

    int-to-double v2, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 290
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

    .line 291
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_63

    .line 294
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

    .line 296
    :goto_d1
    if-nez v2, :cond_63

    .line 297
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->age:D

    .line 298
    move-wide/from16 v0, p2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->ageT:J

    goto :goto_63

    .line 294
    :cond_df
    const/4 v2, 0x0

    goto :goto_d1
.end method
