.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;
.super Ljava/lang/Object;
.source "ScaleDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;
    }
.end annotation


# static fields
.field public static final ORDER:[I

.field public static final S_GOOD:I = 0x4

.field public static final S_HIGH:I = 0x2

.field public static final S_LOW:I = 0x0

.field public static final S_NONE:I = -0x1

.field public static final S_STD:I = 0x1

.field public static final S_VERY_HIGH:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 233
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->ORDER:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x2
        0x0
        0x3
        0x4
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
