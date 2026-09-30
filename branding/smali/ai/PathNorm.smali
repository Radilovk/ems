.class public final Lcom/isaigu/gymapp/ai/PathNorm;
.super Ljava/lang/Object;
.source "PathNorm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/PathNorm$Out;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static arc(DDDDDIIDD)Ljava/util/List;
    .registers 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDIIDD)",
            "Ljava/util/List",
            "<[D>;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    const-wide/16 v2, 0x0

    cmpl-double v2, p4, v2

    if-eqz v2, :cond_11

    const-wide/16 v2, 0x0

    cmpl-double v2, p6, v2

    if-nez v2, :cond_2b

    .line 106
    :cond_11
    const/4 v2, 0x6

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    const/4 v3, 0x1

    aput-wide p2, v2, v3

    const/4 v3, 0x2

    aput-wide p12, v2, v3

    const/4 v3, 0x3

    aput-wide p14, v2, v3

    const/4 v3, 0x4

    aput-wide p12, v2, v3

    const/4 v3, 0x5

    aput-wide p14, v2, v3

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    .line 164
    :goto_2a
    return-object v2

    .line 109
    :cond_2b
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 110
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 111
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 112
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 113
    sub-double v6, p0, p12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v14

    .line 114
    sub-double v14, p2, p14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    .line 115
    mul-double v16, v10, v6

    mul-double v18, v12, v14

    add-double v16, v16, v18

    .line 116
    neg-double v0, v12

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    mul-double/2addr v14, v10

    add-double/2addr v14, v6

    .line 117
    div-double v6, v16, v8

    div-double v18, v16, v8

    mul-double v6, v6, v18

    div-double v18, v14, v2

    div-double v20, v14, v2

    mul-double v18, v18, v20

    add-double v6, v6, v18

    .line 118
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v6, v18

    if-lez v5, :cond_1e3

    .line 119
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 120
    mul-double/2addr v8, v6

    .line 121
    mul-double/2addr v2, v6

    move-wide v6, v2

    .line 123
    :goto_76
    mul-double v2, v8, v8

    mul-double/2addr v2, v6

    mul-double/2addr v2, v6

    mul-double v18, v8, v8

    mul-double v18, v18, v14

    mul-double v18, v18, v14

    sub-double v2, v2, v18

    mul-double v18, v6, v6

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    sub-double v2, v2, v18

    .line 124
    mul-double v18, v8, v8

    mul-double v18, v18, v14

    mul-double v18, v18, v14

    mul-double v20, v6, v6

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    add-double v18, v18, v20

    .line 125
    const-wide/16 v20, 0x0

    cmpl-double v5, v18, v20

    if-eqz v5, :cond_1c2

    const-wide/16 v20, 0x0

    div-double v2, v2, v18

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 126
    :goto_ac
    move/from16 v0, p10

    move/from16 v1, p11

    if-ne v0, v1, :cond_b3

    .line 127
    neg-double v2, v2

    .line 129
    :cond_b3
    mul-double v18, v2, v8

    mul-double v18, v18, v14

    div-double v18, v18, v6

    .line 130
    neg-double v2, v2

    mul-double/2addr v2, v6

    mul-double v2, v2, v16

    div-double/2addr v2, v8

    .line 131
    mul-double v20, v10, v18

    mul-double v22, v12, v2

    sub-double v20, v20, v22

    add-double v22, p0, p12

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    add-double v20, v20, v22

    .line 132
    mul-double v22, v12, v18

    mul-double v24, v10, v2

    add-double v22, v22, v24

    add-double v24, p2, p14

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v24, v24, v26

    add-double v22, v22, v24

    .line 133
    sub-double v24, v14, v2

    div-double v24, v24, v6

    sub-double v26, v16, v18

    div-double v26, v26, v8

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v24

    .line 134
    sub-double v26, v16, v18

    div-double v26, v26, v8

    .line 135
    sub-double v28, v14, v2

    div-double v28, v28, v6

    .line 136
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v16, v18

    div-double v16, v16, v8

    .line 137
    neg-double v14, v14

    sub-double v2, v14, v2

    div-double/2addr v2, v6

    .line 138
    mul-double v14, v26, v2

    mul-double v18, v28, v16

    sub-double v14, v14, v18

    mul-double v16, v16, v26

    mul-double v2, v2, v28

    add-double v2, v2, v16

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 139
    if-nez p11, :cond_1c6

    const-wide/16 v14, 0x0

    cmpl-double v5, v2, v14

    if-lez v5, :cond_1c6

    .line 140
    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v2, v14

    .line 144
    :cond_119
    :goto_119
    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double v14, v14, v16

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 145
    int-to-double v14, v5

    div-double v14, v2, v14

    .line 146
    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v16, v14, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    mul-double v16, v16, v2

    .line 147
    const/4 v2, 0x0

    move v3, v2

    :goto_149
    if-ge v3, v5, :cond_1e0

    .line 148
    int-to-double v0, v3

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    add-double v18, v18, v24

    .line 149
    add-double v26, v18, v14

    .line 150
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .line 151
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 152
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    .line 153
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    .line 154
    const/4 v2, 0x6

    new-array v0, v2, [D

    move-object/from16 v32, v0

    const/4 v2, 0x0

    mul-double v34, v16, v18

    sub-double v34, v28, v34

    aput-wide v34, v32, v2

    const/4 v2, 0x1

    mul-double v28, v28, v16

    add-double v18, v18, v28

    aput-wide v18, v32, v2

    const/4 v2, 0x2

    mul-double v18, v16, v26

    add-double v18, v18, v30

    aput-wide v18, v32, v2

    const/4 v2, 0x3

    mul-double v18, v16, v30

    sub-double v18, v26, v18

    aput-wide v18, v32, v2

    const/4 v2, 0x4

    aput-wide v30, v32, v2

    const/4 v2, 0x5

    aput-wide v26, v32, v2

    .line 155
    const/4 v2, 0x6

    new-array v0, v2, [D

    move-object/from16 v18, v0

    .line 156
    const/4 v2, 0x0

    :goto_191
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v2, v0, :cond_1d6

    .line 157
    mul-int/lit8 v19, v2, 0x2

    aget-wide v26, v32, v19

    mul-double v26, v26, v8

    .line 158
    mul-int/lit8 v19, v2, 0x2

    add-int/lit8 v19, v19, 0x1

    aget-wide v28, v32, v19

    mul-double v28, v28, v6

    .line 159
    mul-int/lit8 v19, v2, 0x2

    mul-double v30, v10, v26

    mul-double v34, v12, v28

    sub-double v30, v30, v34

    add-double v30, v30, v20

    aput-wide v30, v18, v19

    .line 160
    mul-int/lit8 v19, v2, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-double v26, v26, v12

    mul-double v28, v28, v10

    add-double v26, v26, v28

    add-double v26, v26, v22

    aput-wide v26, v18, v19

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_191

    .line 125
    :cond_1c2
    const-wide/16 v2, 0x0

    goto/16 :goto_ac

    .line 141
    :cond_1c6
    if-eqz p11, :cond_119

    const-wide/16 v14, 0x0

    cmpg-double v5, v2, v14

    if-gez v5, :cond_119

    .line 142
    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v14

    goto/16 :goto_119

    .line 162
    :cond_1d6
    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_149

    :cond_1e0
    move-object v2, v4

    .line 164
    goto/16 :goto_2a

    :cond_1e3
    move-wide v6, v2

    goto/16 :goto_76
.end method

.method private static flag(Ljava/util/List;[I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 323
    aget v0, p1, v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 325
    :cond_19
    aget v1, p1, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v2

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 330
    :goto_25
    return v0

    .line 328
    :cond_26
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    .line 329
    aget v2, p1, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 330
    goto :goto_25
.end method

.method static fmt(D)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 76
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x2

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    .line 77
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3e

    .line 78
    :goto_19
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 81
    :cond_2c
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_3e
    const-string v1, "-0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    :cond_4c
    const-string v0, "0"

    :cond_4e
    return-object v0
.end method

.method private static isCmd(C)Z
    .registers 2

    .prologue
    .line 16
    const-string v0, "MmZzLlHhVvCcSsQqTtAa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 34

    .prologue
    .line 168
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/PathNorm;->tokens(Ljava/lang/String;)Ljava/util/List;

    move-result-object v31

    .line 169
    new-instance v3, Lcom/isaigu/gymapp/ai/PathNorm$Out;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/PathNorm$Out;-><init>()V

    .line 170
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v32, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v32, v2

    .line 171
    const/4 v2, 0x0

    .line 172
    const-wide/16 v4, 0x0

    .line 173
    const-wide/16 v6, 0x0

    .line 174
    const-wide/16 v24, 0x0

    .line 175
    const-wide/16 v18, 0x0

    .line 176
    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    .line 177
    const-wide/16 v12, 0x0

    .line 178
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 179
    const-wide/16 v8, 0x0

    move-wide/from16 v20, v8

    move-wide/from16 v16, v10

    move-wide/from16 v22, v12

    move-wide/from16 v26, v18

    move-wide/from16 v28, v24

    move/from16 v30, v2

    .line 180
    :goto_2f
    const/4 v2, 0x0

    aget v2, v32, v2

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_2cb

    .line 181
    const/4 v2, 0x0

    aget v2, v32, v2

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_80

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/PathNorm;->isCmd(C)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 183
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 184
    const/4 v8, 0x0

    aget v9, v32, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v32, v8

    .line 185
    const/16 v8, 0x5a

    if-eq v2, v8, :cond_69

    const/16 v8, 0x7a

    if-ne v2, v8, :cond_7e

    .line 186
    :cond_69
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/PathNorm$Out;->b:Ljava/lang/StringBuilder;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 190
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v16, v8

    move-wide v14, v10

    move-wide/from16 v6, v26

    move-wide/from16 v4, v28

    move/from16 v30, v2

    .line 191
    goto :goto_2f

    :cond_7e
    move/from16 v30, v2

    .line 194
    :cond_80
    if-nez v30, :cond_8a

    .line 195
    const/4 v2, 0x0

    aget v8, v32, v2

    add-int/lit8 v8, v8, 0x1

    aput v8, v32, v2

    goto :goto_2f

    .line 198
    :cond_8a
    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v24

    .line 199
    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 200
    const/16 v8, 0x4d

    if-ne v2, v8, :cond_d0

    .line 201
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v10

    .line 202
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v8

    .line 203
    if-eqz v24, :cond_2d6

    .line 204
    add-double/2addr v10, v4

    .line 205
    add-double v4, v8, v6

    move-wide v12, v4

    move-wide v14, v10

    .line 209
    :goto_a5
    const/16 v2, 0x4d

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v14, v4, v5

    const/4 v5, 0x1

    aput-wide v12, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/isaigu/gymapp/ai/PathNorm$Out;->emit(C[D)V

    .line 210
    if-eqz v24, :cond_cd

    const/16 v2, 0x6c

    .line 211
    :goto_b7
    const-wide/high16 v24, 0x7ff8000000000000L    # Double.NaN

    .line 212
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v10, v20

    move-wide/from16 v26, v12

    move-wide/from16 v28, v14

    move-wide v6, v12

    move-wide v4, v14

    :goto_c3
    move-wide/from16 v20, v10

    move-wide/from16 v16, v8

    move-wide/from16 v14, v24

    move/from16 v30, v2

    .line 307
    goto/16 :goto_2f

    .line 210
    :cond_cd
    const/16 v2, 0x4c

    goto :goto_b7

    .line 213
    :cond_d0
    const/16 v8, 0x4c

    if-ne v2, v8, :cond_fb

    .line 214
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v10

    .line 215
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v8

    .line 216
    if-eqz v24, :cond_2d2

    .line 217
    add-double/2addr v10, v4

    .line 218
    add-double v4, v8, v6

    move-wide v6, v4

    move-wide v12, v10

    .line 222
    :goto_e3
    const/16 v2, 0x4c

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v12, v4, v5

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/isaigu/gymapp/ai/PathNorm$Out;->emit(C[D)V

    .line 223
    const-wide/high16 v24, 0x7ff8000000000000L    # Double.NaN

    .line 224
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v10, v20

    move-wide v4, v12

    move/from16 v2, v30

    .line 225
    goto :goto_c3

    :cond_fb
    const/16 v8, 0x48

    if-ne v2, v8, :cond_120

    .line 226
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v8

    if-eqz v24, :cond_11d

    :goto_105
    add-double/2addr v4, v8

    .line 227
    const/16 v2, 0x4c

    const/4 v8, 0x2

    new-array v8, v8, [D

    const/4 v9, 0x0

    aput-wide v4, v8, v9

    const/4 v9, 0x1

    aput-wide v6, v8, v9

    invoke-virtual {v3, v2, v8}, Lcom/isaigu/gymapp/ai/PathNorm$Out;->emit(C[D)V

    .line 228
    const-wide/high16 v24, 0x7ff8000000000000L    # Double.NaN

    .line 229
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v10, v20

    move/from16 v2, v30

    goto :goto_c3

    .line 226
    :cond_11d
    const-wide/16 v4, 0x0

    goto :goto_105

    .line 230
    :cond_120
    const/16 v8, 0x56

    if-ne v2, v8, :cond_145

    .line 231
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v8

    if-eqz v24, :cond_142

    :goto_12a
    add-double/2addr v6, v8

    .line 232
    const/16 v2, 0x4c

    const/4 v8, 0x2

    new-array v8, v8, [D

    const/4 v9, 0x0

    aput-wide v4, v8, v9

    const/4 v9, 0x1

    aput-wide v6, v8, v9

    invoke-virtual {v3, v2, v8}, Lcom/isaigu/gymapp/ai/PathNorm$Out;->emit(C[D)V

    .line 233
    const-wide/high16 v24, 0x7ff8000000000000L    # Double.NaN

    .line 234
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v10, v20

    move/from16 v2, v30

    goto :goto_c3

    .line 231
    :cond_142
    const-wide/16 v6, 0x0

    goto :goto_12a

    .line 235
    :cond_145
    const/16 v8, 0x43

    if-ne v2, v8, :cond_17f

    .line 236
    const/4 v2, 0x6

    new-array v10, v2, [D

    .line 237
    const/4 v2, 0x0

    :goto_14d
    const/4 v8, 0x6

    if-ge v2, v8, :cond_166

    .line 238
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v12

    if-eqz v24, :cond_163

    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_161

    move-wide v8, v4

    :goto_15b
    add-double/2addr v8, v12

    aput-wide v8, v10, v2

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_14d

    :cond_161
    move-wide v8, v6

    .line 238
    goto :goto_15b

    :cond_163
    const-wide/16 v8, 0x0

    goto :goto_15b

    .line 240
    :cond_166
    const/16 v2, 0x43

    invoke-virtual {v3, v2, v10}, Lcom/isaigu/gymapp/ai/PathNorm$Out;->emit(C[D)V

    .line 241
    const/4 v2, 0x2

    aget-wide v24, v10, v2

    .line 242
    const/4 v2, 0x3

    aget-wide v22, v10, v2

    .line 243
    const/4 v2, 0x4

    aget-wide v4, v10, v2

    .line 244
    const/4 v2, 0x5

    aget-wide v6, v10, v2

    .line 245
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v10, v20

    move/from16 v2, v30

    .line 246
    goto/16 :goto_c3

    :cond_17f
    const/16 v8, 0x53

    if-ne v2, v8, :cond_1f1

    .line 247
    const/4 v2, 0x4

    new-array v10, v2, [D

    .line 248
    const/4 v2, 0x0

    :goto_187
    const/4 v8, 0x4

    if-ge v2, v8, :cond_1a0

    .line 249
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v12

    if-eqz v24, :cond_19d

    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_19b

    move-wide v8, v4

    :goto_195
    add-double/2addr v8, v12

    aput-wide v8, v10, v2

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_187

    :cond_19b
    move-wide v8, v6

    .line 249
    goto :goto_195

    :cond_19d
    const-wide/16 v8, 0x0

    goto :goto_195

    .line 251
    :cond_1a0
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1e6

    .line 252
    :goto_1a6
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1eb

    .line 253
    :goto_1ac
    const/16 v2, 0x43

    const/4 v8, 0x6

    new-array v8, v8, [D

    const/4 v9, 0x0

    aput-wide v4, v8, v9

    const/4 v4, 0x1

    aput-wide v6, v8, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aget-wide v6, v10, v5

    aput-wide v6, v8, v4

    const/4 v4, 0x3

    const/4 v5, 0x1

    aget-wide v6, v10, v5

    aput-wide v6, v8, v4

    const/4 v4, 0x4

    const/4 v5, 0x2

    aget-wide v6, v10, v5

    aput-wide v6, v8, v4

    const/4 v4, 0x5

    const/4 v5, 0x3

    aget-wide v6, v10, v5

    aput-wide v6, v8, v4

    invoke-virtual {v3, v2, v8}, Lcom/isaigu/gymapp/ai/PathNorm$Out;->emit(C[D)V

    .line 254
    const/4 v2, 0x0

    aget-wide v24, v10, v2

    .line 255
    const/4 v2, 0x1

    aget-wide v22, v10, v2

    .line 256
    const/4 v2, 0x2

    aget-wide v4, v10, v2

    .line 257
    const/4 v2, 0x3

    aget-wide v6, v10, v2

    .line 258
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v10, v20

    move/from16 v2, v30

    .line 259
    goto/16 :goto_c3

    .line 251
    :cond_1e6
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    sub-double/2addr v4, v14

    goto :goto_1a6

    .line 252
    :cond_1eb
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    sub-double v6, v6, v22

    goto :goto_1ac

    .line 259
    :cond_1f1
    const/16 v8, 0x51

    if-ne v2, v8, :cond_237

    .line 260
    const/4 v2, 0x4

    new-array v0, v2, [D

    move-object/from16 v16, v0

    .line 261
    const/4 v2, 0x0

    :goto_1fb
    const/4 v8, 0x4

    if-ge v2, v8, :cond_214

    .line 262
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v10

    if-eqz v24, :cond_211

    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_20f

    move-wide v8, v4

    :goto_209
    add-double/2addr v8, v10

    aput-wide v8, v16, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_1fb

    :cond_20f
    move-wide v8, v6

    .line 262
    goto :goto_209

    :cond_211
    const-wide/16 v8, 0x0

    goto :goto_209

    .line 264
    :cond_214
    const/4 v2, 0x0

    aget-wide v8, v16, v2

    const/4 v2, 0x1

    aget-wide v10, v16, v2

    const/4 v2, 0x2

    aget-wide v12, v16, v2

    const/4 v2, 0x3

    aget-wide v14, v16, v2

    invoke-static/range {v3 .. v15}, Lcom/isaigu/gymapp/ai/PathNorm;->quad(Lcom/isaigu/gymapp/ai/PathNorm$Out;DDDDDD)V

    .line 265
    const/4 v2, 0x0

    aget-wide v8, v16, v2

    .line 266
    const/4 v2, 0x1

    aget-wide v20, v16, v2

    .line 267
    const/4 v2, 0x2

    aget-wide v4, v16, v2

    .line 268
    const/4 v2, 0x3

    aget-wide v6, v16, v2

    .line 269
    const-wide/high16 v24, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v10, v20

    move/from16 v2, v30

    .line 270
    goto/16 :goto_c3

    :cond_237
    const/16 v8, 0x54

    if-ne v2, v8, :cond_26c

    .line 271
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v12

    .line 272
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v14

    .line 273
    if-eqz v24, :cond_247

    .line 274
    add-double/2addr v12, v4

    .line 275
    add-double/2addr v14, v6

    .line 277
    :cond_247
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_260

    move-wide v8, v4

    .line 278
    :goto_24e
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_266

    move-wide v10, v6

    .line 279
    :goto_255
    invoke-static/range {v3 .. v15}, Lcom/isaigu/gymapp/ai/PathNorm;->quad(Lcom/isaigu/gymapp/ai/PathNorm$Out;DDDDDD)V

    .line 284
    const-wide/high16 v24, 0x7ff8000000000000L    # Double.NaN

    move-wide v6, v14

    move-wide v4, v12

    move/from16 v2, v30

    .line 285
    goto/16 :goto_c3

    .line 277
    :cond_260
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v4

    sub-double v8, v8, v16

    goto :goto_24e

    .line 278
    :cond_266
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v6

    sub-double v10, v10, v20

    goto :goto_255

    .line 285
    :cond_26c
    const/16 v8, 0x41

    if-ne v2, v8, :cond_2ba

    .line 286
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v8

    .line 287
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v10

    .line 288
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v12

    .line 289
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->flag(Ljava/util/List;[I)I

    move-result v14

    .line 290
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->flag(Ljava/util/List;[I)I

    move-result v15

    .line 291
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v16

    .line 292
    invoke-static/range {v31 .. v32}, Lcom/isaigu/gymapp/ai/PathNorm;->num(Ljava/util/List;[I)D

    move-result-wide v18

    .line 293
    if-eqz v24, :cond_292

    .line 294
    add-double v16, v16, v4

    .line 295
    add-double v18, v18, v6

    .line 297
    :cond_292
    invoke-static/range {v4 .. v19}, Lcom/isaigu/gymapp/ai/PathNorm;->arc(DDDDDIIDD)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 298
    const/16 v5, 0x43

    invoke-virtual {v3, v5, v2}, Lcom/isaigu/gymapp/ai/PathNorm$Out;->emit(C[D)V

    goto :goto_29a

    .line 302
    :cond_2ac
    const-wide/high16 v24, 0x7ff8000000000000L    # Double.NaN

    .line 303
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v10, v20

    move-wide/from16 v6, v18

    move-wide/from16 v4, v16

    move/from16 v2, v30

    .line 304
    goto/16 :goto_c3

    .line 305
    :cond_2ba
    const/4 v2, 0x0

    aget v8, v32, v2

    add-int/lit8 v8, v8, 0x1

    aput v8, v32, v2

    move-wide/from16 v10, v20

    move-wide/from16 v8, v16

    move-wide/from16 v24, v14

    move/from16 v2, v30

    goto/16 :goto_c3

    .line 308
    :cond_2cb
    iget-object v2, v3, Lcom/isaigu/gymapp/ai/PathNorm$Out;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2d2
    move-wide v6, v8

    move-wide v12, v10

    goto/16 :goto_e3

    :cond_2d6
    move-wide v12, v8

    move-wide v14, v10

    goto/16 :goto_a5
.end method

.method private static num(Ljava/util/List;[I)D
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[I)D"
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v2, v1, 0x1

    aput v2, p1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pathOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    const/4 v0, 0x0

    .line 338
    :goto_6
    const-string v2, "<path"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 339
    if-gez v0, :cond_13

    .line 352
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_13
    const/16 v2, 0x3e

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 343
    const-string v3, " d=\""

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 344
    if-ltz v3, :cond_25

    if-ltz v2, :cond_28

    if-le v3, v2, :cond_28

    .line 345
    :cond_25
    add-int/lit8 v0, v0, 0x5

    .line 346
    goto :goto_6

    .line 348
    :cond_28
    const/16 v0, 0x22

    add-int/lit8 v2, v3, 0x4

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 349
    add-int/lit8 v2, v3, 0x4

    invoke-virtual {v1, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 350
    add-int/lit8 v0, v0, 0x1

    .line 351
    goto :goto_6
.end method

.method private static quad(Lcom/isaigu/gymapp/ai/PathNorm$Out;DDDDDD)V
    .registers 22

    .prologue
    .line 312
    const/16 v0, 0x43

    const/4 v1, 0x6

    new-array v1, v1, [D

    const/4 v2, 0x0

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double v6, p5, p1

    mul-double/2addr v4, v6

    add-double/2addr v4, p1

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double v6, p7, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, p3

    aput-wide v4, v1, v2

    const/4 v2, 0x2

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double v6, p5, p9

    mul-double/2addr v4, v6

    add-double v4, v4, p9

    aput-wide v4, v1, v2

    const/4 v2, 0x3

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double v6, p7, p11

    mul-double/2addr v4, v6

    add-double v4, v4, p11

    aput-wide v4, v1, v2

    const/4 v2, 0x4

    aput-wide p9, v1, v2

    const/4 v2, 0x5

    aput-wide p11, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/ai/PathNorm$Out;->emit(C[D)V

    .line 314
    return-void
.end method

.method static tokens(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x2e

    const/4 v2, 0x1

    const/16 v11, 0x2d

    const/16 v10, 0x2b

    const/4 v6, 0x0

    .line 21
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    move v1, v6

    .line 24
    :goto_12
    if-ge v1, v8, :cond_b4

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 26
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/PathNorm;->isCmd(C)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_12

    .line 31
    :cond_28
    if-eq v0, v11, :cond_34

    if-eq v0, v10, :cond_34

    if-eq v0, v12, :cond_34

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 33
    :cond_34
    if-eq v0, v11, :cond_38

    if-ne v0, v10, :cond_b5

    .line 34
    :cond_38
    add-int/lit8 v0, v1, 0x1

    :goto_3a
    move v3, v6

    move v4, v6

    move v5, v0

    .line 38
    :goto_3d
    if-ge v5, v8, :cond_58

    .line 39
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 42
    add-int/lit8 v3, v5, 0x1

    move v0, v2

    move v5, v3

    :goto_4d
    move v3, v0

    .line 49
    goto :goto_3d

    .line 43
    :cond_4f
    if-ne v0, v12, :cond_58

    if-nez v4, :cond_58

    .line 45
    add-int/lit8 v5, v5, 0x1

    move v0, v3

    move v4, v2

    goto :goto_4d

    .line 50
    :cond_58
    if-ge v5, v8, :cond_99

    if-eqz v3, :cond_99

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x65

    if-eq v0, v4, :cond_6c

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x45

    if-ne v0, v4, :cond_99

    .line 51
    :cond_6c
    add-int/lit8 v0, v5, 0x1

    .line 52
    if-ge v0, v8, :cond_7e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v11, :cond_7c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_7e

    .line 53
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    .line 55
    :cond_7e
    if-ge v0, v8, :cond_99

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 57
    :goto_8a
    if-ge v0, v8, :cond_9a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_99
    move v0, v5

    .line 62
    :cond_9a
    if-le v0, v1, :cond_a8

    if-eqz v3, :cond_a8

    .line 63
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto/16 :goto_12

    .line 65
    :cond_a8
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_12

    .line 69
    :cond_b0
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto/16 :goto_12

    .line 71
    :cond_b4
    return-object v7

    :cond_b5
    move v0, v1

    goto :goto_3a
.end method
