.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;
.super Ljava/lang/Object;
.source "ScaleDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;
    }
.end annotation


# static fields
.field public static final G_BODY:I = 0x3

.field public static final G_BUILD:I = 0x2

.field public static final G_FAT:I = 0x0

.field public static final G_MUSCLE:I = 0x1

.field static final M_AGE:[I

.field static final M_BOTH:[I

.field static final M_FATS:[I

.field static final M_MORE:[I

.field static final M_VISC:[I

.field static final N_AGE_BG:[Ljava/lang/String;

.field static final N_AGE_EN:[Ljava/lang/String;

.field static final N_BOTH_BG:[Ljava/lang/String;

.field static final N_BOTH_EN:[Ljava/lang/String;

.field static final N_FAT_BG:[Ljava/lang/String;

.field static final N_FAT_EN:[Ljava/lang/String;

.field static final N_MORE_BG:[Ljava/lang/String;

.field static final N_MORE_EN:[Ljava/lang/String;

.field public static final ORDER:[I

.field public static final S_GOOD:I = 0x4

.field public static final S_HIGH:I = 0x2

.field public static final S_LOW:I = 0x0

.field public static final S_NONE:I = -0x1

.field public static final S_STD:I = 0x1

.field public static final S_VERY_HIGH:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 233
    new-array v0, v3, [I

    fill-array-data v0, :array_f8

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->ORDER:[I

    .line 340
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u043e"

    aput-object v1, v0, v4

    const-string v1, "\u043d\u0438\u0441\u043a\u043e"

    aput-object v1, v0, v5

    const-string v1, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v1, v0, v6

    const-string v1, "\u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_BOTH_BG:[Ljava/lang/String;

    .line 341
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "very low"

    aput-object v1, v0, v4

    const-string v1, "low"

    aput-object v1, v0, v5

    const-string v1, "normal"

    aput-object v1, v0, v6

    const-string v1, "high"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "very high"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_BOTH_EN:[Ljava/lang/String;

    .line 342
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u043c\u043d\u043e\u0433\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v1, v0, v4

    const-string v1, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v1, v0, v5

    const-string v1, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v1, v0, v6

    const-string v1, "\u0434\u043e\u0431\u0440\u0435"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u043e\u0442\u043b\u0438\u0447\u043d\u043e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_MORE_BG:[Ljava/lang/String;

    .line 343
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "very low"

    aput-object v1, v0, v4

    const-string v1, "low"

    aput-object v1, v0, v5

    const-string v1, "normal"

    aput-object v1, v0, v6

    const-string v1, "good"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "excellent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_MORE_EN:[Ljava/lang/String;

    .line 344
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438"

    aput-object v1, v0, v4

    const-string v1, "\u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e"

    aput-object v1, v0, v5

    const-string v1, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v1, v0, v6

    const-string v1, "\u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_FAT_BG:[Ljava/lang/String;

    .line 345
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "very low"

    aput-object v1, v0, v4

    const-string v1, "lean"

    aput-object v1, v0, v5

    const-string v1, "normal"

    aput-object v1, v0, v6

    const-string v1, "overweight"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "obese"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_FAT_EN:[Ljava/lang/String;

    .line 346
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u043c\u043d\u043e\u0433\u043e \u043c\u043b\u0430\u0434"

    aput-object v1, v0, v4

    const-string v1, "\u043f\u043e-\u043c\u043b\u0430\u0434"

    aput-object v1, v0, v5

    const-string v1, "\u043a\u0430\u0442\u043e \u0433\u043e\u0434\u0438\u043d\u0438\u0442\u0435"

    aput-object v1, v0, v6

    const-string v1, "\u043f\u043e-\u0441\u0442\u0430\u0440"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u043c\u043d\u043e\u0433\u043e \u043f\u043e-\u0441\u0442\u0430\u0440"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_AGE_BG:[Ljava/lang/String;

    .line 347
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "much younger"

    aput-object v1, v0, v4

    const-string v1, "younger"

    aput-object v1, v0, v5

    const-string v1, "as the years"

    aput-object v1, v0, v6

    const-string v1, "older"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "much older"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_AGE_EN:[Ljava/lang/String;

    .line 349
    new-array v0, v3, [I

    fill-array-data v0, :array_106

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_BOTH:[I

    .line 350
    new-array v0, v3, [I

    fill-array-data v0, :array_114

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_MORE:[I

    .line 351
    new-array v0, v3, [I

    fill-array-data v0, :array_122

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_FATS:[I

    .line 352
    new-array v0, v3, [I

    fill-array-data v0, :array_130

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_VISC:[I

    .line 353
    new-array v0, v3, [I

    fill-array-data v0, :array_13e

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_AGE:[I

    return-void

    .line 233
    :array_f8
    .array-data 4
        0x1
        0x2
        0x0
        0x3
        0x4
    .end array-data

    .line 349
    :array_106
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 350
    :array_114
    .array-data 4
        0x0
        0x0
        0x1
        0x4
        0x4
    .end array-data

    .line 351
    :array_122
    .array-data 4
        0x0
        0x4
        0x1
        0x2
        0x3
    .end array-data

    .line 352
    :array_130
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    .line 353
    :array_13e
    .array-data 4
        0x4
        0x4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bmiStd(Z)D
    .registers 3

    .prologue
    .line 83
    if-eqz p0, :cond_5

    const-wide/high16 v0, 0x4036000000000000L    # 22.0

    :goto_4
    return-wide v0

    :cond_5
    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    goto :goto_4
.end method

.method static boneStd(ZD)D
    .registers 10

    .prologue
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    .line 124
    if-eqz p0, :cond_20

    cmpg-double v2, p1, v4

    if-gez v2, :cond_b

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    const-wide v0, 0x4052c00000000000L    # 75.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1a

    const-wide v0, 0x4007333333333333L    # 2.9

    goto :goto_a

    :cond_1a
    const-wide v0, 0x400999999999999aL    # 3.2

    goto :goto_a

    :cond_20
    const-wide v2, 0x4046800000000000L    # 45.0

    cmpg-double v2, p1, v2

    if-gez v2, :cond_2f

    const-wide v0, 0x3ffccccccccccccdL    # 1.8

    goto :goto_a

    :cond_2f
    cmpg-double v2, p1, v4

    if-gez v2, :cond_a

    const-wide v0, 0x400199999999999aL    # 2.2

    goto :goto_a
.end method

.method static bySector(I[I)I
    .registers 3

    .prologue
    .line 119
    if-gez p0, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    aget v0, p1, p0

    goto :goto_3
.end method

.method public static control(Lorg/json/JSONObject;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;
    .registers 20

    .prologue
    .line 104
    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;-><init>()V

    .line 105
    if-eqz p0, :cond_17

    const-string v3, "lean"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v3, 0x64

    move/from16 v0, p3

    if-ge v0, v3, :cond_18

    .line 115
    :cond_17
    :goto_17
    return-object v2

    .line 108
    :cond_18
    const-string v3, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v3, "lean"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v3, "fatKg"

    sub-double v8, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 109
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->leanFloor(ZI)D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 110
    invoke-static/range {p1 .. p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->fatTarget(ZI)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    .line 111
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v12

    div-double v14, v10, v14

    iput-wide v14, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    .line 112
    sub-double v6, v10, v6

    iput-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->muscle:D

    .line 113
    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    mul-double/2addr v6, v12

    sub-double/2addr v6, v8

    iput-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->fat:D

    .line 114
    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    sub-double v4, v6, v4

    iput-wide v4, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->total:D

    goto :goto_17
.end method

.method public static fatTarget(ZI)D
    .registers 9

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 88
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, p1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    .line 89
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    aget-wide v2, v1, v5

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    aget-wide v0, v0, v6

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static focusOf(Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 590
    const/4 v0, -0x1

    move v1, v2

    move v3, v0

    move v4, v2

    .line 591
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    .line 592
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    .line 593
    if-ne v0, v6, :cond_31

    move v5, v6

    .line 594
    :goto_18
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    const-string v8, "bmi"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v2

    .line 597
    :goto_29
    if-le v0, v3, :cond_2d

    move v3, v0

    move v4, v1

    .line 591
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 593
    :cond_31
    if-ne v0, v7, :cond_35

    move v5, v7

    goto :goto_18

    :cond_35
    if-nez v0, :cond_3a

    const/4 v0, 0x1

    move v5, v0

    goto :goto_18

    :cond_3a
    move v5, v2

    goto :goto_18

    .line 602
    :cond_3c
    return v4

    :cond_3d
    move v0, v5

    goto :goto_29
.end method

.method public static groupBg(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    if-nez p0, :cond_5

    const-string v0, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    goto :goto_4

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string v0, "\u0412\u043e\u0434\u0430 \u0438 \u043e\u043f\u043e\u0440\u0430"

    goto :goto_4

    :cond_11
    const-string v0, "\u0422\u044f\u043b\u043e \u0438 \u0435\u043d\u0435\u0440\u0433\u0438\u044f"

    goto :goto_4
.end method

.method public static groupEn(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    if-nez p0, :cond_5

    const-string v0, "Fat"

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string v0, "Muscle"

    goto :goto_4

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string v0, "Water and frame"

    goto :goto_4

    :cond_11
    const-string v0, "Body and energy"

    goto :goto_4
.end method

.method static kg(ZD)Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 374
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-double v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_29

    const-string v0, " \u043a\u0433"

    :goto_20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_29
    const-string v0, " kg"

    goto :goto_20
.end method

.method static leanFloor(ZI)D
    .registers 6

    .prologue
    .line 94
    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 95
    if-eqz p0, :cond_11

    const/16 v0, 0x11

    :goto_e
    int-to-double v0, v0

    mul-double/2addr v0, v2

    return-wide v0

    :cond_11
    const/16 v0, 0xe

    goto :goto_e
.end method

.method public static metrics(Lorg/json/JSONObject;ZIIZ)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZIIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 383
    if-eqz p0, :cond_17

    const-string v4, "fat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v4, 0x64

    move/from16 v0, p3

    if-ge v0, v4, :cond_19

    :cond_17
    move-object v4, v13

    .line 561
    :goto_18
    return-object v4

    .line 386
    :cond_19
    const-string v4, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    move/from16 v0, p3

    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 387
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v18

    .line 388
    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_BOTH_BG:[Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_BOTH_EN:[Ljava/lang/String;

    move/from16 v0, p4

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->pick(Z[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    sget-object v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_MORE_BG:[Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_MORE_EN:[Ljava/lang/String;

    move/from16 v0, p4

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->pick(Z[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 389
    if-eqz p4, :cond_6cd

    const-string v4, " \u043a\u0433"

    .line 392
    :goto_4f
    new-instance v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v6, "fat"

    const/4 v7, 0x0

    const-string v8, "\u0422\u0435\u043b\u0435\u0441\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v9, "Body fat"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v6, "fat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 394
    const-string v6, " %"

    iput-object v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 395
    const/4 v6, 0x1

    const-string v7, "fatKg"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->kg(ZD)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 396
    const/4 v6, 0x0

    const-string v7, "fatKg"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->kg(ZD)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    .line 397
    const/4 v6, -0x1

    iput v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 398
    iget-wide v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    sget-object v8, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_FAT_BG:[Ljava/lang/String;

    sget-object v9, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_FAT_EN:[Ljava/lang/String;

    move/from16 v0, p4

    invoke-static {v0, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->pick(Z[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v6, v7, v0, v1, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v6

    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_FATS:[I

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 399
    const-string v6, "\u0427\u0430\u0441\u0442\u0442\u0430 \u043e\u0442 \u0442\u0435\u0433\u043b\u043e\u0442\u043e, \u043a\u043e\u044f\u0442\u043e \u0435 \u043c\u0430\u0437\u043d\u0438\u043d\u0430. \u041d\u043e\u0440\u043c\u0430\u0442\u0430 \u0435 \u043f\u043e \u043f\u043e\u043b \u0438 \u0432\u044a\u0437\u0440\u0430\u0441\u0442; \u043f\u043e\u0434 \u043d\u0435\u044f \u2014 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e \u0442\u044f\u043b\u043e. \u041f\u0430\u0434\u0430 \u0441 \u0434\u0435\u0444\u0438\u0446\u0438\u0442 \u043d\u0430 \u043a\u0430\u043b\u043e\u0440\u0438\u0438 \u0438 \u0441\u0438\u043b\u043e\u0432\u0430 \u0440\u0430\u0431\u043e\u0442\u0430."

    iput-object v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 401
    const-string v6, "The share of the weight that is fat. The norm is by sex and age; below it \u2014 lean. Falls with a calorie deficit and strength work."

    iput-object v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 403
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v21, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v5, "subc"

    const/4 v6, 0x0

    const-string v7, "\u041f\u043e\u0434\u043a\u043e\u0436\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v8, "Subcutaneous fat"

    move-object/from16 v0, v21

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v5, "subc"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    move-object/from16 v0, v21

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 406
    const-string v5, " %"

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 407
    const/4 v5, -0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 408
    if-eqz p1, :cond_6d1

    const/4 v5, 0x6

    new-array v5, v5, [D

    fill-array-data v5, :array_730

    .line 409
    :goto_dd
    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->LESS:[I

    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_FAT_BG:[Ljava/lang/String;

    sget-object v8, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_FAT_EN:[Ljava/lang/String;

    move/from16 v0, p4

    invoke-static {v0, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->pick(Z[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    const-string v10, " %"

    const/4 v11, 0x1

    const-string v12, "WLA25 / Fitdays"

    invoke-static/range {v5 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_FATS:[I

    move-object/from16 v0, v21

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 411
    const-string v5, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043f\u043e\u0434 \u043a\u043e\u0436\u0430\u0442\u0430 \u2014 \u0442\u0435\u0437\u0438, \u043a\u043e\u0438\u0442\u043e \u0441\u0435 \u0445\u0432\u0430\u0449\u0430\u0442 \u0441 \u043f\u0440\u044a\u0441\u0442\u0438. \u0422\u0435 \u0438\u0437\u043e\u043b\u0438\u0440\u0430\u0442 \u0438 \u0442\u043e\u043a\u0430: \u043f\u043e\u0432\u0435\u0447\u0435 \u043f\u043e\u0434\u043a\u043e\u0436\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u2014 \u043c\u0430\u043b\u043a\u043e \u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0438\u043b\u0430 \u0437\u0430 \u0441\u044a\u0449\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435."

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 413
    const-string v5, "Fat under the skin \u2014 the kind you can pinch. It also insulates the current: more of it \u2014 a little more strength for the same feel."

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 415
    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v6, "visc"

    const/4 v7, 0x0

    const-string v8, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v9, "Visceral fat"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v6, "visc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d9

    const-string v6, "visc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    :goto_12d
    iput-wide v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 418
    const/4 v6, 0x0

    iput v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->decimals:I

    .line 419
    const/4 v6, -0x1

    iput v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 420
    iget-wide v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    move-object/from16 v0, v19

    invoke-static {v6, v7, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->visceralNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v6

    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_VISC:[I

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 421
    const-string v6, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043e\u043a\u043e\u043b\u043e \u043e\u0440\u0433\u0430\u043d\u0438\u0442\u0435 \u0432 \u043a\u043e\u0440\u0435\u043c\u0430 \u2014 \u043d\u0430\u0439-\u0432\u0430\u0436\u043d\u0438\u0442\u0435 \u0437\u0430 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e. \u0414\u043e 9 \u0435 \u043d\u043e\u0440\u043c\u0430\u0442\u0430; 10 \u0438 \u043d\u0430\u0433\u043e\u0440\u0435 \u0435 \u0440\u0438\u0441\u043a\u043e\u0432\u043e. \u041f\u0430\u0434\u0430\u0442 \u043f\u044a\u0440\u0432\u0438 \u043f\u0440\u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u0438 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u0437\u0430\u0445\u0430\u0440."

    iput-object v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 423
    const-string v6, "Fat around the organs in the belly \u2014 the one that matters most for health. Up to 9 is normal; 10 and up is a risk. It goes first with activity and less sugar."

    iput-object v6, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 425
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v5, "muscle"

    const/4 v6, 0x1

    const-string v7, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v8, "Muscle mass"

    invoke-direct {v12, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v5, "muscle"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 430
    iput-object v4, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    div-double/2addr v6, v14

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " % \u043e\u0442 \u0442\u0435\u0433\u043b\u043e\u0442\u043e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    div-double/2addr v6, v14

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " % of the weight"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    .line 433
    const/4 v5, 0x1

    iput v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 434
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v6, v7, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    const-wide v6, 0x3feddb22d0e56042L    # 0.933

    mul-double v6, v6, v16

    iget-wide v8, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    const/4 v11, 0x1

    move-object v10, v4

    invoke-static/range {v5 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->scaled(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;DDLjava/lang/String;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_MORE:[I

    invoke-static {v12, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 435
    const-string v5, "\u0412\u0441\u0438\u0447\u043a\u043e \u043c\u0435\u043a\u043e \u0431\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0438: \u043c\u0443\u0441\u043a\u0443\u043b\u0438, \u043e\u0440\u0433\u0430\u043d\u0438, \u0432\u043e\u0434\u0430 \u0432 \u0442\u044f\u0445. \u041d\u043e\u0440\u043c\u0430\u0442\u0430 \u0435 \u0437\u0430 \u0440\u044a\u0441\u0442\u0430 \u2014 \u043f\u043e\u0432\u0435\u0447\u0435 \u0435 \u043f\u043e-\u0434\u043e\u0431\u0440\u0435, \u0442\u0435\u0436\u043a\u043e \u043e\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0442\u044f\u043b\u043e \u043d\u0435 \u0435 \u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e."

    iput-object v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 437
    const-string v5, "Everything soft that is not fat: muscle, organs, their water. The norm is for the height \u2014 more is better; a body heavy with muscle is not overweight."

    iput-object v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 439
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v21, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v5, "skel"

    const/4 v6, 0x1

    const-string v7, "\u0421\u043a\u0435\u043b\u0435\u0442\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v8, "Skeletal muscle"

    move-object/from16 v0, v21

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v5, "skel"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    move-object/from16 v0, v21

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 442
    const-string v5, " %"

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 443
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    mul-double/2addr v6, v14

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->kg(ZD)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 444
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    mul-double/2addr v6, v14

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->kg(ZD)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    .line 445
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 446
    if-eqz p1, :cond_6dd

    const/4 v5, 0x6

    new-array v5, v5, [D

    fill-array-data v5, :array_74c

    .line 447
    :goto_230
    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    const-string v10, " %"

    const/4 v11, 0x1

    const-string v12, "Janssen 2000 (MRI)"

    move-object/from16 v7, v20

    invoke-static/range {v5 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_MORE:[I

    move-object/from16 v0, v21

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 448
    const-string v5, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435, \u043a\u043e\u0438\u0442\u043e \u0434\u0432\u0438\u0436\u0430\u0442 \u0442\u044f\u043b\u043e\u0442\u043e \u2014 \u0442\u0435\u0437\u0438, \u043a\u043e\u0438\u0442\u043e EMS \u0442\u0440\u0435\u043d\u0438\u0440\u0430. \u0420\u0430\u0441\u0442\u0430\u0442 \u0441\u044a\u0441 \u0441\u0438\u043b\u043e\u0432\u0430 \u0440\u0430\u0431\u043e\u0442\u0430 \u0438 \u0431\u0435\u043b\u0442\u044a\u043a (1.6 \u0433 \u043d\u0430 \u043a\u0433 \u0442\u0435\u0433\u043b\u043e)."

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 450
    const-string v5, "The muscles that move the body \u2014 the ones EMS trains. They grow with strength work and protein (1.6 g per kg of weight)."

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 452
    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v5, "lean"

    const/4 v6, 0x1

    const-string v7, "\u0411\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v8, "Fat-free mass"

    invoke-direct {v12, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v5, "lean"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 455
    iput-object v4, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FFMI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 457
    iget-object v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    iput-object v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    .line 458
    const/4 v5, 0x1

    iput v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 459
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v6, v7, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    iget-wide v8, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    const/4 v11, 0x1

    move-wide/from16 v6, v16

    move-object v10, v4

    invoke-static/range {v5 .. v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->scaled(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;DDLjava/lang/String;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_MORE:[I

    invoke-static {v12, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 460
    const-string v5, "\u0422\u0435\u0433\u043b\u043e\u0442\u043e \u0431\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435: \u043c\u0443\u0441\u043a\u0443\u043b\u0438, \u043a\u043e\u0441\u0442\u0438, \u0432\u043e\u0434\u0430, \u043e\u0440\u0433\u0430\u043d\u0438. \u0421\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430 \u043a\u0430\u0437\u0432\u0430 \u043a\u043e\u043b\u043a\u043e \u201e\u0441\u0438\u043b\u043d\u043e\u201c \u0435 \u0442\u044f\u043b\u043e\u0442\u043e \u2014 \u043f\u043e-\u0442\u043e\u0447\u043d\u043e \u043e\u0442 \u0418\u0422\u041c."

    iput-object v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 462
    const-string v5, "The weight without the fat: muscle, bone, water, organs. Against the height it tells how strong the body is \u2014 better than BMI."

    iput-object v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 464
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v16, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v5, "water"

    const/4 v6, 0x2

    const-string v7, "\u0412\u043e\u0434\u0430"

    const-string v8, "Body water"

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v5, "water"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    move-object/from16 v0, v16

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 469
    const-string v5, " %"

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 470
    const/4 v5, 0x1

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    mul-double/2addr v6, v14

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->kg(ZD)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 471
    const/4 v5, 0x0

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    mul-double/2addr v6, v14

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->kg(ZD)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    .line 472
    const/4 v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 473
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    move/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v6, v7, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v12

    .line 474
    iget-object v5, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u043e"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "\u043d\u0438\u0441\u043a\u043e"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "\u0434\u043e\u0431\u0440\u0435"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "\u043c\u043d\u043e\u0433\u043e"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "very low"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "low"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "normal"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "good"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "very high"

    aput-object v10, v8, v9

    move/from16 v0, p4

    invoke-static {v0, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->pick(Z[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    const-string v10, " %"

    const/4 v11, 0x1

    iget-object v12, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    invoke-static/range {v5 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_MORE:[I

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 477
    const-string v5, "\u0412\u043e\u0434\u0430\u0442\u0430 \u0432 \u0442\u044f\u043b\u043e\u0442\u043e, \u043d\u0430\u0439-\u0432\u0435\u0447\u0435 \u0432 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435. \u0422\u043e\u043a \u043c\u0438\u043d\u0430\u0432\u0430 \u043f\u043e \u0432\u043e\u0434\u0430: \u043d\u0438\u0441\u043a\u043e \u2014 \u043d\u0435\u043a\u0430 \u043f\u0438\u0435 2\u20133 \u0447\u0430\u0448\u0438 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 479
    const-string v5, "The water in the body, mostly in the muscles. Current travels through water: low \u2014 have 2\u20133 glasses before the training."

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 481
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v16, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v5, "prot"

    const/4 v6, 0x2

    const-string v7, "\u0411\u0435\u043b\u0442\u044a\u043a"

    const-string v8, "Protein"

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v5, "prot"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    move-object/from16 v0, v16

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 484
    const-string v5, " %"

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 485
    const/4 v5, 0x1

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    mul-double/2addr v6, v14

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->kg(ZD)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 486
    const/4 v5, 0x0

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    mul-double/2addr v6, v14

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->kg(ZD)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    .line 487
    const/4 v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 488
    const/4 v5, 0x6

    new-array v5, v5, [D

    fill-array-data v5, :array_768

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    const-string v10, " %"

    const/4 v11, 0x1

    const-string v12, "WLA25 / Fitdays"

    move-object/from16 v7, v20

    invoke-static/range {v5 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_MORE:[I

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 490
    const-string v5, "\u0421\u0442\u0440\u043e\u0438\u0442\u0435\u043b\u043d\u0438\u044f\u0442 \u043c\u0430\u0442\u0435\u0440\u0438\u0430\u043b \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435. \u041d\u0438\u0441\u043a\u043e \u2014 \u043f\u043e\u0432\u0435\u0447\u0435 \u043c\u0435\u0441\u043e, \u0440\u0438\u0431\u0430, \u044f\u0439\u0446\u0430, \u0438\u0437\u0432\u0430\u0440\u0430 \u0441\u043b\u0435\u0434 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 491
    const-string v5, "The building material of muscle. Low \u2014 more meat, fish, eggs, cottage cheese after the training."

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 492
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v16, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v5, "bone"

    const/4 v6, 0x2

    const-string v7, "\u041a\u043e\u0441\u0442\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v8, "Bone mass"

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v5, "bone"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    move-object/from16 v0, v16

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 495
    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 496
    const/4 v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 497
    move/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->boneStd(ZD)D

    move-result-wide v6

    .line 498
    const/4 v5, 0x6

    new-array v5, v5, [D

    const/4 v8, 0x0

    const-wide v10, 0x3ff6666666666666L    # 1.4

    sub-double v10, v6, v10

    aput-wide v10, v5, v8

    const/4 v8, 0x1

    const-wide v10, 0x3fe6666666666666L    # 0.7

    sub-double v10, v6, v10

    aput-wide v10, v5, v8

    const/4 v8, 0x2

    const-wide v10, 0x3fc999999999999aL    # 0.2

    sub-double v10, v6, v10

    aput-wide v10, v5, v8

    const/4 v8, 0x3

    const-wide v10, 0x3fc999999999999aL    # 0.2

    add-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x4

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    add-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x5

    const-wide v10, 0x400199999999999aL    # 2.2

    add-double/2addr v6, v10

    aput-wide v6, v5, v8

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    const/4 v11, 0x1

    const-string v12, "Tanita / Fitdays"

    move-object/from16 v7, v20

    move-object v10, v4

    invoke-static/range {v5 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_MORE:[I

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 500
    const-string v5, "\u041c\u0438\u043d\u0435\u0440\u0430\u043b\u0438\u0442\u0435 \u0432 \u043a\u043e\u0441\u0442\u0438\u0442\u0435, \u043e\u0446\u0435\u043d\u0435\u043d\u0438 \u043e\u0442 \u0431\u0435\u0437\u043c\u0430\u0437\u043d\u0435\u043d\u0430\u0442\u0430 \u043c\u0430\u0441\u0430. \u041f\u0430\u0437\u044f\u0442 \u0441\u0435 \u0441 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u2014 EMS \u0438 \u0445\u043e\u0434\u0435\u043d\u0435 \u2014 \u0438 \u0441 \u043a\u0430\u043b\u0446\u0438\u0439 \u0438 \u0432\u0438\u0442\u0430\u043c\u0438\u043d D."

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 502
    const-string v5, "The minerals in the bones, estimated from the fat-free mass. Kept with load \u2014 EMS and walking \u2014 and calcium and vitamin D."

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 504
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-static/range {p0 .. p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->control(Lorg/json/JSONObject;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;

    move-result-object v6

    .line 508
    new-instance v16, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v5, "w"

    const/4 v7, 0x3

    const-string v8, "\u0422\u0435\u0433\u043b\u043e"

    const-string v9, "Weight"

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, v16

    iput-wide v14, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 510
    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 511
    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_6e5

    const-string v5, ""

    :goto_4a9
    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 512
    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_701

    const-string v5, ""

    :goto_4b7
    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    .line 513
    const/4 v5, 0x0

    move-object/from16 v0, v16

    iput v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 514
    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_517

    .line 515
    iget-wide v6, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    .line 516
    const/4 v5, 0x6

    new-array v5, v5, [D

    const/4 v8, 0x0

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x1

    const-wide v10, 0x3fea3d70a3d70a3dL    # 0.82

    mul-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x2

    const-wide v10, 0x3fed70a3d70a3d71L    # 0.92

    mul-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x3

    const-wide v10, 0x3ff147ae147ae148L    # 1.08

    mul-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x4

    const-wide v10, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x5

    const-wide v10, 0x3ff7333333333333L    # 1.45

    mul-double/2addr v6, v10

    aput-wide v6, v5, v8

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->BOTH:[I

    const/4 v11, 0x1

    const-string v12, "XEMS"

    move-object/from16 v7, v19

    move-wide v8, v14

    move-object v10, v4

    invoke-static/range {v5 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_BOTH:[I

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 519
    :cond_517
    const-string v4, "\u0417\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e\u0442\u043e \u0442\u0435\u0433\u043b\u043e \u0435 \u0437\u0430 \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u043f\u0440\u0438 \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u2014 \u043d\u0435 \u043f\u043e \u0418\u0422\u041c. \u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u201e\u041f\u044a\u0442 \u0434\u043e \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e\u0442\u043e\u201c \u0432\u043b\u044f\u0432\u043e."

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 521
    const-string v4, "The healthy weight is for the client\'s own muscle at a healthy fat % \u2014 not by BMI. Tap the path to the healthy weight on the left."

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 523
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v5, "bmi"

    const/4 v6, 0x3

    const-string v7, "\u0418\u0422\u041c"

    const-string v8, "BMI"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v5, "bmi"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 526
    const/4 v5, 0x0

    iput v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 527
    iget-wide v6, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    move-object/from16 v0, v19

    invoke-static {v6, v7, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->bmiNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_BOTH:[I

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 528
    const-string v5, "\u0421\u0430\u043c\u043e \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u044a\u0441\u0442\u0430 \u2014 \u043d\u0435 \u0437\u043d\u0430\u0435 \u043a\u0430\u043a\u0432\u043e \u0435 \u0442\u0435\u0433\u043b\u043e\u0442\u043e. \u041f\u0440\u0438 \u043c\u043d\u043e\u0433\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043b\u044a\u0436\u0435: \u0432\u0438\u0436 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435."

    iput-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 529
    const-string v5, "Only the weight against the height \u2014 it does not know what the weight is. With much muscle it misleads: look at the fat."

    iput-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 531
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v5, "bmr"

    const/4 v6, 0x3

    const-string v7, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0437\u044a\u043c"

    const-string v8, "Resting energy"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v5, "bmr"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 534
    const-string v5, " kcal"

    iput-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 535
    const/4 v5, 0x0

    iput v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->decimals:I

    .line 536
    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 537
    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v0, v14, v15, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->mifflin(ZDII)D

    move-result-wide v6

    .line 538
    const/4 v5, 0x6

    new-array v5, v5, [D

    const/4 v8, 0x0

    const-wide v10, 0x3fe70a3d70a3d70aL    # 0.72

    mul-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x1

    const-wide v10, 0x3feb333333333333L    # 0.85

    mul-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x2

    const-wide v10, 0x3fee666666666666L    # 0.95

    mul-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x3

    const-wide v10, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x4

    const-wide v10, 0x3ff2666666666666L    # 1.15

    mul-double/2addr v10, v6

    aput-wide v10, v5, v8

    const/4 v8, 0x5

    const-wide v10, 0x3ff599999999999aL    # 1.35

    mul-double/2addr v6, v10

    aput-wide v6, v5, v8

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    iget-wide v8, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    const-string v10, " kcal"

    const/4 v11, 0x0

    const-string v12, "Katch\u2013McArdle \u00b7 Mifflin"

    move-object/from16 v7, v20

    invoke-static/range {v5 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_MORE:[I

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 540
    const-string v5, "\u041a\u043e\u043b\u043a\u043e \u0438\u0437\u0433\u0430\u0440\u044f \u0442\u044f\u043b\u043e\u0442\u043e \u0432 \u043f\u043e\u043a\u043e\u0439 \u0437\u0430 \u0434\u0435\u043d \u2014 \u043e\u0442 \u0431\u0435\u0437\u043c\u0430\u0437\u043d\u0435\u043d\u0430\u0442\u0430 \u043c\u0430\u0441\u0430. \u041d\u0430\u0434 \u043e\u0431\u0438\u0447\u0430\u0439\u043d\u043e\u0442\u043e \u0437\u0430 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0438 \u0433\u043e\u0434\u0438\u043d\u0438\u0442\u0435 \u0435 \u0434\u043e\u0431\u0440\u0435: \u043f\u043e\u0432\u0435\u0447\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 \u043f\u043e\u0432\u0435\u0447\u0435 \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435."

    iput-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 542
    const-string v5, "What the body burns at rest in a day \u2014 from the fat-free mass. Above the usual for the weight and age is good: more muscle \u2014 more burnt."

    iput-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 544
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    const-string v4, "page"

    const/4 v5, 0x3

    const-string v7, "\u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v8, "Physical age"

    invoke-direct {v6, v4, v5, v7, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    iput-wide v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 547
    const/4 v4, 0x0

    iput v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->decimals:I

    .line 548
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_71d

    const/4 v4, 0x1

    .line 549
    :goto_5ff
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u043f\u0430\u0441\u043f\u043e\u0440\u0442 "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v4, :cond_720

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u00b7 \u043f\u0443\u043b\u0441 "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_62d
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passport "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v4, :cond_724

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u00b7 HR "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_665
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    .line 551
    const/4 v5, -0x1

    iput v5, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->dir:I

    .line 552
    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    sget-object v5, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_AGE_BG:[Ljava/lang/String;

    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_AGE_EN:[Ljava/lang/String;

    move/from16 v0, p4

    invoke-static {v0, v5, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->pick(Z[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p2

    invoke-static {v8, v9, v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ageNorm(DI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    .line 553
    sget-object v7, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->M_AGE:[I

    invoke-static {v6, v5, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V

    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041a\u044a\u0434\u0435 \u0435 \u0442\u044f\u043b\u043e\u0442\u043e \u0441\u043f\u0440\u044f\u043c\u043e \u0445\u043e\u0440\u0430\u0442\u0430 \u043d\u0430 \u0441\u044a\u0449\u0438\u044f \u043f\u043e\u043b \u0438 \u0432\u044a\u0437\u0440\u0430\u0441\u0442: \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u043d\u0430 \u0440\u044a\u0446\u0435\u0442\u0435 \u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430, \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 555
    if-eqz v4, :cond_728

    const-string v5, " \u0438 \u043f\u0443\u043b\u0441\u044a\u0442 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 \u043f\u043e \u0440\u0430\u0432\u043d\u043e"

    :goto_698
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". \u041f\u043e\u0432\u0435\u0447\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438, \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043c\u0430\u0437\u043d\u0438\u043d\u0438 \u0438 \u043f\u043e-\u043d\u0438\u0441\u044a\u043a \u043f\u0443\u043b\u0441 \u044f \u0441\u0432\u0430\u043b\u044f\u0442."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Where the body stands among people of the same sex and age: arm and leg muscle, fat"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 558
    if-eqz v4, :cond_72c

    const-string v4, " and resting HR \u2014 equally"

    :goto_6b7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". More muscle, less fat and a lower pulse bring it down."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 560
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v13

    .line 561
    goto/16 :goto_18

    .line 389
    :cond_6cd
    const-string v4, " kg"

    goto/16 :goto_4f

    .line 408
    :cond_6d1
    const/4 v5, 0x6

    new-array v5, v5, [D

    fill-array-data v5, :array_784

    goto/16 :goto_dd

    .line 417
    :cond_6d9
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    goto/16 :goto_12d

    .line 446
    :cond_6dd
    const/4 v5, 0x6

    new-array v5, v5, [D

    fill-array-data v5, :array_7a0

    goto/16 :goto_230

    .line 511
    :cond_6e5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->kg(ZD)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4a9

    .line 512
    :cond_701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "healthy "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->kg(ZD)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4b7

    .line 548
    :cond_71d
    const/4 v4, 0x0

    goto/16 :goto_5ff

    .line 549
    :cond_720
    const-string v5, ""

    goto/16 :goto_62d

    .line 550
    :cond_724
    const-string v5, ""

    goto/16 :goto_665

    .line 555
    :cond_728
    const-string v5, " \u2014 \u043f\u043e \u0440\u0430\u0432\u043d\u043e; \u0441 \u0438\u0437\u043c\u0435\u0440\u0435\u043d \u043f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u0432\u043b\u0438\u0437\u0430 \u0438 \u0441\u044a\u0440\u0446\u0435\u0442\u043e"

    goto/16 :goto_698

    .line 558
    :cond_72c
    const-string v4, " \u2014 equally; with a measured resting HR the heart counts too"

    goto :goto_6b7

    .line 408
    nop

    :array_730
    .array-data 8
        0x0
        0x4014000000000000L    # 5.0
        0x4021333333333333L    # 8.6
        0x4030b33333333333L    # 16.7
        0x4036000000000000L    # 22.0
        0x4041800000000000L    # 35.0
    .end array-data

    .line 446
    :array_74c
    .array-data 8
        0x4034000000000000L    # 20.0
        0x403c000000000000L    # 28.0
        0x4040a66666666666L    # 33.3
        0x4045c00000000000L    # 43.5
        0x4048000000000000L    # 48.0
        0x404e000000000000L    # 60.0
    .end array-data

    .line 488
    :array_768
    .array-data 8
        0x4020000000000000L    # 8.0
        0x4028000000000000L    # 12.0
        0x4030000000000000L    # 16.0
        0x4034000000000000L    # 20.0
        0x4036000000000000L    # 22.0
        0x403a000000000000L    # 26.0
    .end array-data

    .line 408
    :array_784
    .array-data 8
        0x0
        0x4028000000000000L    # 12.0
        0x4032800000000000L    # 18.5
        0x403ab33333333333L    # 26.7
        0x4040000000000000L    # 32.0
        0x4046800000000000L    # 45.0
    .end array-data

    .line 446
    :array_7a0
    .array-data 8
        0x402e000000000000L    # 15.0
        0x4035000000000000L    # 21.0
        0x403919999999999aL    # 25.1
        0x40420ccccccccccdL    # 36.1
        0x4044000000000000L    # 40.0
        0x4049000000000000L    # 50.0
    .end array-data
.end method

.method static mifflin(ZDII)D
    .registers 12

    .prologue
    .line 129
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4019000000000000L    # 6.25

    int-to-double v4, p3

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-int/lit8 v2, p4, 0x5

    int-to-double v2, v2

    sub-double v2, v0, v2

    if-eqz p0, :cond_13

    const/4 v0, 0x5

    :goto_10
    int-to-double v0, v0

    add-double/2addr v0, v2

    return-wide v0

    :cond_13
    const/16 v0, -0xa1

    goto :goto_10
.end method

.method static pick(Z[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .prologue
    .line 356
    if-eqz p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    move-object p1, p2

    goto :goto_2
.end method

.method static put(Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;[I)V
    .registers 4

    .prologue
    .line 368
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    .line 369
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v0

    .line 370
    if-gez v0, :cond_c

    const/4 v0, -0x1

    :goto_9
    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    .line 371
    return-void

    .line 370
    :cond_c
    aget v0, p2, v0

    goto :goto_9
.end method

.method public static rows(Lorg/json/JSONObject;ZII)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZII)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 161
    if-nez p0, :cond_a

    move-object/from16 v4, v19

    .line 221
    :goto_9
    return-object v4

    .line 164
    :cond_a
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v20, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v20, v4

    const/4 v4, 0x3

    const-string v5, ""

    aput-object v5, v20, v4

    const/4 v4, 0x4

    const-string v5, ""

    aput-object v5, v20, v4

    .line 165
    const-string v4, "w"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 166
    invoke-static/range {p0 .. p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->control(Lorg/json/JSONObject;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;

    move-result-object v21

    .line 167
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_87

    const/4 v12, -0x1

    .line 168
    :goto_41
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v5, "w"

    const-string v6, "\u0422\u0435\u0433\u043b\u043e"

    const-string v7, "Weight"

    const-string v10, " \u043a\u0433"

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v4, "bmi"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    .line 170
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "bmi"

    const-string v12, "\u0418\u0422\u041c"

    const-string v13, "BMI"

    const-string v16, ""

    const/16 v17, 0x1

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_a9

    const/16 v18, -0x1

    .line 171
    :goto_72
    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    .line 170
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v4, "fat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ca

    move-object/from16 v4, v19

    .line 173
    goto :goto_9

    .line 167
    :cond_87
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    cmpg-double v4, v8, v4

    if-gez v4, :cond_97

    const/4 v12, 0x0

    goto :goto_41

    :cond_97
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v4, v6

    cmpl-double v4, v8, v4

    if-lez v4, :cond_a7

    const/4 v12, 0x2

    goto :goto_41

    :cond_a7
    const/4 v12, 0x1

    goto :goto_41

    .line 171
    :cond_a9
    const-wide v4, 0x4032800000000000L    # 18.5

    cmpg-double v4, v14, v4

    if-gez v4, :cond_b5

    const/16 v18, 0x0

    goto :goto_72

    :cond_b5
    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    cmpg-double v4, v14, v4

    if-gez v4, :cond_be

    const/16 v18, 0x1

    goto :goto_72

    :cond_be
    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpg-double v4, v14, v4

    if-gez v4, :cond_c7

    const/16 v18, 0x2

    goto :goto_72

    :cond_c7
    const/16 v18, 0x3

    goto :goto_72

    .line 175
    :cond_ca
    const-string v4, "fat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-string v4, "lean"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 176
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v14, v15, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v6

    const/4 v7, 0x5

    new-array v7, v7, [I

    fill-array-data v7, :array_426

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->bySector(I[I)I

    move-result v18

    .line 178
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "fat"

    const-string v12, "\u0422\u0435\u043b\u0435\u0441\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v13, "Body fat"

    const-string v16, " %"

    const/16 v17, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "fatKg"

    const-string v12, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v13, "Fat mass"

    const-string v6, "fatKg"

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    const-string v16, " \u043a\u0433"

    const/16 v17, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "lean"

    const-string v12, "\u0411\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v13, "Fat-free mass"

    const-string v16, " \u043a\u0433"

    const/16 v17, 0x1

    const/16 v18, -0x1

    move-wide v14, v4

    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v22

    .line 182
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v4, v5, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_434

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->bySector(I[I)I

    move-result v18

    .line 184
    const-string v4, "muscle"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    .line 185
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "muscle"

    const-string v12, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v13, "Muscle mass"

    const-string v16, " \u043a\u0433"

    const/16 v17, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "musclePct"

    const-string v12, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438 \u043e\u0442 \u0442\u0435\u0433\u043b\u043e\u0442\u043e"

    const-string v13, "Muscle rate"

    div-double v4, v14, v8

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v14, v4, v6

    const-string v16, " %"

    const/16 v17, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    const-string v4, "skel"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    .line 188
    if-eqz p1, :cond_365

    const-wide v4, 0x4040a66666666666L    # 33.3

    move-wide v6, v4

    :goto_1ab
    if-eqz p1, :cond_36d

    const-wide v4, 0x4045c00000000000L    # 43.5

    .line 189
    :goto_1b2
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "skel"

    const-string v12, "\u0421\u043a\u0435\u043b\u0435\u0442\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v13, "Skeletal muscle"

    const-string v16, " %"

    const/16 v17, 0x1

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-eqz v18, :cond_374

    const/16 v18, -0x1

    .line 190
    :goto_1c6
    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    .line 189
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    const-string v4, "bone"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    move/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->boneStd(ZD)D

    move-result-wide v4

    .line 192
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "bone"

    const-string v12, "\u041a\u043e\u0441\u0442\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v13, "Bone mass"

    const-string v16, " \u043a\u0433"

    const/16 v17, 0x1

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_388

    const/16 v18, -0x1

    .line 193
    :goto_1f2
    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    .line 192
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v4, "prot"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 195
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_3a9

    const/16 v18, -0x1

    .line 196
    :goto_20c
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "protKg"

    const-string v12, "\u0411\u0435\u043b\u0442\u044a\u043a"

    const-string v13, "Protein"

    mul-double v6, v8, v4

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double v14, v6, v14

    const-string v16, " \u043a\u0433"

    const/16 v17, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "prot"

    const-string v12, "\u0411\u0435\u043b\u0442\u044a\u043a \u043e\u0442 \u0442\u0435\u0433\u043b\u043e\u0442\u043e"

    const-string v13, "Protein rate"

    const-string v16, " %"

    const/16 v17, 0x1

    move-wide v14, v4

    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v4, "water"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 199
    move/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v4, v5, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v6

    const/4 v7, 0x5

    new-array v7, v7, [I

    fill-array-data v7, :array_442

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->bySector(I[I)I

    move-result v18

    .line 201
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "waterKg"

    const-string v12, "\u0412\u043e\u0434\u0430"

    const-string v13, "Body water"

    mul-double v6, v8, v4

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double v14, v6, v14

    const-string v16, " \u043a\u0433"

    const/16 v17, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "water"

    const-string v12, "\u0412\u043e\u0434\u0430 \u043e\u0442 \u0442\u0435\u0433\u043b\u043e\u0442\u043e"

    const-string v13, "Water rate"

    const-string v16, " %"

    const/16 v17, 0x1

    move-wide v14, v4

    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v4, "subc"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    .line 204
    if-eqz p1, :cond_3c1

    const-wide v4, 0x4021333333333333L    # 8.6

    move-wide v6, v4

    :goto_29c
    if-eqz p1, :cond_3c9

    const-wide v4, 0x4030b33333333333L    # 16.7

    .line 205
    :goto_2a3
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "subc"

    const-string v12, "\u041f\u043e\u0434\u043a\u043e\u0436\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v13, "Subcutaneous fat"

    const-string v16, " %"

    const/16 v17, 0x1

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-eqz v18, :cond_3d0

    const/16 v18, -0x1

    .line 206
    :goto_2b7
    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    .line 205
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v4, "visc"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 208
    new-instance v10, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v11, "visc"

    const-string v12, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v13, "Visceral fat"

    if-gez v4, :cond_3e4

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    :goto_2d4
    const-string v16, ""

    const/16 v17, 0x0

    .line 209
    if-gez v4, :cond_3e7

    const/16 v18, -0x1

    :goto_2dc
    invoke-direct/range {v10 .. v18}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    .line 208
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v4, "bmr"

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    .line 211
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v5, "bmr"

    const-string v6, "\u0411\u0430\u0437\u043e\u0432 \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0437\u044a\u043c"

    const-string v7, "BMR"

    const-string v10, " kcal"

    const/4 v11, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-eqz v12, :cond_3fb

    const/4 v12, -0x1

    :goto_300
    move-wide v8, v14

    .line 212
    invoke-direct/range {v4 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    .line 211
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    move-object/from16 v0, v22

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    .line 214
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v5, "page"

    const-string v6, "\u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v7, "Physical age"

    const-string v10, ""

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-eqz v12, :cond_40f

    const/4 v12, -0x1

    .line 215
    :goto_31f
    invoke-direct/range {v4 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    .line 214
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v5, "target"

    const-string v6, "\u0417\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e \u0442\u0435\u0433\u043b\u043e"

    const-string v7, "Healthy weight"

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    const-string v10, " \u043a\u0433"

    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-direct/range {v4 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;

    const-string v5, "type"

    const-string v6, "\u0422\u0438\u043f \u0442\u044f\u043b\u043e"

    const-string v7, "Body type"

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-direct/range {v4 .. v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V

    .line 218
    invoke-static/range {v22 .. v22}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->typeBg(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->textBg:Ljava/lang/String;

    .line 219
    invoke-static/range {v22 .. v22}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->typeEn(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->textEn:Ljava/lang/String;

    .line 220
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v19

    .line 221
    goto/16 :goto_9

    .line 188
    :cond_365
    const-wide v4, 0x403919999999999aL    # 25.1

    move-wide v6, v4

    goto/16 :goto_1ab

    :cond_36d
    const-wide v4, 0x40420ccccccccccdL    # 36.1

    goto/16 :goto_1b2

    .line 190
    :cond_374
    cmpg-double v6, v14, v6

    if-gez v6, :cond_37c

    const/16 v18, 0x0

    goto/16 :goto_1c6

    :cond_37c
    cmpg-double v4, v14, v4

    if-gtz v4, :cond_384

    const/16 v18, 0x1

    goto/16 :goto_1c6

    :cond_384
    const/16 v18, 0x4

    goto/16 :goto_1c6

    .line 193
    :cond_388
    const-wide v6, 0x3fc999999999999aL    # 0.2

    sub-double v6, v4, v6

    cmpg-double v6, v14, v6

    if-gez v6, :cond_397

    const/16 v18, 0x0

    goto/16 :goto_1f2

    :cond_397
    const-wide v6, 0x3fc999999999999aL    # 0.2

    add-double/2addr v4, v6

    cmpl-double v4, v14, v4

    if-lez v4, :cond_3a5

    const/16 v18, 0x4

    goto/16 :goto_1f2

    :cond_3a5
    const/16 v18, 0x1

    goto/16 :goto_1f2

    .line 195
    :cond_3a9
    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3b3

    const/16 v18, 0x0

    goto/16 :goto_20c

    :cond_3b3
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_3bd

    const/16 v18, 0x1

    goto/16 :goto_20c

    :cond_3bd
    const/16 v18, 0x4

    goto/16 :goto_20c

    .line 204
    :cond_3c1
    const-wide v4, 0x4032800000000000L    # 18.5

    move-wide v6, v4

    goto/16 :goto_29c

    :cond_3c9
    const-wide v4, 0x403ab33333333333L    # 26.7

    goto/16 :goto_2a3

    .line 206
    :cond_3d0
    cmpg-double v6, v14, v6

    if-gez v6, :cond_3d8

    const/16 v18, 0x0

    goto/16 :goto_2b7

    :cond_3d8
    cmpg-double v4, v14, v4

    if-gtz v4, :cond_3e0

    const/16 v18, 0x1

    goto/16 :goto_2b7

    :cond_3e0
    const/16 v18, 0x2

    goto/16 :goto_2b7

    .line 208
    :cond_3e4
    int-to-double v14, v4

    goto/16 :goto_2d4

    .line 209
    :cond_3e7
    const/16 v5, 0xa

    if-ge v4, v5, :cond_3ef

    const/16 v18, 0x1

    goto/16 :goto_2dc

    :cond_3ef
    const/16 v5, 0xf

    if-ge v4, v5, :cond_3f7

    const/16 v18, 0x2

    goto/16 :goto_2dc

    :cond_3f7
    const/16 v18, 0x3

    goto/16 :goto_2dc

    .line 212
    :cond_3fb
    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v0, v8, v9, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->mifflin(ZDII)D

    move-result-wide v8

    cmpl-double v8, v14, v8

    if-ltz v8, :cond_40c

    const/4 v12, 0x4

    goto/16 :goto_300

    :cond_40c
    const/4 v12, 0x1

    goto/16 :goto_300

    .line 215
    :cond_40f
    add-int/lit8 v12, p2, -0x2

    int-to-double v12, v12

    cmpg-double v12, v8, v12

    if-gtz v12, :cond_419

    const/4 v12, 0x4

    goto/16 :goto_31f

    :cond_419
    add-int/lit8 v12, p2, 0x2

    int-to-double v12, v12

    cmpg-double v12, v8, v12

    if-gtz v12, :cond_423

    const/4 v12, 0x1

    goto/16 :goto_31f

    :cond_423
    const/4 v12, 0x2

    goto/16 :goto_31f

    .line 176
    :array_426
    .array-data 4
        0x0
        0x4
        0x1
        0x2
        0x3
    .end array-data

    .line 182
    :array_434
    .array-data 4
        0x0
        0x0
        0x1
        0x4
        0x4
    .end array-data

    .line 199
    :array_442
    .array-data 4
        0x0
        0x0
        0x1
        0x4
        0x4
    .end array-data
.end method

.method static scaled(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;DDLjava/lang/String;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 16

    .prologue
    const/4 v4, 0x6

    .line 360
    new-array v1, v4, [D

    .line 361
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_10

    .line 362
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    aget-wide v2, v2, v0

    mul-double/2addr v2, p1

    aput-wide v2, v1, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 364
    :cond_10
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->names:[Ljava/lang/String;

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0
.end method

.method public static statusBg(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_16

    .line 27
    const-string v0, ""

    :goto_5
    return-object v0

    .line 22
    :pswitch_6
    const-string v0, "\u041d\u0438\u0441\u043a\u043e"

    goto :goto_5

    .line 23
    :pswitch_9
    const-string v0, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u043d\u043e"

    goto :goto_5

    .line 24
    :pswitch_c
    const-string v0, "\u0412\u0438\u0441\u043e\u043a\u043e"

    goto :goto_5

    .line 25
    :pswitch_f
    const-string v0, "\u041c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u043e"

    goto :goto_5

    .line 26
    :pswitch_12
    const-string v0, "\u041e\u0442\u043b\u0438\u0447\u043d\u043e"

    goto :goto_5

    .line 21
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public static statusColor(I)I
    .registers 2

    .prologue
    .line 44
    packed-switch p0, :pswitch_data_1c

    .line 50
    const v0, -0x6b5c48

    :goto_6
    return v0

    .line 45
    :pswitch_7
    const v0, -0xa61f5

    goto :goto_6

    .line 46
    :pswitch_b
    const v0, -0xef467f

    goto :goto_6

    .line 47
    :pswitch_f
    const v0, -0x68cea

    goto :goto_6

    .line 48
    :pswitch_13
    const v0, -0x10bbbc

    goto :goto_6

    .line 49
    :pswitch_17
    const v0, -0xdd3aa2

    goto :goto_6

    .line 44
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method public static statusEn(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_16

    .line 38
    const-string v0, ""

    :goto_5
    return-object v0

    .line 33
    :pswitch_6
    const-string v0, "Low"

    goto :goto_5

    .line 34
    :pswitch_9
    const-string v0, "Standard"

    goto :goto_5

    .line 35
    :pswitch_c
    const-string v0, "High"

    goto :goto_5

    .line 36
    :pswitch_f
    const-string v0, "Very high"

    goto :goto_5

    .line 37
    :pswitch_12
    const-string v0, "Excellent"

    goto :goto_5

    .line 32
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public static typeBg(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 133
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    packed-switch v0, :pswitch_data_26

    .line 141
    const-string v0, "\u2014"

    :goto_7
    return-object v0

    .line 134
    :pswitch_8
    const-string v0, "\u0410\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e"

    goto :goto_7

    .line 135
    :pswitch_b
    const-string v0, "\u0411\u0430\u043b\u0430\u043d\u0441\u0438\u0440\u0430\u043d\u043e"

    goto :goto_7

    .line 136
    :pswitch_e
    const-string v0, "\u0421\u0438\u043b\u043d\u043e, \u0441 \u0438\u0437\u043b\u0438\u0448\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    goto :goto_7

    .line 137
    :pswitch_11
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_19

    const-string v0, "\u0417\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    goto :goto_7

    :cond_19
    const-string v0, "\u0418\u0437\u043b\u0438\u0448\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    goto :goto_7

    .line 138
    :pswitch_1c
    const-string v0, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438, \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    goto :goto_7

    .line 139
    :pswitch_1f
    const-string v0, "\u0421\u043b\u0430\u0431\u043e, \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    goto :goto_7

    .line 140
    :pswitch_22
    const-string v0, "\u041c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    goto :goto_7

    .line 133
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public static typeEn(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    packed-switch v0, :pswitch_data_26

    .line 154
    const-string v0, "\u2014"

    :goto_7
    return-object v0

    .line 147
    :pswitch_8
    const-string v0, "Athletic"

    goto :goto_7

    .line 148
    :pswitch_b
    const-string v0, "Balanced"

    goto :goto_7

    .line 149
    :pswitch_e
    const-string v0, "Strong, excess fat"

    goto :goto_7

    .line 150
    :pswitch_11
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_19

    const-string v0, "Obese"

    goto :goto_7

    :cond_19
    const-string v0, "Excess fat"

    goto :goto_7

    .line 151
    :pswitch_1c
    const-string v0, "Fat, little muscle"

    goto :goto_7

    .line 152
    :pswitch_1f
    const-string v0, "Slim, little muscle"

    goto :goto_7

    .line 153
    :pswitch_22
    const-string v0, "Very low fat"

    goto :goto_7

    .line 146
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public static value(Lorg/json/JSONObject;Ljava/lang/String;ZII)D
    .registers 8

    .prologue
    .line 566
    const/4 v0, 0x1

    invoke-static {p0, p2, p3, p4, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->metrics(Lorg/json/JSONObject;ZIIZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    .line 567
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 568
    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 571
    :goto_1f
    return-wide v0

    :cond_20
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1f
.end method

.method public static zoneBg(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    packed-switch p0, :pswitch_data_12

    .line 286
    const-string v0, "\u0414\u0435\u0441\u0435\u043d \u043a\u0440\u0430\u043a"

    :goto_5
    return-object v0

    .line 282
    :pswitch_6
    const-string v0, "\u0422\u044f\u043b\u043e"

    goto :goto_5

    .line 283
    :pswitch_9
    const-string v0, "\u041b\u044f\u0432\u0430 \u0440\u044a\u043a\u0430"

    goto :goto_5

    .line 284
    :pswitch_c
    const-string v0, "\u0414\u044f\u0441\u043d\u0430 \u0440\u044a\u043a\u0430"

    goto :goto_5

    .line 285
    :pswitch_f
    const-string v0, "\u041b\u044f\u0432 \u043a\u0440\u0430\u043a"

    goto :goto_5

    .line 281
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static zoneEn(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    packed-switch p0, :pswitch_data_12

    .line 296
    const-string v0, "Right leg"

    :goto_5
    return-object v0

    .line 292
    :pswitch_6
    const-string v0, "Trunk"

    goto :goto_5

    .line 293
    :pswitch_9
    const-string v0, "Left arm"

    goto :goto_5

    .line 294
    :pswitch_c
    const-string v0, "Right arm"

    goto :goto_5

    .line 295
    :pswitch_f
    const-string v0, "Left leg"

    goto :goto_5

    .line 291
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static zoneFatNorm(DZ)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 13

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 576
    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_4a

    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->LESS:[I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\u043c\u043d\u043e\u0433\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v3, v0, v7

    const-string v3, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v3, v0, v5

    const-string v3, "\u0441\u0442\u0430\u043d\u0434\u0430\u0440\u0442"

    aput-object v3, v0, v6

    const-string v3, "\u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v3, v0, v8

    const-string v3, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v3, v0, v9

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "very low"

    aput-object v4, v3, v7

    const-string v4, "low"

    aput-object v4, v3, v5

    const-string v4, "standard"

    aput-object v4, v3, v6

    const-string v4, "high"

    aput-object v4, v3, v8

    const-string v4, "very high"

    aput-object v4, v3, v9

    .line 577
    invoke-static {p2, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->pick(Z[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v6, " %"

    const-string v8, "WLA25 / Fitdays"

    move-wide v4, p0

    .line 576
    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    nop

    :array_4a
    .array-data 8
        0x4034000000000000L    # 20.0
        0x4049000000000000L    # 50.0
        0x4054000000000000L    # 80.0
        0x4064000000000000L    # 160.0
        0x406b800000000000L    # 220.0
        0x4072c00000000000L    # 300.0
    .end array-data
.end method

.method public static zoneMuscleNorm(DZZ)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
    .registers 14

    .prologue
    const/4 v0, 0x6

    .line 583
    if-eqz p2, :cond_1d

    new-array v1, v0, [D

    fill-array-data v1, :array_24

    .line 584
    :goto_8
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->MORE:[I

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_MORE_BG:[Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->N_MORE_EN:[Ljava/lang/String;

    invoke-static {p3, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->pick(Z[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v6, " %"

    const/4 v7, 0x0

    const-string v8, "WLA25 / Fitdays"

    move-wide v4, p0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->norm([D[I[Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v0

    return-object v0

    .line 583
    :cond_1d
    new-array v1, v0, [D

    fill-array-data v1, :array_40

    goto :goto_8

    nop

    :array_24
    .array-data 8
        0x4049000000000000L    # 50.0
        0x4051800000000000L    # 70.0
        0x4054000000000000L    # 80.0
        0x405cc00000000000L    # 115.0
        0x4060400000000000L    # 130.0
        0x4064000000000000L    # 160.0
    .end array-data

    :array_40
    .array-data 8
        0x404e000000000000L    # 60.0
        0x4054000000000000L    # 80.0
        0x4056800000000000L    # 90.0
        0x405b800000000000L    # 110.0
        0x405e000000000000L    # 120.0
        0x4062c00000000000L    # 150.0
    .end array-data
.end method

.method public static zones(Lorg/json/JSONObject;ZI)[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;
    .registers 23

    .prologue
    .line 241
    const/4 v2, 0x5

    new-array v10, v2, [Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    .line 242
    const/4 v2, 0x0

    move v6, v2

    :goto_5
    const/4 v2, 0x5

    if-ge v6, v2, :cond_3b

    .line 243
    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;-><init>()V

    aput-object v2, v10, v6

    .line 244
    const/4 v2, 0x1

    if-eq v6, v2, :cond_15

    const/4 v2, 0x2

    if-ne v6, v2, :cond_2d

    :cond_15
    const/4 v2, 0x1

    .line 245
    :goto_16
    aget-object v3, v10, v6

    if-eqz v2, :cond_2f

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    :goto_1c
    iput-wide v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musLo:D

    .line 246
    aget-object v4, v10, v6

    if-eqz v2, :cond_35

    const-wide v2, 0x405cc00000000000L    # 115.0

    :goto_27
    iput-wide v2, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musHi:D

    .line 242
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_5

    .line 244
    :cond_2d
    const/4 v2, 0x0

    goto :goto_16

    .line 245
    :cond_2f
    const-wide v4, 0x4056800000000000L    # 90.0

    goto :goto_1c

    .line 246
    :cond_35
    const-wide v2, 0x405b800000000000L    # 110.0

    goto :goto_27

    .line 248
    :cond_3b
    if-eqz p0, :cond_5d

    const-string v2, "segFat"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object v13, v2

    .line 249
    :goto_46
    if-eqz p0, :cond_60

    const-string v2, "segMus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object v12, v2

    .line 250
    :goto_51
    if-eqz v13, :cond_5b

    if-eqz v12, :cond_5b

    const/16 v2, 0x64

    move/from16 v0, p2

    if-ge v0, v2, :cond_63

    :cond_5b
    move-object v2, v10

    .line 277
    :goto_5c
    return-object v2

    .line 248
    :cond_5d
    const/4 v2, 0x0

    move-object v13, v2

    goto :goto_46

    .line 249
    :cond_60
    const/4 v2, 0x0

    move-object v12, v2

    goto :goto_51

    .line 253
    :cond_63
    move/from16 v0, p2

    int-to-double v4, v0

    .line 254
    if-eqz p1, :cond_13e

    const v2, 0x3e19999a    # 0.15f

    :goto_6b
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->stdWeight(IZ)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v2

    .line 255
    const-wide v6, 0x3fb9db22d0e56042L    # 0.101

    mul-double/2addr v6, v2

    const-wide v8, -0x408f9db22d0e5604L    # -0.004

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide v8, 0x3fd52f1a9fbe76c9L    # 0.331

    add-double/2addr v6, v8

    .line 256
    const-wide v8, 0x3fcb851eb851eb85L    # 0.215

    mul-double/2addr v8, v2

    const-wide v14, -0x408b851eb851eb85L    # -0.005

    mul-double/2addr v14, v4

    add-double/2addr v8, v14

    const-wide v14, 0x3fd90624dd2f1aa0L    # 0.391

    add-double/2addr v8, v14

    .line 257
    const-wide v14, 0x3f789374bc6a7efaL    # 0.006

    mul-double/2addr v4, v14

    const-wide v14, 0x3fd8e5604189374cL    # 0.389

    mul-double/2addr v2, v14

    add-double/2addr v2, v4

    const-wide v4, 0x3fe5db22d0e56042L    # 0.683

    sub-double v4, v2, v4

    .line 258
    invoke-static/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->ofNormal(Lorg/json/JSONObject;ZI)[[D

    move-result-object v14

    .line 259
    const/4 v2, 0x0

    move v11, v2

    :goto_b9
    const/4 v2, 0x5

    if-ge v11, v2, :cond_172

    .line 260
    const/4 v2, 0x1

    if-eq v11, v2, :cond_c2

    const/4 v2, 0x2

    if-ne v11, v2, :cond_143

    :cond_c2
    const/4 v2, 0x1

    .line 261
    :goto_c3
    if-nez v11, :cond_146

    move-wide v2, v4

    .line 262
    :goto_c6
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_ff

    .line 263
    aget-object v15, v10, v11

    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatKg:D

    .line 264
    const-wide/16 v16, 0x0

    cmpl-double v15, v2, v16

    if-lez v15, :cond_ff

    .line 265
    aget-object v15, v10, v11

    aget-object v16, v10, v11

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatKg:D

    move-wide/from16 v16, v0

    div-double v2, v16, v2

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v16

    iput-wide v2, v15, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatPct:D

    .line 266
    aget-object v3, v10, v11

    aget-object v2, v10, v11

    iget-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatPct:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4054000000000000L    # 80.0

    cmpg-double v2, v16, v18

    if-gez v2, :cond_14e

    const/4 v2, 0x0

    :goto_fd
    iput v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatStatus:I

    .line 269
    :cond_ff
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_139

    .line 270
    aget-object v2, v10, v11

    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    .line 271
    aget-object v2, v10, v11

    const/4 v3, 0x0

    aget-object v3, v14, v3

    aget-wide v16, v3, v11

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musPct:D

    .line 272
    aget-object v2, v10, v11

    iget-wide v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musPct:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_139

    .line 273
    aget-object v3, v10, v11

    aget-object v2, v10, v11

    iget-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musPct:D

    move-wide/from16 v16, v0

    aget-object v2, v10, v11

    iget-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musLo:D

    move-wide/from16 v18, v0

    cmpg-double v2, v16, v18

    if-gez v2, :cond_15e

    const/4 v2, 0x0

    :goto_137
    iput v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    .line 259
    :cond_139
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_b9

    .line 254
    :cond_13e
    const v2, 0x3e6b851f    # 0.23f

    goto/16 :goto_6b

    .line 260
    :cond_143
    const/4 v2, 0x0

    goto/16 :goto_c3

    .line 261
    :cond_146
    if-eqz v2, :cond_14b

    move-wide v2, v6

    goto/16 :goto_c6

    :cond_14b
    move-wide v2, v8

    goto/16 :goto_c6

    .line 266
    :cond_14e
    aget-object v2, v10, v11

    iget-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatPct:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4064000000000000L    # 160.0

    cmpg-double v2, v16, v18

    if-gtz v2, :cond_15c

    const/4 v2, 0x1

    goto :goto_fd

    :cond_15c
    const/4 v2, 0x2

    goto :goto_fd

    .line 273
    :cond_15e
    aget-object v2, v10, v11

    iget-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musPct:D

    move-wide/from16 v16, v0

    aget-object v2, v10, v11

    iget-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musHi:D

    move-wide/from16 v18, v0

    cmpg-double v2, v16, v18

    if-gtz v2, :cond_170

    const/4 v2, 0x1

    goto :goto_137

    :cond_170
    const/4 v2, 0x4

    goto :goto_137

    :cond_172
    move-object v2, v10

    .line 277
    goto/16 :goto_5c
.end method
