.class public final Lorg/apache/poi/ss/util/NumberComparer;
.super Ljava/lang/Object;
.source "NumberComparer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(DD)I
    .locals 22
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 60
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v14

    .line 61
    .local v14, "rawBitsA":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v16

    .line 63
    .local v16, "rawBitsB":J
    invoke-static {v14, v15}, Lorg/apache/poi/ss/util/IEEEDouble;->getBiasedExponent(J)I

    move-result v7

    .line 64
    .local v7, "biasedExponentA":I
    invoke-static/range {v16 .. v17}, Lorg/apache/poi/ss/util/IEEEDouble;->getBiasedExponent(J)I

    move-result v8

    .line 66
    .local v8, "biasedExponentB":I
    const/16 v18, 0x7ff

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    .line 67
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Special double values are not allowed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p0 .. p1}, Lorg/apache/poi/ss/util/NumberComparer;->toHex(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 69
    :cond_0
    const/16 v18, 0x7ff

    move/from16 v0, v18

    if-ne v8, v0, :cond_1

    .line 70
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Special double values are not allowed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p0 .. p1}, Lorg/apache/poi/ss/util/NumberComparer;->toHex(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 76
    :cond_1
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gez v18, :cond_3

    const/4 v4, 0x1

    .line 77
    .local v4, "aIsNegative":Z
    :goto_0
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-gez v18, :cond_4

    const/4 v6, 0x1

    .line 80
    .local v6, "bIsNegative":Z
    :goto_1
    if-eq v4, v6, :cond_6

    .line 83
    if-eqz v4, :cond_5

    const/16 v18, -0x1

    :goto_2
    move/from16 v9, v18

    .line 125
    :cond_2
    :goto_3
    return v9

    .line 76
    .end local v4    # "aIsNegative":Z
    .end local v6    # "bIsNegative":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 77
    .restart local v4    # "aIsNegative":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 83
    .restart local v6    # "bIsNegative":Z
    :cond_5
    const/16 v18, 0x1

    goto :goto_2

    .line 87
    :cond_6
    sub-int v9, v7, v8

    .line 88
    .local v9, "cmp":I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 89
    .local v5, "absExpDiff":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v5, v0, :cond_7

    .line 90
    if-eqz v4, :cond_2

    neg-int v9, v9

    goto :goto_3

    .line 93
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    .line 103
    :cond_8
    if-nez v7, :cond_b

    .line 104
    if-nez v8, :cond_a

    .line 105
    const-wide v18, 0xfffffffffffffL

    and-long v18, v18, v14

    const-wide v20, 0xfffffffffffffL

    and-long v20, v20, v16

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/NumberComparer;->compareSubnormalNumbers(JJZ)I

    move-result v9

    goto :goto_3

    .line 98
    :cond_9
    cmp-long v18, v14, v16

    if-nez v18, :cond_8

    .line 100
    const/4 v9, 0x0

    goto :goto_3

    .line 108
    :cond_a
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14, v15, v4}, Lorg/apache/poi/ss/util/NumberComparer;->compareAcrossSubnormalThreshold(JJZ)I

    move-result v18

    move/from16 v0, v18

    neg-int v9, v0

    goto :goto_3

    .line 110
    :cond_b
    if-nez v8, :cond_c

    .line 112
    move-wide/from16 v0, v16

    invoke-static {v14, v15, v0, v1, v4}, Lorg/apache/poi/ss/util/NumberComparer;->compareAcrossSubnormalThreshold(JJZ)I

    move-result v9

    goto :goto_3

    .line 117
    :cond_c
    add-int/lit16 v0, v7, -0x3ff

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v14, v15, v0}, Lorg/apache/poi/ss/util/ExpandedDouble;->fromRawBitsAndExponent(JI)Lorg/apache/poi/ss/util/ExpandedDouble;

    move-result-object v10

    .line 118
    .local v10, "edA":Lorg/apache/poi/ss/util/ExpandedDouble;
    add-int/lit16 v0, v8, -0x3ff

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lorg/apache/poi/ss/util/ExpandedDouble;->fromRawBitsAndExponent(JI)Lorg/apache/poi/ss/util/ExpandedDouble;

    move-result-object v11

    .line 119
    .local v11, "edB":Lorg/apache/poi/ss/util/ExpandedDouble;
    invoke-virtual {v10}, Lorg/apache/poi/ss/util/ExpandedDouble;->normaliseBaseTen()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/ss/util/NormalisedDecimal;->roundUnits()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v12

    .line 120
    .local v12, "ndA":Lorg/apache/poi/ss/util/NormalisedDecimal;
    invoke-virtual {v11}, Lorg/apache/poi/ss/util/ExpandedDouble;->normaliseBaseTen()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/ss/util/NormalisedDecimal;->roundUnits()Lorg/apache/poi/ss/util/NormalisedDecimal;

    move-result-object v13

    .line 121
    .local v13, "ndB":Lorg/apache/poi/ss/util/NormalisedDecimal;
    invoke-virtual {v12, v13}, Lorg/apache/poi/ss/util/NormalisedDecimal;->compareNormalised(Lorg/apache/poi/ss/util/NormalisedDecimal;)I

    move-result v9

    .line 122
    if-eqz v4, :cond_2

    .line 123
    neg-int v9, v9

    goto :goto_3
.end method

.method private static compareAcrossSubnormalThreshold(JJZ)I
    .locals 6
    .param p0, "normalRawBitsA"    # J
    .param p2, "subnormalRawBitsB"    # J
    .param p4, "isNegative"    # Z

    .prologue
    .line 146
    const-wide v4, 0xfffffffffffffL

    and-long v2, p2, v4

    .line 147
    .local v2, "fracB":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 149
    if-eqz p4, :cond_0

    const/4 v4, -0x1

    .line 162
    :goto_0
    return v4

    .line 149
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const-wide v4, 0xfffffffffffffL

    and-long v0, p0, v4

    .line 152
    .local v0, "fracA":J
    const-wide/16 v4, 0x7

    cmp-long v4, v0, v4

    if-gtz v4, :cond_4

    const-wide v4, 0xffffffffffffaL

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 154
    const-wide/16 v4, 0x7

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    const-wide v4, 0xffffffffffffaL

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 156
    const/4 v4, 0x0

    goto :goto_0

    .line 159
    :cond_2
    if-eqz p4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    goto :goto_0

    .line 162
    :cond_4
    if-eqz p4, :cond_5

    const/4 v4, -0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static compareSubnormalNumbers(JJZ)I
    .locals 2
    .param p0, "fracA"    # J
    .param p2, "fracB"    # J
    .param p4, "isNegative"    # Z

    .prologue
    .line 132
    cmp-long v1, p0, p2

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 134
    .local v0, "cmp":I
    :goto_0
    if-eqz p4, :cond_0

    neg-int v0, v0

    .end local v0    # "cmp":I
    :cond_0
    return v0

    .line 132
    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toHex(D)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # D

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
