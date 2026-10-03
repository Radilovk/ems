.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;
.super Ljava/lang/Object;
.source "ScaleInsight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$ByPrio;
    }
.end annotation


# static fields
.field static final AGES:[D

.field static final AGE_SPAN:D = 8.0

.field static final ALMI_F:[D

.field static final ALMI_M:[D

.field static final AMBER:I = -0xa61f5

.field static final BASE_GAP_MS:J = 0x1499700L

.field static final BASE_MAX:I = 0x8

.field static final BLUE:I = -0xc74208

.field static final BOTH:[I

.field static final CH_BG:[Ljava/lang/String;

.field static final CH_EN:[Ljava/lang/String;

.field static final CH_SEG:[[D

.field static final CYAN:I = -0xf9492c

.field static final DRY_AMBER:D = 5.0

.field static final FMI_F:[D

.field static final FMI_M:[D

.field static final GREEN:I = -0xdd3aa2

.field public static final K_BODY:I = 0x2

.field public static final K_EMS:I = 0x1

.field public static final K_HABIT:I = 0x3

.field public static final K_TODAY:I = 0x0

.field static final LESS:[I

.field static final MORE:[I

.field static final ORANGE:I = -0x68cea

.field static final RED:I = -0x10bbbc

.field static final SEG_BG:[Ljava/lang/String;

.field static final SEG_EN:[Ljava/lang/String;

.field static final SWELL_AMBER:D = 1.2

.field static final SWELL_RED:D = 2.5

.field static final TEAL:I = -0xef467f

.field public static final TODAY_MS:J = 0x2932e00L

.field public static final TONE_ALERT:I = 0x3

.field public static final TONE_GOOD:I = 0x0

.field public static final TONE_INFO:I = 0x1

.field public static final TONE_WARN:I = 0x2

.field public static final T_ATHLETIC:I = 0x0

.field public static final T_BALANCED:I = 0x1

.field public static final T_FAT:I = 0x3

.field public static final T_FAT_LOW_MUSCLE:I = 0x4

.field public static final T_LEAN_LOW_MUSCLE:I = 0x5

.field public static final T_STRONG_FAT:I = 0x2

.field public static final T_VERY_LEAN:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 196
    const/16 v0, 0xa

    new-array v0, v0, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_130

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v3, [D

    fill-array-data v2, :array_140

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [D

    fill-array-data v2, :array_150

    aput-object v2, v0, v1

    new-array v1, v3, [D

    fill-array-data v1, :array_160

    aput-object v1, v0, v3

    new-array v1, v3, [D

    fill-array-data v1, :array_170

    aput-object v1, v0, v5

    new-array v1, v3, [D

    fill-array-data v1, :array_180

    aput-object v1, v0, v4

    new-array v1, v3, [D

    fill-array-data v1, :array_190

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v2, v3, [D

    fill-array-data v2, :array_1a0

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [D

    fill-array-data v2, :array_1b0

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [D

    fill-array-data v2, :array_1c0

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    .line 395
    new-array v0, v6, [D

    fill-array-data v0, :array_1d0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->AGES:[D

    .line 398
    new-array v0, v6, [D

    fill-array-data v0, :array_1ec

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M:[D

    .line 399
    new-array v0, v6, [D

    fill-array-data v0, :array_208

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F:[D

    .line 400
    new-array v0, v5, [D

    fill-array-data v0, :array_224

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M:[D

    .line 401
    new-array v0, v5, [D

    fill-array-data v0, :array_238

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F:[D

    .line 466
    new-array v0, v4, [I

    fill-array-data v0, :array_24c

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->BOTH:[I

    .line 468
    new-array v0, v4, [I

    fill-array-data v0, :array_25a

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    .line 470
    new-array v0, v4, [I

    fill-array-data v0, :array_268

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->LESS:[I

    .line 571
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u0442\u043e\u0440\u0441\u0430"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "\u043b\u044f\u0432\u0430\u0442\u0430 \u0440\u044a\u043a\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0434\u044f\u0441\u043d\u0430\u0442\u0430 \u0440\u044a\u043a\u0430"

    aput-object v2, v0, v1

    const-string v1, "\u043b\u0435\u0432\u0438\u044f \u043a\u0440\u0430\u043a"

    aput-object v1, v0, v3

    const-string v1, "\u0434\u0435\u0441\u043d\u0438\u044f \u043a\u0440\u0430\u043a"

    aput-object v1, v0, v5

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_BG:[Ljava/lang/String;

    .line 572
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "the trunk"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "the left arm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "the right arm"

    aput-object v2, v0, v1

    const-string v1, "the left leg"

    aput-object v1, v0, v3

    const-string v1, "the right leg"

    aput-object v1, v0, v5

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_EN:[Ljava/lang/String;

    .line 573
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0433\u044a\u0440\u0434\u0438\u0442\u0435"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "\u043a\u043e\u0440\u0435\u043c\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u043f\u0440\u0435\u0434\u043d\u043e\u0442\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    const-string v1, "\u043f\u0440\u0430\u0441\u0446\u0438\u0442\u0435"

    aput-object v1, v0, v3

    const-string v1, "\u0440\u044a\u0446\u0435\u0442\u0435"

    aput-object v1, v0, v5

    const-string v1, "\u0442\u0440\u0430\u043f\u0435\u0446\u0430"

    aput-object v1, v0, v4

    const-string v1, "\u0433\u044a\u0440\u0431\u0430"

    aput-object v1, v0, v6

    const/4 v1, 0x7

    const-string v2, "\u043a\u0440\u044a\u0441\u0442\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0437\u0430\u0434\u043d\u043e\u0442\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_BG:[Ljava/lang/String;

    .line 575
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chest"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string v2, "abs"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "front thigh"

    aput-object v2, v0, v1

    const-string v1, "calves"

    aput-object v1, v0, v3

    const-string v1, "arms"

    aput-object v1, v0, v5

    const-string v1, "traps"

    aput-object v1, v0, v4

    const-string v1, "back"

    aput-object v1, v0, v6

    const/4 v1, 0x7

    const-string v2, "lower back"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "glutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "back thigh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_EN:[Ljava/lang/String;

    return-void

    .line 196
    nop

    :array_130
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_140
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_150
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_160
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_170
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_180
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_190
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_1a0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_1b0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_1c0
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 395
    :array_1d0
    .array-data 8
        0x4039000000000000L    # 25.0
        0x4041800000000000L    # 35.0
        0x4046800000000000L    # 45.0
        0x404b800000000000L    # 55.0
        0x4050400000000000L    # 65.0
        0x4052c00000000000L    # 75.0
    .end array-data

    .line 398
    :array_1ec
    .array-data 8
        0x402299999999999aL    # 9.3
        0x4022333333333333L    # 9.1
        0x4021666666666666L    # 8.7
        0x4021333333333333L    # 8.6
        0x4021000000000000L    # 8.5
        0x4020000000000000L    # 8.0
    .end array-data

    .line 399
    :array_208
    .array-data 8
        0x401b99999999999aL    # 6.9
        0x401b333333333333L    # 6.8
        0x401acccccccccccdL    # 6.7
        0x401a666666666666L    # 6.6
        0x401a000000000000L    # 6.5
        0x4019333333333333L    # 6.3
    .end array-data

    .line 400
    :array_224
    .array-data 8
        0x4014000000000000L    # 5.0
        0x401b333333333333L    # 6.8
        0x4020000000000000L    # 8.0
        0x4021666666666666L    # 8.7
    .end array-data

    .line 401
    :array_238
    .array-data 8
        0x401a666666666666L    # 6.6
        0x4021cccccccccccdL    # 8.9
        0x4023666666666666L    # 9.7
        0x402699999999999aL    # 11.3
    .end array-data

    .line 466
    :array_24c
    .array-data 4
        -0x10bbbc
        -0xa61f5
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data

    .line 468
    :array_25a
    .array-data 4
        -0x10bbbc
        -0xa61f5
        -0xdd3aa2
        -0xef467f
        -0xf9492c
    .end array-data

    .line 470
    :array_268
    .array-data 4
        -0xc74208
        -0xef467f
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advice(Lorg/json/JSONArray;IZII)Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "IZII)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 588
    if-eqz p0, :cond_2b

    invoke-virtual/range {p0 .. p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object v15, v4

    .line 589
    :goto_c
    if-eqz v15, :cond_16

    const-string v4, "fat"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 590
    :cond_16
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    const-string v8, "\u0421\u0442\u044a\u043f\u0438 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v9, "\u0411\u043e\u0441, \u0441 \u0434\u0432\u0435\u0442\u0435 \u0440\u044a\u0446\u0435 \u043d\u0430 \u0434\u0440\u044a\u0436\u043a\u0430\u0442\u0430 \u2014 \u0430\u043d\u0430\u043b\u0438\u0437\u044a\u0442 \u0441\u0435 \u043f\u043e\u044f\u0432\u044f\u0432\u0430 \u0442\u0443\u043a."

    const-string v10, "Step on the scale"

    const-string v11, "Barefoot, both hands on the handle \u2014 the analysis appears here."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v14

    .line 755
    :goto_2a
    return-object v4

    .line 588
    :cond_2b
    const/4 v4, 0x0

    move-object v15, v4

    goto :goto_c

    .line 595
    :cond_2e
    const/4 v4, 0x5

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x3

    const-string v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x4

    const-string v5, ""

    aput-object v5, v12, v4

    .line 596
    const-string v4, "w"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 597
    const-string v4, "fat"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 598
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v13

    .line 600
    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v20

    .line 601
    invoke-virtual/range {v20 .. v20}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v4

    if-nez v4, :cond_262

    .line 602
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/4 v7, 0x1

    const-string v8, "\u041c\u0435\u0440\u0435\u043d\u0435 \u043f\u0440\u0435\u0434\u0438 \u0432\u0441\u044f\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v9, "\u041e\u0442 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435 (\u043f\u043e\u043d\u0435 6 \u0447 \u043f\u043e-\u043a\u044a\u0441\u043d\u043e) \u043a\u0430\u043d\u0442\u0430\u0440\u044a\u0442 \u043a\u0430\u0437\u0432\u0430 \u0434\u0430\u043b\u0438 \u0442\u044f\u043b\u043e\u0442\u043e \u0435 \u0433\u043e\u0442\u043e\u0432\u043e \u0437\u0430 \u043f\u044a\u043b\u043d\u0430 \u0441\u0438\u043b\u0430."

    const-string v10, "Measure before every session"

    const-string v11, "From the next measurement (at least 6 h later) the scale tells whether the body is ready for full strength."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :goto_7b
    const-string v4, "water"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v15, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    move/from16 v0, p2

    invoke-static {v4, v5, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v11

    .line 625
    invoke-virtual {v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    if-ltz v4, :cond_eb

    invoke-virtual {v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_eb

    .line 626
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "\u0412\u043e\u0434\u0430 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0412\u043e\u0434\u0430\u0442\u0430 \u0435 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v0, v11, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    move-wide/from16 v20, v0

    .line 627
    invoke-static/range {v20 .. v21}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " % \u2014 \u043f\u043e\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430. 0,5 \u043b \u0432\u043e\u0434\u0430 \u0447\u0430\u0441 \u043f\u0440\u0435\u0434\u0438 EMS: \u0442\u043e\u043a\u044a\u0442 \u0441\u0435 \u043f\u0440\u043e\u0432\u0435\u0436\u0434\u0430 \u043f\u043e-\u0440\u0430\u0432\u043d\u043e \u0438 \u0441\u0435 \u0443\u0441\u0435\u0449\u0430 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043f\u043e \u043a\u043e\u0436\u0430\u0442\u0430."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Water before the session"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Water is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v11, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    move-wide/from16 v22, v0

    .line 629
    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v20, " % \u2014 below normal. 0.5 l an hour before EMS: the current flows more evenly and stings the skin less."

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_eb
    move-wide/from16 v0, v18

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    .line 634
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v20

    .line 635
    const/4 v5, 0x3

    move/from16 v0, v20

    if-lt v0, v5, :cond_3a9

    .line 638
    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 639
    const-wide/16 v6, 0x0

    const-string v8, "fatKg"

    mul-double v10, v16, v18

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v10, v10, v18

    invoke-virtual {v15, v8, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    mul-double v10, v4, v16

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v10, v4

    div-double v4, v8, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    .line 640
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    move/from16 v0, v20

    if-ne v0, v7, :cond_39e

    const/4 v7, 0x3

    :goto_12b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    const/4 v8, 0x4

    move/from16 v0, v20

    if-ne v0, v8, :cond_3a1

    const-string v8, "\u0417\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    :goto_137
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": \u2212"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u043a\u0433 \u0434\u043e \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u0426\u0435\u043b \u201e\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435\u201c \u0432 EMS 2\u00d7 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e + \u0443\u043c\u0435\u0440\u0435\u043d \u0445\u0440\u0430\u043d\u0438\u0442\u0435\u043b\u0435\u043d \u0434\u0435\u0444\u0438\u0446\u0438\u0442; \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0434\u0430 \u0441\u0435 \u043f\u0430\u0437\u044f\u0442 \u2014 \u0441\u043b\u0435\u0434\u0438 \u0433\u0438 \u0442\u0443\u043a."

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    const/4 v10, 0x4

    move/from16 v0, v20

    if-ne v0, v10, :cond_3a5

    const-string v10, "Obese"

    :goto_161
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": \u2212"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " kg to normal"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "The EMS \"Fat loss\" goal twice a week + a moderate calorie deficit; keep the muscle \u2014 watch it here."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_185
    :goto_185
    iget-wide v4, v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move/from16 v0, p2

    invoke-static {v4, v5, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    .line 653
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    .line 654
    if-ltz v4, :cond_3c0

    const/4 v5, 0x1

    if-gt v4, v5, :cond_3c0

    .line 655
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    const-string v8, "\u041c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0437\u0430 \u0440\u044a\u0441\u0442\u0430"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0426\u0435\u043b \u201e\u0422\u043e\u043d\u0443\u0441\u201c (\u0441\u0438\u043b\u043e\u0432\u0430 EMS) 2\u00d7 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u0438 \u0431\u0435\u043b\u0442\u044a\u043a \u043e\u043a\u043e\u043b\u043e 1,6 \u0433 \u043d\u0430 \u043a\u0433 \u0442\u0435\u0433\u043b\u043e \u0434\u043d\u0435\u0432\u043d\u043e ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide v10, 0x3ff999999999999aL    # 1.6

    mul-double v10, v10, v16

    .line 657
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u0433)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Little muscle for the height"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The \"Tone\" goal (strength EMS) twice a week and about 1.6 g protein per kg a day ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide v12, 0x3ff999999999999aL    # 1.6

    mul-double v12, v12, v16

    .line 659
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " g)."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_1ed
    :goto_1ed
    const-string v4, "visc"

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 670
    const/16 v4, 0xa

    if-lt v10, v4, :cond_231

    .line 671
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0xf

    if-lt v10, v7, :cond_475

    const/4 v7, 0x3

    :goto_201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043e\u043a\u043e\u043b\u043e \u043e\u0440\u0433\u0430\u043d\u0438\u0442\u0435 \u0441\u0430 \u0432\u0438\u0441\u043e\u043a\u0438 \u2014 \u043a\u0430\u0440\u0434\u0438\u043e + EMS \u0437\u0430 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435; \u043f\u0440\u0438 15+ \u2014 \u043a\u043e\u043d\u0441\u0443\u043b\u0442\u0430\u0446\u0438\u044f \u0441 \u043b\u0435\u043a\u0430\u0440."

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Visceral fat: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Fat around the organs is high \u2014 cardio + fat-loss EMS; at 15+ see a doctor."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_231
    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v15, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v8

    .line 678
    const/4 v10, -0x1

    .line 679
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 680
    const/4 v7, 0x0

    :goto_240
    const/4 v4, 0x5

    if-ge v7, v4, :cond_478

    .line 681
    const/4 v4, 0x0

    aget-object v4, v8, v4

    aget-wide v4, v4, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_82b

    const/4 v4, 0x0

    aget-object v4, v8, v4

    aget-wide v4, v4, v7

    cmpg-double v4, v4, v12

    if-gez v4, :cond_82b

    .line 682
    const/4 v4, 0x0

    aget-object v4, v8, v4

    aget-wide v4, v4, v7

    move v6, v7

    .line 680
    :goto_25d
    add-int/lit8 v7, v7, 0x1

    move-wide v12, v4

    move v10, v6

    goto :goto_240

    .line 607
    :cond_262
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_389

    .line 608
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v10, v4

    .line 609
    move-object/from16 v0, v20

    iget v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    if-ltz v4, :cond_37c

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    move-object/from16 v0, v20

    iget v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    aget-wide v4, v4, v5

    const-wide v6, 0x3ff3333333333333L    # 1.2

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_37c

    const/4 v4, 0x1

    move v11, v4

    .line 610
    :goto_296
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    const-wide v22, 0x3fe6666666666666L    # 0.7

    cmpg-double v7, v8, v22

    if-gtz v7, :cond_380

    const/4 v7, 0x3

    :goto_2a8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0414\u043d\u0435\u0441 \u043f\u043e-\u043b\u0435\u043a\u043e: \u2212"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " %"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 611
    if-eqz v11, :cond_383

    .line 612
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u041f\u043e\u0434\u0443\u0432\u0430\u043d\u0435 \u0432 "

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v21, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_BG:[Ljava/lang/String;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v21, " (+"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    move/from16 v22, v0

    aget-wide v22, v21, v22

    .line 611
    invoke-static/range {v22 .. v23}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v21, " %) \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043e\u0449\u0435 \u0441\u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u0442. \u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u044f\u0442 \u0440\u0435\u0436\u0438\u043c \u0432\u0435\u0447\u0435 \u0435 \u043d\u0430\u043c\u0430\u043b\u0438\u043b \u0441\u0438\u043b\u0430\u0442\u0430."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 613
    :goto_30c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Softer today: \u2212"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v21, " %"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 615
    if-eqz v11, :cond_386

    .line 616
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Swelling in "

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v21, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_EN:[Ljava/lang/String;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v21, " (+"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    move/from16 v20, v0

    aget-wide v20, v21, v20

    .line 615
    invoke-static/range {v20 .. v21}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v20, " %) \u2014 the muscles are still recovering. Auto has already lowered the strength."

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 617
    :goto_374
    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7b

    .line 609
    :cond_37c
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_296

    .line 610
    :cond_380
    const/4 v7, 0x2

    goto/16 :goto_2a8

    .line 613
    :cond_383
    const-string v9, "\u041f\u043e-\u043c\u0430\u043b\u043a\u043e \u0432\u043e\u0434\u0430 \u0432 \u0442\u044f\u043b\u043e\u0442\u043e \u2014 \u043d\u0435\u043a\u0430 \u043f\u0438\u0435 \u0432\u043e\u0434\u0430 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    goto :goto_30c

    .line 617
    :cond_386
    const-string v11, "Less body water \u2014 have them drink before the session."

    goto :goto_374

    .line 619
    :cond_389
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "\u0413\u043e\u0442\u043e\u0432 \u0437\u0430 \u043f\u044a\u043b\u043d\u0430 \u0441\u0438\u043b\u0430"

    const-string v9, "\u0422\u044a\u043a\u0430\u043d\u0438\u0442\u0435 \u0441\u0430 \u043a\u0430\u0442\u043e \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u2014 \u0431\u0435\u0437 \u043f\u043e\u0434\u0443\u0432\u0430\u043d\u0435 \u0441\u043b\u0435\u0434 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v10, "Ready for full strength"

    const-string v11, "The tissues are as usual \u2014 no swelling after the last session."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7b

    .line 640
    :cond_39e
    const/4 v7, 0x2

    goto/16 :goto_12b

    .line 641
    :cond_3a1
    const-string v8, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 \u043d\u0430\u0434 \u043d\u043e\u0440\u043c\u0430\u0442\u0430"

    goto/16 :goto_137

    .line 643
    :cond_3a5
    const-string v10, "Fat above normal"

    goto/16 :goto_161

    .line 646
    :cond_3a9
    if-nez v20, :cond_185

    .line 647
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    const-string v8, "\u041c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v9, "\u041f\u043e\u0434 \u0436\u0438\u0437\u043d\u0435\u043d\u043e \u043d\u0443\u0436\u043d\u0438\u0442\u0435 \u2014 \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0438\u0442\u0435\u043b\u0435\u043d \u0434\u0435\u0444\u0438\u0446\u0438\u0442; \u043f\u043e\u0432\u0435\u0447\u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u043c\u0435\u0436\u0434\u0443 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438\u0442\u0435."

    const-string v10, "Very low fat"

    const-string v11, "Below the essential level \u2014 no calorie deficit; more recovery between sessions."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_185

    .line 660
    :cond_3c0
    const/4 v5, 0x3

    if-lt v4, v5, :cond_1ed

    const/4 v4, 0x2

    move/from16 v0, v20

    if-gt v0, v4, :cond_1ed

    .line 661
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "\u0410\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e \u0442\u044f\u043b\u043e"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0422\u0435\u0433\u043b\u043e\u0442\u043e \u0435 \u043e\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 662
    const-string v9, "bmi"

    const-wide/16 v12, 0x0

    invoke-virtual {v15, v9, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    const-wide/high16 v16, 0x4039000000000000L    # 25.0

    cmpl-double v9, v12, v16

    if-ltz v9, :cond_46f

    .line 663
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " \u2014 \u0418\u0422\u041c "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "bmi"

    .line 662
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " \u0437\u0430\u0431\u043b\u0443\u0436\u0434\u0430\u0432\u0430, \u043d\u0435 \u0435 \u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 663
    :goto_40b
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u041f\u043e\u0434\u0434\u044a\u0440\u0436\u0430\u0439 \u0441\u044a\u0441 \u0441\u0438\u043b\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Athletic body"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The weight is muscle"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 664
    const-string v11, "bmi"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v11, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4039000000000000L    # 25.0

    cmpl-double v11, v16, v18

    if-ltz v11, :cond_472

    .line 665
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " \u2014 BMI "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "bmi"

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " misleads, it is not overweight."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_459
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Keep it with a strength program."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ed

    .line 663
    :cond_46f
    const-string v9, "."

    goto :goto_40b

    .line 665
    :cond_472
    const-string v11, "."

    goto :goto_459

    .line 671
    :cond_475
    const/4 v7, 0x2

    goto/16 :goto_201

    .line 686
    :cond_478
    if-ltz v10, :cond_4fc

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v4, v12, v4

    if-gez v4, :cond_4fc

    .line 687
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u041d\u0430\u0431\u043b\u0435\u0433\u043d\u0438 \u043d\u0430 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_BG:[Ljava/lang/String;

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0442\u0430\u043c \u0441\u0430 "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 688
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " % \u043e\u0442 \u043d\u043e\u0440\u043c\u0430\u0442\u0430 \u2014 \u0444\u043e\u043a\u0443\u0441-\u0437\u043e\u043d\u0430 \u0432 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430, \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0437\u0430 \u043d\u0435\u044f."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Focus on "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v16, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->SEG_EN:[Ljava/lang/String;

    aget-object v10, v16, v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The muscle there is "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 689
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " % of normal \u2014 a focus zone in the program, exercises for it."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_4fc
    const-string v4, "segMus"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 693
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v6, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v4

    .line 694
    const/4 v7, 0x3

    const/4 v8, 0x4

    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->asymmetry(Lorg/json/JSONArray;II)D

    move-result-wide v6

    .line 695
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_5e0

    move-wide v10, v4

    .line 696
    :goto_51b
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_5ca

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    cmpl-double v8, v8, v12

    if-ltz v8, :cond_5ca

    .line 697
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5e3

    const/4 v4, 0x1

    move v13, v4

    .line 698
    :goto_539
    const-wide/16 v4, 0x0

    cmpl-double v4, v10, v4

    if-lez v4, :cond_5e7

    const/4 v4, 0x1

    move v12, v4

    .line 699
    :goto_541
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0420\u0430\u0437\u043b\u0438\u043a\u0430 \u043b\u044f\u0432\u043e/\u0434\u044f\u0441\u043d\u043e "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " %"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    if-eqz v13, :cond_5ee

    if-eqz v12, :cond_5eb

    const-string v9, "\u0414\u044f\u0441\u043d\u0430\u0442\u0430 \u0440\u044a\u043a\u0430"

    :goto_574
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v16, " \u0435 \u043f\u043e-\u0441\u043b\u0430\u0431(\u0430) \u2014 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0441 \u0435\u0434\u043d\u0430 \u0440\u044a\u043a\u0430 / \u043a\u0440\u0430\u043a; \u043a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0434\u0430\u0432\u0430 \u0435\u0434\u043d\u0430\u043a\u044a\u0432 \u0442\u043e\u043a \u0438 \u043d\u0430 \u0434\u0432\u0435\u0442\u0435."

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Left / right difference "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 702
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " %"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    if-eqz v13, :cond_5fa

    if-eqz v12, :cond_5f7

    const-string v11, "The right arm"

    :goto_5b4
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is weaker \u2014 one-sided exercises; the suit gives both sides the same current."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_5ca
    invoke-static {v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->channelFat(Lorg/json/JSONObject;)[D

    move-result-object v11

    .line 708
    if-eqz v11, :cond_6c0

    .line 709
    const-wide/16 v6, 0x0

    .line 710
    array-length v5, v11

    const/4 v4, 0x0

    :goto_5d4
    if-ge v4, v5, :cond_602

    aget-wide v8, v11, v4

    .line 711
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->reachFactor(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 710
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d4

    :cond_5e0
    move-wide v10, v6

    .line 695
    goto/16 :goto_51b

    .line 697
    :cond_5e3
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_539

    .line 698
    :cond_5e7
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_541

    .line 700
    :cond_5eb
    const-string v9, "\u041b\u044f\u0432\u0430\u0442\u0430 \u0440\u044a\u043a\u0430"

    goto :goto_574

    :cond_5ee
    if-eqz v12, :cond_5f3

    const-string v9, "\u0414\u0435\u0441\u043d\u0438\u044f\u0442 \u043a\u0440\u0430\u043a"

    goto :goto_574

    :cond_5f3
    const-string v9, "\u041b\u0435\u0432\u0438\u044f\u0442 \u043a\u0440\u0430\u043a"

    goto/16 :goto_574

    .line 703
    :cond_5f7
    const-string v11, "The left arm"

    goto :goto_5b4

    :cond_5fa
    if-eqz v12, :cond_5ff

    const-string v11, "The right leg"

    goto :goto_5b4

    :cond_5ff
    const-string v11, "The left leg"

    goto :goto_5b4

    .line 713
    :cond_602
    array-length v4, v11

    int-to-double v4, v4

    div-double v12, v6, v4

    .line 714
    const/4 v5, -0x1

    .line 715
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 716
    const/4 v4, 0x0

    move v10, v5

    :goto_60b
    array-length v5, v11

    if-ge v4, v5, :cond_61f

    .line 717
    aget-wide v8, v11, v4

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->reachFactor(D)D

    move-result-wide v8

    div-double/2addr v8, v12

    .line 718
    cmpg-double v5, v8, v6

    if-gez v5, :cond_828

    move-wide v6, v8

    move v5, v4

    .line 716
    :goto_61b
    add-int/lit8 v4, v4, 0x1

    move v10, v5

    goto :goto_60b

    .line 723
    :cond_61f
    if-ltz v10, :cond_6c0

    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpg-double v4, v6, v4

    if-gez v4, :cond_6c0

    .line 724
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v11, v4

    .line 725
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u041f\u043e\u0432\u0435\u0447\u0435 \u0441\u0438\u043b\u0430 \u043d\u0430 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_BG:[Ljava/lang/String;

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " %)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u0442\u0430\u043c \u0438\u0437\u043e\u043b\u0438\u0440\u0430\u0442 \u2014 \u0442\u043e\u043a\u044a\u0442 \u0441\u0442\u0438\u0433\u0430 "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " % \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043e\u0442 \u0441\u0440\u0435\u0434\u043d\u043e\u0442\u043e. \u0418\u043b\u0438 \u043f\u043e-\u0448\u0438\u0440\u043e\u043a \u0438\u043c\u043f\u0443\u043b\u0441."

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "More strength on the "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_EN:[Ljava/lang/String;

    aget-object v10, v13, v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " (+"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " %)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The fat there insulates \u2014 the current reaches "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " % less than the mean. Or a wider pulse."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_6c0
    if-lez p1, :cond_77f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 734
    :goto_6c9
    if-eqz v4, :cond_774

    const-string v5, "muscle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_774

    const-string v5, "fatKg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_774

    .line 735
    const-string v5, "muscle"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v5, "muscle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    sub-double v12, v6, v8

    .line 736
    const-string v5, "fatKg"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v5, "fatKg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    sub-double v16, v6, v4

    .line 737
    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v4, v12, v4

    if-ltz v4, :cond_782

    const-wide v4, -0x4036666666666666L    # -0.2

    cmpg-double v4, v16, v4

    if-gtz v4, :cond_782

    .line 738
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "\u0422\u044f\u043b\u043e\u0442\u043e \u0441\u0435 \u043f\u0440\u0435\u043e\u0431\u0440\u0430\u0437\u044f\u0432\u0430 \u2713"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 739
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 \u0438 \u2212"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v16

    neg-double v10, v0

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u043a\u0433 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u043e\u0442 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "The body is recomposing \u2713"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 740
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " kg muscle mass and \u2212"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v16

    neg-double v12, v0

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " kg fat since the first measurement."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_774
    :goto_774
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$ByPrio;

    invoke-direct {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$ByPrio;-><init>()V

    invoke-static {v14, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v4, v14

    .line 755
    goto/16 :goto_2a

    .line 733
    :cond_77f
    const/4 v4, 0x0

    goto/16 :goto_6c9

    .line 742
    :cond_782
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v16, v4

    if-ltz v4, :cond_7d2

    .line 743
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u0440\u0430\u0441\u0442\u0430\u0442: +"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v16 .. v17}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u043a\u0433"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u041e\u0442 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u2014 \u043f\u0440\u043e\u0432\u0435\u0440\u0438 \u0445\u0440\u0430\u043d\u0435\u043d\u0435\u0442\u043e \u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438\u0442\u0435."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fat is growing: +"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 745
    invoke-static/range {v16 .. v17}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " kg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Since the first measurement \u2014 check the food and how often they train."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_774

    .line 747
    :cond_7d2
    const-wide v4, -0x4016666666666666L    # -0.8

    cmpg-double v4, v12, v4

    if-gtz v4, :cond_774

    .line 748
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430\u0442\u0430 \u043c\u0430\u0441\u0430 \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430: \u2212"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    neg-double v10, v12

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u043a\u0433"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u041f\u043e\u0432\u0435\u0447\u0435 \u0431\u0435\u043b\u0442\u044a\u043a \u0438 \u0441\u0438\u043b\u043e\u0432\u0430 EMS; \u043f\u0440\u0438 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435 \u2014 \u043f\u043e-\u043c\u0430\u043b\u044a\u043a \u0434\u0435\u0444\u0438\u0446\u0438\u0442."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Muscle is going down: \u2212"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    neg-double v12, v12

    .line 750
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->f1(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " kg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "More protein and strength EMS; when losing weight \u2014 a smaller deficit."

    invoke-direct/range {v4 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_774

    :cond_828
    move v5, v10

    goto/16 :goto_61b

    :cond_82b
    move-wide v4, v12

    move v6, v10

    goto/16 :goto_25d
.end method

.method public static ageNorm(DI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 14

    .prologue
    .line 519
    int-to-double v2, p2

    .line 520
    const/4 v0, 0x6

    new-array v1, v0, [D

    const/4 v0, 0x0

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    sub-double v4, v2, v4

    aput-wide v4, v1, v0

    const/4 v0, 0x1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    sub-double v4, v2, v4

    aput-wide v4, v1, v0

    const/4 v0, 0x2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    sub-double v4, v2, v4

    aput-wide v4, v1, v0

    const/4 v0, 0x3

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    add-double/2addr v4, v2

    aput-wide v4, v1, v0

    const/4 v0, 0x4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    add-double/2addr v4, v2

    aput-wide v4, v1, v0

    const/4 v0, 0x5

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 521
    const/4 v0, 0x5

    new-array v2, v0, [I

    fill-array-data v2, :array_3e

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "Imboden 2017 (DXA, 3 327)"

    move-object v3, p3

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    nop

    :array_3e
    .array-data 4
        -0xf9492c
        -0xef467f
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data
.end method

.method static ageOf(D[DDZ)D
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 408
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 409
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 426
    :goto_9
    return-wide v0

    .line 411
    :cond_a
    array-length v1, p2

    .line 412
    aget-wide v2, p2, v6

    add-int/lit8 v0, v1, -0x1

    aget-wide v4, p2, v0

    .line 413
    if-eqz p5, :cond_28

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_2c

    .line 414
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

    .line 413
    :cond_28
    cmpl-double v0, p0, v2

    if-gez v0, :cond_17

    .line 416
    :cond_2c
    if-eqz p5, :cond_45

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_49

    .line 417
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

    .line 416
    :cond_45
    cmpg-double v0, p0, v4

    if-lez v0, :cond_32

    .line 419
    :cond_49
    const/4 v0, 0x1

    :goto_4a
    if-ge v0, v1, :cond_7e

    .line 420
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p2, v2

    aget-wide v4, p2, v0

    .line 421
    if-eqz p5, :cond_77

    cmpg-double v6, p0, v4

    if-gtz v6, :cond_7b

    .line 422
    :cond_58
    sub-double v6, p0, v2

    sub-double v2, v4, v2

    div-double v2, v6, v2

    .line 423
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

    .line 421
    :cond_77
    cmpl-double v6, p0, v4

    if-gez v6, :cond_58

    .line 419
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 426
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

    .line 292
    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 296
    :cond_10
    :goto_10
    return-wide v0

    .line 295
    :cond_11
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    .line 296
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

.method public static bmiNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 532
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_14

    .line 533
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->BOTH:[I

    const-string v6, ""

    const/4 v7, 0x1

    const-string v8, "WHO"

    move-object v3, p2

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 532
    :array_14
    .array-data 8
        0x4028000000000000L    # 12.0
        0x4030000000000000L    # 16.0
        0x4032800000000000L    # 18.5
        0x4039000000000000L    # 25.0
        0x403e000000000000L    # 30.0
        0x4044000000000000L    # 40.0
    .end array-data
.end method

.method public static body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;
    .registers 15

    .prologue
    .line 341
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;-><init>()V

    .line 342
    if-eqz p0, :cond_13

    const-string v0, "fat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x64

    if-ge p2, v0, :cond_15

    :cond_13
    move-object v0, v6

    .line 388
    :goto_14
    return-object v0

    .line 345
    :cond_15
    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 346
    const-string v0, "w"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 347
    const-string v4, "fat"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 348
    const-string v7, "fatKg"

    mul-double v8, v0, v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    invoke-virtual {p0, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 349
    const-string v7, "lean"

    sub-double v10, v0, v8

    invoke-virtual {p0, v7, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 350
    div-double/2addr v10, v2

    iput-wide v10, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    .line 351
    div-double/2addr v8, v2

    iput-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    .line 352
    const-string v7, "skel"

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v7, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 353
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_138

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_54
    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->smi:D

    .line 354
    if-eqz p1, :cond_171

    .line 355
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4031000000000000L    # 17.0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_13f

    const/4 v0, 0x0

    :goto_61
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    .line 356
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_158

    const/4 v0, 0x0

    :goto_6a
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    .line 361
    :goto_6c
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-nez v0, :cond_1b6

    .line 362
    const/4 v0, 0x6

    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    .line 368
    :goto_73
    const-string v0, "segMus"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_b1

    .line 370
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

    .line 371
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

    .line 372
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    if-eqz p1, :cond_1df

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_M:[D

    :goto_a3
    if-eqz p1, :cond_1e3

    const-wide v3, 0x3f9a9fbe76c8b439L    # 0.026

    :goto_aa
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ageOf(D[DDZ)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromMuscle:D

    .line 374
    :cond_b1
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    if-eqz p1, :cond_1ea

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_M:[D

    :goto_b7
    if-eqz p1, :cond_1ee

    const-wide v3, 0x3fb1eb851eb851ecL    # 0.07

    :goto_be
    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ageOf(D[DDZ)D

    move-result-wide v0

    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromFat:D

    .line 375
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromMuscle:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1f5

    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromFat:D

    :goto_cf
    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    .line 376
    const-string v0, "pa"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 377
    const/16 v1, 0x12

    if-lt v0, v1, :cond_fc

    iget-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_fc

    .line 379
    int-to-double v2, v0

    const-wide/high16 v4, -0x3fe0000000000000L    # -8.0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    iget-wide v10, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    int-to-double v0, v0

    sub-double v0, v10, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v10

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    .line 381
    :cond_fc
    const-string v0, "segFat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_135

    .line 383
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    const/4 v1, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 384
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

    .line 385
    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    add-double/2addr v0, v4

    .line 386
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_202

    div-double v0, v2, v0

    :goto_133
    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    :cond_135
    move-object v0, v6

    .line 388
    goto/16 :goto_14

    .line 353
    :cond_138
    mul-double/2addr v0, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v8

    div-double/2addr v0, v2

    goto/16 :goto_54

    .line 355
    :cond_13f
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_14a

    const/4 v0, 0x1

    goto/16 :goto_61

    :cond_14a
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4037000000000000L    # 23.0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_155

    const/4 v0, 0x2

    goto/16 :goto_61

    :cond_155
    const/4 v0, 0x3

    goto/16 :goto_61

    .line 356
    :cond_158
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_163

    const/4 v0, 0x1

    goto/16 :goto_6a

    :cond_163
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_16e

    const/4 v0, 0x2

    goto/16 :goto_6a

    :cond_16e
    const/4 v0, 0x3

    goto/16 :goto_6a

    .line 358
    :cond_171
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_187

    const/4 v0, 0x0

    :goto_17a
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    .line 359
    const-wide/high16 v0, 0x402c000000000000L    # 14.0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_1a0

    const/4 v0, 0x0

    :goto_183
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    goto/16 :goto_6c

    .line 358
    :cond_187
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4031000000000000L    # 17.0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_191

    const/4 v0, 0x1

    goto :goto_17a

    :cond_191
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide v8, 0x4033800000000000L    # 19.5

    cmpg-double v0, v0, v8

    if-gez v0, :cond_19e

    const/4 v0, 0x2

    goto :goto_17a

    :cond_19e
    const/4 v0, 0x3

    goto :goto_17a

    .line 359
    :cond_1a0
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_1aa

    const/4 v0, 0x1

    goto :goto_183

    :cond_1aa
    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_1b4

    const/4 v0, 0x2

    goto :goto_183

    :cond_1b4
    const/4 v0, 0x3

    goto :goto_183

    .line 363
    :cond_1b6
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1cd

    .line 364
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1c5

    const/4 v0, 0x0

    :goto_1c1
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    goto/16 :goto_73

    :cond_1c5
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    if-nez v0, :cond_1cb

    const/4 v0, 0x5

    goto :goto_1c1

    :cond_1cb
    const/4 v0, 0x1

    goto :goto_1c1

    .line 366
    :cond_1cd
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1d7

    const/4 v0, 0x2

    :goto_1d3
    iput v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    goto/16 :goto_73

    :cond_1d7
    iget v0, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    if-nez v0, :cond_1dd

    const/4 v0, 0x4

    goto :goto_1d3

    :cond_1dd
    const/4 v0, 0x3

    goto :goto_1d3

    .line 372
    :cond_1df
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ALMI_F:[D

    goto/16 :goto_a3

    :cond_1e3
    const-wide v3, 0x3f889374bc6a7efaL    # 0.012

    goto/16 :goto_aa

    .line 374
    :cond_1ea
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->FMI_F:[D

    goto/16 :goto_b7

    :cond_1ee
    const-wide v3, 0x3fc47ae147ae147bL    # 0.16

    goto/16 :goto_be

    .line 375
    :cond_1f5
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromMuscle:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromFat:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto/16 :goto_cf

    .line 386
    :cond_202
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_133
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

.method public static channelMuscle(Lorg/json/JSONObject;ZI)[D
    .registers 17

    .prologue
    .line 244
    invoke-static/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 245
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 246
    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const/4 v1, 0x2

    aget-wide v6, v0, v1

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 247
    const/4 v1, 0x3

    aget-wide v6, v0, v1

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    add-double/2addr v0, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v6

    .line 248
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_30

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_30

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 249
    :cond_30
    const/4 v0, 0x0

    .line 266
    :goto_31
    return-object v0

    .line 251
    :cond_32
    const/4 v6, 0x3

    new-array v8, v6, [D

    const/4 v6, 0x0

    aput-wide v2, v8, v6

    const/4 v2, 0x1

    aput-wide v4, v8, v2

    const/4 v2, 0x2

    aput-wide v0, v8, v2

    .line 252
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    array-length v0, v0

    new-array v1, v0, [D

    .line 253
    const-wide/16 v2, 0x0

    .line 254
    const/4 v0, 0x0

    :goto_46
    array-length v4, v1

    if-ge v0, v4, :cond_62

    .line 255
    const-wide/16 v6, 0x0

    .line 256
    const/4 v4, 0x0

    :goto_4c
    const/4 v5, 0x3

    if-ge v4, v5, :cond_5c

    .line 257
    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->CH_SEG:[[D

    aget-object v5, v5, v0

    aget-wide v10, v5, v4

    aget-wide v12, v8, v4

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 259
    :cond_5c
    aput-wide v6, v1, v0

    .line 260
    add-double/2addr v2, v6

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 262
    :cond_62
    array-length v0, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 263
    const/4 v0, 0x0

    :goto_66
    array-length v4, v1

    if-ge v0, v4, :cond_83

    .line 264
    const-wide v4, 0x3fe6666666666666L    # 0.7

    const-wide v6, 0x3ff6666666666666L    # 1.4

    aget-wide v8, v1, v0

    div-double/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_83
    move-object v0, v1

    .line 266
    goto :goto_31
.end method

.method static clampAge(D)D
    .registers 6

    .prologue
    .line 430
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    const-wide v2, 0x4055400000000000L    # 85.0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static f1(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 579
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method public static fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 15

    .prologue
    const/16 v2, 0x3c

    const/16 v1, 0x28

    const/4 v0, 0x6

    .line 491
    if-eqz p2, :cond_2b

    .line 492
    if-ge p3, v1, :cond_1d

    new-array v0, v0, [D

    fill-array-data v0, :array_42

    :goto_e
    move-object v1, v0

    .line 498
    :goto_f
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->LESS:[I

    const-string v6, " %"

    const/4 v7, 0x1

    const-string v8, "Gallagher 2000 \u00b7 AJCN"

    move-object v3, p4

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 492
    :cond_1d
    if-ge p3, v2, :cond_25

    new-array v0, v0, [D

    fill-array-data v0, :array_5e

    goto :goto_e

    .line 493
    :cond_25
    new-array v0, v0, [D

    fill-array-data v0, :array_7a

    goto :goto_e

    .line 495
    :cond_2b
    if-ge p3, v1, :cond_34

    new-array v0, v0, [D

    fill-array-data v0, :array_96

    :goto_32
    move-object v1, v0

    .line 496
    goto :goto_f

    .line 495
    :cond_34
    if-ge p3, v2, :cond_3c

    new-array v0, v0, [D

    fill-array-data v0, :array_b2

    goto :goto_32

    .line 496
    :cond_3c
    new-array v0, v0, [D

    fill-array-data v0, :array_ce

    goto :goto_32

    .line 492
    :array_42
    .array-data 8
        0x0
        0x4014000000000000L    # 5.0
        0x4020000000000000L    # 8.0
        0x4034000000000000L    # 20.0
        0x4039000000000000L    # 25.0
        0x4044000000000000L    # 40.0
    .end array-data

    :array_5e
    .array-data 8
        0x0
        0x4014000000000000L    # 5.0
        0x4026000000000000L    # 11.0
        0x4036000000000000L    # 22.0
        0x403c000000000000L    # 28.0
        0x4045000000000000L    # 42.0
    .end array-data

    .line 493
    :array_7a
    .array-data 8
        0x0
        0x4014000000000000L    # 5.0
        0x402a000000000000L    # 13.0
        0x4039000000000000L    # 25.0
        0x403e000000000000L    # 30.0
        0x4046000000000000L    # 44.0
    .end array-data

    .line 495
    :array_96
    .array-data 8
        0x0
        0x4028000000000000L    # 12.0
        0x4035000000000000L    # 21.0
        0x4040800000000000L    # 33.0
        0x4043800000000000L    # 39.0
        0x4049000000000000L    # 50.0
    .end array-data

    :array_b2
    .array-data 8
        0x0
        0x4028000000000000L    # 12.0
        0x4037000000000000L    # 23.0
        0x4041000000000000L    # 34.0
        0x4044000000000000L    # 40.0
        0x404a000000000000L    # 52.0
    .end array-data

    .line 496
    :array_ce
    .array-data 8
        0x0
        0x4028000000000000L    # 12.0
        0x4038000000000000L    # 24.0
        0x4042000000000000L    # 36.0
        0x4045000000000000L    # 42.0
        0x404b000000000000L    # 54.0
    .end array-data
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

.method public static muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 14

    .prologue
    const/4 v0, 0x6

    .line 507
    if-eqz p2, :cond_16

    new-array v1, v0, [D

    fill-array-data v1, :array_1c

    .line 508
    :goto_8
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    const-string v6, ""

    const/4 v7, 0x1

    const-string v8, "FFMI \u00b7 Schutz 2002 \u00b7 Kelly 2009 (NHANES)"

    move-object v3, p3

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 507
    :cond_16
    new-array v1, v0, [D

    fill-array-data v1, :array_38

    goto :goto_8

    :array_1c
    .array-data 8
        0x402a000000000000L    # 13.0
        0x4030000000000000L    # 16.0
        0x4031000000000000L    # 17.0
        0x4034000000000000L    # 20.0
        0x4037000000000000L    # 23.0
        0x403b000000000000L    # 27.0
    .end array-data

    :array_38
    .array-data 8
        0x4024000000000000L    # 10.0
        0x402a000000000000L    # 13.0
        0x402c000000000000L    # 14.0
        0x4031000000000000L    # 17.0
        0x4033800000000000L    # 19.5
        0x4037000000000000L    # 23.0
    .end array-data
.end method

.method static norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 473
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;-><init>()V

    .line 474
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    const/4 v2, 0x6

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    invoke-static {p1, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->names:[Ljava/lang/String;

    invoke-static {p2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iput-wide p3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    .line 478
    iput-object p5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->unit:Ljava/lang/String;

    .line 479
    iput p6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->decimals:I

    .line 480
    iput-object p7, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    .line 481
    return-object v0
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

.method static reachFactor(D)D
    .registers 10

    .prologue
    .line 759
    const-wide v0, 0x3fe3333333333333L    # 0.6

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    sub-double v4, p0, v4

    neg-double v4, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
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

.method public static readyNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 544
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_18

    .line 545
    const/4 v0, 0x5

    new-array v2, v0, [I

    fill-array-data v2, :array_34

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "XEMS"

    move-object v3, p2

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 544
    :array_18
    .array-data 8
        0x0
        0x4044000000000000L    # 40.0
        0x404e000000000000L    # 60.0
        0x4054000000000000L    # 80.0
        0x4056800000000000L    # 90.0
        0x4059000000000000L    # 100.0
    .end array-data

    .line 545
    :array_34
    .array-data 4
        -0x10bbbc
        -0x68cea
        -0xa61f5
        -0xdd3aa2
        -0xdd3aa2
    .end array-data
.end method

.method public static visceralNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 526
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_18

    .line 527
    const/4 v0, 0x5

    new-array v2, v0, [I

    fill-array-data v2, :array_34

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "WLA25 / Fitdays"

    move-object v3, p2

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 526
    :array_18
    .array-data 8
        0x0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4024000000000000L    # 10.0
        0x402e000000000000L    # 15.0
        0x4035000000000000L    # 21.0
    .end array-data

    .line 527
    :array_34
    .array-data 4
        -0xef467f
        -0xdd3aa2
        -0xdd3aa2
        -0xa61f5
        -0x10bbbc
    .end array-data
.end method

.method public static waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 14

    .prologue
    const/4 v0, 0x6

    .line 513
    if-eqz p2, :cond_16

    new-array v1, v0, [D

    fill-array-data v1, :array_1c

    .line 514
    :goto_8
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->BOTH:[I

    const-string v6, " %"

    const/4 v7, 0x1

    const-string v8, "BIA reference ranges"

    move-object v3, p3

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 513
    :cond_16
    new-array v1, v0, [D

    fill-array-data v1, :array_38

    goto :goto_8

    :array_1c
    .array-data 8
        0x4041800000000000L    # 35.0
        0x4046800000000000L    # 45.0
        0x4049000000000000L    # 50.0
        0x4050400000000000L    # 65.0
        0x4051800000000000L    # 70.0
        0x4054000000000000L    # 80.0
    .end array-data

    :array_38
    .array-data 8
        0x403e000000000000L    # 30.0
        0x4044000000000000L    # 40.0
        0x4046800000000000L    # 45.0
        0x404e000000000000L    # 60.0
        0x4050400000000000L    # 65.0
        0x4052c00000000000L    # 75.0
    .end array-data
.end method

.method public static weakFocus(Lorg/json/JSONObject;ZI)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 274
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v0

    aget-object v4, v0, v3

    .line 275
    const/4 v2, -0x1

    .line 276
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 277
    :goto_d
    const/4 v5, 0x5

    if-ge v3, v5, :cond_24

    .line 278
    aget-wide v6, v4, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_21

    aget-wide v6, v4, v3

    cmpg-double v5, v6, v0

    if-gez v5, :cond_21

    .line 279
    aget-wide v0, v4, v3

    move v2, v3

    .line 277
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 283
    :cond_24
    if-gez v2, :cond_28

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_27
    return-object v0

    :cond_28
    if-nez v2, :cond_2d

    const-string v0, "abs"

    goto :goto_27

    .line 287
    :cond_2d
    const/4 v0, 0x1

    if-eq v2, v0, :cond_33

    const/4 v0, 0x2

    if-ne v2, v0, :cond_36

    :cond_33
    const-string v0, "arms"

    goto :goto_27

    :cond_36
    const-string v0, "legs"

    goto :goto_27
.end method

.method public static zoneNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    .line 538
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_14

    .line 539
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    const-string v6, " %"

    const/4 v7, 0x0

    const-string v8, "WLA25 / Fitdays segment standard"

    move-object v3, p2

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 538
    :array_14
    .array-data 8
        0x404e000000000000L    # 60.0
        0x4054000000000000L    # 80.0
        0x4056800000000000L    # 90.0
        0x405b800000000000L    # 110.0
        0x405e000000000000L    # 120.0
        0x4062c00000000000L    # 150.0
    .end array-data
.end method
