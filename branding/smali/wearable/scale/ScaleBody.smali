.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleBody;
.super Ljava/lang/Object;
.source "ScaleBody.java"


# static fields
.field static final IMP_MIN:[D


# instance fields
.field public bmi:D

.field public bmr:I

.field public bodyAge:I

.field public boneKg:D

.field public fatFromScale:Z

.field public fatKg:D

.field public fatPct:D

.field public leanKg:D

.field public muscleKg:D

.field public musclePct:D

.field public proteinPct:D

.field public final segFatKg:[D

.field public final segMuscleKg:[D

.field public skeletalPct:D

.field public subcutPct:D

.field public visceral:I

.field public waterPct:D

.field public weightKg:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/16 v0, 0xa

    new-array v0, v0, [D

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->IMP_MIN:[D

    return-void

    :array_a
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4059000000000000L    # 100.0
        0x4059000000000000L    # 100.0
        0x4059000000000000L    # 100.0
        0x4059000000000000L    # 100.0
        0x3ff0000000000000L    # 1.0
        0x4059000000000000L    # 100.0
        0x4059000000000000L    # 100.0
        0x4059000000000000L    # 100.0
        0x4059000000000000L    # 100.0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segFatKg:[D

    .line 19
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    .line 23
    return-void
.end method

.method static bodyAge(IDZ)I
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, -0x2

    const/4 v0, -0x3

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    .line 216
    const/16 v4, 0xa

    if-ge p0, v4, :cond_b

    .line 226
    :goto_a
    return p0

    .line 220
    :cond_b
    if-eqz p3, :cond_48

    .line 221
    const-wide/high16 v4, 0x402c000000000000L    # 14.0

    cmpg-double v4, p1, v4

    if-gez v4, :cond_15

    .line 226
    :cond_13
    :goto_13
    add-int/2addr p0, v0

    goto :goto_a

    .line 221
    :cond_15
    const-wide/high16 v4, 0x4033000000000000L    # 19.0

    cmpg-double v0, p1, v4

    if-gez v0, :cond_1d

    move v0, v1

    goto :goto_13

    :cond_1d
    cmpg-double v0, p1, v6

    if-gez v0, :cond_23

    move v0, v2

    goto :goto_13

    :cond_23
    const-wide/high16 v0, 0x403b000000000000L    # 27.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2b

    move v0, v3

    goto :goto_13

    :cond_2b
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_33

    const/4 v0, 0x2

    goto :goto_13

    :cond_33
    const-wide v0, 0x4040800000000000L    # 33.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_3e

    const/4 v0, 0x3

    goto :goto_13

    :cond_3e
    const-wide/high16 v0, 0x4042000000000000L    # 36.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_46

    const/4 v0, 0x4

    goto :goto_13

    :cond_46
    const/4 v0, 0x5

    goto :goto_13

    .line 223
    :cond_48
    cmpg-double v4, p1, v6

    if-ltz v4, :cond_13

    const-wide/high16 v4, 0x403c000000000000L    # 28.0

    cmpg-double v0, p1, v4

    if-gez v0, :cond_54

    move v0, v1

    goto :goto_13

    :cond_54
    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_5c

    move v0, v2

    goto :goto_13

    :cond_5c
    const-wide v0, 0x4041800000000000L    # 35.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_67

    move v0, v3

    goto :goto_13

    :cond_67
    const-wide/high16 v0, 0x4043000000000000L    # 38.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_6f

    const/4 v0, 0x2

    goto :goto_13

    :cond_6f
    const-wide/high16 v0, 0x4045000000000000L    # 42.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_77

    const/4 v0, 0x3

    goto :goto_13

    .line 224
    :cond_77
    const-wide v0, 0x4046800000000000L    # 45.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_82

    const/4 v0, 0x4

    goto :goto_13

    :cond_82
    const-wide/high16 v0, 0x4047000000000000L    # 46.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_8a

    const/4 v0, 0x0

    goto :goto_13

    :cond_8a
    const/4 v0, 0x5

    goto :goto_13
.end method

.method static ceil1(D)D
    .registers 12

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    double-to-long v4, p0

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v0

    rem-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v0

    .line 33
    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v0

    .line 34
    rem-float v1, v0, v2

    float-to-double v6, v1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v3

    .line 35
    add-float v1, v0, v2

    float-to-double v6, v1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v1

    .line 36
    const/high16 v6, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_54

    .line 39
    :goto_29
    float-to-long v0, v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v0

    .line 40
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_47

    long-to-double v6, v4

    sub-double v6, p0, v6

    const-wide v8, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v1, v6, v8

    if-lez v1, :cond_47

    move v0, v2

    .line 43
    :cond_47
    long-to-double v2, v4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_54
    move v0, v1

    goto :goto_29
.end method

.method static chain(Lcom/isaigu/gymapp/wearable/scale/ScaleBody;[D[DDDDDDIZ)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;
    .registers 48

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->weightKg:D

    move-wide/from16 v24, v0

    .line 137
    sub-double v26, v24, p5

    .line 138
    move-wide/from16 v0, p7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    .line 139
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatKg:D

    .line 140
    invoke-static/range {v26 .. v27}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->r2(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->leanKg:D

    .line 143
    const/4 v4, 0x1

    aget-wide v4, p2, v4

    const-wide v6, 0x3f7e9f2778140dd4L    # 0.007476

    mul-double/2addr v4, v6

    const-wide v6, 0x3fb4c996b76709faL    # 0.081201

    mul-double v6, v6, p5

    const/4 v8, 0x1

    aget-wide v8, p1, v8

    const-wide v10, 0x3f778f68be2f7b18L    # 0.005752

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fe53059641f6449L    # 0.662152

    sub-double v8, v4, v6

    .line 144
    const/4 v4, 0x2

    aget-wide v4, p2, v4

    const-wide v6, 0x3f7e9f2778140dd4L    # 0.007476

    mul-double/2addr v4, v6

    const-wide v6, 0x3fb4c996b76709faL    # 0.081201

    mul-double v6, v6, p5

    const/4 v10, 0x2

    aget-wide v10, p1, v10

    const-wide v12, 0x3f778f68be2f7b18L    # 0.005752

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    add-double/2addr v4, v6

    const-wide v6, 0x3fe53059641f6449L    # 0.662152

    sub-double v6, v4, v6

    .line 145
    const/4 v4, 0x3

    aget-wide v4, p2, v4

    const-wide v10, 0x3f81b4784230fcf8L    # 0.008645

    mul-double/2addr v4, v10

    const-wide v10, 0x3fc156084a515ceaL    # 0.135438

    mul-double v10, v10, p5

    const/4 v12, 0x3

    aget-wide v12, p1, v12

    const-wide v14, 0x3f80678c0053e2d6L    # 0.00801

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    add-double/2addr v4, v10

    const-wide v10, 0x3fdf84c6a3bddfcaL    # 0.492479

    add-double v12, v4, v10

    .line 146
    const/4 v4, 0x4

    aget-wide v4, p2, v4

    const-wide v10, 0x3f81b4784230fcf8L    # 0.008645

    mul-double/2addr v4, v10

    const-wide v10, 0x3fc156084a515ceaL    # 0.135438

    mul-double v10, v10, p5

    const/4 v14, 0x4

    aget-wide v14, p1, v14

    const-wide v16, 0x3f80678c0053e2d6L    # 0.00801

    mul-double v14, v14, v16

    sub-double/2addr v10, v14

    add-double/2addr v4, v10

    const-wide v10, 0x3fdf84c6a3bddfcaL    # 0.492479

    add-double/2addr v10, v4

    .line 147
    sub-double v4, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v14, 0x3fd3333333333333L    # 0.3

    cmpl-double v4, v4, v14

    if-lez v4, :cond_493

    .line 148
    cmpg-double v4, v6, v8

    if-gtz v4, :cond_3fe

    .line 149
    const/4 v4, 0x2

    aget-wide v4, p1, v4

    const/4 v6, 0x2

    aget-wide v6, p2, v6

    add-double/2addr v4, v6

    const-wide v6, 0x40d3bd4000000000L    # 20213.0

    div-double/2addr v4, v6

    .line 150
    const/4 v6, 0x2

    aget-wide v6, p1, v6

    const/4 v14, 0x1

    aget-wide v14, p1, v14

    cmpg-double v6, v6, v14

    if-gtz v6, :cond_3fb

    :goto_ce
    add-double/2addr v4, v8

    .line 156
    :goto_cf
    sub-double v6, v10, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v6, v14

    if-lez v6, :cond_490

    .line 157
    cmpg-double v6, v10, v12

    if-gtz v6, :cond_41f

    .line 158
    const/4 v6, 0x4

    aget-wide v6, p1, v6

    const/4 v10, 0x4

    aget-wide v10, p2, v10

    add-double/2addr v6, v10

    const-wide v10, 0x40d3bd4000000000L    # 20213.0

    div-double/2addr v6, v10

    .line 159
    const/4 v10, 0x4

    aget-wide v10, p1, v10

    const/4 v14, 0x3

    aget-wide v14, p1, v14

    cmpg-double v10, v10, v14

    if-gtz v10, :cond_41c

    :goto_f6
    add-double v10, v6, v12

    move-wide v6, v12

    .line 165
    :goto_f9
    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpg-double v12, v4, v12

    if-gez v12, :cond_48c

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    const/4 v12, 0x2

    aget-wide v12, p2, v12

    add-double/2addr v4, v12

    const-wide v12, 0x40d3bd4000000000L    # 20213.0

    div-double/2addr v4, v12

    const-wide v12, 0x3fb999999999999aL    # 0.1

    add-double/2addr v4, v12

    move-wide/from16 v22, v4

    .line 166
    :goto_117
    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v8, v4

    if-gez v4, :cond_488

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    const/4 v8, 0x1

    aget-wide v8, p2, v8

    add-double/2addr v4, v8

    const-wide v8, 0x40d3a44000000000L    # 20113.0

    div-double/2addr v4, v8

    const-wide v8, 0x3fb999999999999aL    # 0.1

    add-double/2addr v8, v4

    move-wide/from16 v20, v8

    .line 167
    :goto_135
    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v10, v4

    if-gez v4, :cond_484

    const/4 v4, 0x4

    aget-wide v4, p1, v4

    const/4 v8, 0x4

    aget-wide v8, p2, v8

    add-double/2addr v4, v8

    const-wide v8, 0x40d3bd4000000000L    # 20213.0

    div-double/2addr v4, v8

    const-wide v8, 0x3fb999999999999aL    # 0.1

    add-double/2addr v4, v8

    move-wide/from16 v18, v4

    .line 168
    :goto_153
    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v6, v4

    if-gez v4, :cond_481

    const/4 v4, 0x3

    aget-wide v4, p1, v4

    const/4 v6, 0x3

    aget-wide v6, p2, v6

    add-double/2addr v4, v6

    const-wide v6, 0x40d3a44000000000L    # 20113.0

    div-double/2addr v4, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    add-double/2addr v4, v6

    .line 169
    :goto_16f
    const/4 v6, 0x2

    aget-wide v6, p1, v6

    const-wide v8, 0x3f6752977c88e79bL    # 0.002847

    mul-double/2addr v6, v8

    const-wide v8, 0x3fae0ed80a17b0f7L    # 0.058707

    mul-double v8, v8, v26

    add-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v8, p2, v8

    const-wide v10, 0x3f77fd82773e24ffL    # 0.005857

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x3fe1fb2cc70867aeL    # 0.561911

    add-double v12, v6, v8

    .line 170
    const/4 v6, 0x1

    aget-wide v6, p1, v6

    const-wide v8, 0x3f6752977c88e79bL    # 0.002847

    mul-double/2addr v6, v8

    const-wide v8, 0x3fae0ed80a17b0f7L    # 0.058707

    mul-double v8, v8, v26

    add-double/2addr v6, v8

    const/4 v8, 0x1

    aget-wide v8, p2, v8

    const-wide v10, 0x3f77fd82773e24ffL    # 0.005857

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x3fe1fb2cc70867aeL    # 0.561911

    add-double v10, v6, v8

    .line 171
    const/4 v6, 0x4

    aget-wide v6, p2, v6

    const-wide v8, 0x3f80b49e01de2691L    # 0.008157

    mul-double/2addr v6, v8

    const-wide v8, 0x3fc699524bfd2e94L    # 0.176554

    mul-double v8, v8, v26

    const/4 v14, 0x4

    aget-wide v14, p1, v14

    const-wide v16, 0x3f7e3b8a19c9d5a2L    # 0.007381

    mul-double v14, v14, v16

    sub-double/2addr v8, v14

    add-double/2addr v6, v8

    const-wide v8, 0x3fe60bbb1f255f35L    # 0.688932

    sub-double v8, v6, v8

    .line 172
    const/4 v6, 0x3

    aget-wide v6, p2, v6

    const-wide v14, 0x3f80b49e01de2691L    # 0.008157

    mul-double/2addr v6, v14

    const-wide v14, 0x3fc699524bfd2e94L    # 0.176554

    mul-double v14, v14, v26

    const/16 v16, 0x3

    aget-wide v16, p1, v16

    const-wide v28, 0x3f7e3b8a19c9d5a2L    # 0.007381

    mul-double v16, v16, v28

    sub-double v14, v14, v16

    add-double/2addr v6, v14

    const-wide v14, 0x3fe60bbb1f255f35L    # 0.688932

    sub-double/2addr v6, v14

    .line 173
    const-wide v14, 0x3fc999999999999aL    # 0.2

    cmpg-double v14, v12, v14

    if-gez v14, :cond_47d

    const/4 v12, 0x2

    aget-wide v12, p1, v12

    const/4 v14, 0x2

    aget-wide v14, p2, v14

    add-double/2addr v12, v14

    const-wide v14, 0x40d3bd4000000000L    # 20213.0

    div-double/2addr v12, v14

    const-wide v14, 0x3fc999999999999aL    # 0.2

    add-double/2addr v12, v14

    move-wide/from16 v16, v12

    .line 174
    :goto_218
    const-wide v12, 0x3fc999999999999aL    # 0.2

    cmpg-double v12, v10, v12

    if-gez v12, :cond_47a

    const/4 v10, 0x1

    aget-wide v10, p1, v10

    const/4 v12, 0x1

    aget-wide v12, p2, v12

    add-double/2addr v10, v12

    const-wide v12, 0x40d3a44000000000L    # 20113.0

    div-double/2addr v10, v12

    const-wide v12, 0x3fc999999999999aL    # 0.2

    add-double/2addr v10, v12

    move-wide v14, v10

    .line 175
    :goto_235
    const-wide v10, 0x3fc999999999999aL    # 0.2

    cmpg-double v10, v8, v10

    if-gez v10, :cond_477

    const/4 v8, 0x4

    aget-wide v8, p1, v8

    const/4 v10, 0x4

    aget-wide v10, p2, v10

    add-double/2addr v8, v10

    const-wide v10, 0x40d3bd4000000000L    # 20213.0

    div-double/2addr v8, v10

    const-wide v10, 0x3fc999999999999aL    # 0.2

    add-double/2addr v8, v10

    move-wide v12, v8

    .line 176
    :goto_252
    const-wide v8, 0x3fc999999999999aL    # 0.2

    cmpg-double v8, v6, v8

    if-gez v8, :cond_26e

    const/4 v6, 0x3

    aget-wide v6, p1, v6

    const/4 v8, 0x3

    aget-wide v8, p2, v8

    add-double/2addr v6, v8

    const-wide v8, 0x40d3a44000000000L    # 20113.0

    div-double/2addr v6, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    add-double/2addr v6, v8

    .line 178
    :cond_26e
    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_43b

    .line 179
    const-wide v8, 0x3fb1912556d19dedL    # 0.068621

    mul-double v8, v8, p9

    const-wide v10, 0x3fe1ae72da122fadL    # 0.552545

    mul-double v10, v10, p5

    add-double/2addr v8, v10

    const-wide v10, -0x403f2756861e9292L    # -0.131612

    mul-double v10, v10, p11

    add-double/2addr v8, v10

    const-wide v10, 0x3fd4a72ead9274e2L    # 0.322704

    add-double/2addr v10, v8

    .line 180
    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v8, v10, v8

    if-gez v8, :cond_2a8

    add-double v8, p11, p9

    const-wide v10, 0x40d3bac000000000L    # 20203.0

    div-double/2addr v8, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    add-double/2addr v10, v8

    .line 181
    :cond_2a8
    const-wide v8, 0x3f757cd466f5019fL    # 0.005246

    mul-double v8, v8, p9

    const-wide v28, 0x3fdc3810e8858ff7L    # 0.440922

    mul-double v28, v28, v26

    add-double v8, v8, v28

    const-wide v28, -0x407a8f3a9b068124L    # -0.010469

    mul-double v28, v28, p11

    add-double v8, v8, v28

    const-wide v28, 0x3fd1a1272c94b381L    # 0.275461

    sub-double v8, v8, v28

    .line 182
    const-wide v28, 0x3fe6666666666666L    # 0.7

    cmpg-double v28, v8, v28

    if-gez v28, :cond_2e1

    add-double v8, p11, p9

    const-wide v28, 0x40d3bac000000000L    # 20203.0

    div-double v8, v8, v28

    const-wide v28, 0x3fe6666666666666L    # 0.7

    add-double v8, v8, v28

    .line 188
    :cond_2e1
    :goto_2e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segFatKg:[D

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-wide v10, v28, v29

    .line 189
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segFatKg:[D

    const/4 v11, 0x1

    aput-wide v20, v10, v11

    .line 190
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segFatKg:[D

    const/4 v11, 0x2

    aput-wide v22, v10, v11

    .line 191
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segFatKg:[D

    const/4 v11, 0x3

    aput-wide v4, v10, v11

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segFatKg:[D

    const/4 v5, 0x4

    aput-wide v18, v4, v5

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    const/4 v5, 0x0

    aput-wide v8, v4, v5

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    const/4 v5, 0x1

    aput-wide v14, v4, v5

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    const/4 v5, 0x2

    aput-wide v16, v4, v5

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    const/4 v5, 0x3

    aput-wide v6, v4, v5

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    const/4 v5, 0x4

    aput-wide v12, v4, v5

    .line 200
    const-wide v4, 0x3fe010624dd2f1aaL    # 0.502

    mul-double v4, v4, p5

    const-wide v6, -0x40624dd2f1a9fbe7L    # -0.029

    mul-double v6, v6, v26

    add-double/2addr v4, v6

    const-wide v6, -0x402178d4fdf3b646L    # -0.477

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 201
    const/4 v5, 0x1

    const/16 v6, 0x14

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->visceral:I

    .line 202
    const-wide v4, 0x3fe774bc6a7ef9dbL    # 0.733

    mul-double v4, v4, v26

    .line 203
    const-wide v6, -0x40d5c91d14e3bcd3L    # -2.0E-4

    mul-double v6, v6, p7

    const-wide v8, 0x3fe70a3d70a3d70aL    # 0.72

    add-double/2addr v6, v8

    mul-double v6, v6, p7

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->subcutPct:D

    .line 204
    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double v6, v6, v26

    add-double/2addr v6, v4

    div-double v6, v6, v24

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->musclePct:D

    .line 205
    const-wide v6, 0x3feddb22d0e56042L    # 0.933

    mul-double v6, v6, v26

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->muscleKg:D

    .line 206
    const-wide v6, 0x3fb126e978d4fdf4L    # 0.067

    mul-double v6, v6, v26

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->boneKg:D

    .line 207
    div-double v6, v4, v24

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->waterPct:D

    .line 208
    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double v6, v6, v26

    div-double v6, v6, v24

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->proteinPct:D

    .line 209
    const-wide v6, 0x3feab020c49ba5e3L    # 0.834

    mul-double/2addr v4, v6

    const-wide v6, 0x400504189374bc6aL    # 2.627

    sub-double/2addr v4, v6

    div-double v4, v4, v24

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->skeletalPct:D

    .line 210
    const-wide v4, 0x403599999999999aL    # 21.6

    mul-double v4, v4, v26

    const-wide v6, 0x4077200000000000L    # 370.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->bmr:I

    .line 211
    move/from16 v0, p13

    move-wide/from16 v1, p7

    move/from16 v3, p14

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->bodyAge(IDZ)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->bodyAge:I

    .line 212
    return-object p0

    .line 150
    :cond_3fb
    neg-double v4, v4

    goto/16 :goto_ce

    .line 152
    :cond_3fe
    const/4 v4, 0x1

    aget-wide v4, p1, v4

    const/4 v8, 0x1

    aget-wide v8, p2, v8

    add-double/2addr v4, v8

    const-wide v8, 0x40d3bd4000000000L    # 20213.0

    div-double/2addr v4, v8

    .line 153
    const/4 v8, 0x1

    aget-wide v8, p1, v8

    const/4 v14, 0x2

    aget-wide v14, p1, v14

    cmpg-double v8, v8, v14

    if-gtz v8, :cond_41a

    :goto_415
    add-double v8, v4, v6

    move-wide v4, v6

    goto/16 :goto_cf

    :cond_41a
    neg-double v4, v4

    goto :goto_415

    .line 159
    :cond_41c
    neg-double v6, v6

    goto/16 :goto_f6

    .line 161
    :cond_41f
    const/4 v6, 0x3

    aget-wide v6, p1, v6

    const/4 v12, 0x3

    aget-wide v12, p2, v12

    add-double/2addr v6, v12

    const-wide v12, 0x40d3bd4000000000L    # 20213.0

    div-double/2addr v6, v12

    .line 162
    const/4 v12, 0x3

    aget-wide v12, p1, v12

    const/4 v14, 0x4

    aget-wide v14, p1, v14

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_439

    :goto_436
    add-double/2addr v6, v10

    goto/16 :goto_f9

    :cond_439
    neg-double v6, v6

    goto :goto_436

    .line 185
    :cond_43b
    const-wide v8, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe1ae72da122fadL    # 0.552545

    mul-double v10, v10, p5

    const-wide v28, 0x3fd4a72ead9274e2L    # 0.322704

    add-double v10, v10, v28

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 186
    const-wide v8, 0x3fe6666666666666L    # 0.7

    const-wide v28, 0x3fdc3810e8858ff7L    # 0.440922

    mul-double v28, v28, v26

    const-wide v30, 0x3fd1a1272c94b381L    # 0.275461

    sub-double v28, v28, v30

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    goto/16 :goto_2e1

    :cond_477
    move-wide v12, v8

    goto/16 :goto_252

    :cond_47a
    move-wide v14, v10

    goto/16 :goto_235

    :cond_47d
    move-wide/from16 v16, v12

    goto/16 :goto_218

    :cond_481
    move-wide v4, v6

    goto/16 :goto_16f

    :cond_484
    move-wide/from16 v18, v10

    goto/16 :goto_153

    :cond_488
    move-wide/from16 v20, v8

    goto/16 :goto_135

    :cond_48c
    move-wide/from16 v22, v4

    goto/16 :goto_117

    :cond_490
    move-wide v6, v12

    goto/16 :goto_f9

    :cond_493
    move-wide v4, v6

    goto/16 :goto_cf
.end method

.method static f32(D)F
    .registers 4

    .prologue
    .line 26
    double-to-float v0, p0

    return v0
.end method

.method public static of(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;
    .registers 24

    .prologue
    .line 63
    if-eqz p0, :cond_28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    if-eqz v2, :cond_28

    const/16 v2, 0x64

    move/from16 v0, p3

    if-lt v0, v2, :cond_28

    const/16 v2, 0xdc

    move/from16 v0, p3

    if-gt v0, v2, :cond_28

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_28

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2a

    .line 64
    :cond_28
    const/4 v2, 0x0

    .line 109
    :goto_29
    return-object v2

    .line 66
    :cond_2a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    move-wide/from16 v16, v0

    .line 67
    move/from16 v0, p3

    int-to-double v6, v0

    .line 68
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    .line 69
    const/4 v2, 0x1

    :goto_3c
    const/4 v3, 0x5

    if-ge v2, v3, :cond_54

    .line 70
    aget-wide v8, v4, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    cmpl-double v3, v8, v10

    if-ltz v3, :cond_4f

    aget-wide v8, v5, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    cmpl-double v3, v8, v10

    if-gez v3, :cond_51

    .line 71
    :cond_4f
    const/4 v2, 0x0

    goto :goto_29

    .line 69
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 74
    :cond_54
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;-><init>()V

    .line 75
    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->weightKg:D

    .line 76
    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double v8, v8, v16

    mul-int v2, p3, p3

    int-to-double v10, v2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v8

    iput-wide v8, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->bmi:D

    .line 77
    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->hasTrunk()Z

    move-result v2

    if-eqz v2, :cond_b8

    const/4 v2, 0x0

    aget-wide v8, v4, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_b8

    const/4 v2, 0x0

    aget-wide v8, v5, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_b8

    .line 79
    const/4 v2, 0x0

    aget-wide v8, v4, v2

    const-wide v10, 0x3fea6e978d4fdf3bL    # 0.826

    mul-double v12, v8, v10

    .line 80
    const/4 v2, 0x0

    aget-wide v8, v5, v2

    const/4 v2, 0x0

    aget-wide v10, v4, v2

    cmpg-double v2, v8, v10

    if-gtz v2, :cond_eb

    const/4 v2, 0x0

    aget-wide v8, v5, v2

    const-wide v10, 0x3fea6e978d4fdf3bL    # 0.826

    mul-double v14, v8, v10

    .line 81
    :goto_a8
    const-wide/16 v8, 0x0

    cmpg-double v2, v12, v8

    if-ltz v2, :cond_b4

    const-wide/16 v8, 0x0

    cmpg-double v2, v14, v8

    if-gez v2, :cond_b8

    .line 82
    :cond_b4
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-wide v14, v8

    move-wide v12, v8

    .line 87
    :cond_b8
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_f0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-lez v2, :cond_f0

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatFromScale:Z

    .line 89
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v10

    .line 90
    mul-double v8, v16, v10

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v8, v8, v16

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v8

    :goto_e1
    move/from16 v16, p2

    move/from16 v17, p1

    .line 109
    invoke-static/range {v3 .. v17}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->chain(Lcom/isaigu/gymapp/wearable/scale/ScaleBody;[D[DDDDDDIZ)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v2

    goto/16 :goto_29

    .line 80
    :cond_eb
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    sub-double v14, v12, v8

    goto :goto_a8

    .line 91
    :cond_f0
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1aa

    .line 93
    const/4 v2, 0x3

    aget-wide v8, v5, v2

    const-wide v10, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v8, v10

    const/4 v2, 0x4

    aget-wide v10, v5, v2

    const-wide v18, 0x3fc395810624dd2fL    # 0.153

    mul-double v10, v10, v18

    add-double/2addr v8, v10

    const-wide v10, 0x3fdc189374bc6a7fL    # 0.439

    mul-double/2addr v10, v14

    add-double/2addr v8, v10

    const/4 v2, 0x1

    aget-wide v10, v5, v2

    const-wide v18, 0x3f9374bc6a7ef9dbL    # 0.019

    mul-double v10, v10, v18

    add-double/2addr v8, v10

    const/4 v2, 0x2

    aget-wide v10, v5, v2

    const-wide v18, 0x3fb1eb851eb851ecL    # 0.07

    mul-double v10, v10, v18

    add-double/2addr v8, v10

    const-wide v10, 0x3fc4fdf3b645a1cbL    # 0.164

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    const-wide v10, -0x403e5604189374bcL    # -0.138

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iget-wide v10, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->bmi:D

    const-wide v18, 0x40054189374bc6a8L    # 2.657

    mul-double v10, v10, v18

    add-double/2addr v8, v10

    const/4 v2, 0x2

    aget-wide v10, v4, v2

    const-wide v18, -0x4054dd2f1a9fbe77L    # -0.053

    mul-double v10, v10, v18

    add-double/2addr v8, v10

    const/4 v2, 0x1

    aget-wide v10, v4, v2

    const-wide v18, -0x40bfe931876188b1L    # -4.91E-4

    mul-double v10, v10, v18

    add-double/2addr v8, v10

    const-wide v10, -0x406147ae147ae148L    # -0.03

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const/4 v2, 0x4

    aget-wide v10, v4, v2

    const-wide v18, -0x403fbe76c8b43958L    # -0.127

    mul-double v10, v10, v18

    add-double/2addr v8, v10

    const/4 v2, 0x3

    aget-wide v10, v4, v2

    const-wide v18, -0x4055604189374bc7L    # -0.052

    mul-double v10, v10, v18

    add-double/2addr v8, v10

    const-wide v10, -0x3fa9fcac083126e9L    # -88.052

    add-double/2addr v10, v8

    .line 96
    div-double v8, v10, v16

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v18

    .line 97
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    cmpg-double v2, v8, v18

    if-gez v2, :cond_19a

    .line 98
    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v10, v16, v8

    .line 99
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    .line 104
    :cond_18e
    :goto_18e
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v16

    .line 105
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v10

    move-wide/from16 v8, v16

    .line 106
    goto/16 :goto_e1

    .line 100
    :cond_19a
    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    cmpl-double v2, v8, v18

    if-lez v2, :cond_18e

    .line 101
    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double v10, v16, v8

    .line 102
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    goto :goto_18e

    .line 107
    :cond_1aa
    const/4 v2, 0x0

    goto/16 :goto_29
.end method

.method static r2(D)D
    .registers 6

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 53
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static stdWeight(IZ)F
    .registers 6

    .prologue
    .line 47
    if-eqz p1, :cond_1e

    const/high16 v0, 0x41b00000    # 22.0f

    .line 48
    :goto_4
    int-to-double v2, p0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v1

    .line 49
    mul-float/2addr v1, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->f32(D)F

    move-result v0

    return v0

    .line 47
    :cond_1e
    const/high16 v0, 0x41a80000    # 21.0f

    goto :goto_4
.end method

.method public static withFat(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIID)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;
    .registers 24

    .prologue
    .line 117
    invoke-static/range {p0 .. p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->of(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v3

    .line 118
    if-eqz v3, :cond_c

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 131
    :cond_c
    :goto_c
    return-object v3

    .line 121
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    .line 122
    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->hasTrunk()Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x0

    aget-wide v6, v4, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_5f

    const/4 v2, 0x0

    aget-wide v6, v5, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_5f

    .line 124
    const/4 v2, 0x0

    aget-wide v6, v4, v2

    const-wide v8, 0x3fea6e978d4fdf3bL    # 0.826

    mul-double v12, v6, v8

    .line 125
    const/4 v2, 0x0

    aget-wide v6, v5, v2

    const/4 v2, 0x0

    aget-wide v8, v4, v2

    cmpg-double v2, v6, v8

    if-gtz v2, :cond_88

    const/4 v2, 0x0

    aget-wide v6, v5, v2

    const-wide v8, 0x3fea6e978d4fdf3bL    # 0.826

    mul-double v14, v6, v8

    .line 126
    :goto_4f
    const-wide/16 v6, 0x0

    cmpg-double v2, v12, v6

    if-ltz v2, :cond_5b

    const-wide/16 v6, 0x0

    cmpg-double v2, v14, v6

    if-gez v2, :cond_5f

    .line 127
    :cond_5b
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-wide v14, v6

    move-wide v12, v6

    .line 130
    :cond_5f
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    move-wide/from16 v0, p4

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v10

    .line 131
    move/from16 v0, p3

    int-to-double v6, v0

    iget-wide v8, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->weightKg:D

    mul-double/2addr v8, v10

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v8, v8, v16

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->ceil1(D)D

    move-result-wide v8

    move/from16 v16, p2

    move/from16 v17, p1

    invoke-static/range {v3 .. v17}, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->chain(Lcom/isaigu/gymapp/wearable/scale/ScaleBody;[D[DDDDDDIZ)Lcom/isaigu/gymapp/wearable/scale/ScaleBody;

    move-result-object v3

    goto :goto_c

    .line 125
    :cond_88
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    sub-double v14, v12, v6

    goto :goto_4f
.end method


# virtual methods
.method public skeletalKg()D
    .registers 5

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->weightKg:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->skeletalPct:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method
