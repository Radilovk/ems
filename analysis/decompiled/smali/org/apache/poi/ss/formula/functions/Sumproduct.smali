.class public final Lorg/apache/poi/ss/formula/functions/Sumproduct;
.super Ljava/lang/Object;
.source "Sumproduct.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areasAllSameSize([Lorg/apache/poi/ss/formula/TwoDEval;II)Z
    .locals 4
    .param p0, "args"    # [Lorg/apache/poi/ss/formula/TwoDEval;
    .param p1, "height"    # I
    .param p2, "width"    # I

    .prologue
    const/4 v2, 0x0

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 182
    aget-object v0, p0, v1

    .line 184
    .local v0, "areaEval":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 191
    .end local v0    # "areaEval":Lorg/apache/poi/ss/formula/TwoDEval;
    :cond_0
    :goto_1
    return v2

    .line 187
    .restart local v0    # "areaEval":Lorg/apache/poi/ss/formula/TwoDEval;
    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "areaEval":Lorg/apache/poi/ss/formula/TwoDEval;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static evaluateAreaSumProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 22
    .param p0, "evalArgs"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 126
    move-object/from16 v0, p0

    array-length v11, v0

    .line 127
    .local v11, "maxN":I
    new-array v6, v11, [Lorg/apache/poi/ss/formula/TwoDEval;

    .line 129
    .local v6, "args":[Lorg/apache/poi/ss/formula/TwoDEval;
    const/16 v20, 0x0

    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/16 v20, 0x0

    aget-object v8, v6, v20

    .line 138
    .local v8, "firstArg":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v8}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v9

    .line 139
    .local v9, "height":I
    invoke-interface {v8}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v15

    .line 142
    .local v15, "width":I
    invoke-static {v6, v9, v15}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->areasAllSameSize([Lorg/apache/poi/ss/formula/TwoDEval;II)Z

    move-result v20

    if-nez v20, :cond_1

    .line 145
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_0

    .line 146
    aget-object v20, v6, v10

    invoke-static/range {v20 .. v20}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->throwFirstError(Lorg/apache/poi/ss/formula/TwoDEval;)V

    .line 145
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 130
    .end local v8    # "firstArg":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v9    # "height":I
    .end local v10    # "i":I
    .end local v15    # "width":I
    :catch_0
    move-exception v7

    .line 132
    .local v7, "e":Ljava/lang/ArrayStoreException;
    sget-object v20, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 164
    .end local v7    # "e":Ljava/lang/ArrayStoreException;
    :goto_1
    return-object v20

    .line 148
    .restart local v8    # "firstArg":Lorg/apache/poi/ss/formula/TwoDEval;
    .restart local v9    # "height":I
    .restart local v10    # "i":I
    .restart local v15    # "width":I
    :cond_0
    sget-object v20, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_1

    .line 151
    .end local v10    # "i":I
    :cond_1
    const-wide/16 v4, 0x0

    .line 153
    .local v4, "acc":D
    const/4 v14, 0x0

    .local v14, "rrIx":I
    :goto_2
    if-ge v14, v9, :cond_4

    .line 154
    const/4 v13, 0x0

    .local v13, "rcIx":I
    :goto_3
    if-ge v13, v15, :cond_3

    .line 155
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 156
    .local v16, "term":D
    const/4 v12, 0x0

    .local v12, "n":I
    :goto_4
    if-ge v12, v11, :cond_2

    .line 157
    aget-object v20, v6, v12

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v13}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->getProductTerm(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)D

    move-result-wide v18

    .line 158
    .local v18, "val":D
    mul-double v16, v16, v18

    .line 156
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 160
    .end local v18    # "val":D
    :cond_2
    add-double v4, v4, v16

    .line 154
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 153
    .end local v12    # "n":I
    .end local v16    # "term":D
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 164
    .end local v13    # "rcIx":I
    :cond_4
    new-instance v20, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_1
.end method

.method private static evaluateSingleProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p0, "evalArgs"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 87
    array-length v0, p0

    .line 89
    .local v0, "maxN":I
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 90
    .local v2, "term":D
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 91
    aget-object v6, p0, v1

    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->getScalarValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    .line 92
    .local v4, "val":D
    mul-double/2addr v2, v4

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v4    # "val":D
    :cond_0
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v6, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v6
.end method

.method private static getProductTerm(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)D
    .locals 4
    .param p0, "ve"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "isScalarProduct"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 207
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 210
    :cond_0
    if-eqz p1, :cond_4

    .line 211
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 216
    :cond_1
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_2

    .line 217
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local p0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v1, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 219
    .restart local p0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v1, :cond_3

    .line 220
    if-eqz p1, :cond_4

    .line 221
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 227
    :cond_3
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v1, :cond_5

    move-object v0, p0

    .line 228
    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 229
    .local v0, "nve":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    .end local v0    # "nve":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    :cond_4
    return-wide v2

    .line 231
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected value eval class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getScalarValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    .locals 6
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    instance-of v3, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 101
    check-cast v2, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 102
    .local v2, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 103
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v3

    .line 105
    :cond_0
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 110
    .end local v2    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    .local v1, "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    if-nez v1, :cond_2

    .line 111
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "parameter may not be null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    .end local v1    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    move-object v1, p0

    .restart local v1    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_0

    .line 113
    :cond_2
    instance-of v3, v1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v3, :cond_5

    move-object v0, v1

    .line 114
    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 116
    .local v0, "ae":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->isColumn()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->isRow()Z

    move-result v3

    if-nez v3, :cond_4

    .line 117
    :cond_3
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v3

    .line 119
    :cond_4
    invoke-interface {v0, v4, v4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 122
    .end local v0    # "ae":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :cond_5
    invoke-static {v1, v5}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->getProductTerm(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)D

    move-result-wide v4

    return-wide v4
.end method

.method private static throwFirstError(Lorg/apache/poi/ss/formula/TwoDEval;)V
    .locals 6
    .param p0, "areaEval"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v0

    .line 169
    .local v0, "height":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v4

    .line 170
    .local v4, "width":I
    const/4 v2, 0x0

    .local v2, "rrIx":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 171
    const/4 v1, 0x0

    .local v1, "rcIx":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 172
    invoke-interface {p0, v2, v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 173
    .local v3, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v5, v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v5, :cond_0

    .line 174
    new-instance v5, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v5, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v5

    .line 171
    .restart local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "rcIx":I
    :cond_2
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .prologue
    .line 59
    array-length v4, p1

    .line 61
    .local v4, "maxN":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 62
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 80
    :goto_0
    return-object v5

    .line 64
    :cond_0
    const/4 v5, 0x0

    aget-object v3, p1, v5

    .line 66
    .local v3, "firstArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_0
    instance-of v5, v3, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v5, :cond_1

    .line 67
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->evaluateSingleProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    goto :goto_0

    .line 69
    :cond_1
    instance-of v5, v3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v5, :cond_2

    .line 70
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->evaluateSingleProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    goto :goto_0

    .line 72
    :cond_2
    instance-of v5, v3, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v5, :cond_4

    .line 73
    move-object v0, v3

    check-cast v0, Lorg/apache/poi/ss/formula/TwoDEval;

    move-object v1, v0

    .line 74
    .local v1, "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/TwoDEval;->isRow()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/TwoDEval;->isColumn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->evaluateSingleProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    goto :goto_0

    .line 77
    :cond_3
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->evaluateAreaSumProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 79
    .end local v1    # "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    goto :goto_0

    .line 82
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid arg type for SUMPRODUCT: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
