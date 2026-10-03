.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;
.super Ljava/lang/Object;
.source "ScaleInsight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;
    }
.end annotation


# static fields
.field static final AGES:[D

.field static final ALMI_F:[D

.field static final ALMI_M:[D

.field static final BASE_GAP_MS:J = 0x1499700L

.field static final BASE_MAX:I = 0x8

.field static final CH_SEG:[[D

.field static final DRY_AMBER:D = 5.0

.field static final FMI_F:[D

.field static final FMI_M:[D

.field static final SWELL_AMBER:D = 1.2

.field static final SWELL_RED:D = 2.5

.field public static final TODAY_MS:J = 0x2932e00L

.field public static final T_ATHLETIC:I = 0x0

.field public static final T_BALANCED:I = 0x1

.field public static final T_FAT:I = 0x3

.field public static final T_FAT_LOW_MUSCLE:I = 0x4

.field public static final T_LEAN_LOW_MUSCLE:I = 0x5

.field public static final T_STRONG_FAT:I = 0x2

.field public static final T_VERY_LEAN:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x6

    const/4 v3, 0x3

    .line 196
    const/16 v0, 0xa

    new-array v0, v0, [[D

    const/4 v1, 0x0

    new-array v2, v3, [D

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [D

    fill-array-data v2, :array_8c

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [D

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    new-array v1, v3, [D

    fill-array-data v1, :array_ac

    aput-object v1, v0, v3

    new-array v1, v3, [D

    fill-array-data v1, :array_bc

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [D

    fill-array-data v2, :array_cc

    aput-object v2, v0, v1

    new-array v1, v3, [D

    fill-array-data v1, :array_dc

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v2, v3, [D

    fill-array-data v2, :array_ec

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [D

    fill-array-data v2, :array_fc

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [D

    fill-array-data v2, :array_10c

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    .line 336
    new-array v0, v4, [D

    fill-array-data v0, :array_11c

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    .line 337
    new-array v0, v4, [D

    fill-array-data v0, :array_138

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M:[D

    .line 338
    new-array v0, v4, [D

    fill-array-data v0, :array_154

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F:[D

    .line 339
    new-array v0, v5, [D

    fill-array-data v0, :array_170

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M:[D

    .line 340
    new-array v0, v5, [D

    fill-array-data v0, :array_184

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F:[D

    return-void

    .line 196
    :array_7c
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_8c
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_9c
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_ac
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_bc
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_cc
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_dc
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_ec
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_fc
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_10c
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 336
    :array_11c
    .array-data 8
        0x4039000000000000L    # 25.0
        0x4041800000000000L    # 35.0
        0x4046800000000000L    # 45.0
        0x404b800000000000L    # 55.0
        0x4050400000000000L    # 65.0
        0x4052c00000000000L    # 75.0
    .end array-data

    .line 337
    :array_138
    .array-data 8
        0x402299999999999aL    # 9.3
        0x4022333333333333L    # 9.1
        0x4021666666666666L    # 8.7
        0x4021333333333333L    # 8.6
        0x4021000000000000L    # 8.5
        0x4020000000000000L    # 8.0
    .end array-data

    .line 338
    :array_154
    .array-data 8
        0x401b99999999999aL    # 6.9
        0x401b333333333333L    # 6.8
        0x401acccccccccccdL    # 6.7
        0x401a666666666666L    # 6.6
        0x401a000000000000L    # 6.5
        0x4019333333333333L    # 6.3
    .end array-data

    .line 339
    :array_170
    .array-data 8
        0x4014000000000000L    # 5.0
        0x401b333333333333L    # 6.8
        0x4020000000000000L    # 8.0
        0x4021666666666666L    # 8.7
    .end array-data

    .line 340
    :array_184
    .array-data 8
        0x401a666666666666L    # 6.6
        0x4021cccccccccccdL    # 8.9
        0x4023666666666666L    # 9.7
        0x402699999999999aL    # 11.3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ageOf(D[DDZ)D
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 347
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 348
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 365
    :goto_9
    return-wide v0

    .line 350
    :cond_a
    array-length v1, p2

    .line 351
    aget-wide v2, p2, v6

    add-int/lit8 v0, v1, -0x1

    aget-wide v4, p2, v0

    .line 352
    if-eqz p5, :cond_28

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_2c

    .line 353
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    aget-wide v0, v0, v6

    sub-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v2, p3

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->clampAge(D)D

    move-result-wide v0

    goto :goto_9

    .line 352
    :cond_28
    cmpl-double v0, p0, v2

    if-gez v0, :cond_17

    .line 355
    :cond_2c
    if-eqz p5, :cond_45

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_49

    .line 356
    :cond_32
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    sub-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v2, p3

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->clampAge(D)D

    move-result-wide v0

    goto :goto_9

    .line 355
    :cond_45
    cmpg-double v0, p0, v4

    if-lez v0, :cond_32

    .line 358
    :cond_49
    const/4 v0, 0x1

    :goto_4a
    if-ge v0, v1, :cond_7e

    .line 359
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p2, v2

    aget-wide v4, p2, v0

    .line 360
    if-eqz p5, :cond_77

    cmpg-double v6, p0, v4

    if-gtz v6, :cond_7b

    .line 361
    :cond_58
    sub-double v6, p0, v2

    sub-double v2, v4, v2

    div-double v2, v6, v2

    .line 362
    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v1, v4

    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    aget-wide v6, v1, v0

    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    sub-double v0, v6, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->clampAge(D)D

    move-result-wide v0

    goto :goto_9

    .line 360
    :cond_77
    cmpl-double v6, p0, v4

    if-gez v6, :cond_58

    .line 358
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 365
    :cond_7e
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->clampAge(D)D

    move-result-wide v0

    goto :goto_9
.end method

.method public static asymmetry(Lorg/json/JSONArray;II)D
    .registers 13

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 239
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 243
    :cond_10
    :goto_10
    return-wide v0

    .line 242
    :cond_11
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    .line 243
    add-double v6, v2, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_10

    sub-double v0, v2, v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    goto :goto_10
.end method

.method public static body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;
    .registers 15

    .prologue
    .line 287
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;-><init>()V

    .line 288
    if-eqz p0, :cond_13

    const-string v0, "fat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x64

    if-ge p2, v0, :cond_15

    :cond_13
    move-object v0, v6

    .line 329
    :goto_14
    return-object v0

    .line 291
    :cond_15
    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 292
    const-string v0, "w"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 293
    const-string v4, "fat"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 294
    const-string v7, "fatKg"

    mul-double v8, v0, v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    invoke-virtual {p0, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 295
    const-string v7, "lean"

    sub-double v10, v0, v8

    invoke-virtual {p0, v7, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 296
    div-double/2addr v10, v2

    iput-wide v10, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    .line 297
    div-double/2addr v8, v2

    iput-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    .line 298
    const-string v7, "skel"

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 299
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_10d

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_54
    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->smi:D

    .line 300
    if-eqz p1, :cond_146

    .line 301
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4031000000000000L    # 17.0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_114

    const/4 v0, 0x0

    :goto_61
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    .line 302
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_12d

    const/4 v0, 0x0

    :goto_6a
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    .line 307
    :goto_6c
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-nez v0, :cond_18b

    .line 308
    const/4 v0, 0x6

    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    .line 314
    :goto_73
    const-string v0, "segMus"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_b1

    .line 316
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    const/4 v1, 0x2

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v8

    add-double/2addr v4, v8

    const/4 v1, 0x3

    const-wide/16 v8, 0x0

    .line 317
    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v8

    add-double/2addr v4, v8

    const/4 v1, 0x4

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    add-double/2addr v0, v4

    div-double/2addr v0, v2

    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    .line 318
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    if-eqz p1, :cond_1b4

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M:[D

    :goto_a3
    if-eqz p1, :cond_1b8

    const-wide v3, 0x3f9a9fbe76c8b439L    # 0.026

    :goto_aa
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ageOf(D[DDZ)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromMuscle:D

    .line 320
    :cond_b1
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    if-eqz p1, :cond_1bf

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M:[D

    :goto_b7
    if-eqz p1, :cond_1c3

    const-wide v3, 0x3fb1eb851eb851ecL    # 0.07

    :goto_be
    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ageOf(D[DDZ)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromFat:D

    .line 321
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromMuscle:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1ca

    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromFat:D

    :goto_cf
    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    .line 322
    const-string v0, "segFat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_10a

    .line 324
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    const/4 v1, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 325
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    add-double/2addr v4, v2

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v8

    add-double/2addr v4, v8

    const/4 v1, 0x2

    const-wide/16 v8, 0x0

    .line 326
    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    add-double/2addr v0, v4

    .line 327
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1d7

    div-double v0, v2, v0

    :goto_108
    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    :cond_10a
    move-object v0, v6

    .line 329
    goto/16 :goto_14

    .line 299
    :cond_10d
    mul-double/2addr v0, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v8

    div-double/2addr v0, v2

    goto/16 :goto_54

    .line 301
    :cond_114
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_11f

    const/4 v0, 0x1

    goto/16 :goto_61

    :cond_11f
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4037000000000000L    # 23.0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_12a

    const/4 v0, 0x2

    goto/16 :goto_61

    :cond_12a
    const/4 v0, 0x3

    goto/16 :goto_61

    .line 302
    :cond_12d
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_138

    const/4 v0, 0x1

    goto/16 :goto_6a

    :cond_138
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_143

    const/4 v0, 0x2

    goto/16 :goto_6a

    :cond_143
    const/4 v0, 0x3

    goto/16 :goto_6a

    .line 304
    :cond_146
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_15c

    const/4 v0, 0x0

    :goto_14f
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    .line 305
    const-wide/high16 v0, 0x402c000000000000L    # 14.0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_175

    const/4 v0, 0x0

    :goto_158
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    goto/16 :goto_6c

    .line 304
    :cond_15c
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4031000000000000L    # 17.0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_166

    const/4 v0, 0x1

    goto :goto_14f

    :cond_166
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide v8, 0x4033800000000000L    # 19.5

    cmpg-double v0, v0, v8

    if-gez v0, :cond_173

    const/4 v0, 0x2

    goto :goto_14f

    :cond_173
    const/4 v0, 0x3

    goto :goto_14f

    .line 305
    :cond_175
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_17f

    const/4 v0, 0x1

    goto :goto_158

    :cond_17f
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_189

    const/4 v0, 0x2

    goto :goto_158

    :cond_189
    const/4 v0, 0x3

    goto :goto_158

    .line 309
    :cond_18b
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a2

    .line 310
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_19a

    const/4 v0, 0x0

    :goto_196
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    goto/16 :goto_73

    :cond_19a
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    if-nez v0, :cond_1a0

    const/4 v0, 0x5

    goto :goto_196

    :cond_1a0
    const/4 v0, 0x1

    goto :goto_196

    .line 312
    :cond_1a2
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1ac

    const/4 v0, 0x2

    :goto_1a8
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    goto/16 :goto_73

    :cond_1ac
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    if-nez v0, :cond_1b2

    const/4 v0, 0x4

    goto :goto_1a8

    :cond_1b2
    const/4 v0, 0x3

    goto :goto_1a8

    .line 318
    :cond_1b4
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F:[D

    goto/16 :goto_a3

    :cond_1b8
    const-wide v3, 0x3f889374bc6a7efaL    # 0.012

    goto/16 :goto_aa

    .line 320
    :cond_1bf
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F:[D

    goto/16 :goto_b7

    :cond_1c3
    const-wide v3, 0x3fc47ae147ae147bL    # 0.16

    goto/16 :goto_be

    .line 321
    :cond_1ca
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromMuscle:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromFat:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto/16 :goto_cf

    .line 327
    :cond_1d7
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_108
.end method

.method public static channelFat(Lorg/json/JSONObject;)[D
    .registers 27

    .prologue
    .line 202
    if-eqz p0, :cond_31

    const-string v4, "segFat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object/from16 v17, v4

    .line 203
    :goto_c
    if-eqz p0, :cond_35

    const-string v4, "segMus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move-object/from16 v16, v4

    .line 204
    :goto_18
    if-eqz p0, :cond_39

    const-string v4, "fat"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    move-wide v14, v4

    .line 205
    :goto_25
    if-eqz v17, :cond_2f

    if-eqz v16, :cond_2f

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 206
    :cond_2f
    const/4 v4, 0x0

    .line 234
    :goto_30
    return-object v4

    .line 202
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v17, v4

    goto :goto_c

    .line 203
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v16, v4

    goto :goto_18

    .line 204
    :cond_39
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-wide v14, v4

    goto :goto_25

    .line 208
    :cond_3d
    const/4 v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v18, v0

    .line 209
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 210
    const/4 v4, 0x3

    new-array v0, v4, [[I

    move-object/from16 v19, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v5, v10

    aput-object v5, v19, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_ec

    aput-object v5, v19, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_f4

    aput-object v5, v19, v4

    .line 212
    const/4 v4, 0x0

    move v5, v4

    move-wide v10, v6

    move-wide v12, v8

    :goto_6b
    const/4 v4, 0x3

    if-ge v5, v4, :cond_b7

    .line 213
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 214
    aget-object v20, v19, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/4 v4, 0x0

    :goto_7a
    move/from16 v0, v21

    if-ge v4, v0, :cond_9f

    aget v22, v20, v4

    .line 215
    const-wide/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v24

    add-double v8, v8, v24

    .line 216
    const-wide/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v22

    add-double v6, v6, v22

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 218
    :cond_9f
    add-double v20, v8, v6

    const-wide/16 v22, 0x0

    cmpg-double v4, v20, v22

    if-gtz v4, :cond_a9

    .line 219
    const/4 v4, 0x0

    goto :goto_30

    .line 221
    :cond_a9
    add-double v20, v8, v6

    div-double v20, v8, v20

    aput-wide v20, v18, v5

    .line 222
    add-double/2addr v12, v8

    .line 223
    add-double/2addr v6, v8

    add-double/2addr v6, v10

    .line 212
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-wide v10, v6

    goto :goto_6b

    .line 225
    :cond_b7
    div-double v10, v12, v10

    .line 226
    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    array-length v4, v4

    new-array v5, v4, [D

    .line 227
    const/4 v4, 0x0

    :goto_bf
    array-length v6, v5

    if-ge v4, v6, :cond_e9

    .line 228
    const-wide/16 v8, 0x0

    .line 229
    const/4 v6, 0x0

    :goto_c5
    const/4 v7, 0x3

    if-ge v6, v7, :cond_d6

    .line 230
    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    aget-object v7, v7, v4

    aget-wide v12, v7, v6

    aget-wide v16, v18, v6

    mul-double v12, v12, v16

    add-double/2addr v8, v12

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto :goto_c5

    .line 232
    :cond_d6
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    mul-double/2addr v8, v14

    div-double/2addr v8, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_bf

    :cond_e9
    move-object v4, v5

    .line 234
    goto/16 :goto_30

    .line 210
    :array_ec
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_f4
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method static clampAge(D)D
    .registers 6

    .prologue
    .line 369
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    const-wide v2, 0x4055400000000000L    # 85.0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fatMid(Z)D
    .registers 3

    .prologue
    .line 187
    if-eqz p0, :cond_5

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    :goto_4
    return-wide v0

    :cond_5
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    goto :goto_4
.end method

.method static legsZ20(Lorg/json/JSONObject;)D
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    .line 78
    const-string v0, "z20"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_16

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 80
    :cond_16
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 82
    :goto_18
    return-wide v0

    :cond_19
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_18
.end method

.method static median(Ljava/util/List;)D
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 68
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 74
    :goto_8
    return-wide v0

    .line 71
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 74
    rem-int/lit8 v0, v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_27

    div-int/lit8 v0, v2, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_8

    :cond_27
    div-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-int/lit8 v0, v2, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_8
.end method

.method public static ofNormal(Lorg/json/JSONObject;ZI)[[D
    .registers 25

    .prologue
    .line 152
    const/4 v2, 0x2

    const/4 v3, 0x5

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 153
    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x5

    if-ge v3, v4, :cond_23

    .line 154
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    aput-wide v6, v4, v3

    .line 155
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    aput-wide v6, v4, v3

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 157
    :cond_23
    if-eqz p0, :cond_56

    const-string v3, "segFat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object v14, v3

    .line 158
    :goto_2e
    if-eqz p0, :cond_59

    const-string v3, "segMus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object v13, v3

    .line 159
    :goto_39
    if-eqz p0, :cond_5c

    const-string v3, "w"

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 160
    :goto_45
    if-eqz v14, :cond_55

    if-eqz v13, :cond_55

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_55

    const/16 v3, 0x64

    move/from16 v0, p2

    if-ge v0, v3, :cond_5f

    .line 182
    :cond_55
    return-object v2

    .line 157
    :cond_56
    const/4 v3, 0x0

    move-object v14, v3

    goto :goto_2e

    .line 158
    :cond_59
    const/4 v3, 0x0

    move-object v13, v3

    goto :goto_39

    .line 159
    :cond_5c
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_45

    .line 163
    :cond_5f
    move/from16 v0, p2

    int-to-double v6, v0

    .line 164
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->stdWeight(IZ)F

    move-result v8

    .line 165
    if-eqz p1, :cond_138

    const v3, 0x3f59999a    # 0.85f

    :goto_6f
    mul-float/2addr v3, v8

    float-to-double v8, v3

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v16

    .line 166
    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v8, v4

    const-wide v10, 0x3fba1cac083126e9L    # 0.102

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    const-wide v10, -0x4058f5c28f5c28f6L    # -0.045

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    const-wide v10, 0x400e04189374bc6aL    # 3.752

    add-double/2addr v8, v10

    .line 167
    const-wide v10, 0x3fae353f7ced9168L    # 0.059

    mul-double/2addr v10, v4

    const-wide v18, 0x3fc5810624dd2f1bL    # 0.168

    mul-double v18, v18, v16

    add-double v10, v10, v18

    const-wide v18, -0x405353f7ced91687L    # -0.056

    mul-double v18, v18, v6

    add-double v10, v10, v18

    const-wide v18, 0x401319999999999aL    # 4.775

    add-double v10, v10, v18

    .line 168
    const-wide v18, 0x3fc53f7ced916873L    # 0.166

    mul-double v4, v4, v18

    const-wide v18, 0x3fdf0a3d70a3d70aL    # 0.485

    mul-double v16, v16, v18

    add-double v4, v4, v16

    const-wide v16, -0x403b851eb851eb85L    # -0.16

    mul-double v6, v6, v16

    add-double/2addr v4, v6

    const-wide v6, 0x402b30a3d70a3d71L    # 13.595

    add-double/2addr v6, v4

    .line 169
    const/4 v3, 0x0

    move v12, v3

    :goto_cf
    const/4 v3, 0x5

    if-ge v12, v3, :cond_55

    .line 170
    const/4 v3, 0x1

    if-eq v12, v3, :cond_d8

    const/4 v3, 0x2

    if-ne v12, v3, :cond_13d

    :cond_d8
    const/4 v3, 0x1

    move v4, v3

    .line 171
    :goto_da
    if-nez v12, :cond_140

    const/4 v3, 0x1

    .line 172
    :goto_dd
    if-eqz v3, :cond_142

    move-wide v4, v6

    .line 173
    :goto_e0
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_fb

    const-wide/16 v16, 0x0

    cmpl-double v3, v4, v16

    if-lez v3, :cond_fb

    .line 174
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v16

    div-double v4, v16, v4

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v16

    aput-wide v4, v3, v12

    .line 177
    :cond_fb
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v14, v12, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    const-wide/high16 v16, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v16

    invoke-virtual {v13, v12, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v16

    .line 178
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_134

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_134

    add-double v18, v4, v16

    const-wide/16 v20, 0x0

    cmpl-double v3, v18, v20

    if-lez v3, :cond_134

    .line 179
    const/4 v3, 0x1

    aget-object v3, v2, v3

    add-double v16, v16, v4

    div-double v4, v4, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v16

    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatMid(Z)D

    move-result-wide v16

    div-double v4, v4, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v16

    aput-wide v4, v3, v12

    .line 169
    :cond_134
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_cf

    .line 165
    :cond_138
    const v3, 0x3f451eb8    # 0.77f

    goto/16 :goto_6f

    .line 170
    :cond_13d
    const/4 v3, 0x0

    move v4, v3

    goto :goto_da

    .line 171
    :cond_140
    const/4 v3, 0x0

    goto :goto_dd

    .line 172
    :cond_142
    if-eqz v4, :cond_146

    move-wide v4, v8

    goto :goto_e0

    :cond_146
    move-wide v4, v10

    goto :goto_e0
.end method

.method static ratio(Lorg/json/JSONArray;Lorg/json/JSONArray;I)D
    .registers 13

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 59
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 64
    :cond_14
    :goto_14
    return-wide v0

    .line 62
    :cond_15
    invoke-virtual {p0, p2, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    .line 63
    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    .line 64
    cmpl-double v6, v2, v8

    if-lez v6, :cond_14

    cmpl-double v6, v4, v8

    if-lez v6, :cond_14

    div-double v0, v4, v2

    goto :goto_14
.end method

.method public static readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;
    .registers 22

    .prologue
    .line 87
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;-><init>()V

    .line 88
    if-eqz p0, :cond_10

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    move-object v8, v2

    .line 89
    :goto_c
    if-nez v8, :cond_13

    move-object v2, v6

    .line 145
    :goto_f
    return-object v2

    .line 88
    :cond_10
    const/4 v2, 0x0

    move-object v8, v2

    goto :goto_c

    .line 92
    :cond_13
    const-string v2, "t"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 93
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 94
    add-int/lit8 v2, p1, -0x1

    :goto_20
    if-ltz v2, :cond_4f

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    const/16 v7, 0x8

    if-ge v3, v7, :cond_4f

    .line 95
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_4c

    const-string v7, "t"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide/32 v12, 0x1499700

    cmp-long v7, v10, v12

    if-ltz v7, :cond_4c

    const-string v7, "z20"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_4c

    .line 97
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 100
    :cond_4f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->base:I

    .line 101
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5d

    move-object v2, v6

    .line 102
    goto :goto_f

    .line 104
    :cond_5d
    const-wide/16 v4, 0x0

    .line 105
    const/4 v2, 0x0

    move v7, v2

    :goto_61
    const/4 v2, 0x5

    if-ge v7, v2, :cond_e5

    .line 106
    const-string v2, "z20"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "z100"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ratio(Lorg/json/JSONArray;Lorg/json/JSONArray;I)D

    move-result-wide v10

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7d
    :goto_7d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 109
    const-string v13, "z20"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const-string v14, "z100"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v13, v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ratio(Lorg/json/JSONArray;Lorg/json/JSONArray;I)D

    move-result-wide v14

    .line 110
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 111
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 114
    :cond_a7
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->median(Ljava/util/List;)D

    move-result-wide v2

    .line 115
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_1a0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_1a0

    .line 116
    iget-object v12, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    div-double v2, v10, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v10

    aput-wide v2, v12, v7

    .line 118
    const/4 v2, 0x1

    if-eq v7, v2, :cond_c9

    const/4 v2, 0x2

    if-ne v7, v2, :cond_e2

    :cond_c9
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 119
    :goto_ce
    iget-object v10, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v10, v10, v7

    mul-double/2addr v10, v2

    cmpl-double v10, v10, v4

    if-lez v10, :cond_1a0

    .line 120
    iget-object v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    aget-wide v4, v4, v7

    mul-double/2addr v2, v4

    .line 121
    iput v7, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    .line 105
    :goto_de
    add-int/lit8 v7, v7, 0x1

    move-wide v4, v2

    goto :goto_61

    .line 118
    :cond_e2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_ce

    .line 125
    :cond_e5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_ee
    :goto_ee
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 127
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->legsZ20(Lorg/json/JSONObject;)D

    move-result-wide v10

    .line 128
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_ee

    .line 129
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    .line 132
    :cond_10c
    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->legsZ20(Lorg/json/JSONObject;)D

    move-result-wide v8

    .line 133
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->median(Ljava/util/List;)D

    move-result-wide v2

    .line 134
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_130

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_130

    const-wide/16 v10, 0x0

    cmpl-double v7, v2, v10

    if-lez v7, :cond_130

    .line 135
    div-double v2, v8, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    iput-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    .line 137
    :cond_130
    iget-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_180

    const-wide/16 v2, 0x0

    .line 138
    :goto_13a
    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const-wide/high16 v14, 0x4036000000000000L    # 22.0

    const-wide/16 v16, 0x0

    const-wide v18, 0x3fd999999999999aL    # 0.4

    sub-double v18, v4, v18

    .line 139
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    sub-double v18, v2, v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    .line 138
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    iput v7, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    .line 140
    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    cmpl-double v7, v4, v8

    if-ltz v7, :cond_189

    .line 141
    const-wide v2, 0x3fe6666666666666L    # 0.7

    iput-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    :cond_17d
    :goto_17d
    move-object v2, v6

    .line 145
    goto/16 :goto_f

    .line 137
    :cond_180
    const-wide/16 v2, 0x0

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_13a

    .line 142
    :cond_189
    const-wide v8, 0x3ff3333333333333L    # 1.2

    cmpl-double v4, v4, v8

    if-gez v4, :cond_198

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_17d

    .line 143
    :cond_198
    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    goto :goto_17d

    :cond_1a0
    move-wide v2, v4

    goto/16 :goto_de
.end method
